package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes53.dex */
class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int direction;
    WidgetRun firstRun;
    int groupIndex;
    WidgetRun lastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> runs = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int i) {
        this.firstRun = null;
        this.lastRun = null;
        this.groupIndex = 0;
        this.groupIndex = index;
        index++;
        this.firstRun = widgetRun;
        this.lastRun = widgetRun;
        this.direction = i;
    }

    public void add(WidgetRun widgetRun) {
        this.runs.add(widgetRun);
        this.lastRun = widgetRun;
    }

    private long traverseStart(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        long jMax = j;
        int size = dependencyNode.dependencies.size();
        for (int i = 0; i < size; i++) {
            Dependency dependency = dependencyNode.dependencies.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    jMax = Math.max(jMax, traverseStart(dependencyNode2, j + ((long) dependencyNode2.margin)));
                }
            }
        }
        if (dependencyNode == widgetRun.start) {
            long wrapDimension = widgetRun.getWrapDimension();
            jMax = Math.max(Math.max(jMax, traverseStart(widgetRun.end, j + wrapDimension)), (j + wrapDimension) - ((long) widgetRun.end.margin));
        }
        return jMax;
    }

    private long traverseEnd(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        long jMin = j;
        int size = dependencyNode.dependencies.size();
        for (int i = 0; i < size; i++) {
            Dependency dependency = dependencyNode.dependencies.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    jMin = Math.min(jMin, traverseEnd(dependencyNode2, j + ((long) dependencyNode2.margin)));
                }
            }
        }
        if (dependencyNode == widgetRun.end) {
            long wrapDimension = widgetRun.getWrapDimension();
            jMin = Math.min(Math.min(jMin, traverseEnd(widgetRun.start, j - wrapDimension)), (j - wrapDimension) - ((long) widgetRun.start.margin));
        }
        return jMin;
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        long wrapDimension;
        if (this.firstRun instanceof ChainRun) {
            if (((ChainRun) this.firstRun).orientation != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(this.firstRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(this.firstRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = i == 0 ? constraintWidgetContainer.horizontalRun.start : constraintWidgetContainer.verticalRun.start;
        DependencyNode dependencyNode2 = i == 0 ? constraintWidgetContainer.horizontalRun.end : constraintWidgetContainer.verticalRun.end;
        boolean zContains = this.firstRun.start.targets.contains(dependencyNode);
        boolean zContains2 = this.firstRun.end.targets.contains(dependencyNode2);
        long wrapDimension2 = this.firstRun.getWrapDimension();
        if (zContains && zContains2) {
            long jTraverseStart = traverseStart(this.firstRun.start, 0L);
            long jTraverseEnd = traverseEnd(this.firstRun.end, 0L);
            long j = jTraverseStart - wrapDimension2;
            if (j >= (-this.firstRun.end.margin)) {
                j += (long) this.firstRun.end.margin;
            }
            long j2 = ((-jTraverseEnd) - wrapDimension2) - ((long) this.firstRun.start.margin);
            if (j2 >= this.firstRun.start.margin) {
                j2 -= (long) this.firstRun.start.margin;
            }
            float biasPercent = this.firstRun.widget.getBiasPercent(i);
            long j3 = 0;
            if (biasPercent > 0.0f) {
                j3 = (long) ((j2 / biasPercent) + (j / (1.0f - biasPercent)));
            }
            wrapDimension = (((long) this.firstRun.start.margin) + ((((long) (0.5f + (j3 * biasPercent))) + wrapDimension2) + ((long) (0.5f + (j3 * (1.0f - biasPercent)))))) - ((long) this.firstRun.end.margin);
        } else if (zContains) {
            wrapDimension = Math.max(traverseStart(this.firstRun.start, this.firstRun.start.margin), ((long) this.firstRun.start.margin) + wrapDimension2);
        } else if (!zContains2) {
            wrapDimension = (((long) this.firstRun.start.margin) + this.firstRun.getWrapDimension()) - ((long) this.firstRun.end.margin);
        } else {
            wrapDimension = Math.max(-traverseEnd(this.firstRun.end, this.firstRun.end.margin), ((long) (-this.firstRun.end.margin)) + wrapDimension2);
        }
        return wrapDimension;
    }

    private boolean defineTerminalWidget(WidgetRun widgetRun, int i) {
        if (!widgetRun.widget.isTerminalWidget[i]) {
            return false;
        }
        for (Dependency dependency : widgetRun.start.dependencies) {
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode = (DependencyNode) dependency;
                if (dependencyNode.run != widgetRun && dependencyNode == dependencyNode.run.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator<WidgetRun> it = ((ChainRun) widgetRun).widgets.iterator();
                        while (it.hasNext()) {
                            defineTerminalWidget(it.next(), i);
                        }
                    } else if (!(widgetRun instanceof HelperReferences)) {
                        widgetRun.widget.isTerminalWidget[i] = false;
                    }
                    defineTerminalWidget(dependencyNode.run, i);
                }
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if (dependency2 instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency2;
                if (dependencyNode2.run != widgetRun && dependencyNode2 == dependencyNode2.run.start) {
                    if (widgetRun instanceof ChainRun) {
                        Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).widgets.iterator();
                        while (it2.hasNext()) {
                            defineTerminalWidget(it2.next(), i);
                        }
                    } else if (!(widgetRun instanceof HelperReferences)) {
                        widgetRun.widget.isTerminalWidget[i] = false;
                    }
                    defineTerminalWidget(dependencyNode2.run, i);
                }
            }
        }
        return false;
    }

    public void defineTerminalWidgets(boolean z, boolean z2) {
        if (z && (this.firstRun instanceof HorizontalWidgetRun)) {
            defineTerminalWidget(this.firstRun, 0);
        }
        if (z2 && (this.firstRun instanceof VerticalWidgetRun)) {
            defineTerminalWidget(this.firstRun, 1);
        }
    }
}
