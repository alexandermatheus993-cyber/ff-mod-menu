package com.ff.modmenu;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.widget.Button;
import android.widget.Toast;
import android.widget.TextView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.util.Log;

import rikka.shizuku.Shizuku;

public class MainActivity extends Activity {

    private static final String TAG = "FFModMenu";
    private static final int REQUEST_CODE = 1;
    private boolean serviceBound = false;
    private ISuService suService = null;

    private boolean binderReceived = false;
    private boolean permissionGranted = false;

    private TextView statusText;
    private TextView pidText;
    private TextView baseText;

    private final Shizuku.OnBinderReceivedListener binderReceivedListener = new Shizuku.OnBinderReceivedListener() {
        @Override
        public void onBinderReceived() {
            binderReceived = true;
            Log.d(TAG, "Shizuku binder received");
            checkPermission();
        }
    };

    private final Shizuku.OnBinderDeadListener binderDeadListener = new Shizuku.OnBinderDeadListener() {
        @Override
        public void onBinderDead() {
            binderReceived = false;
            serviceBound = false;
            suService = null;
            Log.d(TAG, "Shizuku binder dead");
            runOnUiThread(() -> statusText.setText("Shizuku desconectado"));
        }
    };

    private final Shizuku.OnRequestPermissionResultListener permissionResultListener = new Shizuku.OnRequestPermissionResultListener() {
        @Override
        public void onRequestPermissionResult(int requestCode, int grantResult) {
            if (grantResult == android.content.pm.PackageManager.PERMISSION_GRANTED) {
                permissionGranted = true;
                Log.d(TAG, "Permissão concedida");
                runOnUiThread(() -> statusText.setText("Conectando..."));
                bindSuService();
            } else {
                Log.e(TAG, "Permissão negada");
                runOnUiThread(() -> statusText.setText("Permissão negada"));
            }
        }
    };

    private final ServiceConnection serviceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder binder) {
            suService = ISuService.Stub.asInterface(binder);
            serviceBound = true;
            Log.d(TAG, "SuService conectado!");
            runOnUiThread(() -> statusText.setText("Conectado ao Shizuku!"));
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            suService = null;
            serviceBound = false;
            Log.d(TAG, "SuService desconectado");
            runOnUiThread(() -> statusText.setText("Serviço desconectado"));
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Layout
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(50, 50, 50, 50);

        statusText = new TextView(this);
        statusText.setText("Iniciando Shizuku...");
        statusText.setTextSize(18);
        layout.addView(statusText);

        // Attach listeners BEFORE checking
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
        if (serviceBound) {
            unbindService(serviceConnection);
        }
    }

    private void checkPermission() {
        try {
            if (!Shizuku.pingBinder()) {
                statusText.setText("Shizuku não está rodando");
                return;
            }
            if (Shizuku.isPreV11()) {
                statusText.setText("Shizuku antigo, atualize!");
                return;
            }
            if (Shizuku.checkSelfPermission() == android.content.pm.PackageManager.PERMISSION_GRANTED) {
                permissionGranted = true;
                statusText.setText("Conectando...");
                bindSuService();
            } else {
                Shizuku.requestPermission(REQUEST_CODE);
            }
        } catch (Exception e) {
            Log.e(TAG, "checkPermission error", e);
            statusText.setText("Erro: " + e.getMessage());
        }
    }

    private void bindSuService() {
        try {
            if (serviceBound) return;

            Shizuku.UserServiceArgs args = new Shizuku.UserServiceArgs(
                new ComponentName(getPackageName(), SuService.class.getName())
            );
            args.debuggable(true);
            args.version(1);
            args.processNameSuffix("su_service");

            Shizuku.bindUserService(args, serviceConnection);
            statusText.setText("Conectando ao serviço...");
        } catch (Exception e) {
            Log.e(TAG, "bindSuService error", e);
            statusText.setText("Erro ao conectar: " + e.getMessage());
        }
    }
}
