package androidx.activity.contextaware;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes3.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes3.dex */
public interface ContextAware {
    void addOnContextAvailableListener(OnContextAvailableListener listener);

    Context peekAvailableContext();

    void removeOnContextAvailableListener(OnContextAvailableListener listener);
}
