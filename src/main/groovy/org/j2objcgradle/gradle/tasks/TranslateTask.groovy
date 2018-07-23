/*
 * Copyright (c) 2017 Touchlab Inc
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.j2objcgradle.gradle.tasks

import groovy.transform.CompileStatic
import org.gradle.api.file.ConfigurableFileTree
import org.gradle.api.file.FileTree
import org.gradle.api.internal.file.UnionFileTree
import org.gradle.api.tasks.*
import org.gradle.api.tasks.incremental.IncrementalTaskInputs
import org.gradle.api.tasks.util.PatternSet
import org.gradle.util.ConfigureUtil
import org.j2objcgradle.gradle.DependencyResolver
import org.j2objcgradle.gradle.J2objcConfig
import org.j2objcgradle.gradle.J2objcInfo

/**
 * Translation task for Java to Objective-C using j2objc tool.
 */
@CompileStatic
class TranslateTask extends BaseTranslateTask {

    boolean testBuild

    @Input
    def outBaseName

    @InputFiles
    Set<File> dependencyMappings = []

    List<FileTree> inputSourceSets = []
    List<DependencyResolver> resolvers = []
    List<TranslateTask> dependencyTasks = []


    void dependencyMappingFrom(TranslateTask task) {
        dependsOn(task)
        dependencyMappings.add task.outputMapping
    }

    void dependencyMappingFrom(TranslateDependenciesTask task) {
        dependsOn(task)
        dependencyMappings.add task.outputMapping
    }

    @OutputFile
    File getOutputMapping() {
        project.file("${project.buildDir}/j2objcBuild/${outBaseName}.mapping")
    }

    def getFileName() {
        "${outBaseName}SourceOut"
    }

    String getBaseDir() {
        "$project.buildDir/j2objcBuild/translated/$outBaseName"
    }

    @OutputFile
    File getPrefixFile() {
        new File(baseDir, "prefixes.properties")
    }

    @OutputFile
    File getHeader() {
        new File(baseDir, "${fileName}.h")
    }

    @OutputFile
    File getImplementation() {
        new File(baseDir, "${fileName}.m")
    }

    @InputFiles
    Set<File> getDependencyJavaFoldersAsFiles() {
        Set<File> fs = []
        resolvers.each {
            it.dependencyJavaDirs.each {
                fs.add(it)
            }
        }
        dependencyTasks.each {
            it.inputSourceSets.each { f ->
                fs.add(((ConfigurableFileTree)f).dir)
            }
        }
        return fs
    }

    def dependencies(DependencyResolver dependencyResolver) {
        dependsOn(dependencyResolver)
        resolvers.add(dependencyResolver)
    }

    def dependencies(TranslateTask task) {
        dependsOn(task)
        dependencyTasks.add(task)
    }

    def outBaseName(String outBaseName) {
        this.outBaseName = outBaseName
    }

    def inputFileTrees(Collection<FileTree> sets) {
        inputSourceSets.addAll(sets)
    }

    def inputFiles(Collection<File> sets) {
        sets.each {
            inputSourceSets.add(project.fileTree(it))
        }
    }

    @InputFiles
    Set<File> getAllJava() {
        FileTree fileTree = new UnionFileTree()
        for (FileTree set : inputSourceSets) {
            fileTree.add(set)
        }

        J2objcConfig j2objcConfig = J2objcConfig.from(project)
        if(j2objcConfig.translatePattern != null) {
            fileTree = fileTree.matching(j2objcConfig.translatePattern)
        }

        fileTree = fileTree.matching(javaPattern {
            include "**/*.java"
        })

        return fileTree.files
    }

    static PatternSet javaPattern(@DelegatesTo(strategy = Closure.DELEGATE_FIRST, value = PatternSet) Closure cl) {
        PatternSet translatePattern = new PatternSet()
        return ConfigureUtil.configure(cl, translatePattern)
    }

    @Input boolean isEmitLineDirectives() {
        J2objcConfig.from(project).emitLineDirectives
    }

