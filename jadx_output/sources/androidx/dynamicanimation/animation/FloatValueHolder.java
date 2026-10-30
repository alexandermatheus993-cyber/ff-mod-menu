package androidx.dynamicanimation.animation;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes41.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes41.dex */
public class FloatValueHolder {
    private float mValue = 0.0f;

    public FloatValueHolder() {
    }

    public FloatValueHolder(float f) {
        setValue(f);
    }

    public void setValue(float f) {
        this.mValue = f;
    }

    public float getValue() {
        return this.mValue;
    }
}
