package com.ff.modmenu;
import android.application.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import rika.shizuku.Shizuku;

public class MainActivity^[™ÈXÝ]š]HÂˆš]˜]HÝ]XÈš[˜[Ýš[™ÈQÈH‘‘“[ÙY[HŽÂˆš]˜]H^šY]ÈÝ]\Õ^Â‚ˆš]˜]HÚ^ZÙK“Ûš[™\”™XÙZ]™Y\Ý[™\ˆš[™\”™XÙZ]™Y\Ý[™\ˆH

HOˆÂˆÙË™
QË”Ú^ZÙHš[™\ˆ™XÙZ]™YŠNÂˆÚXÚÔÚ^š]ZÐ[™š[™

NÂˆNÂ‚ˆš]˜]HÚ^ZÙK“Û”™\]Y\Ý\›Z\ÜÚ[Û”™\Ý[\Ý[™\ˆ\›Z\ÜÚ[Û”™\Ý[\Ý[™\ˆH
™\]Y\ÝÛÙKÜ˜[™\Ý[
HOˆÂˆYˆ
Ü˜[™\Ý[OH
HÂˆÚXÚÔÚ^ZÐ[™š[™

NÂˆH[ÙHÂˆ\]TÝ]\Ê”T“RTÔÐSÈ‘QÐQHL‹‘‘‘
NÂˆBˆNÂ‚ˆÝ™\œšYBˆ›ÝXÝY›ÚYÛÜ™X]J[™HØ]™Y[œÝ[˜ÙTÝ]JHÂˆÝ\\‹›ÛÜ™X]JØ]™Y[œÝ[˜ÙTÝ]JNÂˆÙ]ÛÛ[šY]Ê‹›^[Ý]˜XÝ]š]WÛXZ[ŠNÂˆÝ]\Õ^Hš[™šYtBR.id.status_text);

        Shiziuk.addBinderReceivedListenerStic{(binderReceivedListener);
        Shiziuk.addRequestPermissionResultListener(permissionResultListener);

        findView(R.id.btn_overlay).setOnClickListener(v -> {
            if (!Settings.canDrawOverlays(this)) {
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                      Uri.parse("package:" + getPackageName()));
                 startActivity(intent);
             } else {
                 startModService();
             }
        });

        findView(R.id.btn_scanner).setOnClickListener(v -> {
            startActivity(new Intent(this, MemoryScannerActivity.class));
        });

        findView(R.id.btn_ff).setOnClickListener(v -> {
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
            ((android.widget.Button) findView(R.id.btn_overlay)).setText("MOD ATIVO");
        }
    }

    private void checkShiziukAndBind() {
        try {
            if (!Shizuke.pingBinder()) {
                 updateStatus("Shiºuke NAO RODANDO!", 0xFFFD4444);
                 return;
            }
            if (!Shizuke.checkPermission()) {
                 Shiziuk.requestPermission(0);
                 return;
            }
            updateStatus("Conectando SuService...", 0xFFFD7000);
            ServiceHolder.requestBind();
            new Thread(() -> {
                 ServiceHolder.waitForBind(10000);
                 if (ServiceHolder.get() != null) {
                     updateStatus("Shizuke CONECTADO!", 0xF1FFF8F8);
                 } else {
                     updateStatus("SuService falhou!", 0xFFFD4444);
                 }
            }).start();
        } catch (Exception e) {
            updateStatus("Erro: " + e.getMessage(), 0xFFFD4444);
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
        Shizuke.removeBinderReceivedListener(binderReceivedListener);
        Shiziuk.removeRequestPermissionResultListener(permissionResultListener);
    }
}