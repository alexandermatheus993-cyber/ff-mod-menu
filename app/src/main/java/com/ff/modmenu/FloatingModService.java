package com.ff.modmenu;

import android.app.Service;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.util.Log;
import android.view.*;
import android.widget.*;
import rikka.shizuku.Shizuku;

public class FloatingModService extends Service {

    private static final String TAG = "FFModMenu";
    private WindowManager windowManager;
    private View menuButton;
    private View menuPanel;
    private boolean menuOpen = false;
    private ISuService suService;
    private int targetPid = -1;
    private TextView pidStatus;

    @Override
    public IBinder onBind(Intent intent) { return null; }

    @Override
    public void onCreate() {
        super.onCreate();
        windowManager = (WindowManager) getSystemService(WINDOW_SERVICE);
        connectShizuku();
        createFloatingButton();
    }

    private void connectShizuku() {
        try {
            IBinder binder = Shizuku.getBinder();
            if (binder != null) {
                suService = ISuService.Stub.asInterface(binder);
                Log.d(TAG, "SuService conectado no Float");
            } else {
                Log.e(TAG, "Shizuku binder nulo");
            }
        } catch (Exception e) {
            Log.e(TAG, "Shizuku error", e);
        }
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

        // Mod switches
        Switch swHeadshot = addSwitch(panel, "Headshot Hack", false);
        Switch swSpeed = addSwitch(panel, "Speed Hack", false);
        Switch swRecoil = addSwitch(panel, "No Recoil", false);
        Switch swAimbot = addSwitch(panel, "Aimbot", false);
        Switch swAntena = addSwitch(panel, "Antena Hack", false);
        Switch swEsp = addSwitch(panel, "ESP Line", false);

        // Speed seekbar
        TextView speedLabel = new TextView(this);
        speedLabel.setText("Speed: 4.5");
        speedLabel.setTextColor(0xFFFFFFFF);
        speedLabel.setTextSize(12);
        panel.addView(speedLabel);

        SeekBar speedSeek = new SeekBar(this);
        speedSeek.setMax(200);
        speedSeek.setProgress(45);
        speedSeek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar sb, int progress, boolean fromUser) {
                speedLabel.setText("Speed: " + (progress / 10.0f));
            }
            public void onStartTrackingTouch(SeekBar sb) {}
            public void onStopTrackingTouch(SeekBar sb) {}
        });
        panel.addView(speedSeek);

        Button btnLaunch = new Button(this);
        btnLaunch.setText("ABRIR FREE FIRE");
        btnLaunch.setTextSize(14);
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
        btnClose.setTextSize(12);
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

    private void findTargetPid() {
        if (suService == null) {
            connectShizuku();
            if (suService == null) {
                pidStatus.setText("Shizuku OFF!");
                pidStatus.setTextColor(0xFFFF4444);
                return;
            }
        }
        pidStatus.setText("Procurando...");
        pidStatus.setTextColor(0xFFFFD700);

        new Thread(() -> {
            try {
                String pkg = "com.dts.freefireth";

                // Debug: testa se Shizuku funciona
                String whoami = suService.execCommand("whoami");
                String shellTest = suService.execCommand("echo SHELL_OK");
                int pid = suService.findPid(pkg);

                String debugInfo = String.format("whoami=%s shell=%s pid=%d", whoami, shellTest, pid);
                Log.d(TAG, "DEBUG: " + debugInfo);
                targetPid = pid;

                pidStatus.post(() -> {
                    if (pid > 0) {
                        pidStatus.setText("PID: " + pid + " OK");
                        pidStatus.setTextColor(0xFF00FF88);
                    } else {
                        pidStatus.setText("FF NAO ABERTO | " + debugInfo);
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

    private void toggleMenu() {
        menuOpen = !menuOpen;
        menuPanel.setVisibility(menuOpen ? View.VISIBLE : View.GONE);
        if (menuOpen) findTargetPid();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (menuButton != null) windowManager.removeView(menuButton);
        if (menuPanel != null) windowManager.removeView(menuPanel);
    }
}
