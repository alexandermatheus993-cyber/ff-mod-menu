package com.ff.modmenu;

import android.app.Service;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.util.Log;
import android.view.*;
import android.widget.*;
import android.os.IInterface;

public class FloatingModService extends Service {

    private static final String TAG = "FFModMenu";
    private WindowManager windowManager;
    private View menuButton;
    private View menuPanel;
    private boolean menuOpen = false;
    private ISuService suService;
    private int targetPid = -1;
    private TextView pidStatus;

    // Offsets conhecidos (substitua pelos encontrados no scanner)
    private static final long OFFSET_SPEED = 0x0;      // FLOAT - velocidade
    private static final long OFFSET_HP = 0x0;          // INT - pontos de vida
    private static final long OFFSET_AMMO = 0x0;        // INT - munição
    private static final long OFFSET_RECOIL = 0x0;      // FLOAT - recoil multiplier
    private static final long OFFSET_HEADSHOT = 0x0;    // FLOAT - headshot chance
    private static final long OFFSET_FOV = 0x0;         // FLOAT - field of view

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
            android.os.IBinder binder = ShizukuProvider.getBinder();
            if (binder != null) {
                suService = ISuService.Stub.asInterface(binder);
                Log.d(TAG, "✅ SuService conectado no Float");
            } else {
                Log.e(TAG, "❌ Shizuku binder nulo");
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

        // Botão MOD
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

        // Drag
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

        // Título
        TextView title = new TextView(this);
        title.setText("🎮 FF MOD MENU");
        title.setTextColor(0xFF00FF88);
        title.setTextSize(18);
        title.setGravity(Gravity.CENTER);
        title.setPadding(0, 0, 0, 15);
        panel.addView(title);

        // Status PID com Shizuku
        LinearLayout statusRow = new LinearLayout(this);
        statusRow.setOrientation(LinearLayout.HORIZONTAL);
        statusRow.setPadding(0, 0, 0, 15);

        pidStatus = new TextView(this);
        pidStatus.setText("AGUARDANDO...");
        pidStatus.setTextColor(0xFFFFD700);
        pidStatus.setTextSize(13);
        statusRow.addView(pidStatus);

        Button btnRefresh = new Button(this);
        btnRefresh.setText("🔄");
        btnRefresh.setTextSize(12);
        btnRefresh.setOnClickListener(v -> findTargetPid());
        statusRow.addView(btnRefresh);

        Button btnScanner = new Button(this);
        btnScanner.setText("🔍");
        btnScanner.setTextSize(12);
        btnScanner.setOnClickListener(v -> {
            Intent i = new Intent(FloatingModService.this, MemoryScannerActivity.class);
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(i);
        });
        statusRow.addView(btnScanner);

        panel.addView(statusRow);

        // Switches
        Switch swHeadshot = addSwitch(panel, "🎯 Headshot Hack", false);
        Switch swSpeed = addSwitch(panel, "⚡ Speed Hack", false);
        Switch swAimbot = addSwitch(panel, "🔫 Aimbot", false);
        Switch swRecoil = addSwitch(panel, "🔥 No Recoil", false);
        Switch swAntena = addSwitch(panel, "📡 Antena Hack", false);
        Switch swEsp = addSwitch(panel, "👁 ESP Line", false);
        Switch swFov = addSwitch(panel, "🔭 FOV Hack", false);
        Switch swAmmo = addSwitch(panel, "💥 Inf Ammo", false);

        // Seeker Speed
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
                float speed = progress / 10.0f;
                speedLabel.setText("Speed: " + speed);
                if (swSpeed.isChecked() && targetPid > 0) {
                    writeFloat(OFFSET_SPEED, speed);
                }
            }
            public void onStartTrackingTouch(SeekBar sb) {}
            public void onStopTrackingTouch(SeekBar sb) {}
        });
        panel.addView(speedSeek);

        // Botão Launch FF
        Button btnLaunch = new Button(this);
        btnLaunch.setText("🚀 ABRIR FREE FIRE");
        btnLaunch.setTextSize(14);
        btnLaunch.setOnClickListener(v -> {
            Intent launch = getPackageManager().getLaunchIntentForPackage("com.dts.freefireth");
            if (launch != null) {
                launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(launch);
            } else {
                Toast.makeText(this, "Free Fire não instalado!", Toast.LENGTH_SHORT).show();
            }
        });
        panel.addView(btnLaunch);

        // Fechar
        Button btnClose = new Button(this);
        btnClose.setText("❌ FECHAR");
        btnClose.setTextSize(12);
        btnClose.setOnClickListener(v -> toggleMenu());
        panel.addView(btnClose);

        menuPanel = panel;
        menuPanel.setVisibility(View.GONE);
        windowManager.addView(menuPanel, params);

        // Listeners dos switches
        swHeadshot.setOnCheckedChangeListener((b, checked) -> {
            if (checked && validPid()) {
                Toast.makeText(this, "Headshot ON!", Toast.LENGTH_SHORT).show();
                writeFloat(OFFSET_HEADSHOT, 999.0f);
            } else if (validPid()) {
                writeFloat(OFFSET_HEADSHOT, 0.0f);
            }
        });

        swSpeed.setOnCheckedChangeListener((b, checked) -> {
            if (checked && validPid()) {
                float speed = speedSeek.getProgress() / 10.0f;
                writeFloat(OFFSET_SPEED, speed);
            } else if (validPid()) {
                writeFloat(OFFSET_SPEED, 1.0f);
            }
        });

        swAimbot.setOnCheckedChangeListener((b, checked) -> {
            Toast.makeText(this, checked ? "Aimbot ON!" : "Aimbot OFF!", Toast.LENGTH_SHORT).show();
        });

        swRecoil.setOnCheckedChangeListener((b, checked) -> {
            if (checked && validPid()) {
                writeFloat(OFFSET_RECOIL, 0.0f);
            } else if (validPid()) {
                writeFloat(OFFSET_RECOIL, 1.0f);
            }
        });

        swAntena.setOnCheckedChangeListener((b, checked) -> {
            Toast.makeText(this, checked ? "Antena ON!" : "Antena OFF!", Toast.LENGTH_SHORT).show();
        });

        swEsp.setOnCheckedChangeListener((b, checked) -> {
            Toast.makeText(this, checked ? "ESP ON!" : "ESP OFF!", Toast.LENGTH_SHORT).show();
        });

        swFov.setOnCheckedChangeListener((b, checked) -> {
            if (checked && validPid()) {
                writeFloat(OFFSET_FOV, 120.0f);
            } else if (validPid()) {
                writeFloat(OFFSET_FOV, 90.0f);
            }
        });

        swAmmo.setOnCheckedChangeListener((b, checked) -> {
            if (checked && validPid()) {
                writeInt(OFFSET_AMMO, 999);
            }
        });
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

    private boolean validPid() {
        return targetPid > 0 && suService != null;
    }

    private void findTargetPid() {
        if (suService == null) {
            connectShizuku();
            if (suService == null) {
                pidStatus.setText("❌ Shizuku off!");
                pidStatus.setTextColor(0xFFFF4444);
                return;
            }
        }
        new Thread(() -> {
            try {
                int pid = suService.findPid("com.dts.freefireth");
                targetPid = pid;
                pidStatus.post(() -> {
                    if (pid > 0) {
                        pidStatus.setText("PID: " + pid + " ✅");
                        pidStatus.setTextColor(0xFF00FF88);
                    } else {
                        pidStatus.setText("FF não aberto ❌");
                        pidStatus.setTextColor(0xFFFF4444);
                    }
                });
            } catch (Exception e) {
                Log.e(TAG, "findPid error", e);
                pidStatus.post(() -> {
                    pidStatus.setText("Erro PID!");
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

    private void writeFloat(long offset, float value) {
        if (!validPid() || offset == 0) return;
        new Thread(() -> {
            try {
                int bits = Float.floatToIntBits(value);
                byte[] data = new byte[]{
                    (byte) (bits & 0xFF),
                    (byte) ((bits >> 8) & 0xFF),
                    (byte) ((bits >> 16) & 0xFF),
                    (byte) ((bits >> 24) & 0xFF)
                };
                boolean ok = suService.writeMemory(targetPid, offset, data);
                Log.d(TAG, String.format("writeFloat 0x%X = %f → %s", offset, value, ok));
            } catch (Exception e) {
                Log.e(TAG, "writeFloat error", e);
            }
        }).start();
    }

    private void writeInt(long offset, int value) {
        if (!validPid() || offset == 0) return;
        new Thread(() -> {
            try {
                byte[] data = new byte[]{
                    (byte) (value & 0xFF),
                    (byte) ((value >> 8) & 0xFF),
                    (byte) ((value >> 16) & 0xFF),
                    (byte) ((value >> 24) & 0xFF)
                };
                boolean ok = suService.writeMemory(targetPid, offset, data);
                Log.d(TAG, String.format("writeInt 0x%X = %d → %s", offset, value, ok));
            } catch (Exception e) {
                Log.e(TAG, "writeInt error", e);
            }
        }).start();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (menuButton != null) windowManager.removeView(menuButton);
        if (menuPanel != null) windowManager.removeView(menuPanel);
    }
}
