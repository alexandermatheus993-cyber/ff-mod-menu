package com.ff.modmenu;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class GameScanner {
    public interface Callback {
        void onGameFound(int pid);
    }

    private volatile boolean running = false;
    private Thread thread;
    private final Callback callback;

    public GameScanner(Callback callback) {
        this.callback = callback;
    }

    public void start() {
        running = true;
        thread = new Thread(() -> {
            while (running) {
                try {
                    int pid = findGamePid();
                    if (pid > 0) {
                        callback.onGameFound(pid);
                        while (running && new File("/proc/" + pid).exists()) {
                            Thread.sleep(3000);
                        }
                    } else {
                        Thread.sleep(2000);
                    }
                } catch (Exception e) {
                    try { Thread.sleep(2000); } catch (InterruptedException ignored) {}
                }
            }
        }, "GameScanner");
        thread.setDaemon(true);
        thread.start();
    }

    public void stop() {
        running = false;
    }

    private int findGamePid() {
        File[] files = new File("/proc").listFiles();
        if (files == null) return 0;
        for (File f : files) {
            if (!f.isDirectory()) continue;
            try {
                Integer.parseInt(f.getName());
                BufferedReader br = new BufferedReader(new FileReader(new File(f, "cmdline")));
                String cmd = br.readLine();
                br.close();
                if (cmd != null && cmd.contains("com.dts.freefireth")) {
                    return Integer.parseInt(f.getName());
                }
            } catch (Exception ignored) {}
        }
        return 0;
    }

    public static long getLibBase(int pid, String libName) {
        try {
            BufferedReader br = new BufferedReader(new FileReader("/proc/" + pid + "/maps"));
            String line;
            while ((line = br.readLine()) != null) {
                if (line.contains(libName) && line.contains("r-xp")) {
                    br.close();
                    return Long.parseLong(line.split("-")[0], 16);
                }
            }
            br.close();
        } catch (Exception e) { e.printStackTrace(); }
        return 0;
    }
}
