package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes2.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes2.dex */
public class TooltipCompat {
    public static void setTooltipText(View view, CharSequence tooltipText) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(tooltipText);
        } else {
            TooltipCompatHandler.setTooltipText(view, tooltipText);
        }
    }

    private TooltipCompat() {
    }
}
