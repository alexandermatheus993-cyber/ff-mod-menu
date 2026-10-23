package com.ff.modmenu;

import android.app.Service;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.util.Log;
import android.view.*;
import android.widget.*;

public class FloatingModService extends Service {
    private static final String TAG = "FFModMenu";
    private WindowManager windowManager;
    private View menuButton, menuPanel;
    private boolean menuOpen = false;
    private int targetPid = -1;
    private String foundPackage = null;
    private TextView pidStatus;

    @Override
    public IBinder onBind(Intent intent) { return null; }

    @Override
    public void onCreate() {
        super.onCreate();
        windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);
        ServiceHolder.requestBind();
        createFloatingButton();
    }

    private void findFFAuto() {
        ServiceHolder.requestBind();
        ServiceHolder.waitForBind(5000);
        final ISuService svc = ServiceHolder.get();
        if (svc == null) {
            updateStatus("SuService OFF!", 0xFFFF4444);
            return;
        }
        updateStatus("Buscando FF...", 0xFFFFD700);
        new Thread(() -> {
            try {
                // Method 1: findPid (uses ps -A internally)
                int pid = svc.findPid("com.dts.freefireth");
                Log.d(TAG, "findPid returned: " + pid);

                if (pid <= 0) {
                    // Method 2: try execCommand with ps directly
                    String psResult = svc.execCommand("ps -A | grep freefireth | grep -v grep | head -1 | awk '{print \$2}'");
                    Log.d(TAG, "ps direct result: '" + psResult + "'");
                    if (psResult != null && !psResult.isEmpty() && !psResult.startsWith("ERROR")) {
                        try { pid = Integer.parseInt(psResult.trim()); } catch (Exception ignored) {}
                    }
                }

                // Method 3: broader search
                if (pid <= 0) {
                    String broad = svc.execCommand("ps -A | grep -iE 'free.?fire|garena|dts' | grep -v grep");
                    Log.d(TAG, "broad search: '" + broad + "'");
                    if (broad != null && !broad.isEmpty() && !broad.startsWith("ERROR")) {
                        for (String line : broad.split("\n")) {
                            String[] parts = line.trim().split("\s+");
                            if (parts.length >= 2) {
                                try {
                                    pid = Integer.parseInt(parts[1]);
                                    break;
                                } catch (Exception ignored) {}
                            }
                        }
                    }
                }

                final int foundPid = pid;
                targetPid = foundPid;
                foundPackage = foundPid > 0 ? "com.dts.freefireth" : null;

                pidStatus.post(() -> {
                    if (foundPid > 0) {
                        pidStatus.setText("FF PID:" + foundPid + " [ATIVO]");
                        pidStatus.setTextColor(0xFF00FF88);
                    } else {
                        pidStatus.setText("FF NAO ABERTO");
                        pidStatus.setTextColor(0xFFFF4444);
                    }
                });
            } catch (Exception e) {
                Log.e(TAG, "findFF error", e);
                updateStatus("ERRO: " + e.getMessage(), 0xFFFF4444);
            }
        }).start();
    }

    private void launchFF() {
        final ISuService svc;
        ServiceHolder.requestBind();
        ServiceHolder.waitForBind(5000);
        svc = ServiceHolder.get();
        if (svc == null) {
            Toast.makeText(this, "SuService OFF!", Toast.LENGTH_SHORT).show();
            return;
        }
        Toast.makeText(this, "Abrindo Free Fire...", Toast.LENGTH_SHORT).show();
        new Thread(() -> {
            try {
                // Launch via am start
                svc.execCommand("am start -n com.dts.freefireth/com.dts.freefireth.GameMainActivity 2>/dev/null || monkey -p com.dts.freefireth -c android.intent.category.LAUNCHER 1 2>/dev/null");
                // Wait and find PID
                Thread.sleep(5000);
                int pid = svc.findPid("com.dts.freefireth");
                targetPid = pid;
                pidStatus.post(() -> {
                    if (pid > 0) {
                        pidStatus.setText("FF PID:" + pid + " [ATIVO]");
                        pidStatus.setTextColor(0xFF00FF88);
                    } else {
                        pidStatus.setText("FF aberto, buscando PID...");
                        pidStatus.setTextColor(0xFFFFD700);
                    }
                });
            } catch (Exception e) {
                Log.e(TAG, "launch error", e);
            }
        }).start();
    }

    private void updateStatus(String text, int color) {
        pidStatus.post(() -> { pidStatus.setText(text); pidStatus.setTextColor(color); });
    }

    private void createFloatingButton() {
        WindowManager.LayoutParams p = new WindowManager.LayoutParams(140, 140,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE, PixelFormat.TRANSLUCENT);
        p.gravity = Gravity.TOP | Gravity.START; p.x = 20; p.y = 300;

        LinearLayout btn = new LinearLayout(this);
        btn.setBackgroundColor(0xFF00FF88); btn.setGravity(Gravity.CENTER);
        TextView t = new TextView(this);
        t.setText("MOD"); t.setTextColor(Color.BLACK); t.setTextSize(14);
        t.setTypeface(null, android.graphics.Typeface.BOLD);
        btn.addView(t);
        menuButton = btn;

        final float[] tx = {0}; final float[] ty = {0};
        final int[] sx = {0}; final int[] sy = {0};
        menuButton.setOnTouchListener((v, ev) -> {
            switch (ev.getAction()) {
                case MotionEvent.ACTION_DOWN: tx[0]=ev.getRawX(); ty[0]=ev.getRawY(); sx[0]=p.x; sy[0]=p.y; return true;
                case MotionEvent.ACTION_MOVE: p.x=sx[0]+(int)(ev.getRawX()-tx[0]); p.y=sy[0]+(int)(ev.getRawY()-ty[0]); windowManager.updateViewLayout(menuButton,p); return true;
                case MotionEvent.ACTION_UP: if(Math.abs(ev.getRawX()-tx[0])<10&&Math.abs(ev.getRawY()-ty[0])<10) toggleMenu(); return true;
            }
            return false;
        });
        windowManager.addView(menuButton, p);
        createMenuPanel();
    }

    private void createMenuPanel() {
        WindowManager.LayoutParams p = new WindowManager.LayoutParams(800, WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL, PixelFormat.TRANSLUCENT);
        p.gravity = Gravity.CENTER;

        LinearLayout panel = new LinearLayout(this);
        panel.setOrientation(LinearLayout.VERTICAL);
        panel.setBackgroundColor(0xDD1A1A2E); panel.setPadding(30,30,30,30);

        TextView title = new TextView(this);
        title.setText("FF MOD MENU"); title.setTextColor(0xFF00FF88); title.setTextSize(18);
        title.setGravity(Gravity.CENTER); title.setPadding(0,0,0,20);
        panel.addView(title);

        pidStatus = new TextView(this);
        pidStatus.setText("AGUARDANDO..."); pidStatus.setTextColor(0xFFFFD700); pidStatus.setTextSize(11);
        pidStatus.setPadding(0,0,0,15); panel.addView(pidStatus);

        LinearLayout row = new LinearLayout(this); row.setOrientation(LinearLayout.HORIZONTAL);
        Button bRefresh = new Button(this); bRefresh.setText("BUSCAR FF"); bRefresh.setTextSize(10);
        bRefresh.setOnClickListener(v -> findFFAuto()); row.addView(bRefresh);
        Button bLaunch = new Button(this); bLaunch.setText("ABRIR FF"); bLaunch.setTextSize(10);
        bLaunch.setOnClickListener(v -> launchFF()); row.addView(bLaunch);
        Button bScan = new Button(this); bScan.setText("SCANNER"); bScan.setTextSize(10);
        bScan.setOnClickListener(v -> { startActivity(new Intent(this, MemoryScannerActivity.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)); });
        row.addView(bScan);
        panel.addView(row);

        addSwitch(panel, "No Recoil", false);
        addSwitch(panel, "Headshot Hack", false);
        addSwitch(panel, "Aimbot", false);
        addSwitch(panel, "Antena Hack", false);
        addSwitch(panel, "ESP Line", false);

        Button bClose = new Button(this); bClose.setText("FECHAR");
        bClose.setOnClickListener(v -> toggleMenu()); panel.addView(bClose);

        menuPanel = panel; menuPanel.setVisibility(View.GONE);
        windowManager.addView(menuPanel, p);
    }

    private Switch addSwitch(LinearLayout parent, String text, boolean checked) {
        Switch sw = new Switch(this); sw.setText(text); sw.setTextColor(0xFFFFFFFF);
        sw.setTextSize(14); sw.setChecked(checked); sw.setPadding(0,8,0,8);
        parent.addView(sw); return sw;
    }

    private void toggleMenu() {
        menuOpen = !menuOpen;
        menuPanel.setVisibility(menuOpen ? View.VISIBLE : View.GONE);
        if (menuOpen) findFFAuto();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (menuButton != null) try { windowManager.removeView(menuButton); } catch (Exception ignored) {}
        if (menuPanel != null) try { windowManager.removeView(menuPanel); } catch (Exception ignored) {}
    }
}
