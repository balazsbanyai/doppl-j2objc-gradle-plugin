/*
 * Copyright (c) 2015 the authors of j2objc-gradle (see AUTHORS file)
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

package com.github.j2objccontrib.j2objcgradle

import com.github.j2objccontrib.j2objcgradle.tasks.AssembleLibrariesTask
import com.github.j2objccontrib.j2objcgradle.tasks.AssembleResourcesTask
import com.github.j2objccontrib.j2objcgradle.tasks.AssembleSourceTask
import com.github.j2objccontrib.j2objcgradle.tasks.CycleFinderTask
import com.github.j2objccontrib.j2objcgradle.tasks.DoppelAssemblyTask
import com.github.j2objccontrib.j2objcgradle.tasks.PackLibrariesTask
import com.github.j2objccontrib.j2objcgradle.tasks.PodspecTask
import com.github.j2objccontrib.j2objcgradle.tasks.TestTask
import com.github.j2objccontrib.j2objcgradle.tasks.TranslateTask
import com.github.j2objccontrib.j2objcgradle.tasks.Utils
import com.github.j2objccontrib.j2objcgradle.tasks.XcodeTask
import org.gradle.api.DefaultTask
import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.api.Task
import org.gradle.api.plugins.JavaPlugin
import org.gradle.api.logging.LogLevel
import org.gradle.api.tasks.Copy
import org.gradle.api.tasks.bundling.Jar
import org.gradle.api.tasks.testing.Test

/*
 * Main plugin class for creation of extension object and all the tasks.
 */
class J2objcPlugin implements Plugin<Project> {

