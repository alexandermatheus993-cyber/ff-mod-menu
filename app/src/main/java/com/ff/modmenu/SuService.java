package com.ff.modmenu;

import android.util.Log;
import java.io.*;
import java.lang.reflect.Method;

public class SuService extends ISuService.Stub {
    private static final String TAG = "FFModMenu";

    @Override
    public String execCommand(String cmd) {
        try {
            Class<?> shizukuClass = Class.forName("rikka.shizuku.Shizuku");
            Method newProcess = shizukuClass.getDeclaredMethod("newProcess", String[].class, String.class, String.class);
            newProcess.setAccessible(true);
            Process process = (Process) newProcess.invoke(null, new String[]{"sh", "-c", cmd}, null, null);
            InputStream is = process.getInputStream();
            InputStream es = process.getErrorStream();
            StringBuilder sb = new StringBuilder();
            byte[] buf = new byte[4096];
            int n;
            while ((n = is.read(buf)) != -1) sb.append(new String(buf, 0, n));
            byte[] ebuf = new byte[4096];
            while ((n = es.read(ebuf)) != -1) sb.append(new String(ebuf, 0, n));
            process.waitFor();
            return sb.toString().trim();
        } catch (Exception e) {
            Log.e(TAG, "execCommand error", e);
            return "ERROR:" + e.getMessage();
        }
    }

    @Override
    public int findPid(String packageName) {
        try {
            // Use ps -A | grep instead of pidof (pidof doesn't work via Shizuku)
            String cmd = "ps -A | grep " + packageName + " | grep -v grep | head -1 | awk '{print $2}'";
            String result = execCommand(cmd);
            Log.d(TAG, "findPid result: '" + result + "' for " + packageName);
            if (result != null && !result.isEmpty() && !result.startsWith("ERROR")) {
                return Integer.parseInt(result.trim());
            }
        } catch (Exception e) {
            Log.e(TAG, "findPid error", e);
        }
        return -1;
    }

    @Override
    public byte[] readMemory(int pid, long address, int size) {
        try {
            String hexAddr = Long.toHexString(address);
            String cmd = "dd if=/proc/" + pid + "/mem bs=1 skip=$((0x" + hexAddr + ")) count=" + size + " 2>/dev/null | xxd -p";
            String hex = execCommand(cmd);
            if (hex == null || hex.isEmpty() || hex.startsWith("ERROR")) return null;
            hex = hex.replaceAll(" \\r\\n", "");
            int len = hex.length() / 2;
            byte[] data = new byte[len];
            for (int i = 0; i < len; i++) {
                data[i] = (byte) Integer.parseInt(hex.substring(i * 2, i * 2 + 2), 16);
            }
            return data;
        } catch (Exception e) {
            Log.e(TAG, "readMemory error", e);
            return null;
        }
    }

    @Override
    public boolean writeMemory(int pid, long address, byte[] data) {
        try {
            String hexAddr = Long.toHexString(address);
            String hexData = "";
            for (byte b : data) hexData += String.format("%02x", b);
            String cmd = "echo " + hexData + " | xxd -r -p | dd of=/proc/" + pid + "/mem bs=1 seek=$((0x" + hexAddr + ")) conv=notrunc 2>/dev/null";
            String result = execCommand(cmd);
            return !result.startsWith("ERROR");
        } catch (Exception e) {
            Log.e(TAG, "writeMemory error", e);
            return false;
        }
    }

    @Override
    public String[] getMemoryRegions(int pid) {
        try {
            String result = execCommand("cat /proc/" + pid + "/maps 2>/dev/null");
            if (result == null || result.isEmpty()) return new String[0];
            return result.split("\n");
        } catch (Exception e) {
            Log.e(TAG, "getMemoryRegions error", e);
            return new String[0];
        }
    }

    @Override
    public void destroy() {
        Log.d(TAG, "SuService destroy");
    }

    @Override
    public void closeSu() {
        Log.d(TAG, "SuService closeSu");
    }
}
