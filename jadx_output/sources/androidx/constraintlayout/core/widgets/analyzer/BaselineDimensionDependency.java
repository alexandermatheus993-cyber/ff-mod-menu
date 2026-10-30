package androidx.constraintlayout.core.widgets.analyzer;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes40.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes40.dex */
class BaselineDimensionDependency extends DimensionDependency {
    public BaselineDimensionDependency(WidgetRun run) {
        super(run);
    }

    public void update(DependencyNode node) {
        VerticalWidgetRun verticalRun = (VerticalWidgetRun) this.run;
        verticalRun.baseline.margin = this.run.widget.getBaselineDistance();
        this.resolved = true;
    }
}
