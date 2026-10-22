package com.ff.modmenu;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.InputType;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import rikka.shizuku.Shizuku;
import com.ff.modmenu.service.SuService;

public class MainActivity extends Activity {

    private static final String CORRECT_KEY = "FFMOD2025PRO";
    private static final String FF_PACKAGE = "com.dts.freefireth";
    private static final String NATIVE_LIB = "libil2cpp.so";

    private TextView statusText;
    private EditText keyInput;
    private boolean isAuthenticated = false;
    private boolean serviceBound = false;
    private boolean connected = false;
    private ISuService suService;
    private int ffPid = -1;
    private long libBase = -1;

    private final Shizuku.OnRequestPermissionResultListener permListener =
        (code, result) -> {
            if (result == PackageManager.PERMISSION_GRANTED) {
                bindSuService();
            } else {
                Toast.makeText(this, "Shizuku negado!", Toast.LENGTH_LONG).show();
            }
        };

    private final ServiceConnection svcConn = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName n, IBinder b) {
            suService = ISuService.Stub.asInterface(b);
            serviceBound = true;
            updateStatus("Shizuku conectado");
        }
        @Override
        public void onServiceDisconnected(ComponentName n) {
            suService = null;
            serviceBound = false;
        }
    };

    @Override
    protected void onCreate(Bundle s) {
        super.onCreate(s);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        Shizuku.addRequestPermissionResultListener(permListener);
        checkShizuku();
        showLoginUI();
    }

    private void checkShizuku() {
        try {
            if (!Shizuku.pingBinder()) {
                Toast.makeText(this, "Inicie o Shizuku primeiro!", Toast.LENGTH_LONG).show();
                return;
            }
            if (Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED) {
                bindSuService();
            } else {
                Shizuku.requestPermission(1001);
            }
        } catch (Exception e) {
            Toast.makeText(this, "Erro Shizuku: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    private void bindSuService() {
        try {
            Shizuku.bindUserService(
                new Shizuku.UserServiceArgs(
                    new ComponentName(getPackageName(), SuService.class.getName()).flattenToString())
                    .daemon(false).processNameSuffix("su").debuggable(true).version(1),
                svcConn);
        } catch (Exception e) {
            Toast.makeText(this, "Bind falhou: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    private void updateStatus(String msg) {
        runOnUiThread(() -> {
            if (statusText != null) statusText.setText(msg);
        });
    }

    private LinearLayout mkRoot() {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.VERTICAL);
        r.setBackgroundColor(Color.parseColor("#0D0D1A"));
        r.setPadding(40, 40, 40, 60);
        r.setGravity(Gravity.CENTER_HORIZONTAL);
        return r;
    }

    private ScrollView wrap(LinearLayout c) {
        ScrollView s = new ScrollView(this);
        s.setFillViewport(true);
        s.setBackgroundColor(Color.parseColor("#0D0D1A"));
        s.addView(c);
        return s;
    }

    private Button mkBtn(String text, String color) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextColor(Color.WHITE);
        b.setTextSize(15);
        b.setBackgroundColor(Color.parseColor(color));
        b.setPadding(30, 20, 30, 20);
        b.setTypeface(Typeface.DEFAULT_BOLD);
        b.setAllCaps(false);
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
        p.setMargins(0, 8, 0, 8);
        b.setLayoutParams(p);
        return b;
    }

    private LinearLayout mkToggle(String label, String color, ToggleCallback cb) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(20, 15, 20, 15);
        row.setBackgroundColor(Color.parseColor("#1A1A2E"));
        LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
        rp.setMargins(0, 8, 0, 8);
        row.setLayoutParams(rp);

        TextView tv = new TextView(this);
        tv.setText(label);
        tv.setTextSize(16);
        tv.setTextColor(Color.parseColor(color));
        tv.setTypeface(Typeface.DEFAULT_BOLD);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0,
                LinearLayout.LayoutParams.WRAP_CONTENT, 1);
        tv.setLayoutParams(tp);

        Switch sw = new Switch(this);
        sw.setOnCheckedChangeListener((btn, on) -> cb.onToggle(btn, on));

        row.addView(tv);
        row.addView(sw);
        return row;
    }

    interface ToggleCallback {
        void onToggle(Switch sw, boolean on);
    }

    // ============== LOGIN ==============
    private void showLoginUI() {
        LinearLayout root = mkRoot();

        TextView title = new TextView(this);
        title.setText("FF MOD MENU");
        title.setTextSize(28);
        title.setTextColor(Color.parseColor("#FF4444"));
        title.setGravity(Gravity.CENTER);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setPadding(0, 100, 0, 10);

        TextView sub = new TextView(this);
        sub.setText("Shizuku Powered - No Root");
        sub.setTextSize(14);
        sub.setTextColor(Color.parseColor("#888888"));
        sub.setGravity(Gravity.CENTER);
        sub.setPadding(0, 0, 0, 50);

        keyInput = new EditText(this);
        keyInput.setHint("Digite sua key...");
        keyInput.setHintTextColor(Color.parseColor("#555555"));
        keyInput.setTextColor(Color.WHITE);
        keyInput.setInputType(InputType.TYPE_CLASS_TEXT);
        keyInput.setTextSize(16);
        keyInput.setPadding(30, 20, 30, 20);
        LinearLayout.LayoutParams kp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
        kp.setMargins(20, 20, 20, 20);
        keyInput.setLayoutParams(kp);

        Button btn = mkBtn("ATIVAR MOD MENU", "#FF4444");
        btn.setOnClickListener(v -> {
            if (keyInput.getText().toString().trim().equals(CORRECT_KEY)) {
                isAuthenticated = true;
                showMenuUI();
            } else {
                Toast.makeText(this, "Key invalida!", Toast.LENGTH_SHORT).show();
            }
        });

        statusText = new TextView(this);
        statusText.setTextSize(12);
        statusText.setTextColor(Color.parseColor("#00FF00"));
        statusText.setGravity(Gravity.CENTER);
        statusText.setPadding(0, 30, 0, 0);
        statusText.setText("Verificando Shizuku...");

        root.addView(title);
        root.addView(sub);
        root.addView(keyInput);
        root.addView(btn);
        root.addView(statusText);
        setContentView(wrap(root));
    }

    // ============== MENU ==============
    private void showMenuUI() {
        LinearLayout root = mkRoot();

        TextView title = new TextView(this);
        title.setText("MOD MENU ATIVO");
        title.setTextSize(24);
        title.setTextColor(Color.parseColor("#FF4444"));
        title.setGravity(Gravity.CENTER);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setPadding(0, 40, 0, 10);

        statusText = new TextView(this);
        statusText.setTextSize(12);
        statusText.setTextColor(Color.parseColor("#00FF00"));
        statusText.setGravity(Gravity.CENTER);
        statusText.setPadding(0, 0, 0, 20);
        statusText.setText(serviceBound ? "Shizuku OK" : "Shizuku nao conectado");

        LinearLayout menu = new LinearLayout(this);
        menu.setOrientation(LinearLayout.VERTICAL);
        menu.setPadding(20, 20, 20, 20);

        // Abrir FF
        Button openBtn = mkBtn("ABRIR FREE FIRE", "#FF4444");
        openBtn.setOnClickListener(v -> {
            try {
                Intent i = getPackageManager().getLaunchIntentForPackage(FF_PACKAGE);
                if (i != null) {
                    startActivity(i);
                } else {
                    startActivity(new Intent(Intent.ACTION_VIEW,
                        Uri.parse("market://details?id=" + FF_PACKAGE)));
                    Toast.makeText(this, "FF nao instalado!", Toast.LENGTH_LONG).show();
                }
            } catch (Exception e) {
                Toast.makeText(this, "Erro: " + e.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });
        menu.addView(openBtn);

        // Conectar ao FF
        Button connBtn = mkBtn("CONECTAR AO FF", "#2196F3");
        connBtn.setOnClickListener(v -> connectFF());
        menu.addView(connBtn);

        // Aim Lock
        menu.addView(mkToggle("Aim Lock", "#FF4444", (sw, on) -> {
            if (!preCheck(sw)) return;
            Toast.makeText(this, "Aim " + (on ? "ON" : "OFF"), Toast.LENGTH_SHORT).show();
        }));

        // ESP
        menu.addView(mkToggle("ESP / Wallhack", "#4CAF50", (sw, on) -> {
            if (!preCheck(sw)) return;
            Toast.makeText(this, "ESP " + (on ? "ON" : "OFF"), Toast.LENGTH_SHORT).show();
        }));

        // Speed
        menu.addView(mkToggle("Speed Hack", "#FF9800", (sw, on) -> {
            if (!preCheck(sw)) return;
            Toast.makeText(this, "Speed " + (on ? "ON" : "OFF"), Toast.LENGTH_SHORT).show();
        }));

        // No Recoil
        menu.addView(mkToggle("No Recoil", "#9C27B0", (sw, on) -> {
            if (!preCheck(sw)) return;
            Toast.makeText(this, "Recoil " + (on ? "ON" : "OFF"), Toast.LENGTH_SHORT).show();
        }));

        // Anti-Log
        menu.addView(mkToggle("Anti-Log", "#00BCD4", (sw, on) -> {
            if (!preCheck(sw)) return;
            Toast.makeText(this, "Anti-Log " + (on ? "ON" : "OFF"), Toast.LENGTH_SHORT).show();
        }));

        // Desconectar
        Button discBtn = mkBtn("DESCONECTAR", "#555555");
        discBtn.setOnClickListener(v -> {
            ffPid = -1;
            libBase = -1;
            connected = false;
            updateStatus("Desconectado");
        });
        menu.addView(discBtn);

        root.addView(title);
        root.addView(statusText);
        root.addView(menu);
        setContentView(wrap(root));
        checkShizuku();
    }

    private boolean preCheck(Switch sw) {
        if (!serviceBound) {
            Toast.makeText(this, "Shizuku nao conectado!", Toast.LENGTH_SHORT).show();
            sw.setChecked(false);
            return false;
        }
        if (!connected) {
            Toast.makeText(this, "Conecte ao FF primeiro!", Toast.LENGTH_SHORT).show();
            sw.setChecked(false);
            return false;
        }
        return true;
    }

    private void connectFF() {
        if (!serviceBound || suService == null) {
            Toast.makeText(this, "Shizuku nao conectado!", Toast.LENGTH_SHORT).show();
            return;
        }
        new Thread(() -> {
            try {
                ffPid = suService.findPid(FF_PACKAGE);
                if (ffPid == -1) {
                    runOnUiThread(() -> Toast.makeText(this, "FF nao rodando!", Toast.LENGTH_SHORT).show());
                    return;
                }
                libBase = suService.findBaseAddress(ffPid, NATIVE_LIB);
                if (libBase == -1) {
                    runOnUiThread(() -> Toast.makeText(this, "libil2cpp.so nao encontrada!", Toast.LENGTH_SHORT).show();
                    return;
                }
                connected = true;
                runOnUiThread(() -> {
                    updateStatus("Conectado PID:" + ffPid + " Base:0x" + Long.toHexString(libBase));
                    Toast.makeText(this, "Conectado ao FF!", Toast.LENGTH_SHORT).show();
                });
            } catch (RemoteException e) {
                runOnUiThread(() -> Toast.makeText(this, "Erro: " + e.getMessage(), Toast.LENGTH_SHORT).show());
            }
        }).start();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Shizuku.removeRequestPermissionResultListener(permListener);
        if (serviceBound) {
            try { unbindService(svcConn); } catch (Exception ignored) {}
        }
    }
}
