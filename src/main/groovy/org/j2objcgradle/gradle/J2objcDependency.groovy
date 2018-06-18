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

package org.j2objcgradle.gradle


import org.gradle.api.Project
import org.gradle.api.file.CopySpec
import org.gradle.api.tasks.Input


/**
 * Created by kgalligan on 6/24/16.
 */
class J2objcDependency {

    @Input
    String name

    @Input
    String versionName

    @Input
    File dir

    File dopFile

    J2objcDependency(String name, File dir) {
        this.name = name
        this.versionName = name
        this.dir = dir
    }

    J2objcDependency(
            String group,
            String name,
            String version,
            File explodedDir,
            File dopFile)
    {
        this.name = name

        String foldername = group + "_" + name + "_" + version

        this.versionName = foldername

        foldername = foldername.replace('-', '_')
        foldername = foldername.replace('.', '_')
        foldername = foldername.replace(' ', '_')

        dir = new File(explodedDir, foldername)

        this.dopFile = dopFile
    }

    File dependencyFolderLocation(){
        return dir
    }

    File dependencyJavaFolder(){
        return new File(dependencyFolderLocation(), "java")
    }

    File dependencyNativeFolder(){
        return new File(dependencyFolderLocation(), "src")
    }

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false

        J2objcDependency that = (J2objcDependency) o

        if (dir != that.dir) return false
        if (name != that.name) return false

        return true
    }

    int hashCode() {
        int result
        result = (name != null ? name.hashCode() : 0)
        result = 31 * result + (dir != null ? dir.hashCode() : 0)
        return result
    }

    File output() {
        File folderLocation = dependencyFolderLocation()
        File unzipFolder = folderLocation

        //Assume this is a sources jar

        // adding java folder to path if this is a standard jar (not doppl)
        if(dopFile != null && dopFile.name.endsWith(".jar"))
        {
            folderLocation.mkdirs()
            unzipFolder = dependencyJavaFolder()
        }
        return unzipFolder
    }

    void expandDop(Project project)
    {
        if(dopFile != null)
        {
            project.copy { CopySpec cp ->
                cp.from project.zipTree(dopFile)
                cp.into output()
            }
        }
    }


}