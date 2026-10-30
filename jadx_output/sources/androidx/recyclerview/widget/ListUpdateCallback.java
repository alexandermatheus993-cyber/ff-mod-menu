package androidx.recyclerview.widget;

import androidx.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes42.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes42.dex */
public interface ListUpdateCallback {
    void onChanged(int i, int i2, @Nullable Object obj);

    void onInserted(int i, int i2);

    void onMoved(int i, int i2);

    void onRemoved(int i, int i2);
}
