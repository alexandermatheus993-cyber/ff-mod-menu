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
    private View menuButton;
    private View menuPanel;
    private boolean menuOpen = false;
    private int targetPid = -1;
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

    private void findTargetPid() {
        ISuService svc = ServiceHolder.get();
        if (svc == null) {
            ServiceHolder.requestBind();
            ServiceHolder.waitForBind(5000);
            svc = ServiceHolder.get();
        }
        if (svc == null) {
            pidStatus.post(() -> {
                pidStatus.setText("SuService OFF");
                pidStatus.setTextColor(0xFFFF4444);
            });
            return;
        }
        pidStatus.post(() -> {
            pidStatus.setText("Procurando...");
            pidStatus.setTextColor(0xFFFFD700);
        });
        new Thread(() -> {
            try {
                String shell = svc.execCommand("echo OK");
                int pid = svc.findPid("com.dts.freefireth");
                Log.d(TAG, "shell=" + shell + " pid=" + pid);
                targetPid = pid;
                pidStatus.post(() -> {
                    if (pid > 0) {
                        pidStatus.setText("PID: " + pid + " OK");
                        pidStatus.setTextColor(0xFF00FF88);
                    } else {
                        pidStatus.setText("FF NAO ABERTO | " + shell);
                        pidStatus.setTextColor(0xFFFF4444);
                    }
                });
            } catch (Exception e) {
                Log.e(TAG, "findPid error", e);
                pidStatus.post(() -> {
                    pidStatus.setText("ERRO: " + e.getMessage());
                    pidStatus.setTextColor(0xFFFF4444);
                });
            }
        }).start();
    }

    private void createFloatingButton() {
        int btnType = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                140, 140, btnType,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        params.gravity = Gravity.TOP | Gravity.START;
        params.x = 20;
        params.y = 300;

        LinearLayout btnLayout = new LinearLayout(this);
        btnLayout.setOrientation(LinearLayout.VERTICAL);
        btnLayout.setBackgroundColor(0xFF00FF88);
        btnLayout.setGravity(Gravity.CENTER);

        TextView btnText = new TextView(this);
        btnText.setText("MOD");
        btnText.setTextColor(Color.BLACK);
        btnText.setTextSize(14);
        btnText.setGravity(Gravity.CENTER);
        btnText.setTypeface(null, android.graphics.Typeface.BOLD);
        btnLayout.addView(btnText);

        menuButton = btnLayout;
        final float[] touchX = new float[1];
        final float[] touchY = new float[1];
        final int[] startX = new int[1];
        final int[] startY = new int[1];

        menuButton.setOnTouchListener((v, event) -> {
            switch (event.getAction()) {
                case MotionEvent.ACTION_DOWN:
                    touchX[0] = event.getRawX();
                    touchY[0] = event.getRawY();
                    startX[0] = params.x;
                    startY[0] = params.y;
                    return true;
                case MotionEvent.ACTION_MOVE:
                    params.x = startX[0] + (int) (event.getRawX() - touchX[0]);
                    params.y = startY[0] + (int) (event.getRawY() - touchY[0]);
                    windowManager.updateViewLayout(menuButton, params);
                    return true;
                case MotionEvent.ACTION_UP:
                    float dx = Math.abs(event.getRawX() - touchX[0]);
                    float dy = Math.abs(event.getRawY() - touchY[0]);
                    if (dx < 10 && dy < 10) toggleMenu();
                    return true;
            }
            return false;
        });

        windowManager.addView(menuButton, params);
        createMenuPanel();
    }

    private void createMenuPanel() {
        int btnType = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                750, WindowManager.LayoutParams.WRAP_CONTENT, btnType,
                WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
                PixelFormat.TRANSLUCENT);
        params.gravity = Gravity.CENTER;

        LinearLayout panel = new LinearLayout(this);
        panel.setOrientation(LinearLayout.VERTICAL);
        panel.setBackgroundColor(0xDD1A1A2E);
        panel.setPadding(25, 25, 25, 25);

        TextView title = new TextView(this);
        title.setText("FF MOD MENU");
        title.setTextColor(0xFF00FF88);
        title.setTextSize(18);
        title.setGravity(Gravity.CENTER);
        title.setPadding(0, 0, 0, 15);
        panel.addView(title);

        LinearLayout statusRow = new LinearLayout(this);
        statusRow.setOrientation(LinearLayout.HORIZONTAL);
        statusRow.setPadding(0, 0, 0, 15);

        pidStatus = new TextView(this);
        pidStatus.setText("AGUARDANDO...");
        pidStatus.setTextColor(0xFFFFD700);
        pidStatus.setTextSize(12);
        statusRow.addView(pidStatus);

        Button btnRefresh = new Button(this);
        btnRefresh.setText("REFRESH");
        btnRefresh.setTextSize(10);
        btnRefresh.setOnClickListener(v -> findTargetPid());
        statusRow.addView(btnRefresh);

        Button btnScanner = new Button(this);
        btnScanner.setText("SCAN");
        btnScanner.setTextSize(10);
        btnScanner.setOnClickListener(v -> {
            Intent i = new Intent(FloatingModService.this, MemoryScannerActivity.class);
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(i);
        });
        statusRow.addView(btnScanner);
        panel.addView(statusRow);

        addSwitch(panel, "No Recoil", false);
        addSwitch(panel, "Headshot Hack", false);
        addSwitch(panel, "Sensi Boost", false);
        addSwitch(panel, "Aimbot", false);
        addSwitch(panel, "Antena Hack", false);
        addSwitch(panel, "ESP Line", false);

        Button btnLaunch = new Button(this);
        btnLaunch.setText("ABRIR FREE FIRE");
        btnLaunch.setOnClickListener(v -> {
            Intent launch = getPackageManager().getLaunchIntentForPackage("com.dts.freefireth");
            if (launch != null) {
                launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(launch);
            } else {
                Toast.makeText(this, "Free Fire nao instalado!", Toast.LENGTH_SHORT).show();
            }
        });
        panel.addView(btnLaunch);

        Button btnClose = new Button(this);
        btnClose.setText("FECHAR");
        btnClose.setOnClickListener(v -> toggleMenu());
        panel.addView(btnClose);

        menuPanel = panel;
        menuPanel.setVisibility(View.GONE);
        windowManager.addView(menuPanel, params);
    }

    private Switch addSwitch(LinearLayout parent, String text, boolean checked) {
        Switch sw = new Switch(this);
        sw.setText(text);
        sw.setTextColor(0xFFFFFFFF);
        sw.setTextSize(14);
        sw.setChecked(checked);
        sw.setPadding(0, 8, 0, 8);
        parent.addView(sw);
        return sw;
    }

    private void toggleMenu() {
        menuOpen = !menuOpen;
        menuPanel.setVisibility(menuOpen ? View.VISIBLE : View.GONE);
        if (menuOpen) findTargetPid();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (menuButton != null) try { windowManager.removeView(menuButton); } catch (Exception ignored) {}
        if (menuPanel != null) try { windowManager.removeView(menuPanel); } catch (Exception ignored) {}
    }
}
