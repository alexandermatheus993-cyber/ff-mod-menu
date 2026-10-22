package com.ff.modmenu;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.widget.Button;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {

    private static final int OVERLAY_PERMISSION_CODE = 1234;
    private Switch antiBanSwitch, espSwitch, aimbotSwitch, speedSwitch;
    private boolean isMenuActive = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView welcomeText = findViewById(R.id.welcome_text);
        TextView statusText = findViewById(R.id.status_text);
        Button toggleMenuBtn = findViewById(R.id.toggle_menu_btn);
        Button launchGameBtn = findViewById(R.id.launch_game_btn);

        antiBanSwitch = findViewById(R.id.switch_antiban);
        espSwitch = findViewById(R.id.switch_esp);
        aimbotSwitch = findViewById(R.id.switch_aimbot);
        speedSwitch = findViewById(R.id.switch_speed);

        welcomeText.setText("🎮 FF Mod Menu PRO v3.0");
        statusText.setText("Status: Pronto para uso");

        toggleMenuBtn.setOnClickListener(v -> {
            if (!Settings.canDrawOverlays(this)) {
                Toast.makeText(this, "Permita a sobreposição de tela!", Toast.LENGTH_LONG).show();
                Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivityForResult(intent, OVERLAY_PERMISSION_CODE);
                return;
            }

            if (!isMenuActive) {
                startFloatingMenu();
                toggleMenuBtn.setText("❌ Desativar Menu");
                statusText.setText("Status: Menu ATIVO ✅");
                isMenuActive = true;
            } else {
                stopFloatingMenu();
                toggleMenuBtn.setText("⚡ Ativar Menu Flutuante");
                statusText.setText("Status: Menu DESATIVADO");
                isMenuActive = false;
            }
        });

        launchGameBtn.setOnClickListener(v -> {
            Intent launchIntent = getPackageManager().getLaunchIntentForPackage("com.dts.freefireth");
            if (launchIntent != null) {
                startActivity(launchIntent);
            } else {
                Toast.makeText(this, "Free Fire não instalado!", Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void startFloatingMenu() {
        Intent intent = new Intent(this, FloatingMenuService.class);
        intent.putExtra("antiban", antiBanSwitch.isChecked());
        intent.putExtra("esp", espSwitch.isChecked());
        intent.putExtra("aimbot", aimbotSwitch.isChecked());
        intent.putExtra("speed", speedSwitch.isChecked());
        startService(intent);
        Toast.makeText(this, "✅ Menu flutuante ativo!", Toast.LENGTH_SHORT).show();
    }

    private void stopFloatingMenu() {
        stopService(new Intent(this, FloatingMenuService.class));
        Toast.makeText(this, "❌ Menu flutuante desativado!", Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == OVERLAY_PERMISSION_CODE) {
            if (Settings.canDrawOverlays(this)) {
                Toast.makeText(this, "Permissão concedida!", Toast.LENGTH_SHORT).show();
            } else {
                Toast.makeText(this, "Permissão negada!", Toast.LENGTH_LONG).show();
            }
        }
    }
}
