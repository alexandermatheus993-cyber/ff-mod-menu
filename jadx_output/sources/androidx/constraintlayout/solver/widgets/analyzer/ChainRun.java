package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes53.dex */
public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.widgets = new ArrayList<>();
        this.orientation = i;
        build();
    }

    public String toString() {
        String str = "ChainRun " + (this.orientation == 0 ? "horizontal : " : "vertical : ");
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            str = ((str + "<") + it.next()) + "> ";
        }
        return str;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    boolean supportsWrapComputation() {
        int size = this.widgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.widgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.widgets.size();
        long wrapDimension = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.widgets.get(i);
            wrapDimension = wrapDimension + ((long) widgetRun.start.margin) + widgetRun.getWrapDimension() + ((long) widgetRun.end.margin);
        }
        return wrapDimension;
    }

    private void build() {
        int verticalChainStyle;
        ConstraintWidget constraintWidget = this.widget;
        ConstraintWidget previousChainMember = constraintWidget.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget2 = previousChainMember;
            if (constraintWidget2 == null) {
                break;
            }
            constraintWidget = constraintWidget2;
            previousChainMember = constraintWidget.getPreviousChainMember(this.orientation);
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = nextChainMember;
            if (constraintWidget3 == null) {
                break;
            }
            this.widgets.add(constraintWidget3.getRun(this.orientation));
            nextChainMember = constraintWidget3.getNextChainMember(this.orientation);
        }
        for (WidgetRun widgetRun : this.widgets) {
            if (this.orientation == 0) {
                widgetRun.widget.horizontalChainRun = this;
            } else if (this.orientation == 1) {
                widgetRun.widget.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.getParent()).isRtl()) && this.widgets.size() > 1) {
            this.widget = this.widgets.get(this.widgets.size() - 1).widget;
        }
        if (this.orientation == 0) {
            verticalChainStyle = this.widget.getHorizontalChainStyle();
        } else {
            verticalChainStyle = this.widget.getVerticalChainStyle();
        }
        this.chainStyle = verticalChainStyle;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    void clear() {
        this.runGroup = null;
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        float verticalBiasPercent;
        int i;
        int i2;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.widget.getParent();
            boolean zIsRtl = false;
            if (parent != null && (parent instanceof ConstraintWidgetContainer)) {
                zIsRtl = ((ConstraintWidgetContainer) parent).isRtl();
            }
            int i3 = this.end.value - this.start.value;
            int i4 = 0;
            int i5 = 0;
            float f = 0.0f;
            int i6 = 0;
            int size = this.widgets.size();
            int i7 = -1;
            for (int i8 = 0; i8 < size; i8++) {
                if (this.widgets.get(i8).widget.getVisibility() != 8) {
                    i7 = i8;
                    break;
                }
            }
            int i9 = -1;
            for (int i10 = size - 1; i10 >= 0; i10--) {
                if (this.widgets.get(i10).widget.getVisibility() != 8) {
                    i9 = i10;
                    break;
                }
            }
            for (int i11 = 0; i11 < 2; i11++) {
                for (int i12 = 0; i12 < size; i12++) {
                    WidgetRun widgetRun = this.widgets.get(i12);
                    if (widgetRun.widget.getVisibility() != 8) {
                        i6++;
                        if (i12 > 0 && i12 >= i7) {
                            i4 += widgetRun.start.margin;
                        }
                        int i13 = widgetRun.dimension.value;
                        boolean z = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z) {
                            if (this.orientation != 0 || widgetRun.widget.horizontalRun.dimension.resolved) {
                                if (this.orientation == 1 && !widgetRun.widget.verticalRun.dimension.resolved) {
                                    return;
                                }
                            } else {
                                return;
                            }
                        } else if (widgetRun.matchConstraintsType == 1 && i11 == 0) {
                            z = true;
                            i13 = widgetRun.dimension.wrapValue;
                            i5++;
                        } else if (widgetRun.dimension.resolved) {
                            z = true;
                        }
                        if (!z) {
                            i5++;
                            float f2 = widgetRun.widget.mWeight[this.orientation];
                            if (f2 >= 0.0f) {
                                f += f2;
                            }
                        } else {
                            i4 += i13;
                        }
                        if (i12 < size - 1 && i12 < i9) {
                            i4 += -widgetRun.end.margin;
                        }
                    }
                }
                if (i4 < i3 || i5 == 0) {
                    break;
                }
                i6 = 0;
                i5 = 0;
                i4 = 0;
                f = 0.0f;
            }
            int i14 = this.start.value;
            if (zIsRtl) {
                i14 = this.end.value;
            }
            if (i4 > i3) {
                if (zIsRtl) {
                    i14 += (int) (0.5f + ((i4 - i3) / 2.0f));
                } else {
                    i14 -= (int) (0.5f + ((i4 - i3) / 2.0f));
                }
            }
            if (i5 > 0) {
                int i15 = (int) (0.5f + ((i3 - i4) / i5));
                int i16 = 0;
                for (int i17 = 0; i17 < size; i17++) {
                    WidgetRun widgetRun2 = this.widgets.get(i17);
                    if (widgetRun2.widget.getVisibility() != 8 && widgetRun2.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && !widgetRun2.dimension.resolved) {
                        int i18 = i15;
                        if (f > 0.0f) {
                            i18 = (int) (0.5f + ((widgetRun2.widget.mWeight[this.orientation] * (i3 - i4)) / f));
                        }
                        if (this.orientation == 0) {
                            int i19 = widgetRun2.widget.mMatchConstraintMaxWidth;
                            int i20 = widgetRun2.widget.mMatchConstraintMinWidth;
                            int iMin = i18;
                            if (widgetRun2.matchConstraintsType == 1) {
                                iMin = Math.min(iMin, widgetRun2.dimension.wrapValue);
                            }
                            int iMax = Math.max(i20, iMin);
                            if (i19 > 0) {
                                iMax = Math.min(i19, iMax);
                            }
                            if (iMax != i18) {
                                i16++;
                                i18 = iMax;
                            }
                        } else {
                            int i21 = widgetRun2.widget.mMatchConstraintMaxHeight;
                            int i22 = widgetRun2.widget.mMatchConstraintMinHeight;
                            int iMin2 = i18;
                            if (widgetRun2.matchConstraintsType == 1) {
                                iMin2 = Math.min(iMin2, widgetRun2.dimension.wrapValue);
                            }
                            int iMax2 = Math.max(i22, iMin2);
                            if (i21 > 0) {
                                iMax2 = Math.min(i21, iMax2);
                            }
                            if (iMax2 != i18) {
                                i16++;
                                i18 = iMax2;
                            }
                        }
                        widgetRun2.dimension.resolve(i18);
                    }
                }
                if (i16 > 0) {
                    i5 -= i16;
                    i4 = 0;
                    for (int i23 = 0; i23 < size; i23++) {
                        WidgetRun widgetRun3 = this.widgets.get(i23);
                        if (widgetRun3.widget.getVisibility() != 8) {
                            if (i23 > 0 && i23 >= i7) {
                                i4 += widgetRun3.start.margin;
                            }
                            i4 += widgetRun3.dimension.value;
                            if (i23 < size - 1 && i23 < i9) {
                                i4 += -widgetRun3.end.margin;
                            }
                        }
                    }
                }
                if (this.chainStyle == 2 && i16 == 0) {
                    this.chainStyle = 0;
                }
            }
            if (i4 > i3) {
                this.chainStyle = 2;
            }
            if (i6 > 0 && i5 == 0 && i7 == i9) {
                this.chainStyle = 2;
            }
            if (this.chainStyle == 1) {
                int i24 = 0;
                if (i6 > 1) {
                    i24 = (i3 - i4) / (i6 - 1);
                } else if (i6 == 1) {
                    i24 = (i3 - i4) / 2;
                }
                if (i5 > 0) {
                    i24 = 0;
                }
                for (int i25 = 0; i25 < size; i25++) {
                    int i26 = i25;
                    if (zIsRtl) {
                        i26 = size - (i25 + 1);
                    }
                    WidgetRun widgetRun4 = this.widgets.get(i26);
                    if (widgetRun4.widget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i14);
                        widgetRun4.end.resolve(i14);
                    } else {
                        if (i25 > 0) {
                            if (zIsRtl) {
                                i14 -= i24;
                            } else {
                                i14 += i24;
                            }
                        }
                        if (i25 > 0 && i25 >= i7) {
                            if (zIsRtl) {
                                i14 -= widgetRun4.start.margin;
                            } else {
                                i14 += widgetRun4.start.margin;
                            }
                        }
                        if (zIsRtl) {
                            widgetRun4.end.resolve(i14);
                        } else {
                            widgetRun4.start.resolve(i14);
                        }
                        int i27 = widgetRun4.dimension.value;
                        if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i27 = widgetRun4.dimension.wrapValue;
                        }
                        if (zIsRtl) {
                            i14 -= i27;
                        } else {
                            i14 += i27;
                        }
                        if (zIsRtl) {
                            widgetRun4.start.resolve(i14);
                        } else {
                            widgetRun4.end.resolve(i14);
                        }
                        widgetRun4.resolved = true;
                        if (i25 < size - 1 && i25 < i9) {
                            if (zIsRtl) {
                                i14 -= -widgetRun4.end.margin;
                            } else {
                                i14 += -widgetRun4.end.margin;
                            }
                        }
                    }
                }
                return;
            }
            if (this.chainStyle != 0) {
                if (this.chainStyle == 2) {
                    if (this.orientation == 0) {
                        verticalBiasPercent = this.widget.getHorizontalBiasPercent();
                    } else {
                        verticalBiasPercent = this.widget.getVerticalBiasPercent();
                    }
                    float f3 = verticalBiasPercent;
                    if (zIsRtl) {
                        f3 = 1.0f - f3;
                    }
                    int i28 = (int) (0.5f + ((i3 - i4) * f3));
                    if (i28 < 0 || i5 > 0) {
                        i28 = 0;
                    }
                    if (zIsRtl) {
                        i = i14 - i28;
                    } else {
                        i = i14 + i28;
                    }
                    for (int i29 = 0; i29 < size; i29++) {
                        int i30 = i29;
                        if (zIsRtl) {
                            i30 = size - (i29 + 1);
                        }
                        WidgetRun widgetRun5 = this.widgets.get(i30);
                        if (widgetRun5.widget.getVisibility() == 8) {
                            widgetRun5.start.resolve(i);
                            widgetRun5.end.resolve(i);
                        } else {
                            if (i29 > 0 && i29 >= i7) {
                                if (zIsRtl) {
                                    i -= widgetRun5.start.margin;
                                } else {
                                    i += widgetRun5.start.margin;
                                }
                            }
                            if (zIsRtl) {
                                widgetRun5.end.resolve(i);
                            } else {
                                widgetRun5.start.resolve(i);
                            }
                            int i31 = widgetRun5.dimension.value;
                            if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                                i31 = widgetRun5.dimension.wrapValue;
                            }
                            if (zIsRtl) {
                                i -= i31;
                            } else {
                                i += i31;
                            }
                            if (zIsRtl) {
                                widgetRun5.start.resolve(i);
                            } else {
                                widgetRun5.end.resolve(i);
                            }
                            if (i29 < size - 1 && i29 < i9) {
                                if (zIsRtl) {
                                    i -= -widgetRun5.end.margin;
                                } else {
                                    i += -widgetRun5.end.margin;
                                }
                            }
                        }
                    }
                    return;
                }
                return;
            }
            int i32 = (i3 - i4) / (i6 + 1);
            if (i5 > 0) {
                i32 = 0;
            }
            for (int i33 = 0; i33 < size; i33++) {
                int i34 = i33;
                if (zIsRtl) {
                    i34 = size - (i33 + 1);
                }
                WidgetRun widgetRun6 = this.widgets.get(i34);
                if (widgetRun6.widget.getVisibility() == 8) {
                    widgetRun6.start.resolve(i14);
                    widgetRun6.end.resolve(i14);
                } else {
                    if (zIsRtl) {
                        i2 = i14 - i32;
                    } else {
                        i2 = i14 + i32;
                    }
                    if (i33 > 0 && i33 >= i7) {
                        if (zIsRtl) {
                            i2 -= widgetRun6.start.margin;
                        } else {
                            i2 += widgetRun6.start.margin;
                        }
                    }
                    if (zIsRtl) {
                        widgetRun6.end.resolve(i2);
                    } else {
                        widgetRun6.start.resolve(i2);
                    }
                    int iMin3 = widgetRun6.dimension.value;
                    if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                        iMin3 = Math.min(iMin3, widgetRun6.dimension.wrapValue);
                    }
                    if (zIsRtl) {
                        i14 = i2 - iMin3;
                    } else {
                        i14 = i2 + iMin3;
                    }
                    if (zIsRtl) {
                        widgetRun6.start.resolve(i14);
                    } else {
                        widgetRun6.end.resolve(i14);
                    }
                    if (i33 < size - 1 && i33 < i9) {
                        if (zIsRtl) {
                            i14 -= -widgetRun6.end.margin;
                        } else {
                            i14 += -widgetRun6.end.margin;
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.widgets.size(); i++) {
            this.widgets.get(i).applyToWidget();
        }
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.widgets.size(); i++) {
            WidgetRun widgetRun = this.widgets.get(i);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    void apply() {
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.widgets.size();
        if (size >= 1) {
            ConstraintWidget constraintWidget = this.widgets.get(0).widget;
            ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
            if (this.orientation == 0) {
                ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
                ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
                DependencyNode target = getTarget(constraintAnchor, 0);
                int margin = constraintAnchor.getMargin();
                ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
                if (firstVisibleWidget != null) {
                    margin = firstVisibleWidget.mLeft.getMargin();
                }
                if (target != null) {
                    addTarget(this.start, target, margin);
                }
                DependencyNode target2 = getTarget(constraintAnchor2, 0);
                int margin2 = constraintAnchor2.getMargin();
                ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
                if (lastVisibleWidget != null) {
                    margin2 = lastVisibleWidget.mRight.getMargin();
                }
                if (target2 != null) {
                    addTarget(this.end, target2, -margin2);
                }
            } else {
                ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
                ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
                DependencyNode target3 = getTarget(constraintAnchor3, 1);
                int margin3 = constraintAnchor3.getMargin();
                ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
                if (firstVisibleWidget2 != null) {
                    margin3 = firstVisibleWidget2.mTop.getMargin();
                }
                if (target3 != null) {
                    addTarget(this.start, target3, margin3);
                }
                DependencyNode target4 = getTarget(constraintAnchor4, 1);
                int margin4 = constraintAnchor4.getMargin();
                ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
                if (lastVisibleWidget2 != null) {
                    margin4 = lastVisibleWidget2.mBottom.getMargin();
                }
                if (target4 != null) {
                    addTarget(this.end, target4, -margin4);
                }
            }
            this.start.updateDelegate = this;
            this.end.updateDelegate = this;
        }
    }
}
