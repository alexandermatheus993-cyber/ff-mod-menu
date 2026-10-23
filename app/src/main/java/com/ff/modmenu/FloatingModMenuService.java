package com.ff.modmenu;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.*;
import android.content.Context;
import android.content.pm.ServiceInfo;

public class FloatingModMenuService extends Service {
    private WindowManager wm;
    private WindowManager.LayoutParams iconP, menuP;
    private ImageView touchIcon;
    private LinearLayout menuLayout;
    private boolean menuVisible = false;
    private GameHack hack;
    private GameScanner scanner;
    private Handler h;
    private TextView statusText;

    @Override
    public IBinder onBind(Intent i) { return null; }

    @Override
    public void onCreate() {
        super.onCreate();
        h = new Handler(Looper.getMainLooper());

        // CRITICAL: startForeground ANTES de qualquer coisa
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel ch = new NotificationChannel(
                    "ff_mod", "FF Mod Menu", NotificationManager.IMPORTANCE_LOW);
                ch.setDescription("Mod menu background service");
                NotificationManager nm = getSystemService(NotificationManager.class);
                if (nm != null) nm.createNotificationChannel(ch);

                Notification n = new Notification.Builder(this, "ff_mod")
                    .setContentTitle("FF Mod Menu")
                    .setContentText("Mod ativo")
                    .setSmallIcon(android.R.drawable.ic_menu_info_details)
                    .setOngoing(true)
                    .build();

                startForeground(1, n, ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE);
            } else {
                // API < 26
                Notification n = new Notification.Builder(this)
                    .setContentTitle("FF Mod Menu")
                    .setContentText("Mod ativo")
                    .setSmallIcon(android.R.drawable.ic_menu_info_details)
                    .build();
                startForeground(1, n);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Tenta sem tipo de foreground
            try {
                Notification n = new Notification.Builder(this)
                    .setContentTitle("FF Mod Menu")
                    .setSmallIcon(android.R.drawable.ic_menu_info_details)
                    .build();
                startForeground(1, n);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        wm = (WindowManager) getSystemService(WINDOW_SERVICE);

        hack = new GameHack();

        // Shizuku - protegido contra crash
        try {
            ServiceHolder.init();
            hack.setService(ServiceHolder.get());
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Scanner - protegido contra crash
        try {
            scanner = new GameScanner(pid -> {
                hack.setPid(pid);
                h.post(() -> {
                    Toast.makeText(this, "Free Fire detectado! PID: " + pid, Toast.LENGTH_SHORT).show();
                    if (statusText != null) {
                        statusText.setText("Status: CONECTADO (PID " + pid + ")");
                        statusText.setTextColor(Color.GREEN);
                    }
                });
            });
            scanner.start();
        } catch (Exception e) {
            e.printStackTrace();
        }

        createIcon();
    }

    private int dp(int v) {
        return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v, getResources().getDisplayMetrics());
    }

    private void createIcon() {
        touchIcon = new ImageView(this);
        Bitmap bmp = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bmp);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setColor(Color.parseColor("#FF4081"));
        c.drawCircle(32, 32, 30, p);
        p.setColor(Color.WHITE);
        p.setTextSize(28);
        p.setTypeface(Typeface.DEFAULT_BOLD);
        p.setTextAlign(Paint.Align.CENTER);
        c.drawText("M", 32, 42, p);
        touchIcon.setImageBitmap(bmp);

        int overlayType;
        if (Build.VERSION.SDK_INT >= 26) {
            overlayType = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        } else {
            overlayType = WindowManager.LayoutParams.TYPE_PHONE;
        }

        iconP = new WindowManager.LayoutParams(dp(50), dp(50),
            overlayType,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
            PixelFormat.TRANSLUCENT);
        iconP.gravity = Gravity.TOP | Gravity.START;
        iconP.x = 10;
        iconP.y = 200;

        touchIcon.setOnTouchListener(new View.OnTouchListener() {
            int ix, iy;
            float sx, sy;
            boolean moved;

            public boolean onTouch(View v, MotionEvent e) {
                switch (e.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        ix = iconP.x; iy = iconP.y;
                        sx = e.getRawX(); sy = e.getRawY();
                        moved = false;
                        return false;
                    case MotionEvent.ACTION_MOVE:
                        iconP.x = ix + (int)(e.getRawX() - sx);
                        iconP.y = iy + (int)(e.getRawY() - sy);
                        try { wm.updateViewLayout(touchIcon, iconP); } catch (Exception ex) {}
                        moved = true;
                        return true;
                    case MotionEvent.ACTION_UP:
                        if (!moved) toggleMenu();
                        return true;
                }
                return false;
            }
        });

        wm.addView(touchIcon, iconP);
    }

    private void toggleMenu() {
        if (menuVisible) hideMenu();
        else showMenu();
    }

    private void hideMenu() {
        if (menuLayout != null) menuLayout.setVisibility(View.GONE);
        menuVisible = false;
    }

