package com.freestyle;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.github.megatronking.stringfog.xor.StringFogImpl;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes56.dex */
public class DebugActivity extends Activity {
    private static final Map<String, String> exceptionMap = new HashMap<String, String>() { // from class: com.freestyle.DebugActivity.1
        {
            put(StringFogImpl.decrypt("BiA0RFYyHShJXS0bM1l3MxYpWFYxJwNVWzAkMkRXOw=="), StringFogImpl.decrypt("HDowTFQ8MGZeTCc9KEoYOiQjX1khPSlDMg=="));
            put(StringFogImpl.decrypt("HDoiSEAaITJiXhc7M0NcJhE+Tl0lIC9CVg=="), StringFogImpl.decrypt("HDowTFQ8MGZBUSYgZkJIMCYnWVE6Okw="));
            put(StringFogImpl.decrypt("FCYvWVA4MTJEWxAsJUhIIT0pQw=="), StringFogImpl.decrypt("HDowTFQ8MGZMSjwgLkBdIT0lTFR1OzZISjQgL0JWXw=="));
            put(StringFogImpl.decrypt("GyErT10nEilfVTQgA1VbMCQyRFc7"), StringFogImpl.decrypt("HDowTFQ8MGZZVxshK09dJ3QkQVc2P2ZCSDAmJ1lROjpM"));
            put(StringFogImpl.decrypt("FDcyRE48ID9jVyESKVhWMRE+Tl0lIC9CVg=="), StringFogImpl.decrypt("HDowTFQ8MGZEViExKFkYOiQjX1khPSlDMg=="));
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Intent intent = getIntent();
        String stringExtra = "";
        if (intent != null) {
            stringExtra = intent.getStringExtra(StringFogImpl.decrypt("MCY0Qko="));
        }
        if (!stringExtra.isEmpty()) {
            String[] strArrSplit = stringExtra.split("\n");
            String str = strArrSplit[0];
            String str2 = exceptionMap.containsKey(str) ? exceptionMap.get(str) : "";
            if (!str2.isEmpty()) {
                spannableStringBuilder.append((CharSequence) str2);
            }
            for (int i = 1; i < strArrSplit.length; i++) {
                spannableStringBuilder.append((CharSequence) strArrSplit[i]);
                spannableStringBuilder.append((CharSequence) "\n");
            }
        } else {
            spannableStringBuilder.append((CharSequence) StringFogImpl.decrypt("GztmSEonOzQNVTAnNUxfMHQnW1k8OCdPVDB6"));
        }
        setTitle(((Object) getTitle()) + StringFogImpl.decrypt("dRc0TEs9MSI="));
        TextView textView = new TextView(this);
        textView.setText(spannableStringBuilder);
        textView.setTextIsSelectable(true);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this);
        ScrollView scrollView = new ScrollView(this);
        horizontalScrollView.addView(scrollView);
        scrollView.addView(textView);
        setContentView(horizontalScrollView);
    }
}
