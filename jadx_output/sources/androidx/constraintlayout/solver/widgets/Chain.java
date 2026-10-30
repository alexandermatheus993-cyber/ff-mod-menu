package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes53.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i) {
        int i2;
        int i3;
        ChainHead[] chainHeadArr;
        if (i == 0) {
            i2 = 0;
            i3 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
        } else {
            i2 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            ChainHead chainHead = chainHeadArr[i4];
            chainHead.define();
            if (arrayList == null || (arrayList != null && arrayList.contains(chainHead.mFirst))) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:137:0x054a  */
    /* JADX WARN: Code duplicated, block: B:138:0x057e  */
    /* JADX WARN: Code duplicated, block: B:140:0x0582  */
    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, int i2, ChainHead chainHead) {
        boolean z;
        boolean z2;
        boolean z3;
        ConstraintWidget constraintWidget;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        ConstraintWidget constraintWidget2;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable2;
        float f;
        int size;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4 = chainHead.mFirst;
        ConstraintWidget constraintWidget5 = chainHead.mLast;
        ConstraintWidget constraintWidget6 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget7 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget8 = chainHead.mHead;
        ConstraintWidget constraintWidget9 = constraintWidget4;
        boolean z4 = false;
        float f2 = chainHead.mTotalWeight;
        ConstraintWidget constraintWidget10 = chainHead.mFirstMatchConstraintWidget;
        ConstraintWidget constraintWidget11 = chainHead.mLastMatchConstraintWidget;
        boolean z5 = constraintWidgetContainer.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i == 0) {
            z = constraintWidget8.mHorizontalChainStyle == 0;
            z2 = constraintWidget8.mHorizontalChainStyle == 1;
            z3 = constraintWidget8.mHorizontalChainStyle == 2;
        } else {
            z = constraintWidget8.mVerticalChainStyle == 0;
            z2 = constraintWidget8.mVerticalChainStyle == 1;
            z3 = constraintWidget8.mVerticalChainStyle == 2;
        }
        while (!z4) {
            ConstraintAnchor constraintAnchor3 = constraintWidget9.mListAnchors[i2];
            int i3 = 4;
            if (z3) {
                i3 = 1;
            }
            int margin = constraintAnchor3.getMargin();
            boolean z6 = constraintWidget9.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget9.mResolvedMatchConstraintDefault[i] == 0;
            if (constraintAnchor3.mTarget != null && constraintWidget9 != constraintWidget4) {
                margin += constraintAnchor3.mTarget.getMargin();
            }
            if (z3 && constraintWidget9 != constraintWidget4 && constraintWidget9 != constraintWidget6) {
                i3 = 8;
            }
            if (constraintAnchor3.mTarget != null) {
                if (constraintWidget9 == constraintWidget6) {
                    linearSystem.addGreaterThan(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, margin, 6);
                } else {
                    linearSystem.addGreaterThan(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, margin, 8);
                }
                if (z6 && !z3) {
                    i3 = 5;
                }
                linearSystem.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, margin, i3);
            }
            if (z5) {
                if (constraintWidget9.getVisibility() != 8 && constraintWidget9.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    linearSystem.addGreaterThan(constraintWidget9.mListAnchors[i2 + 1].mSolverVariable, constraintWidget9.mListAnchors[i2].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(constraintWidget9.mListAnchors[i2].mSolverVariable, constraintWidgetContainer.mListAnchors[i2].mSolverVariable, 0, 8);
            }
            ConstraintAnchor constraintAnchor4 = constraintWidget9.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor4 != null) {
                constraintWidget3 = constraintAnchor4.mOwner;
                if (constraintWidget3.mListAnchors[i2].mTarget == null || constraintWidget3.mListAnchors[i2].mTarget.mOwner != constraintWidget9) {
                    constraintWidget3 = null;
                }
            } else {
                constraintWidget3 = null;
            }
            if (constraintWidget3 != null) {
                constraintWidget9 = constraintWidget3;
            } else {
                z4 = true;
            }
        }
        if (constraintWidget7 != null && constraintWidget5.mListAnchors[i2 + 1].mTarget != null) {
            ConstraintAnchor constraintAnchor5 = constraintWidget7.mListAnchors[i2 + 1];
            if ((constraintWidget7.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget7.mResolvedMatchConstraintDefault[i] == 0) && !z3 && constraintAnchor5.mTarget.mOwner == constraintWidgetContainer) {
                linearSystem.addEquality(constraintAnchor5.mSolverVariable, constraintAnchor5.mTarget.mSolverVariable, -constraintAnchor5.getMargin(), 5);
            } else if (z3 && constraintAnchor5.mTarget.mOwner == constraintWidgetContainer) {
                linearSystem.addEquality(constraintAnchor5.mSolverVariable, constraintAnchor5.mTarget.mSolverVariable, -constraintAnchor5.getMargin(), 4);
            }
            linearSystem.addLowerThan(constraintAnchor5.mSolverVariable, constraintWidget5.mListAnchors[i2 + 1].mTarget.mSolverVariable, -constraintAnchor5.getMargin(), 6);
        }
        if (z5) {
            linearSystem.addGreaterThan(constraintWidgetContainer.mListAnchors[i2 + 1].mSolverVariable, constraintWidget5.mListAnchors[i2 + 1].mSolverVariable, constraintWidget5.mListAnchors[i2 + 1].getMargin(), 8);
        }
        ArrayList<ConstraintWidget> arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            ConstraintWidget constraintWidget12 = null;
            float f3 = 0.0f;
            if (chainHead.mHasUndefinedWeights && !chainHead.mHasComplexMatchWeights) {
                f2 = chainHead.mWidgetsMatchCount;
            }
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget13 = arrayList.get(i4);
                float f4 = constraintWidget13.mWeight[i];
                if (f4 >= 0.0f) {
                    if (f4 == 0.0f) {
                        linearSystem.addEquality(constraintWidget13.mListAnchors[i2 + 1].mSolverVariable, constraintWidget13.mListAnchors[i2].mSolverVariable, 0, 8);
                    } else {
                        if (constraintWidget12 != null) {
                            SolverVariable solverVariable3 = constraintWidget12.mListAnchors[i2].mSolverVariable;
                            SolverVariable solverVariable4 = constraintWidget12.mListAnchors[i2 + 1].mSolverVariable;
                            SolverVariable solverVariable5 = constraintWidget13.mListAnchors[i2].mSolverVariable;
                            SolverVariable solverVariable6 = constraintWidget13.mListAnchors[i2 + 1].mSolverVariable;
                            ArrayRow arrayRowCreateRow = linearSystem.createRow();
                            arrayRowCreateRow.createRowEqualMatchDimensions(f3, f2, f4, solverVariable3, solverVariable4, solverVariable5, solverVariable6);
                            linearSystem.addConstraint(arrayRowCreateRow);
                        }
                        constraintWidget12 = constraintWidget13;
                        f3 = f4;
                    }
                } else if (chainHead.mHasComplexMatchWeights) {
                    linearSystem.addEquality(constraintWidget13.mListAnchors[i2 + 1].mSolverVariable, constraintWidget13.mListAnchors[i2].mSolverVariable, 0, 4);
                } else {
                    f4 = 1.0f;
                    if (f4 == 0.0f) {
                        linearSystem.addEquality(constraintWidget13.mListAnchors[i2 + 1].mSolverVariable, constraintWidget13.mListAnchors[i2].mSolverVariable, 0, 8);
                    } else {
                        if (constraintWidget12 != null) {
                            SolverVariable solverVariable7 = constraintWidget12.mListAnchors[i2].mSolverVariable;
                            SolverVariable solverVariable8 = constraintWidget12.mListAnchors[i2 + 1].mSolverVariable;
                            SolverVariable solverVariable9 = constraintWidget13.mListAnchors[i2].mSolverVariable;
                            SolverVariable solverVariable10 = constraintWidget13.mListAnchors[i2 + 1].mSolverVariable;
                            ArrayRow arrayRowCreateRow2 = linearSystem.createRow();
                            arrayRowCreateRow2.createRowEqualMatchDimensions(f3, f2, f4, solverVariable7, solverVariable8, solverVariable9, solverVariable10);
                            linearSystem.addConstraint(arrayRowCreateRow2);
                        }
                        constraintWidget12 = constraintWidget13;
                        f3 = f4;
                    }
                }
            }
        }
        if (constraintWidget6 != null && (constraintWidget6 == constraintWidget7 || z3)) {
            ConstraintAnchor constraintAnchor6 = constraintWidget4.mListAnchors[i2];
            ConstraintAnchor constraintAnchor7 = constraintWidget5.mListAnchors[i2 + 1];
            SolverVariable solverVariable11 = constraintAnchor6.mTarget != null ? constraintAnchor6.mTarget.mSolverVariable : null;
            SolverVariable solverVariable12 = constraintAnchor7.mTarget != null ? constraintAnchor7.mTarget.mSolverVariable : null;
            ConstraintAnchor constraintAnchor8 = constraintWidget6.mListAnchors[i2];
            ConstraintAnchor constraintAnchor9 = constraintWidget7.mListAnchors[i2 + 1];
            if (solverVariable11 != null && solverVariable12 != null) {
                if (i == 0) {
                    f = constraintWidget8.mHorizontalBiasPercent;
                } else {
                    f = constraintWidget8.mVerticalBiasPercent;
                }
                linearSystem.addCentering(constraintAnchor8.mSolverVariable, solverVariable11, constraintAnchor8.getMargin(), f, solverVariable12, constraintAnchor9.mSolverVariable, constraintAnchor9.getMargin(), 7);
            }
        } else if (z && constraintWidget6 != null) {
            ConstraintWidget constraintWidget14 = constraintWidget6;
            ConstraintWidget constraintWidget15 = constraintWidget6;
            boolean z7 = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
            while (constraintWidget14 != null) {
                ConstraintWidget constraintWidget16 = constraintWidget14.mNextChainWidget[i];
                while (true) {
                    constraintWidget2 = constraintWidget16;
                    if (constraintWidget2 == null || constraintWidget2.getVisibility() != 8) {
                        break;
                    } else {
                        constraintWidget16 = constraintWidget2.mNextChainWidget[i];
                    }
                }
                if (constraintWidget2 != null || constraintWidget14 == constraintWidget7) {
                    ConstraintAnchor constraintAnchor10 = constraintWidget14.mListAnchors[i2];
                    SolverVariable solverVariable13 = constraintAnchor10.mSolverVariable;
                    SolverVariable solverVariable14 = constraintAnchor10.mTarget != null ? constraintAnchor10.mTarget.mSolverVariable : null;
                    if (constraintWidget15 != constraintWidget14) {
                        solverVariable14 = constraintWidget15.mListAnchors[i2 + 1].mSolverVariable;
                    } else if (constraintWidget14 == constraintWidget6 && constraintWidget15 == constraintWidget14) {
                        solverVariable14 = constraintWidget4.mListAnchors[i2].mTarget != null ? constraintWidget4.mListAnchors[i2].mTarget.mSolverVariable : null;
                    }
                    SolverVariable solverVariable15 = null;
                    int margin2 = constraintAnchor10.getMargin();
                    int margin3 = constraintWidget14.mListAnchors[i2 + 1].getMargin();
                    if (constraintWidget2 != null) {
                        constraintAnchor2 = constraintWidget2.mListAnchors[i2];
                        solverVariable15 = constraintAnchor2.mSolverVariable;
                        solverVariable2 = constraintWidget14.mListAnchors[i2 + 1].mSolverVariable;
                    } else {
                        constraintAnchor2 = constraintWidget5.mListAnchors[i2 + 1].mTarget;
                        if (constraintAnchor2 != null) {
                            solverVariable15 = constraintAnchor2.mSolverVariable;
                        }
                        solverVariable2 = constraintWidget14.mListAnchors[i2 + 1].mSolverVariable;
                    }
                    if (constraintAnchor2 != null) {
                        margin3 += constraintAnchor2.getMargin();
                    }
                    if (constraintWidget15 != null) {
                        margin2 += constraintWidget15.mListAnchors[i2 + 1].getMargin();
                    }
                    if (solverVariable13 != null && solverVariable14 != null && solverVariable15 != null && solverVariable2 != null) {
                        int margin4 = margin2;
                        if (constraintWidget14 == constraintWidget6) {
                            margin4 = constraintWidget6.mListAnchors[i2].getMargin();
                        }
                        int margin5 = margin3;
                        if (constraintWidget14 == constraintWidget7) {
                            margin5 = constraintWidget7.mListAnchors[i2 + 1].getMargin();
                        }
                        int i5 = 5;
                        if (z7) {
                            i5 = 8;
                        }
                        linearSystem.addCentering(solverVariable13, solverVariable14, margin4, 0.5f, solverVariable15, solverVariable2, margin5, i5);
                    }
                }
                if (constraintWidget14.getVisibility() != 8) {
                    constraintWidget15 = constraintWidget14;
                }
                constraintWidget14 = constraintWidget2;
            }
        } else if (z2 && constraintWidget6 != null) {
            ConstraintWidget constraintWidget17 = constraintWidget6;
            boolean z8 = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
            for (ConstraintWidget constraintWidget18 = constraintWidget6; constraintWidget18 != null; constraintWidget18 = constraintWidget) {
                ConstraintWidget constraintWidget19 = constraintWidget18.mNextChainWidget[i];
                while (true) {
                    constraintWidget = constraintWidget19;
                    if (constraintWidget == null || constraintWidget.getVisibility() != 8) {
                        break;
                    } else {
                        constraintWidget19 = constraintWidget.mNextChainWidget[i];
                    }
                }
                if (constraintWidget18 != constraintWidget6 && constraintWidget18 != constraintWidget7 && constraintWidget != null) {
                    if (constraintWidget == constraintWidget7) {
                        constraintWidget = null;
                    }
                    ConstraintAnchor constraintAnchor11 = constraintWidget18.mListAnchors[i2];
                    SolverVariable solverVariable16 = constraintAnchor11.mSolverVariable;
                    SolverVariable solverVariable17 = constraintAnchor11.mTarget != null ? constraintAnchor11.mTarget.mSolverVariable : null;
                    SolverVariable solverVariable18 = constraintWidget17.mListAnchors[i2 + 1].mSolverVariable;
                    SolverVariable solverVariable19 = null;
                    int margin6 = constraintAnchor11.getMargin();
                    int margin7 = constraintWidget18.mListAnchors[i2 + 1].getMargin();
                    if (constraintWidget != null) {
                        constraintAnchor = constraintWidget.mListAnchors[i2];
                        solverVariable19 = constraintAnchor.mSolverVariable;
                        solverVariable = constraintAnchor.mTarget != null ? constraintAnchor.mTarget.mSolverVariable : null;
                    } else {
                        constraintAnchor = constraintWidget7.mListAnchors[i2];
                        if (constraintAnchor != null) {
                            solverVariable19 = constraintAnchor.mSolverVariable;
                        }
                        solverVariable = constraintWidget18.mListAnchors[i2 + 1].mSolverVariable;
                    }
                    if (constraintAnchor != null) {
                        margin7 += constraintAnchor.getMargin();
                    }
                    if (constraintWidget17 != null) {
                        margin6 += constraintWidget17.mListAnchors[i2 + 1].getMargin();
                    }
                    int i6 = 4;
                    if (z8) {
                        i6 = 8;
                    }
                    if (solverVariable16 != null && solverVariable18 != null && solverVariable19 != null && solverVariable != null) {
                        linearSystem.addCentering(solverVariable16, solverVariable18, margin6, 0.5f, solverVariable19, solverVariable, margin7, i6);
                    }
                }
                if (constraintWidget18.getVisibility() != 8) {
                    constraintWidget17 = constraintWidget18;
                }
            }
            ConstraintAnchor constraintAnchor12 = constraintWidget6.mListAnchors[i2];
            ConstraintAnchor constraintAnchor13 = constraintWidget4.mListAnchors[i2].mTarget;
            ConstraintAnchor constraintAnchor14 = constraintWidget7.mListAnchors[i2 + 1];
            ConstraintAnchor constraintAnchor15 = constraintWidget5.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor13 != null) {
                if (constraintWidget6 != constraintWidget7) {
                    linearSystem.addEquality(constraintAnchor12.mSolverVariable, constraintAnchor13.mSolverVariable, constraintAnchor12.getMargin(), 5);
                } else if (constraintAnchor15 != null) {
                    linearSystem.addCentering(constraintAnchor12.mSolverVariable, constraintAnchor13.mSolverVariable, constraintAnchor12.getMargin(), 0.5f, constraintAnchor14.mSolverVariable, constraintAnchor15.mSolverVariable, constraintAnchor14.getMargin(), 5);
                }
            }
            if (constraintAnchor15 != null && constraintWidget6 != constraintWidget7) {
                linearSystem.addEquality(constraintAnchor14.mSolverVariable, constraintAnchor15.mSolverVariable, -constraintAnchor14.getMargin(), 5);
            }
        }
        if ((z || z2) && constraintWidget6 != null && constraintWidget6 != constraintWidget7) {
            ConstraintAnchor constraintAnchor16 = constraintWidget6.mListAnchors[i2];
            ConstraintAnchor constraintAnchor17 = constraintWidget7.mListAnchors[i2 + 1];
            SolverVariable solverVariable20 = constraintAnchor16.mTarget != null ? constraintAnchor16.mTarget.mSolverVariable : null;
            SolverVariable solverVariable21 = constraintAnchor17.mTarget != null ? constraintAnchor17.mTarget.mSolverVariable : null;
            if (constraintWidget5 != constraintWidget7) {
                ConstraintAnchor constraintAnchor18 = constraintWidget5.mListAnchors[i2 + 1];
                solverVariable21 = constraintAnchor18.mTarget != null ? constraintAnchor18.mTarget.mSolverVariable : null;
            }
            if (constraintWidget6 == constraintWidget7) {
                constraintAnchor16 = constraintWidget6.mListAnchors[i2];
                constraintAnchor17 = constraintWidget6.mListAnchors[i2 + 1];
            }
            if (solverVariable20 != null && solverVariable21 != null) {
                int margin8 = constraintAnchor16.getMargin();
                if (constraintWidget7 == null) {
                    constraintWidget7 = constraintWidget5;
                }
                linearSystem.addCentering(constraintAnchor16.mSolverVariable, solverVariable20, margin8, 0.5f, solverVariable21, constraintAnchor17.mSolverVariable, constraintWidget7.mListAnchors[i2 + 1].getMargin(), 5);
            }
        }
    }
}
