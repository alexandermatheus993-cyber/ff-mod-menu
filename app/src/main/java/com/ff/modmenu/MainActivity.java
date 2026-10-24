package com.ff.modmenu;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.view.Gravity;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import rikka.shizuku.Shizuku;

public class MainActivity extends Activity {
    private static final String TAG = "FFModMenu";
    private static final int OVERLAY_CODE = 1001;
    private static final int SHIZUKU_CODE = 1002;
    private TextView statusText;
    private Button startButton;
    private Handler handler = new Handler(Looper.getMainLooper());

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d(TAG, "onCreate");

        FrameLayout root = new FrameLayout(this);
        root.setBackgroundColor(Color.parseColor("#1a1a2e"));

        statusText = new TextView(this);
        statusText.setText("Iniciando...");
        statusText.setTextColor(Color.WHITE);
        statusText.setTextSize(16f);
        statusText.setGravity(Gravity.CENTER);
        FrameLayout.LayoutParams sp = new FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.WRAP_CONTENT);
        sp.gravity = Gravity.CENTER;
        sp.topMargin = 200;
        root.addView(statusText, sp);

        startButton = new Button(this);
        startButton.setText("INICIAR MOD MENU");
        startButton.setEnabled(false);
        startButton.setTextColor(Color.WHITE);
        startButton.setTextSize(18f);
        startButton.setOnClickListener(v -> startModMenu());
        FrameLayout.LayoutParams bp = new FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.WRAP_CONTENT);
        bp.gravity = Gravity.BOTTOM;
        bp.bottomMargin = 100;
        bp.leftMargin = 60;
        bp.rightMargin = 60;
        root.addView(startButton, bp);

        setContentView(root);
        ServiceHolder.init();
        checkAll();
    }

    private void checkAll() {
        Log.d(TAG, "checkAll");
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (!Settings.canDrawOverlays(this)) {
                setStatus("Precisa permissao de sobreposicao...");
                try {
                    Intent i = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                    startActivityForResult(i, OVERLAY_CODE);
                } catch (Exception e) {
                    setStatus("Erro overlay: " + e.getMessage());
                }
                return;
            }
        }
        checkShizuku();
    }

    private void checkShizuku() {
        Log.d(TAG, "checkShizuku");
        setStatus("Verificando Shizuku...");
        try {
            boolean alive = Shizuku.pingBinder();
            if (!alive) {
                setStatus("Shizuku OFF! Abra o app Shizuku.");
                Toast.makeText(this, "Abra o Shizuku primeiro!", Toast.LENGTH_LONG).show();
                return;
            }
            if (Shizuku.isPreV11() || Shizuku.checkSelfPermission() != 0) {
                setStatus("Solicitando permissao Shizuku...");
                Shizuku.requestPermission(SHIZUKU_CODE);
            } else {
                setStatus("Tudo OK! Clique no botao.");
                startButton.setEnabled(true);
            }
        } catch (Exception e) {
            setStatus("Erro Shizuku: " + e.getMessage());
        }
    }

    private void startModMenu() {
        Log.d(TAG, "startModMenu");
        setStatus("Iniciando menu...");
        try {
            Intent intent = new Intent(this, FloatingModMenuService.class);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(intent);
            } else {
                startService(intent);
            }
            setStatus("Menu ATIVO! Volte ao Free Fire.");
            Toast.makeText(this, "Mod Menu ativo!", Toast.LENGTH_SHORT).show();
        } catch (Exception e) {
            setStatus("Erro: " + e.getMessage());
            Log.e(TAG, "start err: " + e.getMessage());
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == OVERLAY_CODE) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && Settings.canDrawOverlays(this)) {
                checkShizuku();
            } else {
                setStatus("Sobreposicao NEGADA!");
            }
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    private void setStatus(String s) {
        Log.d(TAG, "STATUS: " + s);
        runOnUiThread(() -> { if (statusText != null) statusText.setText(s); });
    }
}
