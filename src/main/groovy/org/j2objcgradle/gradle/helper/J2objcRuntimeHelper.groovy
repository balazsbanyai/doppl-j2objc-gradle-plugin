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

package org.j2objcgradle.gradle.helper

import org.gradle.api.Project
import org.gradle.api.logging.Logger
import org.jetbrains.annotations.NotNull

class J2objcRuntimeHelper {

    @NotNull
    static File runtimeDir(String version) {
        File j2objc = j2objcRuntimeDir()
        return new File(j2objc, "j2objc-$version")
    }

    @NotNull
    private static File j2objcRuntimeDir() {
        File home = new File(System.getProperty("user.home"))

        File j2objcDir = new File(home, ".j2objc")
        return new File(j2objcDir, "runtime")
    }

    static void cleanRuntimeDir(Project project){
        project.delete(j2objcRuntimeDir())
    }

    static File checkAndDownload(Project project, String version) throws IOException {
        File runtimeDirFile = j2objcRuntimeDir()
        Logger logger = project.logger

        if (checkJ2objcFolder(new File("$runtimeDirFile/j2objc-$version")))
            return new File("$runtimeDirFile/j2objc-$version")

        runtimeDirFile.mkdirs()

        URL website = new URL(downloadUrl(version))
        URLConnection urlConnection = website.openConnection()
        File tempFile = new File(runtimeDirFile, Long.toString(System.currentTimeMillis()))

        try {
            InputStream inputStream = urlConnection.getInputStream()
            int contentLength = urlConnection.getContentLength()

            FileOutputStream fos = new FileOutputStream(tempFile)

            byte[] buf = new byte[2048]
            int read
            int totalRead = 0
            int totalParts = 60

            int partSize = contentLength / totalParts

            int nextPartLimit = partSize
            int partCount = 0

            int megs = contentLength / (1024 * 1024)
            logger.lifecycle("Downloading J2objc " + version + " size " + megs + "m")
            while ((read = inputStream.read(buf)) > -1) {
                fos.write(buf, 0, read)
                totalRead += read

                if (totalRead >= nextPartLimit) {
                    partCount++
                    nextPartLimit += partSize
                    StringBuilder sb = new StringBuilder()
                    int i = 0
                    for (; i < partCount; i++) {
                        sb.append('.')
                    }
                    for (; i < totalParts; i++) {
                        sb.append(' ')
                    }
                    int downMegs = totalRead / (1024 * 1024)
                    logger.lifecycle("[" + sb.toString() + "] " + downMegs + "/" + megs + "m")
                }
            }

            fos.close()

            logger.lifecycle("Download complete")

            if (tempFile.length() != contentLength) {
                throw new IOException("File download failed (incorrect length)")
            }

            logger.lifecycle("Extracting to "+runtimeDirFile)

            project.ant.unzip( src: tempFile, dest: runtimeDirFile )

        } finally {
            if (tempFile.exists()) {
                tempFile.delete()
            }
            if (urlConnection instanceof HttpURLConnection) {
                ((HttpURLConnection) urlConnection).disconnect()
            }
        }

        return new File("$runtimeDirFile/j2objc-$version")
    }

    /**
     * Sanity check to see if the folder has j2objc
     *
     * @param runtimeDirFile
     */
    private static boolean checkJ2objcFolder(File runtimeDirFile) {
        return runtimeDirFile.exists()
    }

    private static String downloadUrl(String version) {
        return "https://github.com/google/j2objc/releases/download/${version}/j2objc-${version}.zip"
    }
}
