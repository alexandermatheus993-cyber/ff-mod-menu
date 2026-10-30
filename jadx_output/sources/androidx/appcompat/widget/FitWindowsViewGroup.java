package androidx.appcompat.widget;

import android.graphics.Rect;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes2.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes2.dex */
public interface FitWindowsViewGroup {

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes2.dex
      classes53.dex
     */
    public interface OnFitSystemWindowsListener {
        void onFitSystemWindows(Rect rect);
    }

    void setOnFitSystemWindowsListener(OnFitSystemWindowsListener onFitSystemWindowsListener);
}
