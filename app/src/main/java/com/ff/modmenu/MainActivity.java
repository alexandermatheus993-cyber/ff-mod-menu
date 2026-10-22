package com.ff.modmenu;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import android.util.Log;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        TextView tv = new TextView(this);
        tv.setText("FUNCIONOU!");
        tv.setTextSize(30);
        
        setContentView(tv);
    }
}
