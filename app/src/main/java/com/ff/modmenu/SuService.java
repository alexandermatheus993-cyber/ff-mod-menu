package com.ff.modmenu;

import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.ArrayList;
import rikka.shizuku.Shizuku;

public class SuService extends ISuService.Stub {

    private static final String TAG = "SuService";

    private static Process newShizukuProcess(String[] cmd) throws Exception {
        Method m = Shizuku.class.getDeclaredMethod("newProcess", String[].class, String[].class, String.class);
        m.setAccessible(true);
        return (Process) m.invoke(null, cmd, null, null);
    }

    @Override
    public String readMemory(int pid, long address, int size) {
        try {
            Process p = newShizukuProcess(new String[]{"cat", "/proc/" + pid + "/mem"});
            InputStream is = p.getInputStream();
            if (is.skip(address) != address) { is.close(); p.destroy(); return ""; }
            byte[] buf = new byte[size];
            int read = is.read(buf);
            is.close(); p.destroy();
            if (read <= 0) return "";
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < read; i++) sb.append(String.format("%02X", buf[i] & 0xFF));
            return sb.toString();
        } catch (Exception e) { Log.e(TAG, "readMemory", e); return ""; }
    }

    @Override
    public boolean writeMemory(int pid, long address, String hexValue) {
        try {
            byte[] data = hexToBytes(hexValue);
            Process p = newShizukuProcess(new String[]{"dd", "of=/proc/" + pid + "/mem", "bs=1", "seek=" + address, "count=" + data.length});
            OutputStream os = p.getOutputStream();
            os.write(data); os.flush(); os.close();
            return p.waitFor() == 0;
        } catch (Exception e) { Log.e(TAG, "writeMemory", e); return false; }
    }

    @Override
    public int findPid(String packageName) {
        try {
            Process p = newShizukuProcess(new String[]{"pidof", packageName});
            byte[] buf = new byte[256];
            int read = p.getInputStream().read(buf);
            p.waitFor();
            if (read <= 0) return -1;
            return Integer.parseInt(new String(buf, 0, read).trim());
        } catch (Exception e) { Log.e(TAG, "findPid", e); return -1; }
    }

    @Override
    public long findBaseAddress(int pid, String libName) {
        try {
            Process p = newShizukuProcess(new String[]{"cat", "/proc/" + pid + "/maps"});
            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.contains(libName) && line.contains("r-xp")) {
                    reader.close(); p.destroy();
                    return Long.parseLong(line.split("-")[0], 16);
                }
            }
            reader.close(); p.destroy();
        } catch (Exception e) { Log.e(TAG, "findBaseAddress", e); }
        return 0;
    }

    @Override
    public long[] scanPattern(int pid, long startAddr, long endAddr, String pattern) {
        try {
            byte[] search = hexToBytes(pattern);
            Process p = newShizukuProcess(new String[]{"cat", "/proc/" + pid + "/mem"});
            InputStream is = p.getInputStream();
            is.skip(startAddr);
            long remaining = endAddr - startAddr;
            byte[] buf = new byte[4096];
            ArrayList<Long> results = new ArrayList<>();
            long currentAddr = startAddr;
            while (remaining > 0) {
                int toRead = (int) Math.min(buf.length, remaining);
                int read = is.read(buf, 0, toRead);
                if (read <= 0) break;
                for (int i = 0; i <= read - search.length; i++) {
                    boolean match = true;
                    for (int j = 0; j < search.length; j++) {
                        if (buf[i + j] != search[j]) { match = false; break; }
                    }
                    if (match) results.add(currentAddr + i);
                }
                currentAddr += read; remaining -= read;
            }
            is.close(); p.destroy();
            long[] arr = new long[results.size()];
            for (int i = 0; i < arr.length; i++) arr[i] = results.get(i);
            return arr;
        } catch (Exception e) { Log.e(TAG, "scanPattern", e); return new long[0]; }
    }

    @Override
    public boolean pokeMemory(int pid, long address, int value) {
        return writeMemory(pid, address, String.format("%08X", value));
    }

    @Override
    public int peekMemory(int pid, long address) {
        String hex = readMemory(pid, address, 4);
        if (hex.isEmpty()) return 0;
        try { return (int) Long.parseLong(hex, 16); } catch (Exception e) { return 0; }
    }

    private static byte[] hexToBytes(String hex) {
        hex = hex.replaceAll("\\s+", "");
        int len = hex.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2)
            data[i / 2] = (byte) ((Character.digit(hex.charAt(i), 16) << 4) + Character.digit(hex.charAt(i + 1), 16));
        return data;
    }
}
