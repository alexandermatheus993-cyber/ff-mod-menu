package com.ff.modmenu.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.File;
import java.io.FileReader;

import com.ff.modmenu.ISuService;

public class SuService extends ISuService.Stub {

    static {
        System.loadLibrary("ffmod_native");
    }

    private native long[] nativeScanPattern(int pid, long start, long end, String pattern);
    private native boolean nativeWriteBytes(int pid, long addr, byte[] data);
    private native byte[] nativeReadBytes(int pid, long addr, int size);
    private native boolean nativePoke(int pid, long addr, int value);
    private native int nativePeek(int pid, long addr);

    @Override
    public int findPid(String packageName) {
        try {
            // Shizuku: ler /proc direto, sem su
            File proc = new File("/proc");
            File[] files = proc.listFiles();
            if (files == null) return -1;
            for (File f : files) {
                if (!f.isDirectory()) continue;
                try {
                    int pid = Integer.parseInt(f.getName());
                    File cmdline = new File(f, "cmdline");
                    BufferedReader br = new BufferedReader(new FileReader(cmdline));
                    String cmd = br.readLine();
                    br.close();
                    if (cmd != null && cmd.contains(packageName)) return pid;
                } catch (Exception ignored) {}
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    @Override
    public long findBaseAddress(int pid, String libName) {
        try {
            // Shizuku: ler /proc/pid/maps direto, sem su
            File maps = new File("/proc/" + pid + "/maps");
            BufferedReader br = new BufferedReader(new FileReader(maps));
            String line;
            while ((line = br.readLine()) != null) {
                if (line.contains(libName)) {
                    br.close();
                    int dash = line.indexOf('-');
                    if (dash > 0) {
                        return Long.parseLong(line.substring(0, dash), 16);
                    }
                }
            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    @Override
    public String readMemory(int pid, long address, int size) {
        byte[] data = nativeReadBytes(pid, address, size);
        if (data == null) return null;
        StringBuilder sb = new StringBuilder();
        for (byte b : data) sb.append(String.format("%02X", b));
        return sb.toString();
    }

    @Override
    public boolean writeMemory(int pid, long address, String hexValue) {
        byte[] data = hexStringToByteArray(hexValue);
        return nativeWriteBytes(pid, address, data);
    }

    @Override
    public long[] scanPattern(int pid, long startAddr, long endAddr, String pattern) {
        return nativeScanPattern(pid, startAddr, endAddr, pattern);
    }

    @Override
    public boolean pokeMemory(int pid, long address, int value) {
        return nativePoke(pid, address, value);
    }

    @Override
    public int peekMemory(int pid, long address) {
        return nativePeek(pid, address);
    }

    private byte[] hexStringToByteArray(String s) {
        int len = s.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                    + Character.digit(s.charAt(i + 1), 16));
        }
        return data;
    }
}
