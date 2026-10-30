package androidx.core.database;

import android.database.CursorWindow;
import android.os.Build;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes53.dex
  classes6.dex
 */
/* JADX INFO: loaded from: classes6.dex */
public final class CursorWindowCompat {
    private CursorWindowCompat() {
    }

    public static CursorWindow create(String name, long windowSizeBytes) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new CursorWindow(name, windowSizeBytes);
        }
        if (Build.VERSION.SDK_INT >= 15) {
            return new CursorWindow(name);
        }
        return new CursorWindow(false);
    }
}
