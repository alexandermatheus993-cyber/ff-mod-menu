package androidx.activity;

import java.util.concurrent.CopyOnWriteArrayList;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes3.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class OnBackPressedCallback {
    private CopyOnWriteArrayList<Cancellable> mCancellables = new CopyOnWriteArrayList<>();
    private boolean mEnabled;

    public abstract void handleOnBackPressed();

    public OnBackPressedCallback(boolean enabled) {
        this.mEnabled = enabled;
    }

    public final void setEnabled(boolean enabled) {
        this.mEnabled = enabled;
    }

    public final boolean isEnabled() {
        return this.mEnabled;
    }

    public final void remove() {
        for (Cancellable cancellable : this.mCancellables) {
            cancellable.cancel();
        }
    }

    void addCancellable(Cancellable cancellable) {
        this.mCancellables.add(cancellable);
    }

    void removeCancellable(Cancellable cancellable) {
        this.mCancellables.remove(cancellable);
    }
}
