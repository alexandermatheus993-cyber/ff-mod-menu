package androidx.constraintlayout.motion.widget;

import android.view.View;

/* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.-$$Lambda$ViewTransition$IYm62aQ7INsUg3MT1WkIA7Uxiu0, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes53.dex */
public final /* synthetic */ class $$Lambda$ViewTransition$IYm62aQ7INsUg3MT1WkIA7Uxiu0 implements Runnable {
    public final /* synthetic */ ViewTransition f$0;
    public final /* synthetic */ View[] f$1;

    public /* synthetic */ $$Lambda$ViewTransition$IYm62aQ7INsUg3MT1WkIA7Uxiu0(ViewTransition viewTransition, View[] viewArr) {
        this.f$0 = viewTransition;
        this.f$1 = viewArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.lambda$applyTransition$0$ViewTransition(this.f$1);
    }
}
