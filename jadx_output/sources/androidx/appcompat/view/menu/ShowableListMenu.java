package androidx.appcompat.view.menu;

import android.widget.ListView;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes2.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes2.dex */
public interface ShowableListMenu {
    void dismiss();

    ListView getListView();

    boolean isShowing();

    void show();
}
