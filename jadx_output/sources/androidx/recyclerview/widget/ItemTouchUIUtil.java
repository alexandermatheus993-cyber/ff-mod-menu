package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes42.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes42.dex */
public interface ItemTouchUIUtil {
    void clearView(View view);

    void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z);

    void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z);

    void onSelected(View view);
}
