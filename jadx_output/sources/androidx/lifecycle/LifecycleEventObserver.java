package androidx.lifecycle;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes13.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes13.dex */
public interface LifecycleEventObserver extends LifecycleObserver {
    void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event);
}
