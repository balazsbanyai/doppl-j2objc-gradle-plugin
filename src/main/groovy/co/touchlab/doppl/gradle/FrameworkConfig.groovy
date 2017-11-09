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

package co.touchlab.doppl.gradle

import co.touchlab.doppl.gradle.tasks.Utils
import org.gradle.api.Project

class FrameworkConfig {
    static FrameworkConfig findMain(Project project) {
        return project.dopplConfig.mainFramework
    }

    static FrameworkConfig findTest(Project project) {
        return project.dopplConfig.testFramework
    }

    String homepage = "http://doppl.co/"
    String license = "{ :type => 'Apache 2.0' }"
    String authors = "{ 'Filler Person' => 'filler@example.com' }"
    String source = "{ :git => 'https://github.com/doppllib/doppl-gradle.git'}"

    final boolean test

    FrameworkConfig(boolean test) {
        this.test = test
    }

    boolean writeActualJ2objcPath = true

    String iosDeploymentTarget = "8.0"

    boolean flagObjc = true
    boolean libZ = true
    boolean libSqlite3 = true
    boolean libIconv = true
    boolean libJavax_inject = true
    boolean libJre_emul = true
    boolean libJre_ssl = true
    boolean libJsr305 = true
    boolean libMockito = test
    boolean libJunit = test

    
    /*
### libSqlite3 - true
### libIconv - true
### libJavax_inject - true
### libJre_emul - true
### libJsr305 - true
### libMockito - test
### libJunit - test
    */
    
    List<String> addLibraries = new ArrayList<>()

    void addLibraries(String... libs)
    {
        for (String l : libs) {
            this.addLibraries.add(l)
        }
    }

    boolean frameworkUIKit = true

    List<String> addFrameworks = new ArrayList<>()

    void addFrameworks(String... frameworks)
    {
        for (String f : frameworks) {
            this.addFrameworks(f)
        }
    }

    String writeLibs()
    {
        List<String> allLibs = new ArrayList<>(addLibraries)
        if(flagObjc)allLibs.add("ObjC")
        if(libZ)allLibs.add("z")
        if(libSqlite3)allLibs.add("sqlite3")
        if(libIconv)allLibs.add("iconv")
        if(libJavax_inject)allLibs.add("javax_inject")
        if(libJre_emul)allLibs.add("jre_emul")
        if(libJre_ssl)allLibs.add("jre_ssl")
        if(libJsr305)allLibs.add("jsr305")
        if(libMockito)allLibs.add("mockito")
        if(libJunit)allLibs.add("junit")

        return "'"+ allLibs.join("', '") +"'"
    }

    String writeFrameworks()
    {
        List<String> allFrameworks = new ArrayList<>(addFrameworks)
        if(frameworkUIKit)allFrameworks.add("UIKit")

        return "'"+ allFrameworks.join("', '") +"'"
    }

    String podspecTemplate (Project project, List<String> dependencyFolders, String podname){
        StringBuilder sourceFileIncludes = new StringBuilder()
        StringBuilder headerIncludes = new StringBuilder()

        for (String folderName : dependencyFolders) {
            if(sourceFileIncludes.length() == 0)
            {
                sourceFileIncludes.append("FileList[\"${folderName}/**/*.{h,m,cpp,properites,txt}\"]")
                headerIncludes.append("FileList[\"${folderName}/**/*.h\"]")
            }
            else {
                sourceFileIncludes.append(".include(\"${folderName}/**/*.{h,m,cpp,properites}\")")
                headerIncludes.append(".include(\"${folderName}/**/*.h\")")
            }
        }

        String sourceFiles = sourceFileIncludes.toString()
        String headers = headerIncludes.toString()

        String j2objcPath = writeActualJ2objcPath ? Utils.j2objcHome(project) : "\$(J2OBJC_LOCAL_PATH)"
        return """require 'rake'
FileList = Rake::FileList

Pod::Spec.new do |s|

  s.name             = '${podname}'
    s.version          = '0.1.0'
    s.summary          = 'Doppl code framework'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC

    s.homepage         = '${homepage}'
    s.license          = ${license}
    s.authors           = ${authors}
    s.source           = ${source}

    s.ios.deployment_target = '${iosDeploymentTarget}'

    s.source_files = ${sourceFiles}.to_ary

    s.public_header_files = ${headers}.exclude(/cpphelp/).exclude(/jni/).to_ary

    s.requires_arc = false
    s.libraries = ${writeLibs()}
    s.frameworks = ${writeFrameworks()}

    s.pod_target_xcconfig = {
     'HEADER_SEARCH_PATHS' => '${j2objcPath}/include','LIBRARY_SEARCH_PATHS' => '${j2objcPath}/lib'
    }
    
    s.user_target_xcconfig = {
     'HEADER_SEARCH_PATHS' => '${j2objcPath}/frameworks/JRE.framework/Headers ${j2objcPath}/frameworks/JavaxInject.framework/Headers ${j2objcPath}/frameworks/JSR305.framework/Headers ${j2objcPath}/frameworks/JUnit.framework/Headers ${j2objcPath}/frameworks/Mockito.framework/Headers ${j2objcPath}/frameworks/Xalan.framework/Headers ${j2objcPath}/frameworks/Guava.framework/Headers'
    }
    
end"""}
}
