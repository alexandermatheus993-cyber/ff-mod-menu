package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes3.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes3.dex */
public interface ActivityResultCaller {
    <I, O> ActivityResultLauncher<I> registerForActivityResult(ActivityResultContract<I, O> contract, ActivityResultCallback<O> callback);

    <I, O> ActivityResultLauncher<I> registerForActivityResult(ActivityResultContract<I, O> contract, ActivityResultRegistry registry, ActivityResultCallback<O> callback);
}
