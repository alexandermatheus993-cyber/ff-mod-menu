package androidx.constraintlayout.motion.widget;

import androidx.constraintlayout.widget.SharedValues;

/* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.-$$Lambda$ViewTransitionController$XMKLtAq2U_BxCcszT0aj0WFwIL8, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes53.dex */
public final /* synthetic */ class $$Lambda$ViewTransitionController$XMKLtAq2U_BxCcszT0aj0WFwIL8 implements SharedValues.SharedValuesListener {
    public final /* synthetic */ ViewTransitionController f$0;
    public final /* synthetic */ ViewTransition f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ $$Lambda$ViewTransitionController$XMKLtAq2U_BxCcszT0aj0WFwIL8(ViewTransitionController viewTransitionController, ViewTransition viewTransition, int i, boolean z, int i2) {
        this.f$0 = viewTransitionController;
        this.f$1 = viewTransition;
        this.f$2 = i;
        this.f$3 = z;
        this.f$4 = i2;
    }

    @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
    public final void onNewValue(int i, int i2, int i3) {
        this.f$0.lambda$listenForSharedVariable$0$ViewTransitionController(this.f$1, this.f$2, this.f$3, this.f$4, i, i2, i3);
    }
}
