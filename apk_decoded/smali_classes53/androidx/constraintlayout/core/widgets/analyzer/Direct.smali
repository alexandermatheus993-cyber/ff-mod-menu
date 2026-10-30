.class public Landroidx/constraintlayout/core/widgets/analyzer/Direct;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field private static final APPLY_MATCH_PARENT:Z

.field private static final DEBUG:Z

.field private static measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .locals 10

    .prologue
    .line 647
    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    move-object v1, v8

    .line 648
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    move-object v2, v8

    .line 649
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    :goto_0
    move-object v3, v8

    .line 650
    move-object v8, v3

    if-eqz v8, :cond_6

    move-object v8, v3

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    :goto_1
    move v4, v8

    .line 651
    move-object v8, v3

    if-eqz v8, :cond_7

    move-object v8, v3

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    :goto_2
    move v5, v8

    .line 652
    move-object v8, v1

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_1

    move-object v8, v1

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_1

    move-object v8, v1

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v8, :cond_0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    move-object v8, v0

    const/4 v9, 0x0

    .line 658
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v8, v0

    .line 659
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_1
    const/4 v8, 0x1

    :goto_3
    move v6, v8

    .line 660
    move-object v8, v2

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_3

    move-object v8, v2

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_3

    move-object v8, v2

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_2

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    move-object v8, v0

    const/4 v9, 0x1

    .line 666
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move-object v8, v0

    .line 667
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_3
    const/4 v8, 0x1

    :goto_4
    move v7, v8

    .line 668
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_a

    move v8, v6

    if-nez v8, :cond_4

    move v8, v7

    if-eqz v8, :cond_a

    .line 669
    :cond_4
    const/4 v8, 0x1

    move v0, v8

    .line 676
    :goto_5
    return v0

    .line 649
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 650
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 651
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 659
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 667
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 676
    :cond_a
    move v8, v6

    if-eqz v8, :cond_b

    move v8, v7

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_6
    move v0, v8

    goto :goto_5

    :cond_b
    const/4 v8, 0x0

    goto :goto_6
.end method

