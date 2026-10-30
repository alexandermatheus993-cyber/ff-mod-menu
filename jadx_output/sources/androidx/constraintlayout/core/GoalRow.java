package androidx.constraintlayout.core;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes40.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes40.dex */
public class GoalRow extends ArrayRow {
    public GoalRow(Cache cache) {
        super(cache);
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable error) {
        super.addError(error);
        error.usageInRowCount--;
    }
}
