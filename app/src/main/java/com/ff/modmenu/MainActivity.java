package com.ff.modmenu;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import rikka.shizuku.Shizuku;

public class MainActivity extends Activity {
    private static final String TAG = "FFModMenu";
    private TextView statusText;

    private Shizuku.OnBinderReceivedListener binderReceivedListener = () -> {
        Log.d(TAG, "Shizuku binder received");
        checkShizukuAndBind();
    };

    private Shizuku.OnRequestPermissionResultListener permissionResultListener = (requestCode, grantResult) -> {
        if (grantResult == 0) {
            checkShizukuAndBind();
        } else {
            updateStatus("PERMISSAO NEGADA!", 0xFFFF4444);
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        statusText = findViewById(R.id.status_text);

        Shizuku.addBinderReceivedListenerSticky(binderReceivedListener);
        Shizuku.addRequestPermissionResultListener(permissionResultListener);

        findViewById(R.id.btn_overlay).setOnClickListener(v -> {
            if (!Settings.canDrawOverlays(this)) {
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivity(intent);
            } else {
                startModService();
            }
        });

        findViewById(R.id.btn_scanner).setOnClickListener(v -> {
            startActivity(new Intent(this, MemoryScannerActivity.class));
        });

        findViewById(R.id.btn_ff).setOnClickListener(v -> {
            Intent launch = getPackageManager().getLaunchIntentForPackage("com.dts.freefireth");
            if (launch != null) {
                launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(launch);
            } else {
                Toast.makeText(this, "Free Fire nao instalado!", Toast.LENGTH_SHORT).show();
            }
        });
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (Settings.canDrawOverlays(this)) {
            ((android.widget.Button) findViewById(R.id.btn_overlay)).setText("MOD ATIVO");
        }
    }

    private void checkShizukuAndBind() {
        try {
            if (!Shizuku.pingBinder()) {
                updateStatus("Shizuku NAO RODANDO!", 0xFFFF4444);
                return;
            }
            if (Shizuku.checkSelfPermission() != 0) {
                Shizuku.requestPermission(0);
                return;
            }
            updateStatus("Conectando SuService...", 0xFFFFD700);
            ServiceHolder.requestBind();
            new Thread(() -> {
                ServiceHolder.waitForBind(10000);
                if (ServiceHolder.get() != null) {
                    updateStatus("Shizuku CONECTADO!", 0xFF00FF88);
                } else {
                    updateStatus("SuService falhou!", 0xFFFF4444);
                }
            }).start();
        } catch (Exception e) {
            updateStatus("Erro: " + e.getMessage(), 0xFFFF4444);
        }
    }

    private void startModService() {
        startService(new Intent(this, FloatingModService.class));
        Toast.makeText(this, "Mod Menu ativado!", Toast.LENGTH_SHORT).show();
    }

    private void updateStatus(String text, int color) {
        statusText.post(() -> {
            statusText.setText(text);
            statusText.setTextColor(color);
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Shizuku.removeBinderReceivedListener(binderReceivedListener);
        Shizuku.removeRequestPermissionResultListener(permissionResultListener);
    }
}
