package com.ff.modmenu;

import android.util.Log;
import java.io.*;

public class SuService extends ISuService.Stub {
    private static final String TAG = "FFModMenu";

    @Override
    public String execCommand(String cmd) {
        try {
            Process process = Runtime.getRuntime().exec(new String[]{"sh", "-c", cmd});
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
            String result = execCommand("ps -A | grep " + packageName + " | grep -v grep | head -1 | awk '{print $2}'");
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
            hex = hex.replaceAll("[\\r\\n\\s]", "");
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
            StringBuilder sb = new StringBuilder();
            for (byte b : data) sb.append(String.format("%02x", b));
            String cmd = "printf '" + sb.toString() + "' | xxd -r -p | dd of=/proc/" + pid + "/mem bs=1 seek=$((0x" + hexAddr + ")) conv=notrunc 2>/dev/null";
            String result = execCommand(cmd);
            return result != null && !result.startsWith("ERROR");
        } catch (Exception e) {
            Log.e(TAG, "writeMemory error", e);
            return false;
        }
    }

    @Override
    public long findBaseAddress(int pid, String libName) {
        try {
            String maps = execCommand("cat /proc/" + pid + "/maps");
            if (maps == null || maps.isEmpty()) return -1;
            for (String line : maps.split("\n")) {
                if (line.contains(libName)) {
                    String[] parts = line.split("-");
                    if (parts.length >= 1) {
                        return Long.parseLong(parts[0].trim(), 16);
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "findBaseAddress error", e);
        }
        return -1;
    }

    @Override
    public long[] scanPattern(int pid, long startAddr, long endAddr, String pattern) {
        // TODO: implement pattern scan
        return new long[0];
    }

    @Override
    public boolean pokeMemory(int pid, long address, int value) {
        try {
            byte[] data = new byte[]{
                (byte) (value & 0xFF),
                (byte) ((value >> 8) & 0xFF),
                (byte) ((value >> 16) & 0xFF),
                (byte) ((value >> 24) & 0xFF)
            };
            return writeMemory(pid, address, data);
        } catch (Exception e) {
            Log.e(TAG, "pokeMemory error", e);
            return false;
        }
    }

    @Override
    public int peekMemory(int pid, long address) {
        try {
            byte[] data = readMemory(pid, address, 4);
            if (data == null || data.length < 4) return 0;
            return (data[0] & 0xFF) | ((data[1] & 0xFF) << 8) |
                   ((data[2] & 0xFF) << 16) | ((data[3] & 0xFF) << 24);
        } catch (Exception e) {
            Log.e(TAG, "peekMemory error", e);
            return 0;
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
