package co.touchlab.doppl.gradle.analytics;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.NoSuchAlgorithmException;
import java.util.Scanner;

/**
 * Created by kgalligan on 4/7/17.
 */
public class ComputerIdentifierGenerator {
    private static final String UNKNOWN = "unknown";

    private static String OS = System.getProperty("os.name").toLowerCase();

    public static String get() {
        try {
            if (isWindows()) {
                return getWindowsIdentifier();
            } else if (isMac()) {
                return getMacOsIdentifier();
            } else if (isLinux()) {
                return getLinuxMacAddress();
            } else {
                return UNKNOWN;
            }
        } catch (Exception e) {
            return UNKNOWN;
        }
    }

    private static boolean isWindows() {
        return (OS.contains("win"));
    }

    private static boolean isMac() {
        return (OS.contains("mac"));
    }

    private static boolean isLinux() {
        return (OS.contains("inux"));
    }

    private static String getLinuxMacAddress() throws FileNotFoundException, NoSuchAlgorithmException {
        File machineId = new File("/var/lib/dbus/machine-id");
        if (!machineId.exists()) {
            machineId = new File("/etc/machine-id");
        }
        if (!machineId.exists()) {
            return UNKNOWN;
        }

        Scanner scanner = null;
        try {
            scanner = new Scanner(machineId);
            String id = scanner.useDelimiter("\\A").next();
            return Utils.hexStringify(Utils.sha256Hash(id.getBytes()));
        } finally {
            if (scanner != null) {
                scanner.close();
            }
        }
    }

    private static String getMacOsIdentifier() throws SocketException, NoSuchAlgorithmException {
        NetworkInterface networkInterface = NetworkInterface.getByName("en0");
        byte[] hardwareAddress = networkInterface.getHardwareAddress();
        return Utils.hexStringify(Utils.sha256Hash(hardwareAddress));
    }

    private static String getWindowsIdentifier() throws IOException, NoSuchAlgorithmException {
        Runtime runtime = Runtime.getRuntime();
        Process process = runtime.exec(new String[] { "wmic", "csproduct", "get", "UUID" });

        String result = null;
        InputStream is = process.getInputStream();
        Scanner sc = new Scanner(process.getInputStream());
        try {
            while (sc.hasNext()) {
                String next = sc.next();
                if (next.contains("UUID")) {
                    result = sc.next().trim();
                    break;
                }
            }
        } finally {
            is.close();
        }

        return result==null?UNKNOWN:Utils.hexStringify(Utils.sha256Hash(result.getBytes()));
    }
}
