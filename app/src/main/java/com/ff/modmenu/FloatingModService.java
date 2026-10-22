package com.ff.modmenu;

import android.app.Service;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.Build;
import android.os.IBinder;
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

import java.util.HashMap;
import java.util.Map;

public class FloatingModService extends Service {

    private static final String TAG = "FFModMenu";
    private WindowManager windowManager;
    private LinearLayout floatingView;
    private LinearLayout menuPanel;
    private boolean menuVisible = false;
    private Map<String, Boolean> modStates = new HashMap<>();

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "FloatingModService onCreate");
        windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);

        // Mod states
        modStates.put("headshot", false);
        modStates.put("speed", false);
        modStates.put("aimbot", false);
        modStates.put("norecoil", false);
        modStates.put("antena", false);
        modStates.put("esp", false);

        createFloatingButton();
        createMenuPanel();
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

        // Drag to move
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
                        long duration = System.currentTimeMillis() - touchStartTime;
                        if (duration < 200) {
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
        LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        titleParams.setMargins(0, 0, 0, 32);
        menuPanel.addView(title, titleParams);

        // Mod switches
        addModSwitch("Headshot Hack", "headshot");
        addModSwitch("Speed Hack", "speed");
        addModSwitch("Aimbot", "aimbot");
        addModSwitch("No Recoil", "norecoil");
        addModSwitch("Antena Hack", "antena");
        addModSwitch("ESP Line", "esp");

        // Close button
        Button btnClose = new Button(this);
        btnClose.setText("FECHAR MENU");
        btnClose.setBackgroundColor(0xFFFF4444);
        btnClose.setTextColor(Color.WHITE);
        btnClose.setOnClickListener(v -> toggleMenu());
        LinearLayout.LayoutParams closeParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        closeParams.setMargins(0, 32, 0, 0);
        menuPanel.addView(btnClose, closeParams);

        // Start/Stop Free Fire button
        Button btnLaunch = new Button(this);
        btnLaunch.setText("ABRIR FREE FIRE");
        btnLaunch.setBackgroundColor(0xFF00C853);
        btnLaunch.setTextColor(Color.WHITE);
        btnLaunch.setOnClickListener(v -> {
            Intent launchIntent = getPackageManager().getLaunchIntentForPackage("com.dts.freefireth");
            if (launchIntent != null) {
                startActivity(launchIntent);
            } else {
                Toast.makeText(this, "Free Fire não instalado!", Toast.LENGTH_SHORT).show();
            }
        });
        LinearLayout.LayoutParams launchParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        launchParams.setMargins(0, 16, 0, 0);
        menuPanel.addView(btnLaunch, launchParams);

        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                700,
                WindowManager.LayoutParams.WRAP_CONTENT,
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
        LinearLayout.LayoutParams tvParams = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        row.addView(tv, tvParams);

        Switch sw = new Switch(this);
        sw.setChecked(false);
        sw.setOnCheckedChangeListener((buttonView, isChecked) -> {
            modStates.put(key, isChecked);
            String status = isChecked ? "ATIVADO" : "DESATIVADO";
            Toast.makeText(this, label + ": " + status, Toast.LENGTH_SHORT).show();
            Log.d(TAG, "Mod " + key + " = " + isChecked);

            if (isChecked) {
                applyMod(key, true);
            } else {
                applyMod(key, false);
            }
        });
        row.addView(sw);

        LinearLayout.LayoutParams rowParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        rowParams.setMargins(0, 8, 0, 8);
        menuPanel.addView(row, rowParams);
    }

    private void applyMod(String key, boolean enable) {
        // TODO: Connect to SuService via Shizuku for memory writes
        // For now, just log
        Log.d(TAG, "applyMod: " + key + " = " + enable);
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
    }
}