.method private static horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V
    .locals 19

    .prologue
    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v14, v0

    instance-of v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-nez v14, :cond_0

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v0

    invoke-static {v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 233
    new-instance v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object v3, v14

    .line 234
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v3

    sget v17, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v14 .. v17}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v14

    .line 237
    :cond_0
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v3, v14

    .line 238
    move-object v14, v0

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v4, v14

    .line 239
    move-object v14, v3

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v14

    move v5, v14

    .line 240
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v14

    move v6, v14

    .line 242
    move-object v14, v3

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    if-eqz v14, :cond_c

    move-object v14, v3

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 243
    move-object v14, v3

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v7, v14

    :goto_0
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v8, v14

    .line 244
    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v9, v14

    .line 245
    const/4 v14, 0x0

    move v10, v14

    .line 246
    const/4 v14, 0x0

    move v11, v14

    .line 247
    move-object v14, v9

    invoke-static {v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v14

    move v12, v14

    .line 248
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v14

    if-eqz v14, :cond_1

    move v14, v12

    if-eqz v14, :cond_1

    .line 249
    new-instance v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object v13, v14

    .line 250
    move-object v14, v9

    move-object v15, v1

    move-object/from16 v16, v13

    sget v17, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v14 .. v17}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v14

    .line 253
    :cond_1
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_2

    move v14, v12

    if-eqz v14, :cond_7

    .line 255
    :cond_2
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 260
    goto :goto_0

    .line 262
    :cond_3
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_5

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v14, :cond_5

    .line 263
    move v14, v5

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    add-int/2addr v14, v15

    move v10, v14

    .line 264
    move v14, v10

    move-object v15, v9

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    move v11, v14

    .line 265
    move-object v14, v9

    move v15, v10

    move/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 266
    move-object v14, v9

    move-object v15, v1

    move/from16 v16, v2

    invoke-static/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 289
    :cond_4
    :goto_1
    goto :goto_0

    .line 267
    :cond_5
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_6

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v14, :cond_6

    .line 268
    move v14, v5

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    sub-int/2addr v14, v15

    move v11, v14

    .line 269
    move v14, v11

    move-object v15, v9

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    move v10, v14

    .line 270
    move-object v14, v9

    move v15, v10

    move/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 271
    move-object v14, v9

    move-object v15, v1

    move/from16 v16, v2

    invoke-static/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_1

    .line 272
    :cond_6
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_4

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_4

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 273
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-nez v14, :cond_4

    .line 274
    move-object v14, v1

    move-object v15, v9

    move/from16 v16, v2

    invoke-static/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto :goto_1

    .line 279
    :cond_7
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_4

    move-object v14, v9

    iget v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ltz v14, :cond_4

    move-object v14, v9

    iget v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-ltz v14, :cond_4

    move-object v14, v9

    .line 281
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_8

    move-object v14, v9

    iget v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v14, :cond_4

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    :cond_8
    move-object v14, v9

    .line 282
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-nez v14, :cond_4

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v14

    if-nez v14, :cond_4

    .line 283
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_9

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_9

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-nez v14, :cond_a

    :cond_9
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_b

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_b

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 284
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_a
    const/4 v14, 0x1

    :goto_2
    move v13, v14

    .line 285
    move v14, v13

    if-eqz v14, :cond_4

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-nez v14, :cond_4

    .line 286
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v9

    move/from16 v17, v2

    invoke-static/range {v14 .. v17}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto/16 :goto_1

    .line 284
    :cond_b
    const/4 v14, 0x0

    goto :goto_2

    .line 291
    :cond_c
    move-object v14, v0

    instance-of v14, v14, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v14, :cond_d

    .line 339
    :goto_3
    return-void

    .line 294
    :cond_d
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    if-eqz v14, :cond_19

    move-object v14, v4

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 295
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v7, v14

    :goto_4
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v8, v14

    .line 296
    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v9, v14

    .line 297
    move-object v14, v9

    invoke-static {v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v14

    move v10, v14

    .line 298
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v14

    if-eqz v14, :cond_e

    move v14, v10

    if-eqz v14, :cond_e

    .line 299
    new-instance v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object v11, v14

    .line 300
    move-object v14, v9

    move-object v15, v1

    move-object/from16 v16, v11

    sget v17, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v14 .. v17}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v14

    .line 303
    :cond_e
    const/4 v14, 0x0

    move v11, v14

    .line 304
    const/4 v14, 0x0

    move v12, v14

    .line 305
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_f

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_f

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-nez v14, :cond_10

    :cond_f
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_12

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v14, :cond_12

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 306
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_10
    const/4 v14, 0x1

    :goto_5
    move v13, v14

    .line 307
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_11

    move v14, v10

    if-eqz v14, :cond_17

    .line 309
    :cond_11
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 314
    goto/16 :goto_4

    .line 306
    :cond_12
    const/4 v14, 0x0

    goto :goto_5

    .line 316
    :cond_13
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_15

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v14, :cond_15

    .line 317
    move v14, v6

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    add-int/2addr v14, v15

    move v11, v14

    .line 318
    move v14, v11

    move-object v15, v9

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    move v12, v14

    .line 319
    move-object v14, v9

    move v15, v11

    move/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 320
    move-object v14, v9

    move-object v15, v1

    move/from16 v16, v2

    invoke-static/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 337
    :cond_14
    :goto_6
    goto/16 :goto_4

    .line 321
    :cond_15
    move-object v14, v8

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v14, v15, :cond_16

    move-object v14, v9

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v14, :cond_16

    .line 322
    move v14, v6

    move-object v15, v9

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    sub-int/2addr v14, v15

    move v12, v14

    .line 323
    move v14, v12

    move-object v15, v9

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    move v11, v14

    .line 324
    move-object v14, v9

    move v15, v11

    move/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 325
    move-object v14, v9

    move-object v15, v1

    move/from16 v16, v2

    invoke-static/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    goto :goto_6

    .line 326
    :cond_16
    move v14, v13

    if-eqz v14, :cond_14

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-nez v14, :cond_14

    .line 327
    move-object v14, v1

    move-object v15, v9

    move/from16 v16, v2

    invoke-static/range {v14 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalCenterConstraints(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto :goto_6

    .line 329
    :cond_17
    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_14

    move-object v14, v9

    iget v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ltz v14, :cond_14

    move-object v14, v9

    iget v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-ltz v14, :cond_14

    move-object v14, v9

    .line 331
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_18

    move-object v14, v9

    iget v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v14, :cond_14

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_14

    :cond_18
    move-object v14, v9

    .line 332
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-nez v14, :cond_14

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v14

    if-nez v14, :cond_14

    .line 333
    move v14, v13

    if-eqz v14, :cond_14

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-nez v14, :cond_14

    .line 334
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v9

    move/from16 v17, v2

    invoke-static/range {v14 .. v17}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveHorizontalMatchConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto/16 :goto_6

    .line 339
    :cond_19
    goto/16 :goto_3
.end method

.method private static solveBarrier(Landroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    move v4, v2

    if-nez v4, :cond_1

    .line 213
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-static {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_0
.end method

.method public static solveChain(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;ZZZ)Z
    .locals 36

    .prologue
    .line 699
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v31, v9

    if-eqz v31, :cond_0

    .line 700
    const/16 v31, 0x0

    move/from16 v2, v31

    .line 900
    :goto_0
    return v2

    .line 702
    :cond_0
    move/from16 v31, v4

    if-nez v31, :cond_1

    .line 703
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v31

    if-nez v31, :cond_2

    .line 704
    const/16 v31, 0x0

    move/from16 v2, v31

    goto :goto_0

    .line 707
    :cond_1
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v31

    if-nez v31, :cond_2

    .line 708
    const/16 v31, 0x0

    move/from16 v2, v31

    goto :goto_0

    .line 712
    :cond_2
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v31

    move/from16 v10, v31

    .line 714
    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ChainHead;->getFirst()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v31

    move-object/from16 v11, v31

    .line 715
    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ChainHead;->getLast()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v31

    move-object/from16 v12, v31

    .line 716
    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ChainHead;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v31

    move-object/from16 v13, v31

    .line 717
    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ChainHead;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v31

    move-object/from16 v14, v31

    .line 718
    move-object/from16 v31, v6

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ChainHead;->getHead()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v31

    move-object/from16 v15, v31

    .line 720
    move-object/from16 v31, v11

    move-object/from16 v16, v31

    .line 721
    const/16 v31, 0x0

    move-object/from16 v17, v31

    .line 722
    const/16 v31, 0x0

    move/from16 v18, v31

    .line 724
    move-object/from16 v31, v11

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    aget-object v31, v31, v32

    move-object/from16 v19, v31

    .line 725
    move-object/from16 v31, v12

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v20, v31

    .line 726
    move-object/from16 v31, v19

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v31, v20

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    if-nez v31, :cond_4

    .line 727
    :cond_3
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 729
    :cond_4
    move-object/from16 v31, v19

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v31

    if-eqz v31, :cond_5

    move-object/from16 v31, v20

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v31

    if-nez v31, :cond_6

    .line 730
    :cond_5
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 733
    :cond_6
    move-object/from16 v31, v13

    if-eqz v31, :cond_7

    move-object/from16 v31, v14

    if-nez v31, :cond_8

    .line 734
    :cond_7
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 737
    :cond_8
    move-object/from16 v31, v19

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v31

    move-object/from16 v32, v13

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v5

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v21, v31

    .line 738
    move-object/from16 v31, v20

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v31

    move-object/from16 v32, v14

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v5

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    sub-int v31, v31, v32

    move/from16 v22, v31

    .line 740
    move/from16 v31, v22

    move/from16 v32, v21

    sub-int v31, v31, v32

    move/from16 v23, v31

    .line 741
    move/from16 v31, v23

    if-gtz v31, :cond_9

    .line 742
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 744
    :cond_9
    const/16 v31, 0x0

    move/from16 v24, v31

    .line 745
    new-instance v31, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v35, v31

    move-object/from16 v31, v35

    move-object/from16 v32, v35

    invoke-direct/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v25, v31

    .line 747
    const/16 v31, 0x0

    move/from16 v26, v31

    .line 748
    const/16 v31, 0x0

    move/from16 v27, v31

    .line 750
    :goto_1
    move/from16 v31, v18

    if-nez v31, :cond_13

    .line 751
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    aget-object v31, v31, v32

    move-object/from16 v19, v31

    .line 752
    move-object/from16 v31, v16

    invoke-static/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v31

    move/from16 v28, v31

    .line 753
    move/from16 v31, v28

    if-nez v31, :cond_a

    .line 754
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 756
    :cond_a
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v31, v0

    move/from16 v32, v4

    aget-object v31, v31, v32

    sget-object v32, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 757
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 760
    :cond_b
    move-object/from16 v31, v16

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v31

    if-eqz v31, :cond_c

    .line 761
    move-object/from16 v31, v16

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    move-object/from16 v33, v25

    sget v34, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v31 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v31

    .line 764
    :cond_c
    move/from16 v31, v24

    move-object/from16 v32, v16

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v5

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v24, v31

    .line 765
    move/from16 v31, v4

    if-nez v31, :cond_10

    .line 766
    move/from16 v31, v24

    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v24, v31

    .line 770
    :goto_2
    move/from16 v31, v24

    move-object/from16 v32, v16

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v5

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v24, v31

    .line 772
    add-int/lit8 v26, v26, 0x1

    .line 773
    move-object/from16 v31, v16

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_d

    .line 774
    add-int/lit8 v27, v27, 0x1

    .line 779
    :cond_d
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move-object/from16 v29, v31

    .line 780
    move-object/from16 v31, v29

    if-eqz v31, :cond_11

    .line 781
    move-object/from16 v31, v29

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v31, v0

    move-object/from16 v17, v31

    .line 782
    move-object/from16 v31, v17

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v31, v17

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v31, v0

    move-object/from16 v32, v16

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_f

    .line 784
    :cond_e
    const/16 v31, 0x0

    move-object/from16 v17, v31

    .line 789
    :cond_f
    :goto_3
    move-object/from16 v31, v17

    if-eqz v31, :cond_12

    .line 790
    move-object/from16 v31, v17

    move-object/from16 v16, v31

    .line 794
    :goto_4
    goto/16 :goto_1

    .line 768
    :cond_10
    move/from16 v31, v24

    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v24, v31

    goto/16 :goto_2

    .line 787
    :cond_11
    const/16 v31, 0x0

    move-object/from16 v17, v31

    goto :goto_3

    .line 792
    :cond_12
    const/16 v31, 0x1

    move/from16 v18, v31

    goto :goto_4

    .line 796
    :cond_13
    move/from16 v31, v27

    if-nez v31, :cond_14

    .line 797
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 800
    :cond_14
    move/from16 v31, v27

    move/from16 v32, v26

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    .line 801
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 804
    :cond_15
    move/from16 v31, v23

    move/from16 v32, v24

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_16

    .line 805
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0

    .line 808
    :cond_16
    move/from16 v31, v23

    move/from16 v32, v24

    sub-int v31, v31, v32

    move/from16 v28, v31

    .line 809
    move/from16 v31, v7

    if-eqz v31, :cond_18

    .line 810
    move/from16 v31, v28

    move/from16 v32, v27

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    div-int v31, v31, v32

    move/from16 v28, v31

    .line 817
    :cond_17
    :goto_5
    move/from16 v31, v27

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 818
    const/high16 v31, 0x3f000000    # 0.5f

    move/from16 v29, v31

    .line 819
    move/from16 v31, v4

    if-nez v31, :cond_19

    .line 820
    move-object/from16 v31, v15

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v31

    move/from16 v29, v31

    .line 824
    :goto_6
    const/high16 v31, 0x3f000000    # 0.5f

    move/from16 v32, v21

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v32, v28

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v33, v29

    mul-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v30, v31

    .line 825
    move/from16 v31, v4

    if-nez v31, :cond_1a

    .line 826
    move-object/from16 v31, v13

    move/from16 v32, v30

    move/from16 v33, v30

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    add-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 830
    :goto_7
    move-object/from16 v31, v13

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    move/from16 v33, v10

    invoke-static/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 831
    const/16 v31, 0x1

    move/from16 v2, v31

    goto/16 :goto_0

    .line 811
    :cond_18
    move/from16 v31, v8

    if-eqz v31, :cond_17

    .line 812
    move/from16 v31, v27

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_17

    .line 813
    move/from16 v31, v28

    move/from16 v32, v27

    div-int v31, v31, v32

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v28, v31

    goto :goto_5

    .line 822
    :cond_19
    move-object/from16 v31, v15

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v31

    move/from16 v29, v31

    goto :goto_6

    .line 828
    :cond_1a
    move-object/from16 v31, v13

    move/from16 v32, v30

    move/from16 v33, v30

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    add-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    goto :goto_7

    .line 834
    :cond_1b
    move/from16 v31, v7

    if-eqz v31, :cond_24

    .line 835
    const/16 v31, 0x0

    move/from16 v18, v31

    .line 837
    move/from16 v31, v21

    move/from16 v32, v28

    add-int v31, v31, v32

    move/from16 v29, v31

    .line 838
    move-object/from16 v31, v11

    move-object/from16 v16, v31

    .line 839
    :goto_8
    move/from16 v31, v18

    if-nez v31, :cond_23

    .line 840
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    aget-object v31, v31, v32

    move-object/from16 v19, v31

    .line 841
    move-object/from16 v31, v16

    invoke-virtual/range {v31 .. v31}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    .line 842
    move/from16 v31, v4

    if-nez v31, :cond_1e

    .line 843
    move-object/from16 v31, v16

    move/from16 v32, v29

    move/from16 v33, v29

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 844
    move-object/from16 v31, v16

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    move/from16 v33, v10

    invoke-static/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 864
    :goto_9
    move-object/from16 v31, v16

    move-object/from16 v32, v3

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 867
    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move-object/from16 v30, v31

    .line 868
    move-object/from16 v31, v30

    if-eqz v31, :cond_21

    .line 869
    move-object/from16 v31, v30

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v31, v0

    move-object/from16 v17, v31

    .line 870
    move-object/from16 v31, v17

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1c

    move-object/from16 v31, v17

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move/from16 v32, v5

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v31, v0

    move-object/from16 v32, v16

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_1d

    .line 872
    :cond_1c
    const/16 v31, 0x0

    move-object/from16 v17, v31

    .line 877
    :cond_1d
    :goto_a
    move-object/from16 v31, v17

    if-eqz v31, :cond_22

    .line 878
    move-object/from16 v31, v17

    move-object/from16 v16, v31

    .line 882
    :goto_b
    goto/16 :goto_8

    .line 846
    :cond_1e
    move-object/from16 v31, v16

    move/from16 v32, v29

    move/from16 v33, v29

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 847
    move-object/from16 v31, v16

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto/16 :goto_9

    .line 850
    :cond_1f
    move/from16 v31, v29

    move-object/from16 v32, v16

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v5

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v29, v31

    .line 851
    move/from16 v31, v4

    if-nez v31, :cond_20

    .line 852
    move-object/from16 v31, v16

    move/from16 v32, v29

    move/from16 v33, v29

    move-object/from16 v34, v16

    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    add-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 853
    move-object/from16 v31, v16

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    move/from16 v33, v10

    invoke-static/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 854
    move/from16 v31, v29

    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v29, v31

    .line 860
    :goto_c
    move/from16 v31, v29

    move-object/from16 v32, v16

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v5

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v29, v31

    .line 861
    move/from16 v31, v29

    move/from16 v32, v28

    add-int v31, v31, v32

    move/from16 v29, v31

    goto/16 :goto_9

    .line 856
    :cond_20
    move-object/from16 v31, v16

    move/from16 v32, v29

    move/from16 v33, v29

    move-object/from16 v34, v16

    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    add-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 857
    move-object/from16 v31, v16

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 858
    move/from16 v31, v29

    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v29, v31

    goto :goto_c

    .line 875
    :cond_21
    const/16 v31, 0x0

    move-object/from16 v17, v31

    goto/16 :goto_a

    .line 880
    :cond_22
    const/16 v31, 0x1

    move/from16 v18, v31

    goto/16 :goto_b

    .line 900
    :cond_23
    const/16 v31, 0x1

    move/from16 v2, v31

    goto/16 :goto_0

    .line 883
    :cond_24
    move/from16 v31, v8

    if-eqz v31, :cond_23

    .line 884
    move/from16 v31, v27

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 885
    move/from16 v31, v4

    if-nez v31, :cond_25

    .line 886
    move-object/from16 v31, v13

    move/from16 v32, v21

    move/from16 v33, v21

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v34

    add-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 887
    move-object/from16 v31, v14

    move/from16 v32, v22

    move-object/from16 v33, v14

    invoke-virtual/range {v33 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v33

    sub-int v32, v32, v33

    move/from16 v33, v22

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 888
    move-object/from16 v31, v13

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    move/from16 v33, v10

    invoke-static/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 889
    move-object/from16 v31, v14

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    move/from16 v33, v10

    invoke-static/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 896
    :goto_d
    const/16 v31, 0x1

    move/from16 v2, v31

    goto/16 :goto_0

    .line 891
    :cond_25
    move-object/from16 v31, v13

    move/from16 v32, v21

    move/from16 v33, v21

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v34

    add-int v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 892
    move-object/from16 v31, v14

    move/from16 v32, v22

    move-object/from16 v33, v14

    invoke-virtual/range {v33 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v33

    sub-int v32, v32, v33

    move/from16 v33, v22

    invoke-virtual/range {v31 .. v33}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 893
    move-object/from16 v31, v13

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 894
    move-object/from16 v31, v14

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_d

    .line 898
    :cond_26
    const/16 v31, 0x0

    move/from16 v2, v31

    goto/16 :goto_0
.end method

.method private static solveHorizontalCenterConstraints(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 16

    .prologue
    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v13

    move v5, v13

    .line 500
    move-object v13, v1

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v13

    move v6, v13

    .line 501
    move-object v13, v1

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v13

    move v7, v13

    .line 502
    move v13, v6

    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    add-int/2addr v13, v14

    move v8, v13

    .line 503
    move v13, v7

    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    sub-int/2addr v13, v14

    move v9, v13

    .line 504
    move v13, v6

    move v14, v7

    if-ne v13, v14, :cond_0

    .line 505
    const/high16 v13, 0x3f000000    # 0.5f

    move v5, v13

    .line 506
    move v13, v6

    move v8, v13

    .line 507
    move v13, v7

    move v9, v13

    .line 509
    :cond_0
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    move v10, v13

    .line 510
    move v13, v9

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v10

    sub-int/2addr v13, v14

    move v11, v13

    .line 511
    move v13, v8

    move v14, v9

    if-le v13, v14, :cond_1

    .line 512
    move v13, v8

    move v14, v9

    sub-int/2addr v13, v14

    move v14, v10

    sub-int/2addr v13, v14

    move v11, v13

    .line 514
    :cond_1
    const/high16 v13, 0x3f000000    # 0.5f

    move v14, v5

    move v15, v11

    int-to-float v15, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    move v12, v13

    .line 515
    move v13, v8

    move v14, v12

    add-int/2addr v13, v14

    move v3, v13

    .line 516
    move v13, v3

    move v14, v10

    add-int/2addr v13, v14

    move v4, v13

    .line 517
    move v13, v8

    move v14, v9

    if-le v13, v14, :cond_2

    .line 518
    move v13, v8

    move v14, v12

    add-int/2addr v13, v14

    move v3, v13

    .line 519
    move v13, v3

    move v14, v10

    sub-int/2addr v13, v14

    move v4, v13

    .line 521
    :cond_2
    move-object v13, v1

    move v14, v3

    move v15, v4

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 522
    move-object v13, v1

    move-object v14, v0

    move v15, v2

    invoke-static {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 523
    return-void
.end method

.method private static solveHorizontalMatchConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 15

    .prologue
    .line 569
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v12, v2

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v12

    move v6, v12

    .line 570
    move-object v12, v2

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v12

    move-object v13, v2

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v12, v13

    move v7, v12

    .line 571
    move-object v12, v2

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v12

    move-object v13, v2

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    sub-int/2addr v12, v13

    move v8, v12

    .line 572
    move v12, v8

    move v13, v7

    if-lt v12, v13, :cond_2

    .line 573
    move-object v12, v2

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    move v9, v12

    .line 574
    move-object v12, v2

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    .line 575
    move-object v12, v2

    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 576
    const/4 v12, 0x0

    move v10, v12

    .line 577
    move-object v12, v0

    instance-of v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v12, :cond_3

    .line 578
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    move v10, v12

    .line 582
    :goto_0
    const/high16 v12, 0x3f000000    # 0.5f

    move-object v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v13

    mul-float/2addr v12, v13

    move v13, v10

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move v9, v12

    .line 586
    :cond_0
    :goto_1
    move-object v12, v2

    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v9, v12

    .line 587
    move-object v12, v2

    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v12, :cond_1

    .line 588
    move-object v12, v2

    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v9, v12

    .line 591
    :cond_1
    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    move v13, v9

    sub-int/2addr v12, v13

    move v10, v12

    .line 592
    const/high16 v12, 0x3f000000    # 0.5f

    move v13, v6

    move v14, v10

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    move v11, v12

    .line 593
    move v12, v7

    move v13, v11

    add-int/2addr v12, v13

    move v4, v12

    .line 594
    move v12, v4

    move v13, v9

    add-int/2addr v12, v13

    move v5, v12

    .line 595
    move-object v12, v2

    move v13, v4

    move v14, v5

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    .line 596
    move-object v12, v2

    move-object v13, v1

    move v14, v3

    invoke-static {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 598
    :cond_2
    return-void

    .line 580
    :cond_3
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    move v10, v12

    goto :goto_0

    .line 583
    :cond_4
    move-object v12, v2

    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v12, :cond_0

    .line 584
    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    move v9, v12

    goto :goto_1
.end method

.method private static solveVerticalCenterConstraints(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 15

    .prologue
    .line 534
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v12

    move v4, v12

    .line 535
    move-object v12, v1

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v12

    move v5, v12

    .line 536
    move-object v12, v1

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v12

    move v6, v12

    .line 537
    move v12, v5

    move-object v13, v1

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v12, v13

    move v7, v12

    .line 538
    move v12, v6

    move-object v13, v1

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    sub-int/2addr v12, v13

    move v8, v12

    .line 539
    move v12, v5

    move v13, v6

    if-ne v12, v13, :cond_0

    .line 540
    const/high16 v12, 0x3f000000    # 0.5f

    move v4, v12

    .line 541
    move v12, v5

    move v7, v12

    .line 542
    move v12, v6

    move v8, v12

    .line 544
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    move v9, v12

    .line 545
    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    move v13, v9

    sub-int/2addr v12, v13

    move v10, v12

    .line 546
    move v12, v7

    move v13, v8

    if-le v12, v13, :cond_1

    .line 547
    move v12, v7

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v9

    sub-int/2addr v12, v13

    move v10, v12

    .line 549
    :cond_1
    const/high16 v12, 0x3f000000    # 0.5f

    move v13, v4

    move v14, v10

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    move v11, v12

    .line 550
    move v12, v7

    move v13, v11

    add-int/2addr v12, v13

    move v2, v12

    .line 551
    move v12, v2

    move v13, v9

    add-int/2addr v12, v13

    move v3, v12

    .line 552
    move v12, v7

    move v13, v8

    if-le v12, v13, :cond_2

    .line 553
    move v12, v7

    move v13, v11

    sub-int/2addr v12, v13

    move v2, v12

    .line 554
    move v12, v2

    move v13, v9

    sub-int/2addr v12, v13

    move v3, v12

    .line 556
    :cond_2
    move-object v12, v1

    move v13, v2

    move v14, v3

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 557
    move-object v12, v1

    move-object v13, v0

    invoke-static {v12, v13}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 558
    return-void
.end method

.method private static solveVerticalMatchConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 14

    .prologue
    .line 609
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v11

    move v5, v11

    .line 610
    move-object v11, v2

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v11

    move-object v12, v2

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    add-int/2addr v11, v12

    move v6, v11

    .line 611
    move-object v11, v2

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v11

    move-object v12, v2

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    sub-int/2addr v11, v12

    move v7, v11

    .line 612
    move v11, v7

    move v12, v6

    if-lt v11, v12, :cond_2

    .line 613
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    move v8, v11

    .line 614
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    .line 615
    move-object v11, v2

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 616
    const/4 v11, 0x0

    move v9, v11

    .line 617
    move-object v11, v0

    instance-of v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v11, :cond_3

    .line 618
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    move v9, v11

    .line 622
    :goto_0
    const/high16 v11, 0x3f000000    # 0.5f

    move v12, v5

    mul-float/2addr v11, v12

    move v12, v9

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 626
    :cond_0
    :goto_1
    move-object v11, v2

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v8, v11

    .line 627
    move-object v11, v2

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v11, :cond_1

    .line 628
    move-object v11, v2

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 631
    :cond_1
    move v11, v7

    move v12, v6

    sub-int/2addr v11, v12

    move v12, v8

    sub-int/2addr v11, v12

    move v9, v11

    .line 632
    const/high16 v11, 0x3f000000    # 0.5f

    move v12, v5

    move v13, v9

    int-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v10, v11

    .line 633
    move v11, v6

    move v12, v10

    add-int/2addr v11, v12

    move v3, v11

    .line 634
    move v11, v3

    move v12, v8

    add-int/2addr v11, v12

    move v4, v11

    .line 635
    move-object v11, v2

    move v12, v3

    move v13, v4

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 636
    move-object v11, v2

    move-object v12, v1

    invoke-static {v11, v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 638
    :cond_2
    return-void

    .line 620
    :cond_3
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    move v9, v11

    goto :goto_0

    .line 623
    :cond_4
    move-object v11, v2

    iget v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v11, :cond_0

    .line 624
    move v11, v7

    move v12, v6

    sub-int/2addr v11, v12

    move v8, v11

    goto :goto_1
.end method

.method public static solvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 17

    .prologue
    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    move-object v2, v13

    .line 55
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    move-object v3, v13

    .line 59
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetFinalResolution()V

    .line 60
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v13

    move-object v4, v13

    .line 61
    move-object v13, v4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v5, v13

    .line 62
    const/4 v13, 0x0

    move v6, v13

    :goto_0
    move v13, v6

    move v14, v5

    if-ge v13, v14, :cond_0

    .line 63
    move-object v13, v4

    move v14, v6

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v7, v13

    .line 64
    move-object v13, v7

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    :cond_0
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v13

    move v6, v13

    .line 74
    move-object v13, v2

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_3

    .line 75
    move-object v13, v0

    const/4 v14, 0x0

    move-object v15, v0

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalHorizontal(II)V

    .line 81
    :goto_1
    const/4 v13, 0x0

    move v7, v13

    .line 82
    const/4 v13, 0x0

    move v8, v13

    .line 83
    const/4 v13, 0x0

    move v9, v13

    :goto_2
    move v13, v9

    move v14, v5

    if-ge v13, v14, :cond_7

    .line 84
    move-object v13, v4

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v13

    .line 85
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_6

    .line 86
    move-object v13, v10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v11, v13

    .line 87
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 88
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 89
    move-object v13, v11

    move-object v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v14

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 96
    :cond_1
    :goto_3
    const/4 v13, 0x1

    move v7, v13

    .line 83
    :cond_2
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 77
    :cond_3
    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalLeft(I)V

    goto :goto_1

    .line 90
    :cond_4
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 91
    move-object v13, v11

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v14

    move-object v15, v11

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    .line 92
    :cond_5
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedHorizontally()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 93
    const/high16 v13, 0x3f000000    # 0.5f

    move-object v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    move-result v14

    move-object v15, v0

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    move v12, v13

    .line 94
    move-object v13, v11

    move v14, v12

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_3

    .line 98
    :cond_6
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v13, :cond_2

    .line 99
    move-object v13, v10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    move-object v11, v13

    .line 100
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v13

    if-nez v13, :cond_2

    .line 101
    const/4 v13, 0x1

    move v8, v13

    goto :goto_4

    .line 105
    :cond_7
    move v13, v7

    if-eqz v13, :cond_9

    .line 106
    const/4 v13, 0x0

    move v9, v13

    :goto_5
    move v13, v9

    move v14, v5

    if-ge v13, v14, :cond_9

    .line 107
    move-object v13, v4

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v13

    .line 108
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_8

    .line 109
    move-object v13, v10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v11, v13

    .line 110
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 111
    move-object v13, v11

    move-object v14, v1

    move v15, v6

    invoke-static {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 106
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 118
    :cond_9
    move-object v13, v0

    move-object v14, v1

    move v15, v6

    invoke-static {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 121
    move v13, v8

    if-eqz v13, :cond_b

    .line 122
    const/4 v13, 0x0

    move v9, v13

    :goto_6
    move v13, v9

    move v14, v5

    if-ge v13, v14, :cond_b

    .line 123
    move-object v13, v4

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v13

    .line 124
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v13, :cond_a

    .line 125
    move-object v13, v10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    move-object v11, v13

    .line 126
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v13

    if-nez v13, :cond_a

    .line 127
    move-object v13, v11

    move-object v14, v1

    const/4 v15, 0x0

    move/from16 v16, v6

    invoke-static/range {v13 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveBarrier(Landroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    .line 122
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 134
    :cond_b
    move-object v13, v3

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_e

    .line 135
    move-object v13, v0

    const/4 v14, 0x0

    move-object v15, v0

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalVertical(II)V

    .line 141
    :goto_7
    const/4 v13, 0x0

    move v7, v13

    .line 142
    const/4 v13, 0x0

    move v8, v13

    .line 143
    const/4 v13, 0x0

    move v9, v13

    :goto_8
    move v13, v9

    move v14, v5

    if-ge v13, v14, :cond_12

    .line 144
    move-object v13, v4

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v13

    .line 145
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_11

    .line 146
    move-object v13, v10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v11, v13

    .line 147
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v13

    if-nez v13, :cond_d

    .line 148
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_f

    .line 149
    move-object v13, v11

    move-object v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v14

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    .line 156
    :cond_c
    :goto_9
    const/4 v13, 0x1

    move v7, v13

    .line 143
    :cond_d
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 137
    :cond_e
    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setFinalTop(I)V

    goto :goto_7

    .line 150
    :cond_f
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_10

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 151
    move-object v13, v11

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    move-object v15, v11

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_9

    .line 152
    :cond_10
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isResolvedVertically()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 153
    const/high16 v13, 0x3f000000    # 0.5f

    move-object v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    move-result v14

    move-object v15, v0

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    move v12, v13

    .line 154
    move-object v13, v11

    move v14, v12

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/Guideline;->setFinalValue(I)V

    goto :goto_9

    .line 158
    :cond_11
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v13, :cond_d

    .line 159
    move-object v13, v10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    move-object v11, v13

    .line 160
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 161
    const/4 v13, 0x1

    move v8, v13

    goto :goto_a

    .line 165
    :cond_12
    move v13, v7

    if-eqz v13, :cond_14

    .line 166
    const/4 v13, 0x0

    move v9, v13

    :goto_b
    move v13, v9

    move v14, v5

    if-ge v13, v14, :cond_14

    .line 167
    move-object v13, v4

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v13

    .line 168
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_13

    .line 169
    move-object v13, v10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v11, v13

    .line 170
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v13

    if-nez v13, :cond_13

    .line 171
    move-object v13, v11

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 166
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 178
    :cond_14
    move-object v13, v0

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 181
    move v13, v8

    if-eqz v13, :cond_16

    .line 182
    const/4 v13, 0x0

    move v9, v13

    :goto_c
    move v13, v9

    move v14, v5

    if-ge v13, v14, :cond_16

    .line 183
    move-object v13, v4

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v13

    .line 184
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v13, :cond_15

    .line 185
    move-object v13, v10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    move-object v11, v13

    .line 186
    move-object v13, v11

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_15

    .line 187
    move-object v13, v11

    move-object v14, v1

    const/4 v15, 0x1

    move/from16 v16, v6

    invoke-static/range {v13 .. v16}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveBarrier(Landroidx/constraintlayout/core/widgets/Barrier;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;IZ)V

    .line 182
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 194
    :cond_16
    const/4 v13, 0x0

    move v9, v13

    :goto_d
    move v13, v9

    move v14, v5

    if-ge v13, v14, :cond_18

    .line 195
    move-object v13, v4

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v13

    .line 196
    move-object v13, v10

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_17

    move-object v13, v10

    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 197
    move-object v13, v10

    move-object v14, v1

    sget-object v15, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    sget v16, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v13 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v13

    .line 198
    move-object v13, v10

    move-object v14, v1

    move v15, v6

    invoke-static {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->horizontalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 199
    move-object v13, v10

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 194
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 202
    :cond_18
    return-void
.end method

.method private static verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 18

    .prologue
    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v0

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-nez v13, :cond_0

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v0

    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 354
    new-instance v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object v2, v13

    .line 355
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    sget v16, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v13 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v13

    .line 358
    :cond_0
    move-object v13, v0

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v2, v13

    .line 359
    move-object v13, v0

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v3, v13

    .line 360
    move-object v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v13

    move v4, v13

    .line 361
    move-object v13, v3

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v13

    move v5, v13

    .line 363
    move-object v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v13

    if-eqz v13, :cond_c

    move-object v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 364
    move-object v13, v2

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v6, v13

    :goto_0
    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v13

    .line 365
    move-object v13, v7

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v8, v13

    .line 366
    const/4 v13, 0x0

    move v9, v13

    .line 367
    const/4 v13, 0x0

    move v10, v13

    .line 368
    move-object v13, v8

    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v13

    move v11, v13

    .line 369
    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_1

    move v13, v11

    if-eqz v13, :cond_1

    .line 370
    new-instance v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object v12, v13

    .line 371
    move-object v13, v8

    move-object v14, v1

    move-object v15, v12

    sget v16, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v13 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v13

    .line 374
    :cond_1
    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_2

    move v13, v11

    if-eqz v13, :cond_7

    .line 376
    :cond_2
    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 381
    goto :goto_0

    .line 383
    :cond_3
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_5

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v13, :cond_5

    .line 384
    move v13, v4

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    add-int/2addr v13, v14

    move v9, v13

    .line 385
    move v13, v9

    move-object v14, v8

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 386
    move-object v13, v8

    move v14, v9

    move v15, v10

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 387
    move-object v13, v8

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 410
    :cond_4
    :goto_1
    goto :goto_0

    .line 388
    :cond_5
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_6

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v13, :cond_6

    .line 389
    move v13, v4

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    sub-int/2addr v13, v14

    move v10, v13

    .line 390
    move v13, v10

    move-object v14, v8

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    move v9, v13

    .line 391
    move-object v13, v8

    move v14, v9

    move v15, v10

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 392
    move-object v13, v8

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_1

    .line 393
    :cond_6
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_4

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v13, :cond_4

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 394
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 395
    move-object v13, v1

    move-object v14, v8

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalCenterConstraints(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_1

    .line 400
    :cond_7
    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_4

    move-object v13, v8

    iget v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ltz v13, :cond_4

    move-object v13, v8

    iget v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-ltz v13, :cond_4

    move-object v13, v8

    .line 402
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_8

    move-object v13, v8

    iget v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v13, :cond_4

    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    :cond_8
    move-object v13, v8

    .line 403
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v13

    if-nez v13, :cond_4

    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v13

    if-nez v13, :cond_4

    .line 404
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_9

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v13, :cond_9

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v13

    if-nez v13, :cond_a

    :cond_9
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_b

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v13, :cond_b

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 405
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    const/4 v13, 0x1

    :goto_2
    move v12, v13

    .line 406
    move v13, v12

    if-eqz v13, :cond_4

    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v13

    if-nez v13, :cond_4

    .line 407
    move-object v13, v0

    move-object v14, v1

    move-object v15, v8

    invoke-static {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalMatchConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/16 :goto_1

    .line 405
    :cond_b
    const/4 v13, 0x0

    goto :goto_2

    .line 412
    :cond_c
    move-object v13, v0

    instance-of v13, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_d

    .line 488
    :goto_3
    return-void

    .line 415
    :cond_d
    move-object v13, v3

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v13

    if-eqz v13, :cond_19

    move-object v13, v3

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 416
    move-object v13, v3

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v6, v13

    :goto_4
    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_19

    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v13

    .line 417
    move-object v13, v7

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v8, v13

    .line 418
    move-object v13, v8

    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v13

    move v9, v13

    .line 419
    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_e

    move v13, v9

    if-eqz v13, :cond_e

    .line 420
    new-instance v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object v10, v13

    .line 421
    move-object v13, v8

    move-object v14, v1

    move-object v15, v10

    sget v16, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v13 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v13

    .line 424
    :cond_e
    const/4 v13, 0x0

    move v10, v13

    .line 425
    const/4 v13, 0x0

    move v11, v13

    .line 426
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_f

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v13, :cond_f

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v13

    if-nez v13, :cond_10

    :cond_f
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_12

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v13, :cond_12

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 427
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_10
    const/4 v13, 0x1

    :goto_5
    move v12, v13

    .line 428
    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_11

    move v13, v9

    if-eqz v13, :cond_17

    .line 430
    :cond_11
    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 435
    goto/16 :goto_4

    .line 427
    :cond_12
    const/4 v13, 0x0

    goto :goto_5

    .line 437
    :cond_13
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_15

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v13, :cond_15

    .line 438
    move v13, v5

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    add-int/2addr v13, v14

    move v10, v13

    .line 439
    move v13, v10

    move-object v14, v8

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    move v11, v13

    .line 440
    move-object v13, v8

    move v14, v10

    move v15, v11

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 441
    move-object v13, v8

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 458
    :cond_14
    :goto_6
    goto/16 :goto_4

    .line 442
    :cond_15
    move-object v13, v7

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_16

    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v13, :cond_16

    .line 443
    move v13, v5

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    sub-int/2addr v13, v14

    move v11, v13

    .line 444
    move v13, v11

    move-object v14, v8

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    move v10, v13

    .line 445
    move-object v13, v8

    move v14, v10

    move v15, v11

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    .line 446
    move-object v13, v8

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    goto :goto_6

    .line 447
    :cond_16
    move v13, v12

    if-eqz v13, :cond_14

    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v13

    if-nez v13, :cond_14

    .line 448
    move-object v13, v1

    move-object v14, v8

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalCenterConstraints(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_6

    .line 450
    :cond_17
    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_14

    move-object v13, v8

    iget v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ltz v13, :cond_14

    move-object v13, v8

    iget v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-ltz v13, :cond_14

    move-object v13, v8

    .line 452
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_18

    move-object v13, v8

    iget v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v13, :cond_14

    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_14

    :cond_18
    move-object v13, v8

    .line 453
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v13

    if-nez v13, :cond_14

    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v13

    if-nez v13, :cond_14

    .line 454
    move v13, v12

    if-eqz v13, :cond_14

    move-object v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v13

    if-nez v13, :cond_14

    .line 455
    move-object v13, v0

    move-object v14, v1

    move-object v15, v8

    invoke-static {v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solveVerticalMatchConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/16 :goto_6

    .line 461
    :cond_19
    move-object v13, v0

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v6, v13

    .line 462
    move-object v13, v6

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v13

    if-eqz v13, :cond_1e

    move-object v13, v6

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 463
    move-object v13, v6

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v13

    move v7, v13

    .line 464
    move-object v13, v6

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v8, v13

    :goto_7
    move-object v13, v8

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object v13, v8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v9, v13

    .line 465
    move-object v13, v9

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v13

    .line 466
    move-object v13, v10

    invoke-static {v13}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v13

    move v11, v13

    .line 467
    move-object v13, v10

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_1a

    move v13, v11

    if-eqz v13, :cond_1a

    .line 468
    new-instance v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object v12, v13

    .line 469
    move-object v13, v10

    move-object v14, v1

    move-object v15, v12

    sget v16, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v13 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v13

    .line 471
    :cond_1a
    move-object v13, v10

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_1b

    move v13, v11

    if-eqz v13, :cond_1d

    .line 473
    :cond_1b
    move-object v13, v10

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 478
    goto :goto_7

    .line 480
    :cond_1c
    move-object v13, v9

    move-object v14, v10

    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v13, v14, :cond_1d

    .line 481
    move-object v13, v10

    move v14, v7

    move-object v15, v9

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalBaseline(I)V

    .line 482
    move-object v13, v10

    move-object v14, v1

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->verticalSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 485
    :cond_1d
    goto :goto_7

    .line 488
    :cond_1e
    goto/16 :goto_3
.end method
