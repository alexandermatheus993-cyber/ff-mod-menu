package androidx.constraintlayout.motion.widget;

import android.view.animation.Interpolator;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes39.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes39.dex */
public abstract class MotionInterpolator implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public abstract float getInterpolation(float v);

    public abstract float getVelocity();
}