    private void showMenu() {
        if (menuLayout != null) {
            menuLayout.setVisibility(View.VISIBLE);
            menuVisible = true;
            return;
        }

        menuLayout = new LinearLayout(this);
        menuLayout.setOrientation(LinearLayout.VERTICAL);
        menuLayout.setBackgroundColor(Color.parseColor("#DD1A1A2E"));

        // Header
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setBackgroundColor(Color.parseColor("#FF4081"));
        header.setPadding(dp(16), dp(12), dp(16), dp(12));
        header.setGravity(Gravity.CENTER_VERTICAL);

        TextView title = new TextView(this);
        title.setText("FF MOD MENU");
        title.setTextColor(Color.WHITE);
        title.setTextSize(18);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setLayoutParams(new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        header.addView(title);

        TextView closeBtn = new TextView(this);
        closeBtn.setText("6), dp(4));
        menuLayout.addView(statusText);

        // Scroll
        ScrollView scroll = new ScrollView(this);
        scroll.setLayoutParams(new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, dp(400)));

        LinearLayout body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(dp(8), dp(8), dp(8), dp(16));

        // AIM
        cat(body, "AIM");
        seek(body, "AIMSPOT", 0, 3, 0);
        tog(body, "AIM TIRO", 1);
        tog(body, "AIM MIRA", 2);
        tog(body, "AIM AGACHADO", 3);
        seek(body, "Aim FOV", 4, 10, 0);
        seek(body, "Aim puxada", 5, 10, 0);
        seek(body, "Sensibilidade", 6, 3, 0);

        // ESP
        cat(body, "ESP");
        tog(body, "ESP FIRE", 7);
        tog(body, "ESP BOT/PLAYER", 8);
        tog(body, "ESP DISTANCE", 9);
        tog(body, "ESP NAME", 10);

        // COMBAT
        cat(body, "COMBAT");
        seek(body, "Chuva de balas", 11, 15, 0);
        seek(body, "Speed 50X", 12, 5, 0);
        seek(body, "Speed HACKER", 13, 5, 0);
        tog(body, "TELEKIL", 14);
        tog(body, "TELEKIL PRO", 15);
        tog(body, "AIM TELEKIL", 1.addView(body);
        menuLayout.addView(scroll);

        int overlayType = Build.VERSION.SDK_INT >= 26 ?
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY :
            WindowManager.LayoutParams.TYPE_PHONE;

        menuP = new WindowManager.LayoutParams(dp(280), WindowManager.LayoutParams.WRAP_CONTENT,
            overlayType,
            WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
            PixelFormat.TRANSLUCENT);
        menuP.gravity = Gravity.CENTER;

        wm.addView(menuLayout, menuP);
        menuVisible = true;
    }

    private void cat(LinearLayout p, String name) {
        TextView t = new TextView(this);
        t.setText("  " + name);
        t.setTextColor(Color.parseColor("#FF4081"));
        t.setTextSize(14);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        t.setPadding(0, dp(12), 0, dp(4));
        p.addView(t);
    }

    private void tog(LinearLayout p, String name, int id) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setPadding(dp(8), dp(6), dp(8), dp(6));
        row.setGravity(Gravity.CENTER_VERTICAL);

        TextView lbl = new TextView(this);
        lbl.setText(name);
        lbl.setTextColor(Color.WHITE);
        lbl.setTextSize(13);
        lbl.setLayoutParams(new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        row.addView(lbl);

        Switch sw = new Switch(this);
        sw.setChecked(false);
        sw.setOnCheckedChangeListener((b, on) -> applyToggle(id, on));
        row.addView(sw);

        p.addView(row);
    }

    private void seek(LinearLayout p, String name, int id, int max, int def) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.VERTICAL);
        row.setPadding(dp(8), dp(6), dp(8), dp(6));

        LinearLayout top = new LinearLayout(this);
        top.setOrientation(LinearLayout.HORIZONTAL);

        TextView lbl = new TextView(this);
        lbl.setText(name);
        lbl.setTextColor(Color.WHITE);
        lbl.setTextSize(13);
        lbl.setLayoutParams(new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        top.addView(lbl);

        TextView val = new TextView(this);
        val.setText(String.valueOf(def));
        val.setTextColor(Color.YELLOW);
        val.setTextSize(13);
        top.addView(val);

        row.addView(top);

        SeekBar sb = new SeekBar(this);
        sb.setMax(max);
        sb.setProgress(def);
        sb.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar s, int v, boolean u) {
                val.setText(String.valueOf(v));
                applySeek(id, v);
            }
            public void onStartTrackingTouch(SeekBar s) {}
            public void onStopTrackingTouch(SeekBar s) {}
        });
        row.addView(sb);

        p.addView(row);
    }

    private void applyToggle(int id, boolean on) {
        if (!hack.isReady()) {
            Toast.makeText(this, "Esperando Free Fire...", Toast.LENGTH_SHORT).show();
            return;
        }
        switch (id) {
            case 1: hack.toggleAimTiro(on); break;
            case 2: hack.toggleAimMira(on); break;
            case 3: hack.toggleAimAgachado(on); break;
            case 7: hack.toggleEspFire(on); break;
            case 14: hack.toggleTelekil(on); break;
            case 15: hack.toggleTelekil(on); break;
            case 17: hack.toggleGhost(on); break;
            case 18: hack.toggleFlyCarro(on); break;
            case 19: hack.toggleFlyPlayer(on); break;
            case 22: hack.toggleNightMode(on); break;
            case 23: hack.toggleMedkitRun(on); break;
            case 24: hack.toggleWallPedra(on); break;
            case 25: hack.toggleDesbanirImei(on); break;
        }
    }

    private void applySeek(int id, int val) {
        if (!hack.isReady()) {
            Toast.makeText(this, "Esperando Free Fire...", Toast.LENGTH_SHORT).show();
            return;
        }
        switch (id) {
            case 0: hack.setAimSpot(val); break;
            case 4: hack.setAimFov(val); break;
            case 5: hack.setAimPuxada(val); break;
            case 6: hack.setSensibilidade(val); break;
            case 11: hack.setChuvaDeBalas(val); break;
            case 12: hack.setSpeed50x(val); break;
            case 13: hack.setSpeedHacker(val); break;
            case 20: hack.setFlySpeed(val); break;
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        try { if (scanner != null) scanner.stop(); } catch (Exception e) {}
        try { if (touchIcon != null) wm.removeView(touchIcon); } catch (Exception e) {}
        try { if (menuLayout != null) wm.removeView(menuLayout); } catch (Exception e) {}
    }
}
