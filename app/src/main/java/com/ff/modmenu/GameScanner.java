package com.ff.modmenu;

import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.io.FileInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class GameScanner extends Thread {
    private static final String TARGET = "com.dts.freefireth";
    private volatile boolean running = true;
    private PidCallback callback;
    private Handler handler;
    private int lastPid = -1;

    public interface PidCallback {
        void onPidFound(int pid);
    }

    public GameScanner(PidCallback callback) {
        this.callback = callback;
        this.handler = new Handler(Looper.getMainLooper());
    }

    @Override
    public void run() {
        while (running) {
            try {
                int pid = findPid();
                if (pid > 0 && pid != lastPid) {
                    lastPid = pid;
                    final int p = pid;
                    handler.post(new Runnable() {
                        public void run() {
                            callback.onPidFound(p);
                        }
                    });
                }
                Thread.sleep(2000);
            } catch (Exception e) {
                e.printStackTrace();
                try { Thread.sleep(5000); } catch (InterruptedException ex) {}
            }
        }
    }

    private int findPid() {
        try {
            File proc = new File("/proc");
            File[] dirs = proc.listFiles();
            if (dirs == null) return -1;
            for (File d : dirs) {
                if (!d.isDirectory()) continue;
                String name = d.getName();
                boolean numeric = true;
                for (int i = 0; i < name.length(); i++) {
                    if (!Character.isDigit(name.charAt(i))) {
                        numeric = false;
                        break;
                    }
                }
                if (!numeric) continue;
                try {
                    File cmdline = new File(d, "cmdline");
                    if (cmdline.exists() && cmdline.canRead()) {
                        FileInputStream fis = new FileInputStream(cmdline);
                        byte[] buf = new byte[256];
                        int len = fis.read(buf);
                        fis.close();
                        if (len > 0) {
                            String cmd = new String(buf, 0, len).trim();
                            if (cmd.contains(TARGET)) {
                                return Integer.parseInt(name);
                            }
                        }
                    }
                } catch (Exception e2) {}
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public static long getLibBase(int pid, String libName) {
        long base = 0;
        try {
            String mapsPath = "/proc/" + pid + "/maps";
            File mapsFile = new File(mapsPath);
            if (!mapsFile.exists() || !mapsFile.canRead()) return 0;

            BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(mapsFile)));
            String line;
            while ((line = br.readLine()) != null) {
                if (line.contains(libName) && line.contains("r-xp")) {
                    String[] parts = line.split("-");
                    if (parts.length > 0) {
                        base = Long.parseLong(parts[0].trim(), 16);
                        br.close();
                        return base;
                    }
                }
            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return base;
    }

    public void stopScanner() {
        running = false;
    }
}
