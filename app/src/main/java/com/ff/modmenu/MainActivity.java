package com.ff.modmenu;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;
import android.content.Context;
import android.util.Log;
import android.os.IBinder;

import rikka.shizuku.Shizuku;

public class MainActivity extends Activity {

    private static final String TAG = "FFModMenu";

    private final Shizuku.OnBinderReceivedListener binderReceivedListener = () -> {
        Log.d(TAG, "Shizuku binder received!");
        checkShizukuPermission();
    };

    private final Shizuku.OnBinderDeadListener binderDeadListener = () -> {
        Log.w(TAG, "Shizuku binder dead!");
        runOnUiThread(() -> Toast.makeText(this, "Shizuku desconectado!", Toast.LENGTH_SHORT).show());
    };

    private final Shizuku.OnRequestPermissionResultListener permissionResultListener = (requestCode, grantResult) -> {
        if (grantResult == 0) {
            Log.d(TAG, "Shizuku permission granted!");
            startSuService();
        } else {
            Log.w(TAG, "Shizuku permission denied!");
            runOnUiThread(() -> Toast.makeText(this, "Permissão Shizuku negada!", Toast.LENGTH_SHORT).show());
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        TextView tv = new TextView(this);
        tv.setText("Aguardando Shizuku...");
        tv.setTextSize(28f);
        tv.setTextColor(0xFF00FF00);
        tv.setGravity(android.view.Gravity.CENTER);
        setContentView(tv);

        Log.d(TAG, "onCreate - registering Shizuku listeners");
        Shizuku.addBinderReceivedListenerSticky(binderReceivedListener);
        Shizuku.addBinderDeadListener(binderDeadListener);
        Shizuku.addRequestPermissionResultListener(permissionResultListener);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Shizuku.removeBinderReceivedListener(binderReceivedListener);
        Shizuku.removeBinderDeadListener(binderDeadListener);
        Shizuku.removeRequestPermissionResultListener(permissionResultListener);
    }

    private void checkShizukuPermission() {
        try {
            if (Shizuku.isPreV11()) {
                Log.w(TAG, "Shizuku version too old!");
                return;
            }
            if (Shizuku.checkSelfPermission() == 0) {
                Log.d(TAG, "Permission already granted");
                startSuService();
            } else {
                Log.d(TAG, "Requesting Shizuku permission...");
                Shizuku.requestPermission(1001);
            }
        } catch (Exception e) {
            Log.e(TAG, "checkPermission error", e);
        }
    }

    private void startSuService() {
        Log.d(TAG, "Starting SuService via Shizuku...");
        runOnUiThread(() -> {
            TextView tv = new TextView(this);
            tv.setText("Shizuku CONECTADO!\n\nMOD MENU PRONTO ✅");
            tv.setTextSize(28f);
            tv.setTextColor(0xFF00FF00);
            tv.setGravity(android.view.Gravity.CENTER);
            tv.setBackgroundColor(0xFF000000);
            setContentView(tv);
            Toast.makeText(this, "Shizuku OK!", Toast.LENGTH_SHORT).show();
        });
    }
}
