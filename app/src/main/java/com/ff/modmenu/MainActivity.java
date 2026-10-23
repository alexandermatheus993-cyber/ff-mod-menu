package com.ff.modmenu;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.widget.Toast;

public class MainActivity extends Activity {
    private static final int OVERLAY_REQUEST = 1001;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (!Settings.canDrawOverlays(this)) {
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivityForResult(intent, OVERLAY_REQUEST);
                return;
            }
        }

        launchService();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == OVERLAY_REQUEST) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && Settings.canDrawOverlays(this)) {
                launchService();
            } else {
                Toast.makeText(this, "Permissao de overlay necessaria!", Toast.LENGTH_LONG).show();
                finish();
            }
        }
    }

    private void launchService() {
        Toast.makeText(this, "FF Mod Menu carregando...", Toast.LENGTH_SHORT).show();
        new Handler().postDelayed(() -> {
            try {
                Intent svc = new Intent(this, FloatingModMenuService.class);
                if (Build.VERSION.SDK_INT >= 26) {
                    startForegroundService(svc);
                } else {
                    startService(svc);
                }
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(this, "Erro ao iniciar service: " + e.getMessage(), Toast.LENGTH_LONG).show();
            }
            finish();
        }, 3000);
    }
}
