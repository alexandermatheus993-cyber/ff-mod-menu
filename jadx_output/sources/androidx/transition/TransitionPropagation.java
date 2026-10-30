package androidx.transition;

import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes51.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes51.dex */
public abstract class TransitionPropagation {
    public abstract void captureValues(TransitionValues transitionValues);

    public abstract String[] getPropagationProperties();

    public abstract long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2);
}
