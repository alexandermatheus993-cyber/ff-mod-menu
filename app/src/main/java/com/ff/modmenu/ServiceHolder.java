package com.ff.modmenu;
import android.os.Parcel;
import android.util.Log;
import rikka.shizuku.Shizuku;
import rikka.shizuku.ShizukuProvider;
import android.os.IBinder;
import android.os.Binder;

public class ServiceHolder {
    private static final String TAG = "ServiceHolder";
    private static ISuService instance;
    private static boolean initialized = false;

    public static void init() {
        if (initialized) return;
        initialized = true;
        instance = new ISuService() {
            @Override
            public boolean readMemory(int pid, long address, byte[] buffer, int length) {
                try {
                    String path = "/proc/" + pid + "/mem";
                    java.io.RandomAccessFile raf = new java.io.RandomAccessFile(path, "r");
                    raf.seek(address);
                    raf.readFully(buffer, 0, length);
                    raf.close();
                    return true;
                } catch (Exception e) {
                    Log.e(TAG, "read err: " + e.getMessage());
                    return false;
                }
            }
            @Override
            public boolean writeMemory(int pid, long address, byte[] buffer) {
                try {
                    String path = "/proc/" + pid + "/mem";
                    java.io.RandomAccessFile raf = new java.io.RandomAccessFile(path, "rw");
                    raf.seek(address);
                    raf.write(buffer);
                    raf.close();
                    return true;
                } catch (Exception e) {
                    Log.e(TAG, "write err: " + e.getMessage());
                    return false;
                }
            }
            @Override
            public String[] runCommand(String cmd) {
                try {
                    java.util.List<String> lines = new java.util.ArrayList<>();
                    Process p = Runtime.getRuntime().exec(new String[]{"sh","-c",cmd});
                    java.io.BufferedReader br = new java.io.BufferedReader(new java.io.InputStreamReader(p.getInputStream()));
                    String line;
                    while ((line = br.readLine()) != null) lines.add(line);
                    br.close();
                    p.waitFor();
                    return lines.toArray(new String[0]);
                } catch (Exception e) {
                    return new String[]{"ERROR: "+e.getMessage()};
                }
            }
        };
    }
    public static ISuService get() { return instance; }
}