package com.ff.modmenu;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import rikka.shizuku.Shizuku;
import android.util.Log;

public class SuService extends ISuService.Stub {

    private static final String TAG = "SuService";

    @Override
    public String readMemory(int pid, long address, int size) throws RemoteException {
        try {
            String path = "/proc/" + pid + "/mem";
            String[] cmd = {"cat", path};
            Process p = Shizuku.newProcess(cmd, null, null);
            FileInputStream fis = new FileInputStream(p.getInputStream());
            
            if (fis.skip(address) != address) {
                fis.close();
                p.destroy();
                return "";
            }
            
            byte[] buf = new byte[size];
            int read = fis.read(buf);
            fis.close();
            p.destroy();
            
            if (read <= 0) return "";
            
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < read; i++) {
                sb.append(String.format("%02X", buf[i] & 0xFF));
            }
            return sb.toString();
        } catch (Exception e) {
            Log.e(TAG, "readMemory failed", e);
            return "";
        }
    }

    @Override
    public boolean writeMemory(int pid, long address, String hexValue) throws RemoteException {
        try {
            byte[] data = hexStringToByteArray(hexValue);
            String path = "/proc/" + pid + "/mem";
            String[] cmd = {"dd", "of=" + path, "bs=1", "seek=" + address, "count=" + data.length};
            Process p = Shizuku.newProcess(cmd, null, null);
            FileOutputStream fos = new FileOutputStream(p.getOutputStream());
            fos.write(data);
            fos.flush();
            fos.close();
            int exit = p.waitFor();
            return exit == 0;
        } catch (Exception e) {
            Log.e(TAG, "writeMemory failed", e);
            return false;
        }
    }

    @Override
    public int findPid(String packageName) throws RemoteException {
        try {
            String[] cmd = {"pidof", packageName};
            Process p = Shizuku.newProcess(cmd, null, null);
            byte[] buf = new byte[256];
            int read = p.getInputStream().read(buf);
            p.waitFor();
            if (read <= 0) return -1;
            return Integer.parseInt(new String(buf, 0, read).trim());
        } catch (Exception e) {
            Log.e(TAG, "findPid failed", e);
            return -1;
        }
    }

    @Override
    public long findBaseAddress(int pid, String libName) throws RemoteException {
        try {
            String[] cmd = {"cat", "/proc/" + pid + "/maps"};
            Process p = Shizuku.newProcess(cmd, null, null);
            java.io.BufferedReader reader = new java.io.BufferedReader(
                new java.io.InputStreamReader(p.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.contains(libName) && line.contains("r-xp")) {
                    reader.close();
                    p.destroy();
                    return Long.parseLong(line.split("-")[0], 16);
                }
            }
            reader.close();
            p.destroy();
            return 0;
        } catch (Exception e) {
            Log.e(TAG, "findBaseAddress failed", e);
            return 0;
        }
    }

    @Override
    public long[] scanPattern(int pid, long startAddr, long endAddr, String pattern) throws RemoteException {
        try {
            byte[] searchBytes = hexStringToByteArray(pattern);
            String path = "/proc/" + pid + "/mem";
            String[] cmd = {"cat", path};
            Process p = Shizuku.newProcess(cmd, null, null);
            FileInputStream fis = new FileInputStream(p.getInputStream());
            
            fis.skip(startAddr);
            long remaining = endAddr - startAddr;
            byte[] buf = new byte[4096];
            java.util.ArrayList<Long> results = new java.util.ArrayList<>();
            long currentAddr = startAddr;
            
            while (remaining > 0) {
                int toRead = (int) Math.min(buf.length, remaining);
                int read = fis.read(buf, 0, toRead);
                if (read <= 0) break;
                
                for (int i = 0; i <= read - searchBytes.length; i++) {
                    boolean match = true;
                    for (int j = 0; j < searchBytes.length; j++) {
                        if (buf[i + j] != searchBytes[j]) {
                            match = false;
                            break;
                        }
                    }
                    if (match) results.add(currentAddr + i);
                }
                currentAddr += read;
                remaining -= read;
            }
            fis.close();
            p.destroy();
            
            long[] arr = new long[results.size()];
            for (int i = 0; i < arr.length; i++) arr[i] = results.get(i);
            return arr;
        } catch (Exception e) {
            Log.e(TAG, "scanPattern failed", e);
            return new long[0];
        }
    }

    @Override
    public boolean pokeMemory(int pid, long address, int value) throws RemoteException {
        String hex = String.format("%08X", value);
        return writeMemory(pid, address, hex);
    }

    @Override
    public int peekMemory(int pid, long address) throws RemoteException {
        String hex = readMemory(pid, address, 4);
        if (hex.isEmpty()) return 0;
        try {
            return (int) Long.parseLong(hex, 16);
        } catch (Exception e) {
            return 0;
        }
    }

    private static byte[] hexStringToByteArray(String hex) {
        hex = hex.replaceAll("\\s+", "");
        int len = hex.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(hex.charAt(i), 16) << 4)
                    + Character.digit(hex.charAt(i + 1), 16));
        }
        return data;
    }
}
