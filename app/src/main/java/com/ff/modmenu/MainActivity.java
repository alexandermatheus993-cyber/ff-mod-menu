package com.ff.modmenu;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.widget.TextView;
import android.widget.Toast;
import android.util.Log;

import rikka.shizuku.Shizuku;

public class MainActivity extends Activity {

    private static final String TAG = "FFModMenu";
    private static final int OVERLAY_PERMISSION_CODE = 1234;

    private final Shizuku.OnBinderReceivedListener binderReceivedListener = () -> {
        Log.d(TAG, "Shizuku binder received!");
        checkShizukuPermission();
    };

    private final Shizuku.OnBinderDeadListener binderDeadListener = () -> {
        Log.w(TAG, "Shizuku binder dead!");
        runOnUiThread(() -> showStatus("Shizuku DESCONECTADO!", 0xFFFF4444));
    };

    private final Shizuku.OnRequestPermissionResultListener permissionResultListener = (requestCode, grantResult) -> {
        if (grantResult == 0) {
            Log.d(TAG, "Shizuku permission granted!");
            checkOverlayPermission();
        } else {
            Log.w(TAG, "Shizuku permission denied!");
            runOnUiThread(() -> showStatus("Permissão Shizuku negada!", 0xFFFF4444));
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        showStatus("Aguardando Shizuku...", 0xFFFFFF00);
        Shizuku.addBinderReceivedListenerSticky(binderReceivedListener);
        Shizuku.addBinderDeadListener(binderDeadListener);
        Shizuku.addRequestPermissionResultListener(permissionResultListener);
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (Settings.canDrawOverlays(this) && Shizuku.pingBinder()) {
            startFloatingMenu();
        }
    }

    private void checkShizukuPermission() {
        try {
            if (Shizuku.isPreV11()) {
                runOnUiThread(() -> showStatus("Shizuku versão antiga!", 0xFFFF4444));
                return;
            }
            if (Shizuku.checkSelfPermission() == 0) {
                checkOverlayPermission();
            } else {
                Shizuku.requestPermission(1001);
            }
        } catch (Exception e) {
            Log.e(TAG, "checkPermission error", e);
        }
    }

    private void checkOverlayPermission() {
        if (Settings.canDrawOverlays(this)) {
            runOnUiThread(() -> startFloatingMenu());
        } else {
            runOnUiThread(() -> {
                Toast.makeText(this, "Permita a sobreposição de tela!", Toast.LENGTH_LONG).show();
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivityForResult(intent, OVERLAY_PERMISSION_CODE);
            });
        }
    }

    private void startFloatingMenu() {
        showStatus("Shizuku CONECTADO!\nMOD MENU ATIVO ✅", 0xFF00FF00);
        Intent serviceIntent = new Intent(this, FloatingModService.class);
        startService(serviceIntent);
        Toast.makeText(this, "Menu flutuante ativo! Toque no botão MOD", Toast.LENGTH_LONG).show();
        // Minimize
        moveTaskToBack(true);
    }

    private void showStatus(String text, int color) {
        TextView tv = new TextView(this);
        tv.setText(text);
        tv.setTextSize(28f);
        tv.setTextColor(color);
        tv.setGravity(android.view.Gravity.CENTER);
        tv.setBackgroundColor(0xFF000000);
        setContentView(tv);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Shizuku.removeBinderReceivedListener(binderReceivedListener);
        Shizuku.removeBinderDeadListener(binderDeadListener);
        Shizuku.removeRequestPermissionResultListener(permissionResultListener);
    }
}
