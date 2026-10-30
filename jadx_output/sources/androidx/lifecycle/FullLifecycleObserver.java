package androidx.lifecycle;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes13.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes13.dex */
interface FullLifecycleObserver extends LifecycleObserver {
    void onCreate(LifecycleOwner lifecycleOwner);

    void onDestroy(LifecycleOwner lifecycleOwner);

    void onPause(LifecycleOwner lifecycleOwner);

    void onResume(LifecycleOwner lifecycleOwner);

    void onStart(LifecycleOwner lifecycleOwner);

    void onStop(LifecycleOwner lifecycleOwner);
}
