package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes53.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_NONE = 0;
    private ConstraintWidget[] mDisplayedWidgets;
    private int mHorizontalStyle = -1;
    private int mVerticalStyle = -1;
    private int mFirstHorizontalStyle = -1;
    private int mFirstVerticalStyle = -1;
    private int mLastHorizontalStyle = -1;
    private int mLastVerticalStyle = -1;
    private float mHorizontalBias = 0.5f;
    private float mVerticalBias = 0.5f;
    private float mFirstHorizontalBias = 0.5f;
    private float mFirstVerticalBias = 0.5f;
    private float mLastHorizontalBias = 0.5f;
    private float mLastVerticalBias = 0.5f;
    private int mHorizontalGap = 0;
    private int mVerticalGap = 0;
    private int mHorizontalAlign = 2;
    private int mVerticalAlign = 2;
    private int mWrapMode = 0;
    private int mMaxElementsWrap = -1;
    private int mOrientation = 0;
    private ArrayList<WidgetsList> mChainList = new ArrayList<>();
    private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    private int[] mAlignedDimensions = null;
    private int mDisplayedWidgetsCount = 0;

    @Override // androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Flow flow = (Flow) constraintWidget;
        this.mHorizontalStyle = flow.mHorizontalStyle;
        this.mVerticalStyle = flow.mVerticalStyle;
        this.mFirstHorizontalStyle = flow.mFirstHorizontalStyle;
        this.mFirstVerticalStyle = flow.mFirstVerticalStyle;
        this.mLastHorizontalStyle = flow.mLastHorizontalStyle;
        this.mLastVerticalStyle = flow.mLastVerticalStyle;
        this.mHorizontalBias = flow.mHorizontalBias;
        this.mVerticalBias = flow.mVerticalBias;
        this.mFirstHorizontalBias = flow.mFirstHorizontalBias;
        this.mFirstVerticalBias = flow.mFirstVerticalBias;
        this.mLastHorizontalBias = flow.mLastHorizontalBias;
        this.mLastVerticalBias = flow.mLastVerticalBias;
        this.mHorizontalGap = flow.mHorizontalGap;
        this.mVerticalGap = flow.mVerticalGap;
        this.mHorizontalAlign = flow.mHorizontalAlign;
        this.mVerticalAlign = flow.mVerticalAlign;
        this.mWrapMode = flow.mWrapMode;
        this.mMaxElementsWrap = flow.mMaxElementsWrap;
        this.mOrientation = flow.mOrientation;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public void setFirstHorizontalStyle(int i) {
        this.mFirstHorizontalStyle = i;
    }

    public void setFirstVerticalStyle(int i) {
        this.mFirstVerticalStyle = i;
    }

    public void setLastHorizontalStyle(int i) {
        this.mLastHorizontalStyle = i;
    }

    public void setLastVerticalStyle(int i) {
        this.mLastVerticalStyle = i;
    }

    public void setHorizontalStyle(int i) {
        this.mHorizontalStyle = i;
    }

    public void setVerticalStyle(int i) {
        this.mVerticalStyle = i;
    }

    public void setHorizontalBias(float f) {
        this.mHorizontalBias = f;
    }

    public void setVerticalBias(float f) {
        this.mVerticalBias = f;
    }

    public void setFirstHorizontalBias(float f) {
        this.mFirstHorizontalBias = f;
    }

    public void setFirstVerticalBias(float f) {
        this.mFirstVerticalBias = f;
    }

    public void setLastHorizontalBias(float f) {
        this.mLastHorizontalBias = f;
    }

    public void setLastVerticalBias(float f) {
        this.mLastVerticalBias = f;
    }

    public void setHorizontalAlign(int i) {
        this.mHorizontalAlign = i;
    }

    public void setVerticalAlign(int i) {
        this.mVerticalAlign = i;
    }

    public void setWrapMode(int i) {
        this.mWrapMode = i;
    }

    public void setHorizontalGap(int i) {
        this.mHorizontalGap = i;
    }

    public void setVerticalGap(int i) {
        this.mVerticalGap = i;
    }

    public void setMaxElementsWrap(int i) {
        this.mMaxElementsWrap = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getWidgetWidth(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget.mMatchConstraintDefaultWidth == 0) {
                return 0;
            }
            if (constraintWidget.mMatchConstraintDefaultWidth == 2) {
                int i2 = (int) (constraintWidget.mMatchConstraintPercentWidth * i);
                if (i2 != constraintWidget.getWidth()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i2, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
                return i2;
            }
            if (constraintWidget.mMatchConstraintDefaultWidth == 1) {
                return constraintWidget.getWidth();
            }
            if (constraintWidget.mMatchConstraintDefaultWidth == 3) {
                return (int) ((constraintWidget.getHeight() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getWidgetHeight(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget.mMatchConstraintDefaultHeight == 0) {
                return 0;
            }
            if (constraintWidget.mMatchConstraintDefaultHeight == 2) {
                int i2 = (int) (constraintWidget.mMatchConstraintPercentHeight * i);
                if (i2 != constraintWidget.getHeight()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i2);
                }
                return i2;
            }
            if (constraintWidget.mMatchConstraintDefaultHeight == 1) {
                return constraintWidget.getHeight();
            }
            if (constraintWidget.mMatchConstraintDefaultHeight == 3) {
                return (int) ((constraintWidget.getWidth() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getHeight();
    }

    @Override // androidx.constraintlayout.solver.widgets.VirtualLayout
    public void measure(int i, int i2, int i3, int i4) {
        if (this.mWidgetsCount > 0 && !measureChildren()) {
            setMeasure(0, 0);
            needsCallbackFromSolver(false);
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int[] iArr = new int[2];
        int i5 = (i2 - paddingLeft) - paddingRight;
        if (this.mOrientation == 1) {
            i5 = (i4 - paddingTop) - paddingBottom;
        }
        if (this.mOrientation == 0) {
            if (this.mHorizontalStyle == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        } else {
            if (this.mHorizontalStyle == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        int i6 = 0;
        for (int i7 = 0; i7 < this.mWidgetsCount; i7++) {
            if (this.mWidgets[i7].getVisibility() == 8) {
                i6++;
            }
        }
        int i8 = this.mWidgetsCount;
        if (i6 > 0) {
            constraintWidgetArr = new ConstraintWidget[this.mWidgetsCount - i6];
            int i9 = 0;
            for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
                ConstraintWidget constraintWidget = this.mWidgets[i10];
                if (constraintWidget.getVisibility() != 8) {
                    constraintWidgetArr[i9] = constraintWidget;
                    i9++;
                }
            }
            i8 = i9;
        }
        this.mDisplayedWidgets = constraintWidgetArr;
        this.mDisplayedWidgetsCount = i8;
        switch (this.mWrapMode) {
            case 0:
                measureNoWrap(constraintWidgetArr, i8, this.mOrientation, i5, iArr);
                break;
            case 1:
                measureChainWrap(constraintWidgetArr, i8, this.mOrientation, i5, iArr);
                break;
            case 2:
                measureAligned(constraintWidgetArr, i8, this.mOrientation, i5, iArr);
                break;
        }
        int i11 = iArr[0] + paddingLeft + paddingRight;
        int i12 = iArr[1] + paddingTop + paddingBottom;
        int iMin = 0;
        int iMin2 = 0;
        if (i == 1073741824) {
            iMin = i2;
        } else if (i == Integer.MIN_VALUE) {
            iMin = Math.min(i11, i2);
        } else if (i == 0) {
            iMin = i11;
        }
        if (i3 == 1073741824) {
            iMin2 = i4;
        } else if (i3 == Integer.MIN_VALUE) {
            iMin2 = Math.min(i12, i4);
        } else if (i3 == 0) {
            iMin2 = i12;
        }
        setMeasure(iMin, iMin2);
        setWidth(iMin);
        setHeight(iMin2);
        needsCallbackFromSolver(this.mWidgetsCount > 0);
    }

    private class WidgetsList {
        private ConstraintAnchor mBottom;
        private ConstraintAnchor mLeft;
        private int mMax;
        private int mOrientation;
        private int mPaddingBottom;
        private int mPaddingLeft;
        private int mPaddingRight;
        private int mPaddingTop;
        private ConstraintAnchor mRight;
        private ConstraintAnchor mTop;
        private ConstraintWidget biggest = null;
        int biggestDimension = 0;
        private int mWidth = 0;
        private int mHeight = 0;
        private int mStartIndex = 0;
        private int mCount = 0;
        private int mNbMatchConstraintsWidgets = 0;

        public WidgetsList(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            this.mOrientation = 0;
            this.mPaddingLeft = 0;
            this.mPaddingTop = 0;
            this.mPaddingRight = 0;
            this.mPaddingBottom = 0;
            this.mMax = 0;
            this.mOrientation = i;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = Flow.this.getPaddingLeft();
            this.mPaddingTop = Flow.this.getPaddingTop();
            this.mPaddingRight = Flow.this.getPaddingRight();
            this.mPaddingBottom = Flow.this.getPaddingBottom();
            this.mMax = i2;
        }

        public void setup(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.mOrientation = i;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = i2;
            this.mPaddingTop = i3;
            this.mPaddingRight = i4;
            this.mPaddingBottom = i5;
            this.mMax = i6;
        }

        public void clear() {
            this.biggestDimension = 0;
            this.biggest = null;
            this.mWidth = 0;
            this.mHeight = 0;
            this.mStartIndex = 0;
            this.mCount = 0;
            this.mNbMatchConstraintsWidgets = 0;
        }

        public void setStartIndex(int i) {
            this.mStartIndex = i;
        }

        public int getWidth() {
            if (this.mOrientation == 0) {
                return this.mWidth - Flow.this.mHorizontalGap;
            }
            return this.mWidth;
        }

        public int getHeight() {
            if (this.mOrientation == 1) {
                return this.mHeight - Flow.this.mVerticalGap;
            }
            return this.mHeight;
        }

        public void add(ConstraintWidget constraintWidget) {
            if (this.mOrientation == 0) {
                int widgetWidth = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetWidth = 0;
                }
                int i = Flow.this.mHorizontalGap;
                if (constraintWidget.getVisibility() == 8) {
                    i = 0;
                }
                this.mWidth += widgetWidth + i;
                int widgetHeight = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                if (this.biggest == null || this.biggestDimension < widgetHeight) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetHeight;
                    this.mHeight = widgetHeight;
                }
            } else {
                int widgetWidth2 = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                int widgetHeight2 = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetHeight2 = 0;
                }
                int i2 = Flow.this.mVerticalGap;
                if (constraintWidget.getVisibility() == 8) {
                    i2 = 0;
                }
                this.mHeight += widgetHeight2 + i2;
                if (this.biggest == null || this.biggestDimension < widgetWidth2) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetWidth2;
                    this.mWidth = widgetWidth2;
                }
            }
            this.mCount++;
        }

        public void createConstraints(boolean z, int i, boolean z2) {
            int i2 = this.mCount;
            for (int i3 = 0; i3 < i2 && this.mStartIndex + i3 < Flow.this.mDisplayedWidgetsCount; i3++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i3];
                if (constraintWidget != null) {
                    constraintWidget.resetAnchors();
                }
            }
            if (i2 != 0 && this.biggest != null) {
                boolean z3 = z2 && i == 0;
                int i4 = -1;
                int i5 = -1;
                for (int i6 = 0; i6 < i2; i6++) {
                    int i7 = i6;
                    if (z) {
                        i7 = (i2 - 1) - i6;
                    }
                    if (this.mStartIndex + i7 >= Flow.this.mDisplayedWidgetsCount) {
                        break;
                    }
                    if (Flow.this.mDisplayedWidgets[this.mStartIndex + i7].getVisibility() == 0) {
                        if (i4 == -1) {
                            i4 = i6;
                        }
                        i5 = i6;
                    }
                }
                ConstraintWidget constraintWidget2 = null;
                if (this.mOrientation == 0) {
                    ConstraintWidget constraintWidget3 = this.biggest;
                    constraintWidget3.setVerticalChainStyle(Flow.this.mVerticalStyle);
                    int i8 = this.mPaddingTop;
                    if (i > 0) {
                        i8 += Flow.this.mVerticalGap;
                    }
                    constraintWidget3.mTop.connect(this.mTop, i8);
                    if (z2) {
                        constraintWidget3.mBottom.connect(this.mBottom, this.mPaddingBottom);
                    }
                    if (i > 0) {
                        this.mTop.mOwner.mBottom.connect(constraintWidget3.mTop, 0);
                    }
                    ConstraintWidget constraintWidget4 = constraintWidget3;
                    if (Flow.this.mVerticalAlign == 3 && !constraintWidget3.hasBaseline()) {
                        for (int i9 = 0; i9 < i2; i9++) {
                            int i10 = i9;
                            if (z) {
                                i10 = (i2 - 1) - i9;
                            }
                            if (this.mStartIndex + i10 >= Flow.this.mDisplayedWidgetsCount) {
                                break;
                            }
                            ConstraintWidget constraintWidget5 = Flow.this.mDisplayedWidgets[this.mStartIndex + i10];
                            if (constraintWidget5.hasBaseline()) {
                                constraintWidget4 = constraintWidget5;
                                break;
                            }
                        }
                    }
                    for (int i11 = 0; i11 < i2; i11++) {
                        int i12 = i11;
                        if (z) {
                            i12 = (i2 - 1) - i11;
                        }
                        if (this.mStartIndex + i12 < Flow.this.mDisplayedWidgetsCount) {
                            ConstraintWidget constraintWidget6 = Flow.this.mDisplayedWidgets[this.mStartIndex + i12];
                            if (i11 == 0) {
                                constraintWidget6.connect(constraintWidget6.mLeft, this.mLeft, this.mPaddingLeft);
                            }
                            if (i12 == 0) {
                                int i13 = Flow.this.mHorizontalStyle;
                                float f = Flow.this.mHorizontalBias;
                                if (this.mStartIndex == 0 && Flow.this.mFirstHorizontalStyle != -1) {
                                    i13 = Flow.this.mFirstHorizontalStyle;
                                    f = Flow.this.mFirstHorizontalBias;
                                } else if (z2 && Flow.this.mLastHorizontalStyle != -1) {
                                    i13 = Flow.this.mLastHorizontalStyle;
                                    f = Flow.this.mLastHorizontalBias;
                                }
                                constraintWidget6.setHorizontalChainStyle(i13);
                                constraintWidget6.setHorizontalBiasPercent(f);
                            }
                            if (i11 == i2 - 1) {
                                constraintWidget6.connect(constraintWidget6.mRight, this.mRight, this.mPaddingRight);
                            }
                            if (constraintWidget2 != null) {
                                constraintWidget6.mLeft.connect(constraintWidget2.mRight, Flow.this.mHorizontalGap);
                                if (i11 == i4) {
                                    constraintWidget6.mLeft.setGoneMargin(this.mPaddingLeft);
                                }
                                constraintWidget2.mRight.connect(constraintWidget6.mLeft, 0);
                                if (i11 == i5 + 1) {
                                    constraintWidget2.mRight.setGoneMargin(this.mPaddingRight);
                                }
                            }
                            if (constraintWidget6 != constraintWidget3) {
                                if (Flow.this.mVerticalAlign == 3 && constraintWidget4.hasBaseline() && constraintWidget6 != constraintWidget4 && constraintWidget6.hasBaseline()) {
                                    constraintWidget6.mBaseline.connect(constraintWidget4.mBaseline, 0);
                                } else {
                                    switch (Flow.this.mVerticalAlign) {
                                        case 0:
                                            constraintWidget6.mTop.connect(constraintWidget3.mTop, 0);
                                            break;
                                        case 1:
                                            constraintWidget6.mBottom.connect(constraintWidget3.mBottom, 0);
                                            break;
                                        default:
                                            if (z3) {
                                                constraintWidget6.mTop.connect(this.mTop, this.mPaddingTop);
                                                constraintWidget6.mBottom.connect(this.mBottom, this.mPaddingBottom);
                                            } else {
                                                constraintWidget6.mTop.connect(constraintWidget3.mTop, 0);
                                                constraintWidget6.mBottom.connect(constraintWidget3.mBottom, 0);
                                            }
                                            break;
                                    }
                                }
                            }
                            constraintWidget2 = constraintWidget6;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                ConstraintWidget constraintWidget7 = this.biggest;
                constraintWidget7.setHorizontalChainStyle(Flow.this.mHorizontalStyle);
                int i14 = this.mPaddingLeft;
                if (i > 0) {
                    i14 += Flow.this.mHorizontalGap;
                }
                if (z) {
                    constraintWidget7.mRight.connect(this.mRight, i14);
                    if (z2) {
                        constraintWidget7.mLeft.connect(this.mLeft, this.mPaddingRight);
                    }
                    if (i > 0) {
                        this.mRight.mOwner.mLeft.connect(constraintWidget7.mRight, 0);
                    }
                } else {
                    constraintWidget7.mLeft.connect(this.mLeft, i14);
                    if (z2) {
                        constraintWidget7.mRight.connect(this.mRight, this.mPaddingRight);
                    }
                    if (i > 0) {
                        this.mLeft.mOwner.mRight.connect(constraintWidget7.mLeft, 0);
                    }
                }
                for (int i15 = 0; i15 < i2 && this.mStartIndex + i15 < Flow.this.mDisplayedWidgetsCount; i15++) {
                    ConstraintWidget constraintWidget8 = Flow.this.mDisplayedWidgets[this.mStartIndex + i15];
                    if (i15 == 0) {
                        constraintWidget8.connect(constraintWidget8.mTop, this.mTop, this.mPaddingTop);
                        int i16 = Flow.this.mVerticalStyle;
                        float f2 = Flow.this.mVerticalBias;
                        if (this.mStartIndex == 0 && Flow.this.mFirstVerticalStyle != -1) {
                            i16 = Flow.this.mFirstVerticalStyle;
                            f2 = Flow.this.mFirstVerticalBias;
                        } else if (z2 && Flow.this.mLastVerticalStyle != -1) {
                            i16 = Flow.this.mLastVerticalStyle;
                            f2 = Flow.this.mLastVerticalBias;
                        }
                        constraintWidget8.setVerticalChainStyle(i16);
                        constraintWidget8.setVerticalBiasPercent(f2);
                    }
                    if (i15 == i2 - 1) {
                        constraintWidget8.connect(constraintWidget8.mBottom, this.mBottom, this.mPaddingBottom);
                    }
                    if (constraintWidget2 != null) {
                        constraintWidget8.mTop.connect(constraintWidget2.mBottom, Flow.this.mVerticalGap);
                        if (i15 == i4) {
                            constraintWidget8.mTop.setGoneMargin(this.mPaddingTop);
                        }
                        constraintWidget2.mBottom.connect(constraintWidget8.mTop, 0);
                        if (i15 == i5 + 1) {
                            constraintWidget2.mBottom.setGoneMargin(this.mPaddingBottom);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        if (z) {
                            switch (Flow.this.mHorizontalAlign) {
                                case 0:
                                    constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                    break;
                                case 1:
                                    constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                    break;
                                case 2:
                                    constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                    constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                    break;
                            }
                        } else {
                            switch (Flow.this.mHorizontalAlign) {
                                case 0:
                                    constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                    break;
                                case 1:
                                    constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                    break;
                                case 2:
                                    if (z3) {
                                        constraintWidget8.mLeft.connect(this.mLeft, this.mPaddingLeft);
                                        constraintWidget8.mRight.connect(this.mRight, this.mPaddingRight);
                                    } else {
                                        constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                        constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                    }
                                    break;
                            }
                        }
                    }
                    constraintWidget2 = constraintWidget8;
                }
            }
        }

        public void measureMatchConstraints(int i) {
            if (this.mNbMatchConstraintsWidgets != 0) {
                int i2 = this.mCount;
                int i3 = i / this.mNbMatchConstraintsWidgets;
                for (int i4 = 0; i4 < i2 && this.mStartIndex + i4 < Flow.this.mDisplayedWidgetsCount; i4++) {
                    ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i4];
                    if (this.mOrientation == 0) {
                        if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                            Flow.this.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i3, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                        }
                    } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                        Flow.this.measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i3);
                    }
                }
                recomputeDimensions();
            }
        }

        private void recomputeDimensions() {
            this.mWidth = 0;
            this.mHeight = 0;
            this.biggest = null;
            this.biggestDimension = 0;
            int i = this.mCount;
            for (int i2 = 0; i2 < i && this.mStartIndex + i2 < Flow.this.mDisplayedWidgetsCount; i2++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i2];
                if (this.mOrientation != 0) {
                    int widgetWidth = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                    int widgetHeight = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                    int i3 = Flow.this.mVerticalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        i3 = 0;
                    }
                    this.mHeight += widgetHeight + i3;
                    if (this.biggest == null || this.biggestDimension < widgetWidth) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = widgetWidth;
                        this.mWidth = widgetWidth;
                    }
                } else {
                    int width = constraintWidget.getWidth();
                    int i4 = Flow.this.mHorizontalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        i4 = 0;
                    }
                    this.mWidth += width + i4;
                    int widgetHeight2 = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                    if (this.biggest == null || this.biggestDimension < widgetHeight2) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = widgetHeight2;
                        this.mHeight = widgetHeight2;
                    }
                }
            }
        }
    }

    private void measureChainWrap(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        if (i != 0) {
            this.mChainList.clear();
            WidgetsList widgetsList = new WidgetsList(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
            this.mChainList.add(widgetsList);
            int i4 = 0;
            if (i2 == 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < i; i6++) {
                    ConstraintWidget constraintWidget = constraintWidgetArr[i6];
                    int widgetWidth = getWidgetWidth(constraintWidget, i3);
                    if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        i4++;
                    }
                    boolean z = (i5 == i3 || (i5 + this.mHorizontalGap) + widgetWidth > i3) && widgetsList.biggest != null;
                    if (!z && i6 > 0 && this.mMaxElementsWrap > 0 && i6 % this.mMaxElementsWrap == 0) {
                        z = true;
                    }
                    if (z) {
                        i5 = widgetWidth;
                        widgetsList = new WidgetsList(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                        widgetsList.setStartIndex(i6);
                        this.mChainList.add(widgetsList);
                    } else if (i6 > 0) {
                        i5 += this.mHorizontalGap + widgetWidth;
                    } else {
                        i5 = widgetWidth;
                    }
                    widgetsList.add(constraintWidget);
                }
            } else {
                int i7 = 0;
                for (int i8 = 0; i8 < i; i8++) {
                    ConstraintWidget constraintWidget2 = constraintWidgetArr[i8];
                    int widgetHeight = getWidgetHeight(constraintWidget2, i3);
                    if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        i4++;
                    }
                    boolean z2 = (i7 == i3 || (i7 + this.mVerticalGap) + widgetHeight > i3) && widgetsList.biggest != null;
                    if (!z2 && i8 > 0 && this.mMaxElementsWrap > 0 && i8 % this.mMaxElementsWrap == 0) {
                        z2 = true;
                    }
                    if (z2) {
                        i7 = widgetHeight;
                        widgetsList = new WidgetsList(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                        widgetsList.setStartIndex(i8);
                        this.mChainList.add(widgetsList);
                    } else if (i8 > 0) {
                        i7 += this.mVerticalGap + widgetHeight;
                    } else {
                        i7 = widgetHeight;
                    }
                    widgetsList.add(constraintWidget2);
                }
            }
            int size = this.mChainList.size();
            ConstraintAnchor constraintAnchor = this.mLeft;
            ConstraintAnchor constraintAnchor2 = this.mTop;
            ConstraintAnchor constraintAnchor3 = this.mRight;
            ConstraintAnchor constraintAnchor4 = this.mBottom;
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int paddingRight = getPaddingRight();
            int paddingBottom = getPaddingBottom();
            int width = 0;
            int iMax = 0;
            boolean z3 = getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (i4 > 0 && z3) {
                for (int i9 = 0; i9 < size; i9++) {
                    WidgetsList widgetsList2 = this.mChainList.get(i9);
                    if (i2 == 0) {
                        widgetsList2.measureMatchConstraints(i3 - widgetsList2.getWidth());
                    } else {
                        widgetsList2.measureMatchConstraints(i3 - widgetsList2.getHeight());
                    }
                }
            }
            for (int i10 = 0; i10 < size; i10++) {
                WidgetsList widgetsList3 = this.mChainList.get(i10);
                if (i2 == 0) {
                    if (i10 < size - 1) {
                        constraintAnchor4 = this.mChainList.get(i10 + 1).biggest.mTop;
                        paddingBottom = 0;
                    } else {
                        constraintAnchor4 = this.mBottom;
                        paddingBottom = getPaddingBottom();
                    }
                    ConstraintAnchor constraintAnchor5 = widgetsList3.biggest.mBottom;
                    widgetsList3.setup(i2, constraintAnchor, constraintAnchor2, constraintAnchor3, constraintAnchor4, paddingLeft, paddingTop, paddingRight, paddingBottom, i3);
                    constraintAnchor2 = constraintAnchor5;
                    paddingTop = 0;
                    width = Math.max(width, widgetsList3.getWidth());
                    iMax += widgetsList3.getHeight();
                    if (i10 > 0) {
                        iMax += this.mVerticalGap;
                    }
                } else {
                    if (i10 < size - 1) {
                        constraintAnchor3 = this.mChainList.get(i10 + 1).biggest.mLeft;
                        paddingRight = 0;
                    } else {
                        constraintAnchor3 = this.mRight;
                        paddingRight = getPaddingRight();
                    }
                    ConstraintAnchor constraintAnchor6 = widgetsList3.biggest.mRight;
                    widgetsList3.setup(i2, constraintAnchor, constraintAnchor2, constraintAnchor3, constraintAnchor4, paddingLeft, paddingTop, paddingRight, paddingBottom, i3);
                    constraintAnchor = constraintAnchor6;
                    paddingLeft = 0;
                    width += widgetsList3.getWidth();
                    iMax = Math.max(iMax, widgetsList3.getHeight());
                    if (i10 > 0) {
                        width += this.mHorizontalGap;
                    }
                }
            }
            iArr[0] = width;
            iArr[1] = iMax;
        }
    }

    private void measureNoWrap(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        WidgetsList widgetsList;
        if (i != 0) {
            if (this.mChainList.size() == 0) {
                widgetsList = new WidgetsList(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, i3);
                this.mChainList.add(widgetsList);
            } else {
                widgetsList = this.mChainList.get(0);
                widgetsList.clear();
                widgetsList.setup(i2, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), i3);
            }
            for (int i4 = 0; i4 < i; i4++) {
                widgetsList.add(constraintWidgetArr[i4]);
            }
            iArr[0] = widgetsList.getWidth();
            iArr[1] = widgetsList.getHeight();
        }
    }

    private void measureAligned(ConstraintWidget[] constraintWidgetArr, int i, int i2, int i3, int[] iArr) {
        ConstraintWidget constraintWidget;
        boolean z = false;
        int iCeil = 0;
        int iCeil2 = 0;
        if (i2 == 0) {
            iCeil2 = this.mMaxElementsWrap;
            if (iCeil2 <= 0) {
                int widgetWidth = 0;
                iCeil2 = 0;
                for (int i4 = 0; i4 < i; i4++) {
                    if (i4 > 0) {
                        widgetWidth += this.mHorizontalGap;
                    }
                    ConstraintWidget constraintWidget2 = constraintWidgetArr[i4];
                    if (constraintWidget2 != null) {
                        widgetWidth += getWidgetWidth(constraintWidget2, i3);
                        if (widgetWidth > i3) {
                            break;
                        } else {
                            iCeil2++;
                        }
                    }
                }
            }
        } else {
            iCeil = this.mMaxElementsWrap;
            if (iCeil <= 0) {
                int widgetHeight = 0;
                iCeil = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    if (i5 > 0) {
                        widgetHeight += this.mVerticalGap;
                    }
                    ConstraintWidget constraintWidget3 = constraintWidgetArr[i5];
                    if (constraintWidget3 != null) {
                        widgetHeight += getWidgetHeight(constraintWidget3, i3);
                        if (widgetHeight > i3) {
                            break;
                        } else {
                            iCeil++;
                        }
                    }
                }
            }
        }
        if (this.mAlignedDimensions == null) {
            this.mAlignedDimensions = new int[2];
        }
        if ((iCeil == 0 && i2 == 1) || (iCeil2 == 0 && i2 == 0)) {
            z = true;
        }
        while (!z) {
            if (i2 == 0) {
                iCeil = (int) Math.ceil(i / iCeil2);
            } else {
                iCeil2 = (int) Math.ceil(i / iCeil);
            }
            if (this.mAlignedBiggestElementsInCols == null || this.mAlignedBiggestElementsInCols.length < iCeil2) {
                this.mAlignedBiggestElementsInCols = new ConstraintWidget[iCeil2];
            } else {
                Arrays.fill(this.mAlignedBiggestElementsInCols, (Object) null);
            }
            if (this.mAlignedBiggestElementsInRows == null || this.mAlignedBiggestElementsInRows.length < iCeil) {
                this.mAlignedBiggestElementsInRows = new ConstraintWidget[iCeil];
            } else {
                Arrays.fill(this.mAlignedBiggestElementsInRows, (Object) null);
            }
            for (int i6 = 0; i6 < iCeil2; i6++) {
                for (int i7 = 0; i7 < iCeil; i7++) {
                    int i8 = (i7 * iCeil2) + i6;
                    if (i2 == 1) {
                        i8 = (i6 * iCeil) + i7;
                    }
                    if (i8 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i8]) != null) {
                        int widgetWidth2 = getWidgetWidth(constraintWidget, i3);
                        if (this.mAlignedBiggestElementsInCols[i6] == null || this.mAlignedBiggestElementsInCols[i6].getWidth() < widgetWidth2) {
                            this.mAlignedBiggestElementsInCols[i6] = constraintWidget;
                        }
                        int widgetHeight2 = getWidgetHeight(constraintWidget, i3);
                        if (this.mAlignedBiggestElementsInRows[i7] == null || this.mAlignedBiggestElementsInRows[i7].getHeight() < widgetHeight2) {
                            this.mAlignedBiggestElementsInRows[i7] = constraintWidget;
                        }
                    }
                }
            }
            int widgetWidth3 = 0;
            for (int i9 = 0; i9 < iCeil2; i9++) {
                ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInCols[i9];
                if (constraintWidget4 != null) {
                    if (i9 > 0) {
                        widgetWidth3 += this.mHorizontalGap;
                    }
                    widgetWidth3 += getWidgetWidth(constraintWidget4, i3);
                }
            }
            int widgetHeight3 = 0;
            for (int i10 = 0; i10 < iCeil; i10++) {
                ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInRows[i10];
                if (constraintWidget5 != null) {
                    if (i10 > 0) {
                        widgetHeight3 += this.mVerticalGap;
                    }
                    widgetHeight3 += getWidgetHeight(constraintWidget5, i3);
                }
            }
            iArr[0] = widgetWidth3;
            iArr[1] = widgetHeight3;
            if (i2 == 0) {
                if (widgetWidth3 > i3) {
                    if (iCeil2 > 1) {
                        iCeil2--;
                    } else {
                        z = true;
                    }
                } else {
                    z = true;
                }
            } else if (widgetHeight3 > i3) {
                if (iCeil > 1) {
                    iCeil--;
                } else {
                    z = true;
                }
            } else {
                z = true;
            }
        }
        this.mAlignedDimensions[0] = iCeil2;
        this.mAlignedDimensions[1] = iCeil;
    }

    private void createAlignedConstraints(boolean z) {
        ConstraintWidget constraintWidget;
        if (this.mAlignedDimensions != null && this.mAlignedBiggestElementsInCols != null && this.mAlignedBiggestElementsInRows != null) {
            for (int i = 0; i < this.mDisplayedWidgetsCount; i++) {
                this.mDisplayedWidgets[i].resetAnchors();
            }
            int i2 = this.mAlignedDimensions[0];
            int i3 = this.mAlignedDimensions[1];
            ConstraintWidget constraintWidget2 = null;
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = i4;
                if (z) {
                    i5 = (i2 - i4) - 1;
                }
                ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[i5];
                if (constraintWidget3 != null && constraintWidget3.getVisibility() != 8) {
                    if (i4 == 0) {
                        constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                        constraintWidget3.setHorizontalChainStyle(this.mHorizontalStyle);
                        constraintWidget3.setHorizontalBiasPercent(this.mHorizontalBias);
                    }
                    if (i4 == i2 - 1) {
                        constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                    }
                    if (i4 > 0) {
                        constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.mHorizontalGap);
                        constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                    }
                    constraintWidget2 = constraintWidget3;
                }
            }
            for (int i6 = 0; i6 < i3; i6++) {
                ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInRows[i6];
                if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                    if (i6 == 0) {
                        constraintWidget4.connect(constraintWidget4.mTop, this.mTop, getPaddingTop());
                        constraintWidget4.setVerticalChainStyle(this.mVerticalStyle);
                        constraintWidget4.setVerticalBiasPercent(this.mVerticalBias);
                    }
                    if (i6 == i3 - 1) {
                        constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, getPaddingBottom());
                    }
                    if (i6 > 0) {
                        constraintWidget4.connect(constraintWidget4.mTop, constraintWidget2.mBottom, this.mVerticalGap);
                        constraintWidget2.connect(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                    }
                    constraintWidget2 = constraintWidget4;
                }
            }
            for (int i7 = 0; i7 < i2; i7++) {
                for (int i8 = 0; i8 < i3; i8++) {
                    int i9 = (i8 * i2) + i7;
                    if (this.mOrientation == 1) {
                        i9 = (i7 * i3) + i8;
                    }
                    if (i9 < this.mDisplayedWidgets.length && (constraintWidget = this.mDisplayedWidgets[i9]) != null && constraintWidget.getVisibility() != 8) {
                        ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInCols[i7];
                        ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInRows[i8];
                        if (constraintWidget != constraintWidget5) {
                            constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                            constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                        }
                        if (constraintWidget != constraintWidget6) {
                            constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                            constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z) {
        boolean zIsRtl;
        super.addToSolver(linearSystem, z);
        if (getParent() != null) {
            zIsRtl = ((ConstraintWidgetContainer) getParent()).isRtl();
        } else {
            zIsRtl = false;
        }
        boolean z2 = zIsRtl;
        switch (this.mWrapMode) {
            case 0:
                if (this.mChainList.size() > 0) {
                    this.mChainList.get(0).createConstraints(z2, 0, true);
                }
                break;
            case 1:
                int size = this.mChainList.size();
                int i = 0;
                while (i < size) {
                    this.mChainList.get(i).createConstraints(z2, i, i == size + (-1));
                    i++;
                }
                break;
            case 2:
                createAlignedConstraints(z2);
                break;
        }
        needsCallbackFromSolver(false);
    }
}