    @Override
    void apply(Project project) {

        //Gradle issue hack
        project.tasks.withType(Test) {
            scanForTestClasses = false
            include "**/*Test.class" // whatever Ant pattern matches your test class files
        }

        project.configurations {
            provided {
                dependencies.all { dep ->
                    project.configurations.default.exclude group: dep.group, module: dep.name
                }
            }
            compile.extendsFrom provided
        }

        /*project.dependencies {
            if(!project.name.equals('androidbase'))
            {
                provided 'co.touchlab.doppel:androidbase:0.1.0-SNAPSHOT'
                doppel 'co.touchlab.doppel:androidbase:0.1.0-SNAPSHOT@dop'
            }

            if(!project.name.equals('androidbase') && !project.name.equals('androidbasetest'))
            {
                testCompile 'co.touchlab.doppel:androidbasetest:0.1.0-SNAPSHOT'
                doppel 'co.touchlab.doppel:androidbasetest:0.1.0-SNAPSHOT@dop'
            }

            provided project.files(Utils.j2objcHome(project) + "/lib/jre_emul.jar")
            provided 'com.intellij:annotations:9.0.4'
            compile 'com.google.j2objc:j2objc-annotations:0.1'
        }*/

        String version = BuildInfo.VERSION
        String commit = BuildInfo.GIT_COMMIT
        String url = BuildInfo.URL
        String timestamp = BuildInfo.TIMESTAMP
        project.logger.info("j2objc-gradle plugin: Version $version, Built: $timestamp, Commit: $commit, URL: $url")
        if (!BuildInfo.GIT_IS_CLEAN) {
            project.logger.error('WARNING: j2objc-gradle plugin was built with local git modification: ' +
                                 'https://github.com/j2objc-contrib/j2objc-gradle/releases')
        } else if (version.contains('SNAPSHOT')) {
            project.logger.warn('WARNING: j2objc-gradle plugin was built with SNAPSHOT version: ' +
                                'https://github.com/j2objc-contrib/j2objc-gradle/releases')
        }

        // This avoids a lot of "project." prefixes, such as "project.tasks.create"
        project.with {
            getPluginManager().apply(JavaPlugin)

            extensions.create('j2objcConfig', J2objcConfig, project)

            afterEvaluate { Project evaluatedProject ->
                Utils.throwIfNoJavaPlugin(evaluatedProject)

                if (!evaluatedProject.j2objcConfig.isFinalConfigured()) {
                    logger.error("Project '${evaluatedProject.name}' is missing finalConfigure():\n" +
                                 "https://github.com/j2objc-contrib/j2objc-gradle/blob/master/FAQ.md#how-do-i-call-finalconfigure")
                }

                boolean arcTranslateArg = true;// = '-use-arc' in evaluatedProject.j2objcConfig.translateArgs
                boolean arcCompilerArg = true;//'-fobjc-arc' in evaluatedProject.j2objcConfig.extraObjcCompilerArgs
                if (arcTranslateArg && !arcCompilerArg || !arcTranslateArg && arcCompilerArg) {
                    logger.error("Project '${evaluatedProject.name}' is missing required ARC flags:\n" +
                                 "https://github.com/j2objc-contrib/j2objc-gradle/blob/master/FAQ.md#how-do-i-enable-arc-for-my-translated-objective-c-classes")
                }
            }

            // This is an intermediate directory only.  Clients should use only directories
            // specified in j2objcConfig (or associated defaults in J2objcConfig).
            File j2objcSrcGenMainDir = file("${buildDir}/j2objcSrcGenMain")
            File j2objcSrcGenTestDir = file("${buildDir}/j2objcSrcGenTest")

            // These configurations are groups of artifacts and dependencies for the plugin build
            // https://docs.gradle.org/current/dsl/org.gradle.api.artifacts.Configuration.html
            configurations {
                // Currently, we can only handle Project dependencies already translated to Objective-C.
                j2objcLinkage {
                    description = 'J2ObjC native library dependencies that need to be ' +
                                  'linked into the final main library, and do not need translation'
                }

                j2objcTestLinkage {
                    description = 'J2ObjC native library dependencies that need to be ' +
                                  'linked into the final tests, and do not need translation'
                }

                doppel{
                    transitive = true
                    description = 'For doppel special packages'
                }
            }

            dependencies {

                provided project.files(Utils.j2objcHome(project) + "/lib/jre_emul.jar")

                if(!project.name.equals('androidbase') &&
                   !project.name.equals('androidbasetest') &&
                   !project.name.equals('testapt'))
                {
                    provided 'co.touchlab.doppel:androidbase:0.3.1-SNAPSHOT'
                    doppel 'co.touchlab.doppel:androidbase:0.3.1-SNAPSHOT@dop'
                    testCompile 'co.touchlab.doppel:androidbasetest:0.3.1-SNAPSHOT'
                    doppel 'co.touchlab.doppel:androidbasetest:0.3.1-SNAPSHOT@dop'
                }

                compile 'com.google.j2objc:j2objc-annotations:0.1'
            }

            DependencyResolver.configureSourceSets(project)

            // Produces a modest amount of output
            logging.captureStandardOutput LogLevel.INFO

            // If users need to generate extra files that j2objc depends on, they can make this task dependent
            // on such generation.
            tasks.create(name: 'j2objcPreBuild', type: DefaultTask,
                    dependsOn: 'test') {
                group 'build'
                description "Marker task for all tasks that must be complete before j2objc building"
            }

            // TODO @Bruno "build/source/apt" must be project.j2objcConfig.generatedSourceDirs no idea how to set it
            // there
            // Dependency may be added in project.plugins.withType for Java or Android plugin
            tasks.create(name: 'j2objcTranslate', type: TranslateTask,
                    dependsOn: 'j2objcPreBuild') {
                group 'build'
                description "Translates all the java source files in to Objective-C using 'j2objc'"
                // Output directories of 'j2objcTranslate', input for all other tasks
                srcGenMainDir = j2objcSrcGenMainDir
                srcGenTestDir = j2objcSrcGenTestDir
                try {
                    def file = file('src/main/objc')
                    if(file.exists())
                        srcMainObjcDir = file
                } catch (Exception e) {
                    //Ugh
                }
                try {
                    def file = file('src/test/objc')
                    if(file.exists())
                        srcTestObjcDir = file
                } catch (Exception e) {
                    //Don't care
                }
            }

            // j2objcCycleFinder must be run manually with ./gradlew j2objcCycleFinder
            // j2objcCycleFinder { enabled = true }
            tasks.create(name: 'j2objcCycleFinder', type: CycleFinderTask,
                    dependsOn: 'j2objcPreBuild') {
                group 'build'
                description "Run the cycle_finder tool on all Java source files"
                outputs.upToDateWhen { false }
            }

            // NOTE: When adding new tasks, consider whether they fall under 'translate-only' mode, and
            // filter them in J2objcConfig.finalConfigure otherwise.

            // Note the '(debug|release)TestJ2objcExecutable' tasks are dynamically created by the Objective-C plugin.
            // It is specified by the testJ2objc native component in NativeCompilation.groovy.
            // TODO: copy and run debug and release tests within j2objcTestContent at the
            //       same time instead of destroying and recreating j2objcTestContent twice
            tasks.create(name: 'j2objcTestDebug', type: TestTask,
                    dependsOn: ['test', 'debugTestJ2objcExecutable']) {
                group 'verification'
                // This transitively depends on the 'test' task from the java plugin
                description 'Runs all tests in the generated Objective-C code'
                buildType = 'Debug'
                testBinaryFile = file("${buildDir}/binaries/testJ2objcExecutable/debug/testJ2objc")
            }
            tasks.create(name: 'j2objcTestRelease', type: TestTask,
                    dependsOn: ['test', 'releaseTestJ2objcExecutable']) {
                group 'verification'
                // This transitively depends on the 'test' task from the java plugin
                description 'Runs all tests in the generated Objective-C code'
                buildType = 'Release'
                testBinaryFile = file("${buildDir}/binaries/testJ2objcExecutable/release/testJ2objc")
            }
            // If both release and debug tests would run, run the debug tests first - ideally
            // the failure messages will be easier to understand (ex. Java line numbers).
            lateShouldRunAfter(project, 'j2objcTestRelease', 'j2objcTestDebug')

            tasks.create(name: 'j2objcTest', type: DefaultTask,
                    dependsOn: ['j2objcTestDebug', 'j2objcTestRelease']) {
                group 'build'
                description "Marker task for all test tasks that take part in regular J2ObjC builds"
            }
            // 'check' task is added by 'java' plugin, it depends on 'test' and
            // all the other verification tasks, now including 'j2objcTest'.
//            lateDependsOn(project, 'check', 'j2objcTest')

            // Pack Libraries
            tasks.create(name: 'j2objcPackLibrariesDebug', type: PackLibrariesTask,
                    dependsOn: 'j2objcBuildObjcDebug') {
                group 'build'
                description 'Packs multiple architectures into a single debug static library'
                buildType = 'Debug'
            }
            tasks.create(name: 'j2objcPackLibrariesRelease', type: PackLibrariesTask,
                    dependsOn: 'j2objcBuildObjcRelease') {
                group 'build'
                description 'Packs multiple architectures into a single release static library'
                buildType = 'Release'
            }

            // Assemble files
            tasks.create(name: 'j2objcAssembleResources', type: AssembleResourcesTask,
                    dependsOn: ['j2objcPreBuild']) {
                group 'build'
                description 'Copies mains and test resources to assembly directories'
            }
            tasks.create(name: 'j2objcAssembleSource', type: AssembleSourceTask,
                    dependsOn: ['j2objcTranslate']) {
                group 'build'
                description 'Copies final generated source to assembly directories'
                srcGenMainDir = j2objcSrcGenMainDir
                srcGenTestDir = j2objcSrcGenTestDir
            }
            // Assemble podspec and update Xcode
            tasks.create(name: 'j2objcPodspec', type: PodspecTask,
                    dependsOn: ['j2objcPreBuild']) {
                // podspec may reference resources that haven't yet been built
                group 'build'
                description 'Generate debug and release podspec that may be used for Xcode'
            }
            // Assemble libaries
            tasks.create(name: 'j2objcAssembleDebug', type: AssembleLibrariesTask,
                    dependsOn: ['j2objcPackLibrariesDebug', 'j2objcAssembleSource',
                                'j2objcAssembleResources', 'j2objcPodspec']) {
                group 'build'
                description 'Copies final generated source and debug libraries to assembly directories'
                buildType = 'Debug'
                srcLibDir = file("${buildDir}/binaries/${project.name}-j2objcStaticLibrary")
                srcPackedLibDir = file("${buildDir}/packedBinaries/${project.name}-j2objcStaticLibrary")
            }
            tasks.create(name: 'j2objcAssembleRelease', type: AssembleLibrariesTask,
                    dependsOn: ['j2objcPackLibrariesRelease', 'j2objcAssembleSource',
                                'j2objcAssembleResources', 'j2objcPodspec']) {
                group 'build'
                description 'Copies final generated source and release libraries to assembly directories'
                buildType = 'Release'
                srcLibDir = file("${buildDir}/binaries/${project.name}-j2objcStaticLibrary")
                srcPackedLibDir = file("${buildDir}/packedBinaries/${project.name}-j2objcStaticLibrary")
            }
            // Assemble final task
            tasks.create(name: 'j2objcAssemble', type: DefaultTask,
                    dependsOn: ['j2objcAssembleDebug', 'j2objcAssembleRelease']) {
                group 'build'
                description "Marker task for all assembly tasks that take part in regular j2objc builds"
            }
//            lateDependsOn(project, 'assemble', 'j2objcAssemble')

            // Build
            tasks.create(name: 'j2objcBuildDebug', type: DefaultTask,
                    dependsOn: ['j2objcAssembleDebug', 'j2objcTestDebug']) {
                group 'build'
                description "Marker task for all debug tasks that take part in regular j2objc builds"
            }
            tasks.create(name: 'j2objcBuildRelease', type: DefaultTask,
                    dependsOn: ['j2objcAssembleRelease', 'j2objcTestRelease']) {
                group 'build'
                description "Marker task for all release tasks that take part in regular j2objc builds"
            }
            // If users need to depend on this project to build other j2objc projects, they can use this
            // marker task.
            tasks.create(name: 'j2objcBuild', type: DefaultTask,
                    dependsOn: ['j2objcBuildDebug', 'j2objcBuildRelease']) {
                group 'build'
                description "Marker task for all tasks that take part in regular j2objc builds"
            }

            tasks.create(name: 'doppelAssembly', type: DoppelAssemblyTask,
                    dependsOn: 'j2objcBuild') {
                group 'build'
                description 'Pull together doppel pieces'
            }

            tasks.create(name: 'doppelArchive', type: Jar, dependsOn: 'doppelAssembly') {
                group 'build'
                description 'Depends on j2objc build, move all doppel stuff to deploy dir'

                from project.j2objcConfig.destDoppelFolder
                extension 'dop'
            }

            tasks.create(name: 'j2objcXcode', type: XcodeTask,
                    dependsOn: 'doppelArchive') {
                // pod install is ok when podspec references resources that haven't yet been built
                group 'build'
                description 'Depends on j2objc translation, create a Pod file link it to Xcode project'
            }


            lateDependsOn(project, 'build', 'doppelArchive')
        }
    }

