package com.ff.modmenu;

import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.util.Log;

public class MainActivity extends Activity {

    private static final String TAG = "FFModMenu";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        try {
            Log.d(TAG, "onCreate started");
            
            // Teste super simples
            TextView tv = new TextView(this);
            tv.setText("FF Mod Menu carregado!");
            tv.setTextSize(24);
            
            setContentView(tv);
            
            Log.d(TAG, "setContentView executed");
            
        } catch (Exception e) {
            Log.e(TAG, "ERROR in onCreate", e);
            // Fallback: mostrar erro em tela simples
            TextView errorTv = new TextView(this);
            errorTv.setText("Erro: " + e.getMessage());
            setContentView(errorTv);
        }
    }
}
