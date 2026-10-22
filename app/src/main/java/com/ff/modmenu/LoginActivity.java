package com.ff.modmenu;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class LoginActivity extends Activity {

    private static final String VALID_KEY = "FFMOD2025PRO";
    private static final String PREFS_NAME = "ff_mod_prefs";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        SharedPreferences prefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        if (prefs.getBoolean("authenticated", false)) {
            goToMain();
            return;
        }

        EditText keyInput = findViewById(R.id.key_input);
        Button loginBtn = findViewById(R.id.login_btn);
        TextView statusText = findViewById(R.id.login_status);

        loginBtn.setOnClickListener(v -> {
            String enteredKey = keyInput.getText().toString().trim();

            if (enteredKey.isEmpty()) {
                statusText.setText("Digite uma key!");
                statusText.setTextColor(0xFFFF4444);
                return;
            }

            if (enteredKey.equals(VALID_KEY)) {
                prefs.edit().putBoolean("authenticated", true).apply();
                Toast.makeText(this, "✅ Key válida! Bem-vindo!", Toast.LENGTH_SHORT).show();
                goToMain();
            } else {
                statusText.setText("❌ Key inválida!");
                statusText.setTextColor(0xFFFF4444);
                keyInput.setText("");
            }
        });
    }

    private void goToMain() {
        startActivity(new Intent(LoginActivity.this, MainActivity.class));
        overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
        finish();
    }
}