    // Has task named afterTaskName depend on the task named beforeTaskName, regardless of
    // whether afterTaskName has been created yet or not.
    // The before task must already exist.
    private static void lateDependsOn(Project proj, String afterTaskName, String beforeTaskName) {
        assert null != proj.tasks.findByName(beforeTaskName)
        // You can't just call tasks.findByName on afterTaskName - for certain tasks like 'assemble' for
        // reasons unknown, the Java plugin creates - right there! - the task; this prevents
        // later code from modifying binaries, sourceSets, etc.  If you see an error
        // mentioning 'state GraphClosed' saying you can't mutate some object, see if you are magically
        // causing Gradle to make the task by using findByName!  Issue #156

        // tasks.all cleanly calls this closure on any existing elements and for all elements
        // added in the future.
        // TODO: Find a better way to have afterTask depend on beforeTask, without
        // materializing afterTask early.
        proj.tasks.all { Task task ->
            if (task.name == afterTaskName) {
                task.dependsOn beforeTaskName
            }
        }
    }

    // Causes afterTask to run after beforeTaskName iff:
    //     1) Both afterTask and beforeTask would be run anyway (does not cause beforeTask to
    //        run, unlike 'dependsOn').
    // and 2) Such an ordering would not cause a circular dependency.
    // https://docs.gradle.org/current/userguide/more_about_tasks.html#sec:ordering_tasks
    private static void lateShouldRunAfter(Project proj, String afterTaskName, String beforeTaskName) {
        assert null != proj.tasks.findByName(beforeTaskName)
        // See comments in lateDependsOn for details on this construct.
        proj.tasks.all { Task task ->
            if (task.name == afterTaskName) {
                task.shouldRunAfter beforeTaskName
            }
        }
    }
}
