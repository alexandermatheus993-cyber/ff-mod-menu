package com.ff.modmenu;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        TextView tv = new TextView(this);
        tv.setText("FUNCIONOU!");
        tv.setTextSize(32f);
        tv.setGravity(android.view.Gravity.CENTER);

        setContentView(tv);
    }
}
