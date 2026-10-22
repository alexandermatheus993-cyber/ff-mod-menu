package com.ff.modmenu;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;

import rikka.shizuku.Shizuku;

public class FloatingModService extends Service {

    private static final String TAG = "FFModMenu";
    private static final String FF_PACKAGE = "com.dts.freefireth";

    private WindowManager windowManager;
    private LinearLayout floatingView;
    private LinearLayout menuPanel;
    private boolean menuVisible = false;

    private ISuService suService;
    private boolean suBound = false;
    private int ffPid = -1;

    // =============================================
    // FREE FIRE OFFSETS — UPDATE THESE PER VERSION
    // =============================================
    // These are placeholder offsets. Replace with real ones
    // found via memory scanning (GameGuardian, etc.)
    private static final long OFFSET_HEADSHOT_X     = 0x1A3B5C0L;
    private static final long OFFSET_HEADSHOT_Y     = 0x1A3B5C4L;
    private static final long OFFSET_SPEED          = 0x2B4C6D0L;
    private static final long OFFSET_AIMBOT_RADIUS  = 0x3C5D7E0L;
    private static final long OFFSET_RECOIL_1       = 0x4D6E8F0L;
    private static final long OFFSET_RECOIL_2       = 0x4D6E8F4L;
    private static final long OFFSET_AIM_X          = 0x5E7F9A0L;
    private static final long OFFSET_AIM_Y          = 0x5E7F9A4L;
    // =============================================

