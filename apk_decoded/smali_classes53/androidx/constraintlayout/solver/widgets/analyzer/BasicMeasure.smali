.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 53
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 71
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 72
    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 11

    .prologue
    .line 457
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 458
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 459
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 460
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 461
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 462
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    move v9, v3

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 464
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    .line 465
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    move v5, v8

    .line 466
    move v8, v4

    if-eqz v8, :cond_4

    move-object v8, v2

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 467
    move v8, v5

    if-eqz v8, :cond_5

    move-object v8, v2

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    move v7, v8

    .line 469
    move v8, v6

    if-eqz v8, :cond_0

    .line 470
    move-object v8, v2

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 471
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 474
    :cond_0
    move v8, v7

    if-eqz v8, :cond_1

    .line 475
    move-object v8, v2

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 476
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 480
    :cond_1
    move-object v8, v1

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 481
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 482
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 483
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 484
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 485
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 486
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    move v0, v8

    return v0

    .line 464
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 465
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 466
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 467
    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 17

    .prologue
    .line 75
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v11, v2

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v3, v11

    .line 76
    move-object v11, v2

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v11

    move v4, v11

    .line 77
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v11

    move-object v5, v11

    .line 78
    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    move v12, v3

    if-ge v11, v12, :cond_b

    .line 79
    move-object v11, v2

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v7, v11

    .line 80
    move-object v11, v7

    instance-of v11, v11, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v11, :cond_1

    .line 78
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    :cond_1
    move-object v11, v7

    instance-of v11, v11, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v11, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    move-object v11, v7

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 87
    goto :goto_1

    .line 90
    :cond_3
    move v11, v4

    if-eqz v11, :cond_4

    move-object v11, v7

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v11, :cond_4

    move-object v11, v7

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v11, :cond_4

    move-object v11, v7

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v11, :cond_4

    move-object v11, v7

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v11, :cond_4

    .line 93
    goto :goto_1

    .line 96
    :cond_4
    move-object v11, v7

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    move-object v8, v11

    .line 97
    move-object v11, v7

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    move-object v9, v11

    .line 99
    move-object v11, v8

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_9

    move-object v11, v7

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    move-object v11, v9

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_9

    move-object v11, v7

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    const/4 v11, 0x1

    :goto_2
    move v10, v11

    .line 104
    move v11, v10

    if-nez v11, :cond_8

    move-object v11, v2

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v11, v7

    instance-of v11, v11, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v11, :cond_8

    .line 106
    move-object v11, v8

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_5

    move-object v11, v7

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v11, :cond_5

    move-object v11, v9

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_5

    move-object v11, v7

    .line 109
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v11

    if-nez v11, :cond_5

    .line 110
    const/4 v11, 0x1

    move v10, v11

    .line 113
    :cond_5
    move-object v11, v9

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_6

    move-object v11, v7

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v11, :cond_6

    move-object v11, v8

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_6

    move-object v11, v7

    .line 116
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v11

    if-nez v11, :cond_6

    .line 117
    const/4 v11, 0x1

    move v10, v11

    .line 121
    :cond_6
    move-object v11, v8

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_7

    move-object v11, v9

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_8

    :cond_7
    move-object v11, v7

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    .line 124
    const/4 v11, 0x1

    move v10, v11

    .line 128
    :cond_8
    move v11, v10

    if-eqz v11, :cond_a

    .line 131
    goto/16 :goto_1

    .line 99
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 134
    :cond_a
    move-object v11, v1

    move-object v12, v5

    move-object v13, v7

    sget v14, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-direct {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v11

    .line 135
    move-object v11, v2

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v11, :cond_0

    .line 136
    move-object v11, v2

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget-wide v12, v12, Landroidx/constraintlayout/solver/Metrics;->measuredWidgets:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v11, Landroidx/constraintlayout/solver/Metrics;->measuredWidgets:J

    goto/16 :goto_1

    .line 139
    :cond_b
    move-object v11, v5

    invoke-interface {v11}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 140
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .locals 11

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v9

    move v7, v9

    .line 149
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v9

    move v8, v9

    .line 150
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 151
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 152
    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 153
    move-object v9, v1

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 154
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 155
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 159
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 164
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 49

    .prologue
    .line 185
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v43

    move-object/from16 v14, v43

    .line 186
    const-wide/16 v43, 0x0

    move-wide/from16 v15, v43

    .line 188
    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v17, v43

    .line 189
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v43

    move/from16 v18, v43

    .line 190
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v43

    move/from16 v19, v43

    .line 192
    move/from16 v43, v5

    const/16 v44, 0x80

    invoke-static/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v43

    move/from16 v20, v43

    .line 193
    move/from16 v43, v20

    if-nez v43, :cond_0

    move/from16 v43, v5

    const/16 v44, 0x40

    invoke-static/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v43

    if-eqz v43, :cond_c

    :cond_0
    const/16 v43, 0x1

    :goto_0
    move/from16 v21, v43

    .line 195
    move/from16 v43, v21

    if-eqz v43, :cond_1

    .line 196
    const/16 v43, 0x0

    move/from16 v22, v43

    :goto_1
    move/from16 v43, v22

    move/from16 v44, v17

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_1

    .line 197
    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move/from16 v44, v22

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v43

    .line 198
    move-object/from16 v43, v23

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v43

    sget-object v44, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_d

    const/16 v43, 0x1

    :goto_2
    move/from16 v24, v43

    .line 199
    move-object/from16 v43, v23

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v43

    sget-object v44, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_e

    const/16 v43, 0x1

    :goto_3
    move/from16 v25, v43

    .line 200
    move/from16 v43, v24

    if-eqz v43, :cond_f

    move/from16 v43, v25

    if-eqz v43, :cond_f

    move-object/from16 v43, v23

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v43

    const/16 v44, 0x0

    cmpl-float v43, v43, v44

    if-lez v43, :cond_f

    const/16 v43, 0x1

    :goto_4
    move/from16 v26, v43

    .line 201
    move-object/from16 v43, v23

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v43

    if-eqz v43, :cond_10

    move/from16 v43, v26

    if-eqz v43, :cond_10

    .line 202
    const/16 v43, 0x0

    move/from16 v21, v43

    .line 221
    :cond_1
    :goto_5
    move/from16 v43, v21

    if-eqz v43, :cond_2

    sget-object v43, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v43, :cond_2

    .line 222
    sget-object v43, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v48, v43

    move-object/from16 v43, v48

    move-object/from16 v44, v48

    move-object/from16 v0, v44

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->measures:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    .line 225
    :cond_2
    const/16 v43, 0x0

    move/from16 v22, v43

    .line 227
    move/from16 v43, v21

    move/from16 v44, v8

    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3

    move/from16 v44, v10

    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_4

    :cond_3
    move/from16 v44, v20

    if-eqz v44, :cond_15

    :cond_4
    const/16 v44, 0x1

    :goto_6
    and-int v43, v43, v44

    move/from16 v21, v43

    .line 229
    const/16 v43, 0x0

    move/from16 v23, v43

    .line 231
    move/from16 v43, v21

    if-eqz v43, :cond_8

    .line 235
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v43

    move/from16 v44, v9

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v9, v43

    .line 236
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v43

    move/from16 v44, v11

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v11, v43

    .line 238
    move/from16 v43, v8

    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_5

    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v43

    move/from16 v44, v9

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_5

    .line 239
    move-object/from16 v43, v4

    move/from16 v44, v9

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 240
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 242
    :cond_5
    move/from16 v43, v10

    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_6

    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v43

    move/from16 v44, v11

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_6

    .line 243
    move-object/from16 v43, v4

    move/from16 v44, v11

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 244
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 246
    :cond_6
    move/from16 v43, v8

    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_16

    move/from16 v43, v10

    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_16

    .line 247
    move-object/from16 v43, v4

    move/from16 v44, v20

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v43

    move/from16 v22, v43

    .line 248
    const/16 v43, 0x2

    move/from16 v23, v43

    .line 260
    :cond_7
    :goto_7
    move/from16 v43, v22

    if-eqz v43, :cond_8

    .line 261
    move-object/from16 v43, v4

    move/from16 v44, v8

    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_18

    const/16 v44, 0x1

    :goto_8
    move/from16 v45, v10

    const/high16 v46, 0x40000000    # 2.0f

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_19

    const/16 v45, 0x1

    :goto_9
    invoke-virtual/range {v43 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 274
    :cond_8
    move/from16 v43, v22

    if-eqz v43, :cond_9

    move/from16 v43, v23

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_34

    .line 275
    :cond_9
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v43

    move/from16 v24, v43

    .line 276
    move/from16 v43, v17

    if-lez v43, :cond_a

    .line 277
    move-object/from16 v43, v3

    move-object/from16 v44, v4

    invoke-direct/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 283
    :cond_a
    move-object/from16 v43, v3

    move-object/from16 v44, v4

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 286
    move-object/from16 v43, v3

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v25, v43

    .line 289
    move/from16 v43, v17

    if-lez v43, :cond_b

    .line 290
    move-object/from16 v43, v3

    move-object/from16 v44, v4

    const-string v45, "First pass"

    move/from16 v46, v18

    move/from16 v47, v19

    invoke-direct/range {v43 .. v47}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 297
    :cond_b
    move/from16 v43, v25

    if-lez v43, :cond_33

    .line 298
    const/16 v43, 0x0

    move/from16 v26, v43

    .line 299
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v43

    sget-object v44, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_1a

    const/16 v43, 0x1

    :goto_a
    move/from16 v27, v43

    .line 301
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v43

    sget-object v44, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_1b

    const/16 v43, 0x1

    :goto_b
    move/from16 v28, v43

    .line 303
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v43

    move-object/from16 v44, v3

    move-object/from16 v0, v44

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v44

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v29, v43

    .line 304
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v43

    move-object/from16 v44, v3

    move-object/from16 v0, v44

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v44

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v30, v43

    .line 309
    const/16 v43, 0x0

    move/from16 v31, v43

    :goto_c
    move/from16 v43, v31

    move/from16 v44, v25

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_22

    .line 310
    move-object/from16 v43, v3

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move/from16 v44, v31

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v32, v43

    .line 311
    move-object/from16 v43, v32

    move-object/from16 v0, v43

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    move/from16 v43, v0

    if-nez v43, :cond_1c

    .line 309
    :goto_d
    add-int/lit8 v31, v31, 0x1

    goto :goto_c

    .line 193
    :cond_c
    const/16 v43, 0x0

    goto/16 :goto_0

    .line 198
    :cond_d
    const/16 v43, 0x0

    goto/16 :goto_2

    .line 199
    :cond_e
    const/16 v43, 0x0

    goto/16 :goto_3

    .line 200
    :cond_f
    const/16 v43, 0x0

    goto/16 :goto_4

    .line 205
    :cond_10
    move-object/from16 v43, v23

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v43

    if-eqz v43, :cond_11

    move/from16 v43, v26

    if-eqz v43, :cond_11

    .line 206
    const/16 v43, 0x0

    move/from16 v21, v43

    .line 207
    goto/16 :goto_5

    .line 209
    :cond_11
    move-object/from16 v43, v23

    move-object/from16 v0, v43

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    move/from16 v43, v0

    if-eqz v43, :cond_12

    .line 210
    const/16 v43, 0x0

    move/from16 v21, v43

    .line 211
    goto/16 :goto_5

    .line 213
    :cond_12
    move-object/from16 v43, v23

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v43

    if-nez v43, :cond_13

    move-object/from16 v43, v23

    .line 214
    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v43

    if-eqz v43, :cond_14

    .line 215
    :cond_13
    const/16 v43, 0x0

    move/from16 v21, v43

    .line 216
    goto/16 :goto_5

    .line 196
    :cond_14
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 227
    :cond_15
    const/16 v44, 0x0

    goto/16 :goto_6

    .line 250
    :cond_16
    move-object/from16 v43, v4

    move/from16 v44, v20

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v43

    move/from16 v22, v43

    .line 251
    move/from16 v43, v8

    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_17

    .line 252
    move/from16 v43, v22

    move-object/from16 v44, v4

    move/from16 v45, v20

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v44

    and-int v43, v43, v44

    move/from16 v22, v43

    .line 253
    add-int/lit8 v23, v23, 0x1

    .line 255
    :cond_17
    move/from16 v43, v10

    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_7

    .line 256
    move/from16 v43, v22

    move-object/from16 v44, v4

    move/from16 v45, v20

    const/16 v46, 0x1

    invoke-virtual/range {v44 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v44

    and-int v43, v43, v44

    move/from16 v22, v43

    .line 257
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_7

    .line 261
    :cond_18
    const/16 v44, 0x0

    goto/16 :goto_8

    :cond_19
    const/16 v45, 0x0

    goto/16 :goto_9

    .line 299
    :cond_1a
    const/16 v43, 0x0

    goto/16 :goto_a

    .line 301
    :cond_1b
    const/16 v43, 0x0

    goto/16 :goto_b

    .line 314
    :cond_1c
    move-object/from16 v43, v32

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v43

    move/from16 v33, v43

    .line 315
    move-object/from16 v43, v32

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v43

    move/from16 v34, v43

    .line 316
    move/from16 v43, v26

    move-object/from16 v44, v3

    move-object/from16 v45, v14

    move-object/from16 v46, v32

    sget v47, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    invoke-direct/range {v44 .. v47}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v44

    or-int v43, v43, v44

    move/from16 v26, v43

    .line 317
    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1d

    .line 318
    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v43, v0

    move-object/from16 v48, v43

    move-object/from16 v43, v48

    move-object/from16 v44, v48

    move-object/from16 v0, v44

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    .line 320
    :cond_1d
    move-object/from16 v43, v32

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v43

    move/from16 v35, v43

    .line 321
    move-object/from16 v43, v32

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v43

    move/from16 v36, v43

    .line 322
    move/from16 v43, v35

    move/from16 v44, v33

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_1f

    .line 323
    move-object/from16 v43, v32

    move/from16 v44, v35

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 324
    move/from16 v43, v27

    if-eqz v43, :cond_1e

    move-object/from16 v43, v32

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v43

    move/from16 v44, v29

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_1e

    .line 325
    move-object/from16 v43, v32

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v43

    move-object/from16 v44, v32

    sget-object v45, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 326
    invoke-virtual/range {v44 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v44

    add-int v43, v43, v44

    move/from16 v37, v43

    .line 327
    move/from16 v43, v29

    move/from16 v44, v37

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v29, v43

    .line 329
    :cond_1e
    const/16 v43, 0x1

    move/from16 v26, v43

    .line 331
    :cond_1f
    move/from16 v43, v36

    move/from16 v44, v34

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_21

    .line 332
    move-object/from16 v43, v32

    move/from16 v44, v36

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 333
    move/from16 v43, v28

    if-eqz v43, :cond_20

    move-object/from16 v43, v32

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v43

    move/from16 v44, v30

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_20

    .line 334
    move-object/from16 v43, v32

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v43

    move-object/from16 v44, v32

    sget-object v45, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 335
    invoke-virtual/range {v44 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v44

    add-int v43, v43, v44

    move/from16 v37, v43

    .line 336
    move/from16 v43, v30

    move/from16 v44, v37

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v30, v43

    .line 338
    :cond_20
    const/16 v43, 0x1

    move/from16 v26, v43

    .line 340
    :cond_21
    move-object/from16 v43, v32

    check-cast v43, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    move-object/from16 v37, v43

    .line 341
    move/from16 v43, v26

    move-object/from16 v44, v37

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v44

    or-int v43, v43, v44

    move/from16 v26, v43

    goto/16 :goto_d

    .line 345
    :cond_22
    const/16 v43, 0x2

    move/from16 v31, v43

    .line 346
    const/16 v43, 0x0

    move/from16 v32, v43

    :goto_e
    move/from16 v43, v32

    move/from16 v44, v31

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_30

    .line 347
    const/16 v43, 0x0

    move/from16 v33, v43

    :goto_f
    move/from16 v43, v33

    move/from16 v44, v25

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_2f

    .line 348
    move-object/from16 v43, v3

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move/from16 v44, v33

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v34, v43

    .line 349
    move-object/from16 v43, v34

    move-object/from16 v0, v43

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Helper;

    move/from16 v43, v0

    if-eqz v43, :cond_23

    move-object/from16 v43, v34

    move-object/from16 v0, v43

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    move/from16 v43, v0

    if-eqz v43, :cond_24

    :cond_23
    move-object/from16 v43, v34

    move-object/from16 v0, v43

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    move/from16 v43, v0

    if-eqz v43, :cond_25

    .line 347
    :cond_24
    :goto_10
    add-int/lit8 v33, v33, 0x1

    goto :goto_f

    .line 352
    :cond_25
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v43

    const/16 v44, 0x8

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_26

    .line 353
    goto :goto_10

    .line 355
    :cond_26
    move/from16 v43, v21

    if-eqz v43, :cond_27

    move-object/from16 v43, v34

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    move/from16 v43, v0

    if-eqz v43, :cond_27

    move-object/from16 v43, v34

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    move/from16 v43, v0

    if-eqz v43, :cond_27

    .line 357
    goto :goto_10

    .line 359
    :cond_27
    move-object/from16 v43, v34

    move-object/from16 v0, v43

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    move/from16 v43, v0

    if-eqz v43, :cond_28

    .line 360
    goto :goto_10

    .line 363
    :cond_28
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v43

    move/from16 v35, v43

    .line 364
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v43

    move/from16 v36, v43

    .line 365
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v43

    move/from16 v37, v43

    .line 367
    sget v43, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    move/from16 v38, v43

    .line 368
    move/from16 v43, v32

    move/from16 v44, v31

    const/16 v45, 0x1

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_29

    .line 369
    sget v43, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    move/from16 v38, v43

    .line 371
    :cond_29
    move-object/from16 v43, v3

    move-object/from16 v44, v14

    move-object/from16 v45, v34

    move/from16 v46, v38

    invoke-direct/range {v43 .. v46}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v43

    move/from16 v39, v43

    .line 375
    move/from16 v43, v26

    move/from16 v44, v39

    or-int v43, v43, v44

    move/from16 v26, v43

    .line 379
    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2a

    .line 380
    move-object/from16 v43, v4

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v43, v0

    move-object/from16 v48, v43

    move-object/from16 v43, v48

    move-object/from16 v44, v48

    move-object/from16 v0, v44

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    .line 383
    :cond_2a
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v43

    move/from16 v40, v43

    .line 384
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v43

    move/from16 v41, v43

    .line 386
    move/from16 v43, v40

    move/from16 v44, v35

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_2c

    .line 387
    move-object/from16 v43, v34

    move/from16 v44, v40

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 388
    move/from16 v43, v27

    if-eqz v43, :cond_2b

    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v43

    move/from16 v44, v29

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_2b

    .line 389
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v43

    move-object/from16 v44, v34

    sget-object v45, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 390
    invoke-virtual/range {v44 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v44

    add-int v43, v43, v44

    move/from16 v42, v43

    .line 391
    move/from16 v43, v29

    move/from16 v44, v42

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v29, v43

    .line 396
    :cond_2b
    const/16 v43, 0x1

    move/from16 v26, v43

    .line 398
    :cond_2c
    move/from16 v43, v41

    move/from16 v44, v36

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_2e

    .line 399
    move-object/from16 v43, v34

    move/from16 v44, v41

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 400
    move/from16 v43, v28

    if-eqz v43, :cond_2d

    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v43

    move/from16 v44, v30

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_2d

    .line 401
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v43

    move-object/from16 v44, v34

    sget-object v45, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 402
    invoke-virtual/range {v44 .. v45}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v44

    add-int v43, v43, v44

    move/from16 v42, v43

    .line 403
    move/from16 v43, v30

    move/from16 v44, v42

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v30, v43

    .line 408
    :cond_2d
    const/16 v43, 0x1

    move/from16 v26, v43

    .line 410
    :cond_2e
    move-object/from16 v43, v34

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v43

    if-eqz v43, :cond_24

    move/from16 v43, v37

    move-object/from16 v44, v34

    invoke-virtual/range {v44 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_24

    .line 414
    const/16 v43, 0x1

    move/from16 v26, v43

    goto/16 :goto_10

    .line 417
    :cond_2f
    move/from16 v43, v26

    if-eqz v43, :cond_30

    .line 418
    move-object/from16 v43, v3

    move-object/from16 v44, v4

    const-string v45, "intermediate pass"

    move/from16 v46, v18

    move/from16 v47, v19

    invoke-direct/range {v43 .. v47}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 419
    const/16 v43, 0x0

    move/from16 v26, v43

    .line 346
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_e

    .line 424
    :cond_30
    move/from16 v43, v26

    if-eqz v43, :cond_33

    .line 425
    move-object/from16 v43, v3

    move-object/from16 v44, v4

    const-string v45, "2nd pass"

    move/from16 v46, v18

    move/from16 v47, v19

    invoke-direct/range {v43 .. v47}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 426
    const/16 v43, 0x0

    move/from16 v26, v43

    .line 427
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v43

    move/from16 v44, v29

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_31

    .line 428
    move-object/from16 v43, v4

    move/from16 v44, v29

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 429
    const/16 v43, 0x1

    move/from16 v26, v43

    .line 431
    :cond_31
    move-object/from16 v43, v4

    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v43

    move/from16 v44, v30

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_32

    .line 432
    move-object/from16 v43, v4

    move/from16 v44, v30

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 433
    const/16 v43, 0x1

    move/from16 v26, v43

    .line 435
    :cond_32
    move/from16 v43, v26

    if-eqz v43, :cond_33

    .line 436
    move-object/from16 v43, v3

    move-object/from16 v44, v4

    const-string v45, "3rd pass"

    move/from16 v46, v18

    move/from16 v47, v19

    invoke-direct/range {v43 .. v47}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 440
    :cond_33
    move-object/from16 v43, v4

    move/from16 v44, v24

    invoke-virtual/range {v43 .. v44}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 445
    :cond_34
    move-wide/from16 v43, v15

    move-wide/from16 v3, v43

    return-wide v3
.end method

.method public updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 57
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 58
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 59
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v5

    .line 60
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_0

    move-object v5, v4

    .line 61
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    .line 62
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 58
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 66
    return-void
.end method
