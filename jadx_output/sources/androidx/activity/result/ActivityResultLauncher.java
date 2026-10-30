package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityOptionsCompat;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes3.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class ActivityResultLauncher<I> {
    public abstract ActivityResultContract<I, ?> getContract();

    public abstract void launch(I input, ActivityOptionsCompat options);

    public abstract void unregister();

    public void launch(I input) {
        launch(input, null);
    }
}
