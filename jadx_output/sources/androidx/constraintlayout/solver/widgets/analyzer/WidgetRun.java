package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes53.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour dimensionBehavior;
    public int matchConstraintsType;
    RunGroup runGroup;
    ConstraintWidget widget;
    DimensionDependency dimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean resolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    abstract void apply();

    abstract void applyToWidget();

    abstract void clear();

    abstract void reset();

    abstract boolean supportsWrapComputation();

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.widget = constraintWidget;
    }

    public boolean isDimensionResolved() {
        return this.dimension.resolved;
    }

    public boolean isCenterConnection() {
        int i = 0;
        int size = this.start.targets.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.start.targets.get(i2).run != this) {
                i++;
            }
        }
        int size2 = this.end.targets.size();
        for (int i3 = 0; i3 < size2; i3++) {
            if (this.end.targets.get(i3).run != this) {
                i++;
            }
        }
        return i >= 2;
    }

    public long wrapSize(int i) {
        long j;
        if (this.dimension.resolved) {
            long j2 = this.dimension.value;
            if (isCenterConnection()) {
                j = j2 + ((long) (this.start.margin - this.end.margin));
            } else if (i == 0) {
                j = j2 + ((long) this.start.margin);
            } else {
                j = j2 - ((long) this.end.margin);
            }
            return j;
        }
        return 0L;
    }

    protected final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return null;
        }
        DependencyNode dependencyNode = null;
        ConstraintWidget constraintWidget = constraintAnchor.mTarget.mOwner;
        switch (constraintAnchor.mTarget.mType) {
            case LEFT:
                dependencyNode = constraintWidget.horizontalRun.start;
                break;
            case RIGHT:
                dependencyNode = constraintWidget.horizontalRun.end;
                break;
            case TOP:
                dependencyNode = constraintWidget.verticalRun.start;
                break;
            case BASELINE:
                dependencyNode = constraintWidget.verticalRun.baseline;
                break;
            case BOTTOM:
                dependencyNode = constraintWidget.verticalRun.end;
                break;
        }
        return dependencyNode;
    }

    protected void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        float verticalBiasPercent;
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (target.resolved && target2.resolved) {
            int margin = target.value + constraintAnchor.getMargin();
            int margin2 = target2.value - constraintAnchor2.getMargin();
            int i2 = margin2 - margin;
            if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                resolveDimension(i, i2);
            }
            if (this.dimension.resolved) {
                if (this.dimension.value == i2) {
                    this.start.resolve(margin);
                    this.end.resolve(margin2);
                    return;
                }
                if (i == 0) {
                    verticalBiasPercent = this.widget.getHorizontalBiasPercent();
                } else {
                    verticalBiasPercent = this.widget.getVerticalBiasPercent();
                }
                float f = verticalBiasPercent;
                if (target == target2) {
                    margin = target.value;
                    margin2 = target2.value;
                    f = 0.5f;
                }
                this.start.resolve((int) (0.5f + margin + (((margin2 - margin) - this.dimension.value) * f)));
                this.end.resolve(this.start.value + this.dimension.value);
            }
        }
    }

    private void resolveDimension(int i, int i2) {
        WidgetRun widgetRun;
        int i3;
        float f;
        switch (this.matchConstraintsType) {
            case 0:
                this.dimension.resolve(getLimitedDimension(i2, i));
                break;
            case 1:
                this.dimension.resolve(Math.min(getLimitedDimension(this.dimension.wrapValue, i), i2));
                break;
            case 2:
                ConstraintWidget parent = this.widget.getParent();
                if (parent != null) {
                    WidgetRun widgetRun2 = i == 0 ? parent.horizontalRun : parent.verticalRun;
                    if (widgetRun2.dimension.resolved) {
                        if (i == 0) {
                            f = this.widget.mMatchConstraintPercentWidth;
                        } else {
                            f = this.widget.mMatchConstraintPercentHeight;
                        }
                        this.dimension.resolve(getLimitedDimension((int) (0.5f + (widgetRun2.dimension.value * f)), i));
                    }
                }
                break;
            case 3:
                if (this.widget.horizontalRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.horizontalRun.matchConstraintsType != 3 || this.widget.verticalRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.verticalRun.matchConstraintsType != 3) {
                    if (i == 0) {
                        widgetRun = this.widget.verticalRun;
                    } else {
                        widgetRun = this.widget.horizontalRun;
                    }
                    WidgetRun widgetRun3 = widgetRun;
                    if (widgetRun3.dimension.resolved) {
                        float dimensionRatio = this.widget.getDimensionRatio();
                        if (i == 1) {
                            i3 = (int) (0.5f + (widgetRun3.dimension.value / dimensionRatio));
                        } else {
                            i3 = (int) (0.5f + (dimensionRatio * widgetRun3.dimension.value));
                        }
                        this.dimension.resolve(i3);
                    }
                }
                break;
        }
    }

    protected void updateRunStart(Dependency dependency) {
    }

    protected void updateRunEnd(Dependency dependency) {
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    protected final int getLimitedDimension(int i, int i2) {
        int i3 = i;
        if (i2 == 0) {
            int i4 = this.widget.mMatchConstraintMaxWidth;
            int iMax = Math.max(this.widget.mMatchConstraintMinWidth, i3);
            if (i4 > 0) {
                iMax = Math.min(i4, i3);
            }
            if (iMax != i3) {
                i3 = iMax;
            }
        } else {
            int i5 = this.widget.mMatchConstraintMaxHeight;
            int iMax2 = Math.max(this.widget.mMatchConstraintMinHeight, i3);
            if (i5 > 0) {
                iMax2 = Math.min(i5, i3);
            }
            if (iMax2 != i3) {
                i3 = iMax2;
            }
        }
        return i3;
    }

    protected final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i) {
        if (constraintAnchor.mTarget == null) {
            return null;
        }
        DependencyNode dependencyNode = null;
        ConstraintWidget constraintWidget = constraintAnchor.mTarget.mOwner;
        WidgetRun widgetRun = i == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        switch (constraintAnchor.mTarget.mType) {
            case LEFT:
            case TOP:
                dependencyNode = widgetRun.start;
                break;
            case RIGHT:
            case BOTTOM:
                dependencyNode = widgetRun.end;
                break;
        }
        return dependencyNode;
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.margin = i;
        dependencyNode2.dependencies.add(dependencyNode);
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.targets.add(this.dimension);
        dependencyNode.marginFactor = i;
        dependencyNode.marginDependency = dimensionDependency;
        dependencyNode2.dependencies.add(dependencyNode);
        dimensionDependency.dependencies.add(dependencyNode);
    }

    public long getWrapDimension() {
        if (this.dimension.resolved) {
            return this.dimension.value;
        }
        return 0L;
    }

    public boolean isResolved() {
        return this.resolved;
    }
}
