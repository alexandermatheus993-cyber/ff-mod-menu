package com.ff.modmenu;

import android.os.Handler;
import android.os.Looper;
import java.io.File;

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
                    handler.post(new Runnable() {
                        public void run() {
                            callback.onPidFound(pid);
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
                        java.io.FileInputStream fis = new java.io.FileInputStream(cmdline);
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

    public void stopScanner() {
        running = false;
    }
}