    private final ServiceConnection suConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            suService = ISuService.Stub.asInterface(service);
            suBound = true;
            Log.d(TAG, "SuService CONNECTED");
            refreshPid();
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            suService = null;
            suBound = false;
            ffPid = -1;
            Log.d(TAG, "SuService DISCONNECTED");
        }
    };

    private void refreshPid() {
        if (!suBound || suService == null) return;
        try {
            ffPid = suService.findPid(FF_PACKAGE);
            Log.d(TAG, "Free Fire PID: " + ffPid);
        } catch (RemoteException e) {
            Log.e(TAG, "refreshPid error", e);
        }
    }

    // ---- Memory helper methods ----

    private boolean writeInt(int pid, long address, int value) {
        if (!suBound || suService == null) return false;
        try {
            byte[] bytes = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(value).array();
            return suService.writeMemory(pid, address, bytes);
        } catch (Exception e) {
            Log.e(TAG, "writeInt error", e);
        }
        return false;
    }

    private boolean writeFloat(int pid, long address, float value) {
        if (!suBound || suService == null) return false;
        try {
            byte[] bytes = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(value).array();
            return suService.writeMemory(pid, address, bytes);
        } catch (Exception e) {
            Log.e(TAG, "writeFloat error", e);
        }
        return false;
    }

    private boolean writeBytes(int pid, long address, byte[] bytes) {
        if (!suBound || suService == null) return false;
        try {
            return suService.writeMemory(pid, address, bytes);
        } catch (Exception e) {
            Log.e(TAG, "writeBytes error", e);
        }
        return false;
    }

    private boolean nopBytes(int pid, long address, int count) {
        byte[] nops = new byte[count];
        for (int i = 0; i < count; i++) nops[i] = (byte) 0x90; // NOP instruction (ARM: 0x00 0xF0 0x20 0xE3)
        // For ARM, NOP is: 0x00 0x00 0xA0 0xE1 (mov r0, r0)
        for (int i = 0; i < count; i += 4) {
            if (i + 3 < count) {
                nops[i]   = 0x00;
                nops[i+1] = 0x00;
                nops[i+2] = (byte) 0xA0;
                nops[i+3] = (byte) 0xE1;
            }
        }
        return writeBytes(pid, address, nops);
    }

    // ---- Mod implementations ----

    private void applyMod(String key, boolean enable) {
        if (!suBound || suService == null) {
            Log.e(TAG, "SuService not bound!");
            return;
        }

        // Refresh PID if needed
        if (ffPid <= 0) {
            refreshPid();
            if (ffPid <= 0) {
                Log.w(TAG, "Free Fire não está rodando! Inicie o jogo primeiro.");
                return;
            }
        }

        boolean success = false;

        switch (key) {
            case "headshot":
                // Set aim Y to head level
                if (enable) {
                    success = writeFloat(ffPid, OFFSET_HEADSHOT_Y, 0.85f);
                    success = writeFloat(ffPid, OFFSET_HEADSHOT_X, 0.00f) && success;
                    Log.d(TAG, "Headshot ON: " + success);
                } else {
                    success = writeFloat(ffPid, OFFSET_HEADSHOT_Y, 0.0f);
                    Log.d(TAG, "Headshot OFF: " + success);
                }
                break;

            case "speed":
                // Write speed multiplier (1.0 = normal, 2.0 = 2x speed)
                if (enable) {
                    success = writeFloat(ffPid, OFFSET_SPEED, 2.0f);
                    Log.d(TAG, "Speed 2x ON: " + success);
                } else {
                    success = writeFloat(ffPid, OFFSET_SPEED, 1.0f);
                    Log.d(TAG, "Speed NORMAL: " + success);
                }
                break;

            case "aimbot":
                // Set aim assist radius (large value = magnet-like)
                if (enable) {
                    success = writeFloat(ffPid, OFFSET_AIMBOT_RADIUS, 500.0f);
                    Log.d(TAG, "Aimbot ON: " + success);
                } else {
                    success = writeFloat(ffPid, OFFSET_AIMBOT_RADIUS, 0.0f);
                    Log.d(TAG, "Aimbot OFF: " + success);
                }
                break;

            case "norecoil":
                // NOP the recoil instructions
                if (enable) {
                    success = nopBytes(ffPid, OFFSET_RECOIL_1, 8);
                    success = nopBytes(ffPid, OFFSET_RECOIL_2, 8) && success;
                    Log.d(TAG, "NoRecoil ON: " + success);
                } else {
                    // Restore original recoil bytes (you'll need to save originals)
                    byte[] origRecoil = {(byte)0x04,(byte)0xB0,(byte)0x2D,(byte)0xE5,
                                         (byte)0x00,(byte)0x00,(byte)0x50,(byte)0xE3};
                    success = writeBytes(ffPid, OFFSET_RECOIL_1, origRecoil);
                    Log.d(TAG, "NoRecoil OFF: " + success);
                }
                break;

            case "esp":
                // ESP just enables rendering flags
                if (enable) {
                    success = writeInt(ffPid, OFFSET_AIM_X, 1);
                    Log.d(TAG, "ESP ON: " + success);
                } else {
                    success = writeInt(ffPid, OFFSET_AIM_X, 0);
                    Log.d(TAG, "ESP OFF: " + success);
                }
                break;

            case "antena":
                // Antena = stretch player model visibility
                if (enable) {
                    success = writeFloat(ffPid, OFFSET_AIM_Y, 10.0f);
                    Log.d(TAG, "Antena ON: " + success);
                } else {
                    success = writeFloat(ffPid, OFFSET_AIM_Y, 1.0f);
                    Log.d(TAG, "Antena OFF: " + success);
                }
                break;
        }

        Log.i(TAG, String.format("[%s] %s -> %s (pid=%d)", key, enable?"ON":"OFF", success?"OK":"FAIL", ffPid));
    }

    @Override
    public IBinder onBind(Intent intent) { return null; }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "FloatingModService onCreate");
        windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);
        createFloatingButton();
        createMenuPanel();

        // Bind to SuService via Shizuku
        try {
            Intent suIntent = new Intent(this, SuService.class);
            Shizuku.bindUserService(
                new rikka.shizuku.Shizuku.UserServiceArgs(new ComponentName(getPackageName(), SuService.class.getName()))
                    .daemon(false)
                    .processNameSuffix("su")
                    .debuggable(true)
                    .version(1),
                suConnection
            );
            Log.d(TAG, "SuService bind requested");
        } catch (Exception e) {
            Log.e(TAG, "Failed to bind SuService", e);
            // Fallback: try direct bind
            try {
                Intent suIntent = new Intent(this, SuService.class);
                bindService(suIntent, suConnection, BIND_AUTO_CREATE);
            } catch (Exception e2) {
                Log.e(TAG, "Fallback bind also failed", e2);
            }
        }
    }

    private void createFloatingButton() {
        floatingView = new LinearLayout(this);
        floatingView.setOrientation(LinearLayout.VERTICAL);
        floatingView.setBackgroundColor(0xCCFF4444);
        floatingView.setPadding(24, 24, 24, 24);

        TextView icon = new TextView(this);
        icon.setText("MOD");
        icon.setTextColor(Color.WHITE);
        icon.setTextSize(14f);
        icon.setGravity(Gravity.CENTER);
        floatingView.addView(icon);

        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
        );
        params.gravity = Gravity.TOP | Gravity.START;
        params.x = 20;
        params.y = 200;

        windowManager.addView(floatingView, params);

        floatingView.setOnTouchListener(new View.OnTouchListener() {
            private int initialX, initialY;
            private float initialTouchX, initialTouchY;
            private long touchStartTime;

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        initialX = params.x;
                        initialY = params.y;
                        initialTouchX = event.getRawX();
                        initialTouchY = event.getRawY();
                        touchStartTime = System.currentTimeMillis();
                        return true;
                    case MotionEvent.ACTION_MOVE:
                        params.x = initialX + (int) (event.getRawX() - initialTouchX);
                        params.y = initialY + (int) (event.getRawY() - initialTouchY);
                        windowManager.updateViewLayout(floatingView, params);
                        return true;
                    case MotionEvent.ACTION_UP:
                        if (System.currentTimeMillis() - touchStartTime < 200) {
                            toggleMenu();
                        }
                        return true;
                }
                return false;
            }
        });
    }

    private void createMenuPanel() {
        menuPanel = new LinearLayout(this);
        menuPanel.setOrientation(LinearLayout.VERTICAL);
        menuPanel.setBackgroundColor(0xFF1A1A2E);
        menuPanel.setPadding(32, 32, 32, 32);

        // Title
        TextView title = new TextView(this);
        title.setText("FF MOD MENU");
        title.setTextColor(0xFFFF4444);
        title.setTextSize(22f);
        title.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        tp.setMargins(0, 0, 0, 32);
        menuPanel.addView(title, tp);

        // Status indicator
        TextView status = new TextView(this);
        status.setText(suBound ? "● SHIZUKU OK" : "○ AGUARDANDO...");
        status.setTextColor(suBound ? 0xFF00FF00 : 0xFFFFFF00);
        status.setTextSize(12f);
        status.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        sp.setMargins(0, 0, 0, 24);
        menuPanel.addView(status, sp);

        // Mod switches
        addModSwitch("Headshot Hack", "headshot");
        addModSwitch("Speed Hack 2x", "speed");
        addModSwitch("Aimbot Magnet", "aimbot");
        addModSwitch("No Recoil", "norecoil");
        addModSwitch("Antena Hack", "antena");
        addModSwitch("ESP Line", "esp");

        // Close button
        Button btnClose = new Button(this);
        btnClose.setText("FECHAR MENU");
        btnClose.setBackgroundColor(0xFFFF4444);
        btnClose.setTextColor(Color.WHITE);
        btnClose.setOnClickListener(v -> toggleMenu());
        LinearLayout.LayoutParams cp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        cp.setMargins(0, 32, 0, 0);
        menuPanel.addView(btnClose, cp);

        // Refresh PID button
        Button btnRefresh = new Button(this);
        btnRefresh.setText("RECARREGAR PID");
        btnRefresh.setBackgroundColor(0xFF2196F3);
        btnRefresh.setTextColor(Color.WHITE);
        btnRefresh.setOnClickListener(v -> {
            refreshPid();
            Toast.makeText(this, "PID: " + ffPid, Toast.LENGTH_SHORT).show();
        });
        LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        rp.setMargins(0, 16, 0, 0);
        menuPanel.addView(btnRefresh, rp);

        // Launch FF button
        Button btnLaunch = new Button(this);
        btnLaunch.setText("ABRIR FREE FIRE");
        btnLaunch.setBackgroundColor(0xFF00C853);
        btnLaunch.setTextColor(Color.WHITE);
        btnLaunch.setOnClickListener(v -> {
            Intent launchIntent = getPackageManager().getLaunchIntentForPackage(FF_PACKAGE);
            if (launchIntent != null) {
                startActivity(launchIntent);
            } else {
                Toast.makeText(this, "Free Fire não instalado!", Toast.LENGTH_SHORT).show();
            }
        });
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        lp.setMargins(0, 16, 0, 0);
        menuPanel.addView(btnLaunch, lp);

        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                700, WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
                PixelFormat.TRANSLUCENT
        );
        params.gravity = Gravity.CENTER;

        menuPanel.setVisibility(View.GONE);
        windowManager.addView(menuPanel, params);
    }

    private void addModSwitch(String label, String key) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(0, 12, 0, 12);

        TextView tv = new TextView(this);
        tv.setText(label);
        tv.setTextColor(Color.WHITE);
        tv.setTextSize(16f);
        LinearLayout.LayoutParams tvp = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        row.addView(tv, tvp);

        Switch sw = new Switch(this);
        sw.setChecked(false);
        sw.setOnCheckedChangeListener((btn, checked) -> {
            String status = checked ? "ATIVADO" : "DESATIVADO";
            Toast.makeText(this, label + ": " + status, Toast.LENGTH_SHORT).show();
            applyMod(key, checked);
        });
        row.addView(sw);

        LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        rp.setMargins(0, 8, 0, 8);
        menuPanel.addView(row, rp);
    }

    private void toggleMenu() {
        menuVisible = !menuVisible;
        menuPanel.setVisibility(menuVisible ? View.VISIBLE : View.GONE);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (floatingView != null) windowManager.removeView(floatingView);
        if (menuPanel != null) windowManager.removeView(menuPanel);
        if (suBound) {
            try { suService.closeSu(); } catch (Exception ignored) {}
            unbindService(suConnection);
        }
    }
}
