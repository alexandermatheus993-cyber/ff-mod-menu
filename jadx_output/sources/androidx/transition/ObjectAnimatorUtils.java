package androidx.transition;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes51.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes51.dex */
class ObjectAnimatorUtils {
    static <T> ObjectAnimator ofPointF(T target, Property<T, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(target, property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(target, new PathProperty(property, path), 0.0f, 1.0f);
    }

    private ObjectAnimatorUtils() {
    }
}