    @InputDirectory @Optional
    File getObjcDir(){
        File f = testBuild ? project.file(J2objcInfo.SOURCEPATH_OBJC_TEST) : project.file(J2objcInfo.SOURCEPATH_OBJC_MAIN)
        return f.exists() ? f : null
    }

    @TaskAction
    void translate(IncrementalTaskInputs inputs) {

        J2objcConfig j2objcConfig = J2objcConfig.from(project)
        if(testBuild && j2objcConfig.skipTests)
            return

        File objcDir = getObjcDir()
        if(objcDir != null)
        {
            Utils.projectCopy(project, {
                from objcDir
                into baseDir
                includeEmptyDirs = false
            })
        }

        List<String> translateArgs = getTranslateArgs()

        def prefixMap = getPrefixes()

        doTranslate(
                getAllJavaFolders(),
                translateArgs,
                prefixMap,
                isEmitLineDirectives()
        )


        if (prefixMap.size() > 0) {
            def writer = new FileWriter(prefixFile)
            Utils.propsFromStringMap(prefixMap).store(writer, null)
            writer.close()
        } else {
            prefixFile.createNewFile()
        }

    }

    @InputFiles
    Set<File> getAllJavaFolders() {
        Set<File> allFiles = new HashSet<>()
        inputSourceSets.each {
            allFiles.add(((ConfigurableFileTree)it).dir)
        }
        return allFiles
    }


    void recursiveGrab(File dir, List<File> files) {
        if(dir.isDirectory())
        {
            File[] dirFiles = dir.listFiles()
            for (File f : dirFiles) {
                if(f.isDirectory())
                    recursiveGrab(f, files)
                else if(f.getName().endsWith(".java"))
                    files.add(f);
            }
        }
    }

    void doTranslate(
            Collection<File> sourcepathDirs,
            List<String> translateArgs,
            Map<String, String> prefixMap,
            boolean emitLineDirectives) {

        Set<File> allTranslateFiles = getAllJava()

        if(allTranslateFiles.size() == 0)
            return

        String j2objcExecutable = "${getJ2objcHome()}/j2objc"

        sourcepathDirs.addAll(dependencyJavaFoldersAsFiles)
        String sourcepathArg = Utils.joinedPathArg(sourcepathDirs)

        ByteArrayOutputStream stdout = new ByteArrayOutputStream()
        ByteArrayOutputStream stderr = new ByteArrayOutputStream()

        Map<String, String> allPrefixes = new HashMap<>(prefixMap)

        File javaBatch = new File(baseDir, "javabatch.in")
        javaBatch.write(allTranslateFiles.join("\n"))

        try {
            Utils.projectExec(project, stdout, stderr, null, { exec ->
                executable j2objcExecutable

                args "-d", Utils.relativePath(project.projectDir, project.file(baseDir))
                args "-XcombineJars", ''
                args "-XglobalCombinedOutput", fileName
                args "--swift-friendly", ''
                args "--output-header-mapping", outputMapping.path

                if(emitLineDirectives)
                {
                    args "-g", ''
                }

                if (dependencyMappings.size() > 0) {
                    args "--header-mapping", dependencyMappings.join(",")
                }

                args "-sourcepath", sourcepathArg

                configureClasspathArg(exec)

                translateArgs.each { String translateArg ->
                    args translateArg
                }

                allPrefixes.keySet().each { String packageString ->
                    args "--prefix", packageString + "=" + allPrefixes.get(packageString)
                }

                args "@${Utils.relativePath(project.projectDir, javaBatch)}"

                setStandardOutput stdout
                setErrorOutput stderr

                setWorkingDir project.projectDir
            })

        } catch (Exception exception) {  // NOSONAR
            // TODO: match on common failures and provide useful help
            throw exception
        }

//        javaBatch.delete()
    }

    private void addMappings(File mapFile, List<String> mappingFiles) {
        if(mapFile.exists())
            mappingFiles.add(mapFile.path)
    }

}
