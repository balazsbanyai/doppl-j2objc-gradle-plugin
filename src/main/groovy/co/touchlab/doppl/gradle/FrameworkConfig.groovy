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

class FrameworkConfig {
    String homepage = "http://doppl.co/"
    String license = "{ :type => 'Apache 2.0' }"
    String authors = "{ 'Kevin Galligan' => 'kgalligan@gmail.com' }"
    String source = "{ :git => 'https://github.com/doppllib/doppl-gradle.git'}"

    String podspecTemplate (List<String> dependencyFolders, String podname){
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

    s.ios.deployment_target = '8.0'

    s.source_files = ${sourceFiles}.to_ary

    s.public_header_files = ${headers}.exclude(/cpphelp/).exclude(/jni/).to_ary

    s.requires_arc = false
    s.libraries = 'ObjC', 'z', 'sqlite3', 'iconv', 'javax_inject', 'jre_emul', 'jsr305', 'mockito', 'junit'
    s.frameworks = 'UIKit'

    s.pod_target_xcconfig = {
     'HEADER_SEARCH_PATHS' => '\$(J2OBJC_LOCAL_PATH)/include','LIBRARY_SEARCH_PATHS' => '\$(J2OBJC_LOCAL_PATH)/lib'
    }
    
    s.user_target_xcconfig = {
     'HEADER_SEARCH_PATHS' => '\$(J2OBJC_LOCAL_PATH)/frameworks/JRE.framework/Headers \$(J2OBJC_LOCAL_PATH)/frameworks/JavaxInject.framework/Headers \$(J2OBJC_LOCAL_PATH)/frameworks/JSR305.framework/Headers \$(J2OBJC_LOCAL_PATH)/frameworks/JUnit.framework/Headers \$(J2OBJC_LOCAL_PATH)/frameworks/Mockito.framework/Headers \$(J2OBJC_LOCAL_PATH)/frameworks/Xalan.framework/Headers \$(J2OBJC_LOCAL_PATH)/frameworks/Guava.framework/Headers'
    }
    
end"""}
}