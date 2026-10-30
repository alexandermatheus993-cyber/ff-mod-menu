package androidx.transition;

import android.content.Context;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.NonNull;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes51.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes51.dex */
public abstract class PathMotion {
    @NonNull
    public abstract Path getPath(float f, float f2, float f3, float f4);

    public PathMotion() {
    }

    public PathMotion(@NonNull Context context, @NonNull AttributeSet attrs) {
    }
}
