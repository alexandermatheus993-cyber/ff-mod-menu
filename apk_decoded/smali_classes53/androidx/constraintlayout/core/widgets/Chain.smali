.class public Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z

.field public static final USE_CHAIN_OPTIMIZATION:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V
    .locals 45

    .prologue
    .line 83
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v7, v36

    .line 84
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v8, v36

    .line 85
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v9, v36

    .line 86
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v10, v36

    .line 87
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v11, v36

    .line 89
    move-object/from16 v36, v7

    move-object/from16 v12, v36

    .line 90
    const/16 v36, 0x0

    move-object/from16 v13, v36

    .line 91
    const/16 v36, 0x0

    move/from16 v14, v36

    .line 93
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    move/from16 v36, v0

    move/from16 v15, v36

    .line 94
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v16, v36

    .line 95
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v17, v36

    .line 97
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    sget-object v37, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_9

    const/16 v36, 0x1

    :goto_0
    move/from16 v18, v36

    .line 98
    const/16 v36, 0x0

    move/from16 v19, v36

    .line 99
    const/16 v36, 0x0

    move/from16 v20, v36

    .line 100
    const/16 v36, 0x0

    move/from16 v21, v36

    .line 102
    move/from16 v36, v4

    if-nez v36, :cond_d

    .line 103
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v36, v0

    if-nez v36, :cond_a

    const/16 v36, 0x1

    :goto_1
    move/from16 v19, v36

    .line 104
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    const/16 v36, 0x1

    :goto_2
    move/from16 v20, v36

    .line 105
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    const/16 v36, 0x1

    :goto_3
    move/from16 v21, v36

    .line 125
    :goto_4
    move/from16 v36, v14

    if-nez v36, :cond_15

    .line 126
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v22, v36

    .line 128
    const/16 v36, 0x4

    move/from16 v23, v36

    .line 129
    move/from16 v36, v21

    if-eqz v36, :cond_0

    .line 130
    const/16 v36, 0x1

    move/from16 v23, v36

    .line 132
    :cond_0
    move-object/from16 v36, v22

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v24, v36

    .line 133
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    sget-object v37, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_11

    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget v36, v36, v37

    if-nez v36, :cond_11

    const/16 v36, 0x1

    :goto_5
    move/from16 v25, v36

    .line 136
    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1

    move-object/from16 v36, v12

    move-object/from16 v37, v7

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_1

    .line 137
    move/from16 v36, v24

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v24, v36

    .line 140
    :cond_1
    move/from16 v36, v21

    if-eqz v36, :cond_2

    move-object/from16 v36, v12

    move-object/from16 v37, v7

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_2

    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_2

    .line 141
    const/16 v36, 0x8

    move/from16 v23, v36

    .line 144
    :cond_2
    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4

    .line 145
    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_12

    .line 146
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move/from16 v39, v24

    const/16 v40, 0x6

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 152
    :goto_6
    move/from16 v36, v25

    if-eqz v36, :cond_3

    move/from16 v36, v21

    if-nez v36, :cond_3

    .line 153
    const/16 v36, 0x5

    move/from16 v23, v36

    .line 155
    :cond_3
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move/from16 v39, v24

    move/from16 v40, v23

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    .line 159
    :cond_4
    move/from16 v36, v18

    if-eqz v36, :cond_6

    .line 160
    move-object/from16 v36, v12

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_5

    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    sget-object v37, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 162
    move-object/from16 v36, v3

    move-object/from16 v37, v12

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v12

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x5

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 166
    :cond_5
    move-object/from16 v36, v3

    move-object/from16 v37, v12

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x8

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 172
    :cond_6
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v26, v36

    .line 173
    move-object/from16 v36, v26

    if-eqz v36, :cond_13

    .line 174
    move-object/from16 v36, v26

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v13, v36

    .line 175
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_7

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v37, v12

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_8

    .line 176
    :cond_7
    const/16 v36, 0x0

    move-object/from16 v13, v36

    .line 181
    :cond_8
    :goto_7
    move-object/from16 v36, v13

    if-eqz v36, :cond_14

    .line 182
    move-object/from16 v36, v13

    move-object/from16 v12, v36

    .line 186
    :goto_8
    goto/16 :goto_4

    .line 97
    :cond_9
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 103
    :cond_a
    const/16 v36, 0x0

    goto/16 :goto_1

    .line 104
    :cond_b
    const/16 v36, 0x0

    goto/16 :goto_2

    .line 105
    :cond_c
    const/16 v36, 0x0

    goto/16 :goto_3

    .line 107
    :cond_d
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v36, v0

    if-nez v36, :cond_e

    const/16 v36, 0x1

    :goto_9
    move/from16 v19, v36

    .line 108
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    const/16 v36, 0x1

    :goto_a
    move/from16 v20, v36

    .line 109
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    const/16 v36, 0x1

    :goto_b
    move/from16 v21, v36

    goto/16 :goto_4

    .line 107
    :cond_e
    const/16 v36, 0x0

    goto :goto_9

    .line 108
    :cond_f
    const/16 v36, 0x0

    goto :goto_a

    .line 109
    :cond_10
    const/16 v36, 0x0

    goto :goto_b

    .line 133
    :cond_11
    const/16 v36, 0x0

    goto/16 :goto_5

    .line 149
    :cond_12
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move/from16 v39, v24

    const/16 v40, 0x8

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_6

    .line 179
    :cond_13
    const/16 v36, 0x0

    move-object/from16 v13, v36

    goto/16 :goto_7

    .line 184
    :cond_14
    const/16 v36, 0x1

    move/from16 v14, v36

    goto/16 :goto_8

    .line 189
    :cond_15
    move-object/from16 v36, v10

    if-eqz v36, :cond_17

    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_17

    .line 190
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v22, v36

    .line 191
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    sget-object v37, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_1a

    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget v36, v36, v37

    if-nez v36, :cond_1a

    const/16 v36, 0x1

    :goto_c
    move/from16 v23, v36

    .line 193
    move/from16 v36, v23

    if-eqz v36, :cond_1b

    move/from16 v36, v21

    if-nez v36, :cond_1b

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v37, v2

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_1b

    .line 194
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v22

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    const/16 v40, 0x5

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    .line 200
    :cond_16
    :goto_d
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v8

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v22

    .line 201
    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    const/16 v40, 0x6

    .line 200
    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 206
    :cond_17
    move/from16 v36, v18

    if-eqz v36, :cond_18

    .line 207
    move-object/from16 v36, v3

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v8

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v8

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v39, v0

    move/from16 v40, v5

    const/16 v41, 0x1

    add-int/lit8 v40, v40, 0x1

    aget-object v39, v39, v40

    .line 209
    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    const/16 v40, 0x8

    .line 207
    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 213
    :cond_18
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v22, v36

    .line 214
    move-object/from16 v36, v22

    if-eqz v36, :cond_20

    .line 215
    move-object/from16 v36, v22

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v23, v36

    .line 216
    move/from16 v36, v23

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_20

    .line 217
    const/16 v36, 0x0

    move-object/from16 v24, v36

    .line 218
    const/16 v36, 0x0

    move/from16 v25, v36

    .line 220
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    move/from16 v36, v0

    if-eqz v36, :cond_19

    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    move/from16 v36, v0

    if-nez v36, :cond_19

    .line 221
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v15, v36

    .line 224
    :cond_19
    const/16 v36, 0x0

    move/from16 v26, v36

    :goto_e
    move/from16 v36, v26

    move/from16 v37, v23

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_20

    .line 225
    move-object/from16 v36, v22

    move/from16 v37, v26

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v27, v36

    .line 226
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget v36, v36, v37

    move/from16 v28, v36

    .line 228
    move/from16 v36, v28

    const/16 v37, 0x0

    cmpg-float v36, v36, v37

    if-gez v36, :cond_1d

    .line 229
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1c

    .line 230
    move-object/from16 v36, v3

    move-object/from16 v37, v27

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v27

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x4

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    .line 224
    :goto_f
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 191
    :cond_1a
    const/16 v36, 0x0

    goto/16 :goto_c

    .line 196
    :cond_1b
    move/from16 v36, v21

    if-eqz v36, :cond_16

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v37, v2

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_16

    .line 197
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v22

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    const/16 v40, 0x4

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    goto/16 :goto_d

    .line 234
    :cond_1c
    const/high16 v36, 0x3f800000    # 1.0f

    move/from16 v28, v36

    .line 236
    :cond_1d
    move/from16 v36, v28

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-nez v36, :cond_1e

    .line 237
    move-object/from16 v36, v3

    move-object/from16 v37, v27

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v27

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x8

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    .line 239
    goto/16 :goto_f

    .line 242
    :cond_1e
    move-object/from16 v36, v24

    if-eqz v36, :cond_1f

    .line 243
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 244
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    .line 245
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v31, v36

    .line 246
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v32, v36

    .line 247
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    move-object/from16 v33, v36

    .line 248
    move-object/from16 v36, v33

    move/from16 v37, v25

    move/from16 v38, v15

    move/from16 v39, v28

    move-object/from16 v40, v29

    move-object/from16 v41, v30

    move-object/from16 v42, v31

    move-object/from16 v43, v32

    invoke-virtual/range {v36 .. v43}, Landroidx/constraintlayout/core/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    .line 250
    move-object/from16 v36, v3

    move-object/from16 v37, v33

    invoke-virtual/range {v36 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 253
    :cond_1f
    move-object/from16 v36, v27

    move-object/from16 v24, v36

    .line 254
    move/from16 v36, v28

    move/from16 v25, v36

    goto/16 :goto_f

    .line 271
    :cond_20
    move-object/from16 v36, v9

    if-eqz v36, :cond_2b

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_21

    move/from16 v36, v21

    if-eqz v36, :cond_2b

    .line 272
    :cond_21
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 273
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v24, v36

    .line 274
    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_28

    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_10
    move-object/from16 v25, v36

    .line 275
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_29

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_11
    move-object/from16 v26, v36

    .line 276
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 277
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v24, v36

    .line 278
    move-object/from16 v36, v25

    if-eqz v36, :cond_22

    move-object/from16 v36, v26

    if-eqz v36, :cond_22

    .line 279
    const/high16 v36, 0x3f000000    # 0.5f

    move/from16 v27, v36

    .line 280
    move/from16 v36, v4

    if-nez v36, :cond_2a

    .line 281
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v36, v0

    move/from16 v27, v36

    .line 285
    :goto_12
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v28, v36

    .line 286
    move-object/from16 v36, v24

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v29, v36

    .line 287
    move-object/from16 v36, v3

    move-object/from16 v37, v23

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v25

    move/from16 v39, v28

    move/from16 v40, v27

    move-object/from16 v41, v26

    move-object/from16 v42, v24

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v42, v0

    move/from16 v43, v29

    const/16 v44, 0x7

    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 434
    :cond_22
    :goto_13
    move/from16 v36, v19

    if-nez v36, :cond_23

    move/from16 v36, v20

    if-eqz v36, :cond_27

    :cond_23
    move-object/from16 v36, v9

    if-eqz v36, :cond_27

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_27

    .line 435
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 436
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v24, v36

    .line 437
    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4d

    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_14
    move-object/from16 v25, v36

    .line 438
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4e

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_15
    move-object/from16 v26, v36

    .line 439
    move-object/from16 v36, v8

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_24

    .line 440
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v27, v36

    .line 441
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4f

    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_16
    move-object/from16 v26, v36

    .line 443
    :cond_24
    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_25

    .line 444
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 445
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v24, v36

    .line 447
    :cond_25
    move-object/from16 v36, v25

    if-eqz v36, :cond_27

    move-object/from16 v36, v26

    if-eqz v36, :cond_27

    .line 448
    const/high16 v36, 0x3f000000    # 0.5f

    move/from16 v27, v36

    .line 449
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v28, v36

    .line 450
    move-object/from16 v36, v10

    if-nez v36, :cond_26

    .line 452
    move-object/from16 v36, v8

    move-object/from16 v10, v36

    .line 454
    :cond_26
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v29, v36

    .line 455
    move-object/from16 v36, v3

    move-object/from16 v37, v23

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v25

    move/from16 v39, v28

    move/from16 v40, v27

    move-object/from16 v41, v26

    move-object/from16 v42, v24

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v42, v0

    move/from16 v43, v29

    const/16 v44, 0x5

    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 459
    :cond_27
    return-void

    .line 274
    :cond_28
    const/16 v36, 0x0

    goto/16 :goto_10

    .line 275
    :cond_29
    const/16 v36, 0x0

    goto/16 :goto_11

    .line 283
    :cond_2a
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v36, v0

    move/from16 v27, v36

    goto/16 :goto_12

    .line 290
    :cond_2b
    move/from16 v36, v19

    if-eqz v36, :cond_3d

    move-object/from16 v36, v9

    if-eqz v36, :cond_3d

    .line 292
    move-object/from16 v36, v9

    move-object/from16 v12, v36

    .line 293
    move-object/from16 v36, v9

    move-object/from16 v23, v36

    .line 294
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v36, v0

    if-lez v36, :cond_2c

    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    move/from16 v36, v0

    move-object/from16 v37, v6

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2c

    const/16 v36, 0x1

    :goto_17
    move/from16 v24, v36

    .line 295
    :goto_18
    move-object/from16 v36, v12

    if-eqz v36, :cond_3c

    .line 296
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    move-object/from16 v13, v36

    .line 297
    :goto_19
    move-object/from16 v36, v13

    if-eqz v36, :cond_2d

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    .line 298
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    move-object/from16 v13, v36

    goto :goto_19

    .line 294
    :cond_2c
    const/16 v36, 0x0

    goto :goto_17

    .line 300
    :cond_2d
    move-object/from16 v36, v13

    if-nez v36, :cond_2e

    move-object/from16 v36, v12

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_35

    .line 301
    :cond_2e
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v25, v36

    .line 302
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v26, v36

    .line 303
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_37

    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_1a
    move-object/from16 v27, v36

    .line 304
    move-object/from16 v36, v23

    move-object/from16 v37, v12

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_38

    .line 305
    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v27, v36

    .line 310
    :cond_2f
    :goto_1b
    const/16 v36, 0x0

    move-object/from16 v28, v36

    .line 311
    const/16 v36, 0x0

    move-object/from16 v29, v36

    .line 312
    const/16 v36, 0x0

    move-object/from16 v30, v36

    .line 313
    move-object/from16 v36, v25

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v31, v36

    .line 314
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v32, v36

    .line 316
    move-object/from16 v36, v13

    if-eqz v36, :cond_3a

    .line 317
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v28, v36

    .line 318
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 319
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    .line 328
    :goto_1c
    move-object/from16 v36, v28

    if-eqz v36, :cond_30

    .line 329
    move/from16 v36, v32

    move-object/from16 v37, v28

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v32, v36

    .line 331
    :cond_30
    move-object/from16 v36, v23

    if-eqz v36, :cond_31

    .line 332
    move/from16 v36, v31

    move-object/from16 v37, v23

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v31, v36

    .line 334
    :cond_31
    move-object/from16 v36, v26

    if-eqz v36, :cond_35

    move-object/from16 v36, v27

    if-eqz v36, :cond_35

    move-object/from16 v36, v29

    if-eqz v36, :cond_35

    move-object/from16 v36, v30

    if-eqz v36, :cond_35

    .line 335
    move/from16 v36, v31

    move/from16 v33, v36

    .line 336
    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_32

    .line 337
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v33, v36

    .line 339
    :cond_32
    move/from16 v36, v32

    move/from16 v34, v36

    .line 340
    move-object/from16 v36, v12

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_33

    .line 341
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v34, v36

    .line 343
    :cond_33
    const/16 v36, 0x5

    move/from16 v35, v36

    .line 344
    move/from16 v36, v24

    if-eqz v36, :cond_34

    .line 345
    const/16 v36, 0x8

    move/from16 v35, v36

    .line 347
    :cond_34
    move-object/from16 v36, v3

    move-object/from16 v37, v26

    move-object/from16 v38, v27

    move/from16 v39, v33

    const/high16 v40, 0x3f000000    # 0.5f

    move-object/from16 v41, v29

    move-object/from16 v42, v30

    move/from16 v43, v34

    move/from16 v44, v35

    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 352
    :cond_35
    move-object/from16 v36, v12

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_36

    .line 353
    move-object/from16 v36, v12

    move-object/from16 v23, v36

    .line 355
    :cond_36
    move-object/from16 v36, v13

    move-object/from16 v12, v36

    goto/16 :goto_18

    .line 303
    :cond_37
    const/16 v36, 0x0

    goto/16 :goto_1a

    .line 306
    :cond_38
    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_2f

    move-object/from16 v36, v23

    move-object/from16 v37, v12

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_2f

    .line 307
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_39

    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_1d
    move-object/from16 v27, v36

    goto/16 :goto_1b

    :cond_39
    const/16 v36, 0x0

    goto :goto_1d

    .line 321
    :cond_3a
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v28, v36

    .line 322
    move-object/from16 v36, v28

    if-eqz v36, :cond_3b

    .line 323
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 325
    :cond_3b
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    goto/16 :goto_1c

    .line 357
    :cond_3c
    goto/16 :goto_13

    :cond_3d
    move/from16 v36, v20

    if-eqz v36, :cond_22

    move-object/from16 v36, v9

    if-eqz v36, :cond_22

    .line 359
    move-object/from16 v36, v9

    move-object/from16 v12, v36

    .line 360
    move-object/from16 v36, v9

    move-object/from16 v23, v36

    .line 361
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v36, v0

    if-lez v36, :cond_3e

    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    move/from16 v36, v0

    move-object/from16 v37, v6

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3e

    const/16 v36, 0x1

    :goto_1e
    move/from16 v24, v36

    .line 362
    :goto_1f
    move-object/from16 v36, v12

    if-eqz v36, :cond_4a

    .line 363
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    move-object/from16 v13, v36

    .line 364
    :goto_20
    move-object/from16 v36, v13

    if-eqz v36, :cond_3f

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3f

    .line 365
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    move-object/from16 v13, v36

    goto :goto_20

    .line 361
    :cond_3e
    const/16 v36, 0x0

    goto :goto_1e

    .line 367
    :cond_3f
    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_44

    move-object/from16 v36, v12

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_44

    move-object/from16 v36, v13

    if-eqz v36, :cond_44

    .line 368
    move-object/from16 v36, v13

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_40

    .line 369
    const/16 v36, 0x0

    move-object/from16 v13, v36

    .line 371
    :cond_40
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v25, v36

    .line 372
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v26, v36

    .line 373
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_46

    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_21
    move-object/from16 v27, v36

    .line 374
    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v27, v36

    .line 375
    const/16 v36, 0x0

    move-object/from16 v28, v36

    .line 376
    const/16 v36, 0x0

    move-object/from16 v29, v36

    .line 377
    const/16 v36, 0x0

    move-object/from16 v30, v36

    .line 378
    move-object/from16 v36, v25

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v31, v36

    .line 379
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v32, v36

    .line 381
    move-object/from16 v36, v13

    if-eqz v36, :cond_48

    .line 382
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v28, v36

    .line 383
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 384
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_47

    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    :goto_22
    move-object/from16 v30, v36

    .line 393
    :goto_23
    move-object/from16 v36, v28

    if-eqz v36, :cond_41

    .line 394
    move/from16 v36, v32

    move-object/from16 v37, v28

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v32, v36

    .line 396
    :cond_41
    move-object/from16 v36, v23

    if-eqz v36, :cond_42

    .line 397
    move/from16 v36, v31

    move-object/from16 v37, v23

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v31, v36

    .line 399
    :cond_42
    const/16 v36, 0x4

    move/from16 v33, v36

    .line 400
    move/from16 v36, v24

    if-eqz v36, :cond_43

    .line 401
    const/16 v36, 0x8

    move/from16 v33, v36

    .line 403
    :cond_43
    move-object/from16 v36, v26

    if-eqz v36, :cond_44

    move-object/from16 v36, v27

    if-eqz v36, :cond_44

    move-object/from16 v36, v29

    if-eqz v36, :cond_44

    move-object/from16 v36, v30

    if-eqz v36, :cond_44

    .line 404
    move-object/from16 v36, v3

    move-object/from16 v37, v26

    move-object/from16 v38, v27

    move/from16 v39, v31

    const/high16 v40, 0x3f000000    # 0.5f

    move-object/from16 v41, v29

    move-object/from16 v42, v30

    move/from16 v43, v32

    move/from16 v44, v33

    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 409
    :cond_44
    move-object/from16 v36, v12

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_45

    .line 410
    move-object/from16 v36, v12

    move-object/from16 v23, v36

    .line 412
    :cond_45
    move-object/from16 v36, v13

    move-object/from16 v12, v36

    goto/16 :goto_1f

    .line 373
    :cond_46
    const/16 v36, 0x0

    goto/16 :goto_21

    .line 384
    :cond_47
    const/16 v36, 0x0

    goto :goto_22

    .line 386
    :cond_48
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v28, v36

    .line 387
    move-object/from16 v36, v28

    if-eqz v36, :cond_49

    .line 388
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 390
    :cond_49
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    goto/16 :goto_23

    .line 414
    :cond_4a
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v25, v36

    .line 415
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v26, v36

    .line 416
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v27, v36

    .line 417
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v28, v36

    .line 418
    const/16 v36, 0x5

    move/from16 v29, v36

    .line 419
    move-object/from16 v36, v26

    if-eqz v36, :cond_4b

    .line 420
    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_4c

    .line 421
    move-object/from16 v36, v3

    move-object/from16 v37, v25

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v26

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v25

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    move/from16 v40, v29

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    .line 427
    :cond_4b
    :goto_24
    move-object/from16 v36, v28

    if-eqz v36, :cond_22

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_22

    .line 428
    move-object/from16 v36, v3

    move-object/from16 v37, v27

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    move/from16 v40, v29

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v36

    goto/16 :goto_13

    .line 422
    :cond_4c
    move-object/from16 v36, v28

    if-eqz v36, :cond_4b

    .line 423
    move-object/from16 v36, v3

    move-object/from16 v37, v25

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v26

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v25

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    const/high16 v40, 0x3f000000    # 0.5f

    move-object/from16 v41, v27

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v41, v0

    move-object/from16 v42, v28

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v42, v0

    move-object/from16 v43, v27

    .line 424
    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v43

    move/from16 v44, v29

    .line 423
    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_24

    .line 437
    :cond_4d
    const/16 v36, 0x0

    goto/16 :goto_14

    .line 438
    :cond_4e
    const/16 v36, 0x0

    goto/16 :goto_15

    .line 441
    :cond_4f
    const/16 v36, 0x0

    goto/16 :goto_16
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v9, 0x0

    move v4, v9

    .line 48
    const/4 v9, 0x0

    move v5, v9

    .line 49
    const/4 v9, 0x0

    move-object v6, v9

    .line 50
    move v9, v3

    if-nez v9, :cond_2

    .line 51
    const/4 v9, 0x0

    move v4, v9

    .line 52
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    move v5, v9

    .line 53
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v6, v9

    .line 60
    :goto_0
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v5

    if-ge v9, v10, :cond_3

    .line 61
    move-object v9, v6

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 64
    move-object v9, v8

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ChainHead;->define()V

    .line 65
    move-object v9, v2

    if-eqz v9, :cond_0

    move-object v9, v2

    if-eqz v9, :cond_1

    move-object v9, v2

    move-object v10, v8

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 66
    :cond_0
    move-object v9, v0

    move-object v10, v1

    move v11, v3

    move v12, v4

    move-object v13, v8

    invoke-static {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V

    .line 60
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 55
    :cond_2
    const/4 v9, 0x2

    move v4, v9

    .line 56
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    move v5, v9

    .line 57
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v6, v9

    goto :goto_0

    .line 69
    :cond_3
    return-void
.end method
