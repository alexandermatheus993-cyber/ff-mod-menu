.class public Landroidx/constraintlayout/core/widgets/Barrier;
.super Landroidx/constraintlayout/core/widgets/HelperWidget;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2

.field private static final USE_RELAX_GONE:Z = false

.field private static final USE_RESOLUTION:Z = true


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mMargin:I

.field resolved:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 36
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 38
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 40
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 38
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 40
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier;->setDebugName(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 19

    .prologue
    .line 119
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 120
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v15, 0x2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 121
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 122
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v15, 0x3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 123
    const/4 v14, 0x0

    move v5, v14

    :goto_0
    move v14, v5

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    array-length v15, v15

    if-ge v14, v15, :cond_0

    .line 124
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v15, v5

    aget-object v14, v14, v15

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move/from16 v17, v5

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v15

    iput-object v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    :cond_0
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-ltz v14, :cond_4

    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x4

    if-ge v14, v15, :cond_4

    .line 127
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v15, v1

    iget v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v14, v14, v15

    move-object v4, v14

    .line 133
    move-object v14, v1

    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    if-nez v14, :cond_1

    .line 134
    move-object v14, v1

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    move-result v14

    .line 136
    :cond_1
    move-object v14, v1

    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    if-eqz v14, :cond_7

    .line 137
    move-object v14, v1

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 138
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v14, :cond_2

    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 139
    :cond_2
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mX:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 140
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mX:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 227
    :cond_3
    :goto_1
    return-void

    .line 129
    :cond_4
    goto :goto_1

    .line 141
    :cond_5
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_6

    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_3

    .line 142
    :cond_6
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mY:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 143
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mY:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    goto :goto_1

    .line 151
    :cond_7
    const/4 v14, 0x0

    move v5, v14

    .line 152
    const/4 v14, 0x0

    move v6, v14

    :goto_2
    move v14, v6

    move-object v15, v1

    iget v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v14, v15, :cond_b

    .line 153
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move v15, v6

    aget-object v14, v14, v15

    move-object v7, v14

    .line 154
    move-object v14, v1

    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v14, :cond_9

    move-object v14, v7

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v14

    if-nez v14, :cond_9

    .line 152
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 157
    :cond_9
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v14, :cond_a

    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    :cond_a
    move-object v14, v7

    .line 158
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_13

    move-object v14, v7

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_13

    move-object v14, v7

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_13

    .line 160
    const/4 v14, 0x1

    move v5, v14

    .line 170
    :cond_b
    :goto_3
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v14

    if-nez v14, :cond_c

    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v14

    if-eqz v14, :cond_15

    :cond_c
    const/4 v14, 0x1

    :goto_4
    move v6, v14

    .line 171
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v14

    if-nez v14, :cond_d

    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v14

    if-eqz v14, :cond_16

    :cond_d
    const/4 v14, 0x1

    :goto_5
    move v7, v14

    .line 172
    move v14, v5

    if-nez v14, :cond_17

    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v14, :cond_e

    move v14, v6

    if-nez v14, :cond_11

    :cond_e
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    move v14, v7

    if-nez v14, :cond_11

    :cond_f
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    move v14, v6

    if-nez v14, :cond_11

    :cond_10
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_17

    move v14, v7

    if-eqz v14, :cond_17

    :cond_11
    const/4 v14, 0x1

    :goto_6
    move v8, v14

    .line 177
    const/4 v14, 0x5

    move v9, v14

    .line 178
    move v14, v8

    if-nez v14, :cond_12

    .line 179
    const/4 v14, 0x4

    move v9, v14

    .line 181
    :cond_12
    const/4 v14, 0x0

    move v10, v14

    :goto_7
    move v14, v10

    move-object v15, v1

    iget v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v14, v15, :cond_1c

    .line 182
    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move v15, v10

    aget-object v14, v14, v15

    move-object v11, v14

    .line 183
    move-object v14, v1

    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v14, :cond_18

    move-object v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v14

    if-nez v14, :cond_18

    .line 181
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 162
    :cond_13
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_14

    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    :cond_14
    move-object v14, v7

    .line 163
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_8

    move-object v14, v7

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_8

    move-object v14, v7

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_8

    .line 165
    const/4 v14, 0x1

    move v5, v14

    .line 166
    goto/16 :goto_3

    .line 170
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 171
    :cond_16
    const/4 v14, 0x0

    goto :goto_5

    .line 172
    :cond_17
    const/4 v14, 0x0

    goto :goto_6

    .line 186
    :cond_18
    move-object v14, v2

    move-object v15, v11

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v14

    move-object v12, v14

    .line 187
    move-object v14, v11

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v15, v1

    iget v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v14, v14, v15

    move-object v15, v12

    iput-object v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 188
    const/4 v14, 0x0

    move v13, v14

    .line 189
    move-object v14, v11

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v15, v1

    iget v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v14, v14, v15

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_19

    move-object v14, v11

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v15, v1

    iget v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    aget-object v14, v14, v15

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v15, v1

    if-ne v14, v15, :cond_19

    .line 191
    move v14, v13

    move-object v15, v11

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v14, v15

    move v13, v14

    .line 193
    :cond_19
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v14, :cond_1a

    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1b

    .line 194
    :cond_1a
    move-object v14, v2

    move-object v15, v4

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v12

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    move/from16 v17, v0

    move/from16 v18, v13

    sub-int v17, v17, v18

    move/from16 v18, v5

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V

    .line 203
    :goto_9
    move-object v14, v2

    move-object v15, v4

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v12

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    move/from16 v17, v0

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v18, v9

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    goto/16 :goto_8

    .line 196
    :cond_1b
    move-object v14, v2

    move-object v15, v4

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v12

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    move/from16 v17, v0

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v18, v5

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V

    goto :goto_9

    .line 207
    :cond_1c
    const/4 v14, 0x4

    move v10, v14

    .line 208
    const/4 v14, 0x0

    move v11, v14

    .line 210
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v14, :cond_1e

    .line 211
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 212
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 213
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v18, v11

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 227
    :cond_1d
    :goto_a
    goto/16 :goto_1

    .line 214
    :cond_1e
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1f

    .line 215
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 216
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 217
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v18, v11

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    goto :goto_a

    .line 218
    :cond_1f
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_20

    .line 219
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 220
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 221
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v18, v11

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    goto/16 :goto_a

    .line 222
    :cond_20
    move-object v14, v1

    iget v14, v14, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1d

    .line 223
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 224
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    .line 225
    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/Barrier;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v18, v11

    invoke-virtual/range {v14 .. v18}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v14

    goto/16 :goto_a
.end method

.method public allSolved()Z
    .locals 9

    .prologue
    .line 253
    move-object v0, p0

    const/4 v6, 0x1

    move v1, v6

    .line 254
    const/4 v6, 0x0

    move v2, v6

    :goto_0
    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_5

    .line 255
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move v7, v2

    aget-object v6, v6, v7

    move-object v3, v6

    .line 256
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v6

    if-nez v6, :cond_1

    .line 254
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_1
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v6

    if-nez v6, :cond_3

    .line 260
    const/4 v6, 0x0

    move v1, v6

    goto :goto_1

    .line 261
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    :cond_4
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v6

    if-nez v6, :cond_0

    .line 262
    const/4 v6, 0x0

    move v1, v6

    goto :goto_1

    .line 266
    :cond_5
    move v6, v1

    if-eqz v6, :cond_13

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-lez v6, :cond_13

    .line 268
    const/4 v6, 0x0

    move v2, v6

    .line 269
    const/4 v6, 0x0

    move v3, v6

    .line 270
    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_10

    .line 271
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 272
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v6, :cond_7

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v6

    if-nez v6, :cond_7

    .line 270
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 275
    :cond_7
    move v6, v3

    if-nez v6, :cond_9

    .line 276
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v6, :cond_a

    .line 277
    move-object v6, v5

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    move v2, v6

    .line 285
    :cond_8
    :goto_4
    const/4 v6, 0x1

    move v3, v6

    .line 287
    :cond_9
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-nez v6, :cond_d

    .line 288
    move v6, v2

    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v6

    goto :goto_3

    .line 278
    :cond_a
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 279
    move-object v6, v5

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    move v2, v6

    goto :goto_4

    .line 280
    :cond_b
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 281
    move-object v6, v5

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    move v2, v6

    goto :goto_4

    .line 282
    :cond_c
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 283
    move-object v6, v5

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v6

    move v2, v6

    goto :goto_4

    .line 289
    :cond_d
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    .line 290
    move v6, v2

    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v2, v6

    goto :goto_3

    .line 291
    :cond_e
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 292
    move v6, v2

    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v6

    goto/16 :goto_3

    .line 293
    :cond_f
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 294
    move v6, v2

    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v2, v6

    goto/16 :goto_3

    .line 297
    :cond_10
    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    add-int/2addr v6, v7

    move v2, v6

    .line 298
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_11

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_12

    .line 299
    :cond_11
    move-object v6, v0

    move v7, v2

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/core/widgets/Barrier;->setFinalHorizontal(II)V

    .line 306
    :goto_5
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    .line 307
    const/4 v6, 0x1

    move v0, v6

    .line 309
    :goto_6
    return v0

    .line 301
    :cond_12
    move-object v6, v0

    move v7, v2

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/core/widgets/Barrier;->setFinalVertical(II)V

    goto :goto_5

    .line 309
    :cond_13
    const/4 v6, 0x0

    move v0, v6

    goto :goto_6
.end method

.method public allowedInBarrier()Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public allowsGoneWidget()Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    move v0, v1

    return v0
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/HelperWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 73
    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    move-object v3, v4

    .line 74
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    iput v5, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 75
    move-object v4, v0

    move-object v5, v3

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 76
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    iput v5, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 77
    return-void
.end method

.method public getBarrierType()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    move v0, v1

    return v0
.end method

.method public getMargin()I
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    move v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    packed-switch v1, :pswitch_data_0

    .line 246
    const/4 v1, -0x1

    move v0, v1

    :goto_0
    return v0

    .line 241
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 244
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isResolvedHorizontally()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    move v0, v1

    return v0
.end method

.method public isResolvedVertically()Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/Barrier;->resolved:Z

    move v0, v1

    return v0
.end method

.method protected markWidgets()V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v3, v4, :cond_4

    .line 95
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 96
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 97
    :cond_0
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    .line 94
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 99
    :cond_3
    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    goto :goto_1

    .line 102
    :cond_4
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    .line 56
    return-void
.end method

.method public setMargin(I)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;->mMargin:I

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Barrier] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 82
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    if-ge v4, v5, :cond_1

    .line 83
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 84
    move v4, v2

    if-lez v4, :cond_0

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 87
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 90
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method
