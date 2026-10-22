package com.ff.modmenu;

import android.app.Service;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;

public class FloatingMenuService extends Service {

    private WindowManager windowManager;
    private View floatingView;
    private View menuPanel;
    private boolean menuExpanded = false;

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        boolean antiban = intent.getBooleanExtra("antiban", false);
        boolean esp = intent.getBooleanExtra("esp", false);
        boolean aimbot = intent.getBooleanExtra("aimbot", false);
        boolean speed = intent.getBooleanExtra("speed", false);

        if (floatingView != null) {
            updateMenuState(antiban, esp, aimbot, speed);
            return START_STICKY;
        }

        windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);

        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        params.gravity = Gravity.TOP | Gravity.START;
        params.x = 0;
        params.y = 200;

        floatingView = LayoutInflater.from(this).inflate(R.layout.floating_menu, null);
        windowManager.addView(floatingView, params);

        View fab = floatingView.findViewById(R.id.fab_toggle);
        menuPanel = floatingView.findViewById(R.id.menu_panel);

        fab.setOnClickListener(v -> {
            menuExpanded = !menuExpanded;
            menuPanel.setVisibility(menuExpanded ? View.VISIBLE : View.GONE);
        });

        makeDraggable(fab, params);
        setupMenuItems();
        updateMenuState(antiban, esp, aimbot, speed);

        return START_STICKY;
    }

    private void makeDraggable(View view, WindowManager.LayoutParams params) {
        view.setOnTouchListener(new View.OnTouchListener() {
            private int initialX, initialY;
            private float initialTouchX, initialTouchY;

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        initialX = params.x;
                        initialY = params.y;
                        initialTouchX = event.getRawX();
                        initialTouchY = event.getRawY();
                        return true;
                    case MotionEvent.ACTION_MOVE:
                        params.x = initialX + (int) (event.getRawX() - initialTouchX);
                        params.y = initialY + (int) (event.getRawY() - initialTouchY);
                        windowManager.updateViewLayout(floatingView, params);
                        return true;
                }
                return false;
            }
        });
    }

    private void setupMenuItems() {
        addCategory("🎯 COMBATE", "Aimbot", "Headshot 100%", "No Recoil", "Auto Fire", "Silent Aim");
        addCategory("👁️ VISUAL", "ESP Player", "ESP Name", "ESP Health", "ESP Distance", "Antenna Hack");
        addCategory("🏃 MOVIMENTO", "Speed Hack x2", "Speed Hack x3", "Wallhack", "Teleport Kill", "Fly Hack");
        addCategory("⚙️ MISC", "Anti-Ban", "Ghost Mode", "Unlimited Ammo", "Diamonds +9999", "Anti-Detect");
    }

    private void addCategory(String title, String... cheats) {
        LinearLayout container = menuPanel.findViewById(R.id.menu_container);

        TextView catTitle = new TextView(this);
        catTitle.setText(title);
        catTitle.setTextColor(0xFFFF4444);
        catTitle.setTextSize(14);
        catTitle.setPadding(16, 16, 16, 8);
        container.addView(catTitle);

        for (String cheat : cheats) {
            Switch sw = new Switch(this);
            sw.setText(cheat);
            sw.setTextColor(0xFFFFFFFF);
            sw.setTextSize(12);
            sw.setPadding(24, 8, 24, 8);
            sw.setOnCheckedChangeListener((buttonView, isChecked) -> {
                if (isChecked) {
                    sw.setTextColor(0xFF00FF88);
                } else {
                    sw.setTextColor(0xFFFFFFFF);
                }
            });
            container.addView(sw);
        }
    }

    private void updateMenuState(boolean antiban, boolean esp, boolean aimbot, boolean speed) {
        if (menuPanel == null) return;
        Switch swAnti = menuPanel.findViewWithTag("antiban");
        if (swAnti != null) swAnti.setChecked(antiban);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (floatingView != null && windowManager != null) {
            windowManager.removeView(floatingView);
            floatingView = null;
        }
    }
}
