package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes3.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class ActivityResultContract<I, O> {
    public abstract Intent createIntent(Context context, I input);

    public abstract O parseResult(int resultCode, Intent intent);

    public SynchronousResult<O> getSynchronousResult(Context context, I input) {
        return null;
    }

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes3.dex
      classes53.dex
     */
    public static final class SynchronousResult<T> {
        private final T mValue;

        public SynchronousResult(T value) {
            this.mValue = value;
        }

        public T getValue() {
            return this.mValue;
        }
    }
}
