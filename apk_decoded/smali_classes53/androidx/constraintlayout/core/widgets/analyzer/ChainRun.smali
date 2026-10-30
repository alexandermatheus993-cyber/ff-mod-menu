.class public Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "ChainRun.java"


# instance fields
.field private chainStyle:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 32
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 37
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    .line 38
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->build()V

    .line 39
    return-void
.end method

.method private build()V
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v1, v6

    .line 78
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    move-object v2, v6

    .line 79
    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 80
    move-object v6, v2

    move-object v1, v6

    .line 81
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    move-object v2, v6

    goto :goto_0

    .line 83
    :cond_0
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 85
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    move-object v3, v6

    .line 86
    :goto_1
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 87
    move-object v6, v3

    move-object v1, v6

    .line 88
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 89
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    move-object v3, v6

    goto :goto_1

    .line 91
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v5, v6

    .line 92
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    if-nez v6, :cond_3

    .line 93
    move-object v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v7, v0

    iput-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 97
    :cond_2
    :goto_3
    goto :goto_2

    .line 94
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 95
    move-object v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v7, v0

    iput-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    goto :goto_3

    .line 98
    :cond_4
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    if-nez v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_4
    move v4, v6

    .line 99
    move v6, v4

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_5

    .line 100
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 102
    :cond_5
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    if-nez v7, :cond_7

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalChainStyle()I

    move-result v7

    :goto_5
    iput v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 103
    return-void

    .line 98
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 102
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalChainStyle()I

    move-result v7

    goto :goto_5
.end method

.method private getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 5

    .prologue
    .line 501
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 502
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v2, v3

    .line 503
    move-object v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 504
    move-object v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v0, v3

    .line 507
    :goto_1
    return-object v0

    .line 501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 5

    .prologue
    .line 511
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    :goto_0
    move v3, v1

    if-ltz v3, :cond_1

    .line 512
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v2, v3

    .line 513
    move-object v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 514
    move-object v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v0, v3

    .line 517
    :goto_1
    return-object v0

    .line 511
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 517
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method apply()V
    .locals 16

    .prologue
    .line 523
    move-object/from16 v0, p0

    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v1, v12

    :goto_0
    move-object v12, v1

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v2, v12

    .line 524
    move-object v12, v2

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    .line 525
    goto :goto_0

    .line 526
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v1, v12

    .line 527
    move v12, v1

    const/4 v13, 0x1

    if-ge v12, v13, :cond_1

    .line 580
    :goto_1
    return-void

    .line 532
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v2, v12

    .line 533
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move v13, v1

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v3, v12

    .line 535
    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    if-nez v12, :cond_6

    .line 536
    move-object v12, v2

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v4, v12

    .line 537
    move-object v12, v3

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v5, v12

    .line 538
    move-object v12, v0

    move-object v13, v4

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v12

    move-object v6, v12

    .line 539
    move-object v12, v4

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    move v7, v12

    .line 540
    move-object v12, v0

    invoke-direct {v12}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v12

    move-object v8, v12

    .line 541
    move-object v12, v8

    if-eqz v12, :cond_2

    .line 542
    move-object v12, v8

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    move v7, v12

    .line 544
    :cond_2
    move-object v12, v6

    if-eqz v12, :cond_3

    .line 545
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object v14, v6

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 547
    :cond_3
    move-object v12, v0

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v12

    move-object v9, v12

    .line 548
    move-object v12, v5

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    move v10, v12

    .line 549
    move-object v12, v0

    invoke-direct {v12}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v12

    move-object v11, v12

    .line 550
    move-object v12, v11

    if-eqz v12, :cond_4

    .line 551
    move-object v12, v11

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    move v10, v12

    .line 553
    :cond_4
    move-object v12, v9

    if-eqz v12, :cond_5

    .line 554
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object v14, v9

    move v15, v10

    neg-int v15, v15

    invoke-virtual {v12, v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 578
    :cond_5
    :goto_2
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object v13, v0

    iput-object v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 579
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object v13, v0

    iput-object v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 580
    goto/16 :goto_1

    .line 557
    :cond_6
    move-object v12, v2

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v4, v12

    .line 558
    move-object v12, v3

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v5, v12

    .line 559
    move-object v12, v0

    move-object v13, v4

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v12

    move-object v6, v12

    .line 560
    move-object v12, v4

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    move v7, v12

    .line 561
    move-object v12, v0

    invoke-direct {v12}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v12

    move-object v8, v12

    .line 562
    move-object v12, v8

    if-eqz v12, :cond_7

    .line 563
    move-object v12, v8

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    move v7, v12

    .line 565
    :cond_7
    move-object v12, v6

    if-eqz v12, :cond_8

    .line 566
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object v14, v6

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 568
    :cond_8
    move-object v12, v0

    move-object v13, v5

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v12

    move-object v9, v12

    .line 569
    move-object v12, v5

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    move v10, v12

    .line 570
    move-object v12, v0

    invoke-direct {v12}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v12

    move-object v11, v12

    .line 571
    move-object v12, v11

    if-eqz v12, :cond_9

    .line 572
    move-object v12, v11

    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    move v10, v12

    .line 574
    :cond_9
    move-object v12, v9

    if-eqz v12, :cond_5

    .line 575
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object v14, v9

    move v15, v10

    neg-int v15, v15

    invoke-virtual {v12, v13, v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    goto :goto_2
.end method

.method public applyToWidget()V
    .locals 5

    .prologue
    .line 494
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 495
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v2, v3

    .line 496
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_0
    return-void
.end method

.method clear()V
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 109
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v2, v3

    .line 110
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public getWrapDimension()J
    .locals 10

    .prologue
    .line 65
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v6

    .line 66
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 67
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 68
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v5, v6

    .line 69
    move-wide v6, v2

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 70
    move-wide v6, v2

    move-object v8, v5

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 71
    move-wide v6, v2

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_0
    move-wide v6, v2

    move-wide v0, v6

    return-wide v0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 117
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 118
    return-void
.end method

.method supportsWrapComputation()Z
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 55
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 56
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v3, v4

    .line 57
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    const/4 v4, 0x0

    move v0, v4

    .line 61
    :goto_1
    return v0

    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChainRun "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    if-nez v5, :cond_0

    const-string v5, "horizontal : "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 44
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object v3, v4

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 48
    goto :goto_1

    .line 43
    :cond_0
    const-string v5, "vertical : "

    goto :goto_0

    .line 49
    :cond_1
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 27

    .prologue
    .line 122
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v23

    move-object/from16 v4, v23

    .line 127
    const/16 v23, 0x0

    move/from16 v5, v23

    .line 128
    move-object/from16 v23, v4

    if-eqz v23, :cond_2

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 129
    move-object/from16 v23, v4

    check-cast v23, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v23

    move/from16 v5, v23

    .line 131
    :cond_2
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v6, v23

    .line 132
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 133
    const/16 v23, 0x0

    move/from16 v8, v23

    .line 134
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 135
    const/16 v23, 0x0

    move/from16 v10, v23

    .line 136
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v11, v23

    .line 138
    const/16 v23, -0x1

    move/from16 v12, v23

    .line 139
    const/16 v23, 0x0

    move/from16 v13, v23

    :goto_1
    move/from16 v23, v13

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 140
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object/from16 v14, v23

    .line 141
    move-object/from16 v23, v14

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 139
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 144
    :cond_3
    move/from16 v23, v13

    move/from16 v12, v23

    .line 148
    :cond_4
    const/16 v23, -0x1

    move/from16 v13, v23

    .line 149
    move/from16 v23, v11

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v14, v23

    :goto_2
    move/from16 v23, v14

    if-ltz v23, :cond_6

    .line 150
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object/from16 v15, v23

    .line 151
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 149
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 154
    :cond_5
    move/from16 v23, v14

    move/from16 v13, v23

    .line 157
    :cond_6
    const/16 v23, 0x0

    move/from16 v14, v23

    :goto_3
    move/from16 v23, v14

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 158
    const/16 v23, 0x0

    move/from16 v15, v23

    :goto_4
    move/from16 v23, v15

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 159
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object/from16 v16, v23

    .line 160
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 158
    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 163
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 164
    move/from16 v23, v15

    if-lez v23, :cond_9

    move/from16 v23, v15

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 165
    move/from16 v23, v7

    move-object/from16 v24, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v7, v23

    .line 167
    :cond_9
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    move/from16 v23, v0

    move/from16 v17, v23

    .line 168
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v23, v0

    sget-object v24, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_a

    const/16 v23, 0x1

    :goto_6
    move/from16 v18, v23

    .line 169
    move/from16 v23, v18

    if-eqz v23, :cond_c

    .line 170
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    move/from16 v23, v0

    if-nez v23, :cond_b

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 171
    goto/16 :goto_0

    .line 168
    :cond_a
    const/16 v23, 0x0

    goto :goto_6

    .line 173
    :cond_b
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    .line 174
    goto/16 :goto_0

    .line 176
    :cond_c
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    move/from16 v23, v14

    if-nez v23, :cond_f

    .line 177
    const/16 v23, 0x1

    move/from16 v18, v23

    .line 178
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    move/from16 v23, v0

    move/from16 v17, v23

    .line 179
    add-int/lit8 v8, v8, 0x1

    .line 183
    :cond_d
    :goto_7
    move/from16 v23, v18

    if-nez v23, :cond_10

    .line 184
    add-int/lit8 v8, v8, 0x1

    .line 185
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    move/from16 v24, v0

    aget v23, v23, v24

    move/from16 v19, v23

    .line 186
    move/from16 v23, v19

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_e

    .line 187
    move/from16 v23, v9

    move/from16 v24, v19

    add-float v23, v23, v24

    move/from16 v9, v23

    .line 192
    :cond_e
    :goto_8
    move/from16 v23, v15

    move/from16 v24, v11

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    move/from16 v23, v15

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 193
    move/from16 v23, v7

    move-object/from16 v24, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v7, v23

    goto/16 :goto_5

    .line 180
    :cond_f
    move-object/from16 v23, v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 181
    const/16 v23, 0x1

    move/from16 v18, v23

    goto :goto_7

    .line 190
    :cond_10
    move/from16 v23, v7

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v7, v23

    goto :goto_8

    .line 196
    :cond_11
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_12

    move/from16 v23, v8

    if-nez v23, :cond_16

    .line 206
    :cond_12
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v23, v0

    move/from16 v14, v23

    .line 207
    move/from16 v23, v5

    if-eqz v23, :cond_13

    .line 208
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v23, v0

    move/from16 v14, v23

    .line 210
    :cond_13
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_14

    .line 211
    move/from16 v23, v5

    if-eqz v23, :cond_17

    .line 212
    move/from16 v23, v14

    const/high16 v24, 0x3f000000    # 0.5f

    move/from16 v25, v7

    move/from16 v26, v6

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v14, v23

    .line 217
    :cond_14
    :goto_9
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 218
    move/from16 v23, v8

    if-lez v23, :cond_25

    .line 219
    const/high16 v23, 0x3f000000    # 0.5f

    move/from16 v24, v6

    move/from16 v25, v7

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v8

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v15, v23

    .line 221
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 222
    const/16 v23, 0x0

    move/from16 v17, v23

    :goto_a
    move/from16 v23, v17

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_20

    .line 223
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object/from16 v18, v23

    .line 224
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 222
    :cond_15
    :goto_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 200
    :cond_16
    const/16 v23, 0x0

    move/from16 v10, v23

    .line 201
    const/16 v23, 0x0

    move/from16 v8, v23

    .line 202
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 203
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 157
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 214
    :cond_17
    move/from16 v23, v14

    const/high16 v24, 0x3f000000    # 0.5f

    move/from16 v25, v7

    move/from16 v26, v6

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_9

    .line 227
    :cond_18
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v23, v0

    sget-object v24, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_15

    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    move/from16 v23, v0

    if-nez v23, :cond_15

    .line 228
    move/from16 v23, v15

    move/from16 v19, v23

    .line 229
    move/from16 v23, v9

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_19

    .line 230
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    move/from16 v24, v0

    aget v23, v23, v24

    move/from16 v20, v23

    .line 231
    const/high16 v23, 0x3f000000    # 0.5f

    move/from16 v24, v20

    move/from16 v25, v6

    move/from16 v26, v7

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v25, v9

    div-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v19, v23

    .line 233
    :cond_19
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    move/from16 v23, v0

    if-nez v23, :cond_1d

    .line 234
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v23, v0

    move/from16 v20, v23

    .line 235
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v23, v0

    move/from16 v21, v23

    .line 236
    move/from16 v23, v19

    move/from16 v22, v23

    .line 237
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 238
    move/from16 v23, v22

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v22, v23

    .line 240
    :cond_1a
    move/from16 v23, v21

    move/from16 v24, v22

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v22, v23

    .line 241
    move/from16 v23, v20

    if-lez v23, :cond_1b

    .line 242
    move/from16 v23, v20

    move/from16 v24, v22

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v22, v23

    .line 244
    :cond_1b
    move/from16 v23, v22

    move/from16 v24, v19

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    .line 245
    add-int/lit8 v16, v16, 0x1

    .line 246
    move/from16 v23, v22

    move/from16 v19, v23

    .line 265
    :cond_1c
    :goto_c
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto/16 :goto_b

    .line 249
    :cond_1d
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v23, v0

    move/from16 v20, v23

    .line 250
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v23, v0

    move/from16 v21, v23

    .line 251
    move/from16 v23, v19

    move/from16 v22, v23

    .line 252
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 253
    move/from16 v23, v22

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v22, v23

    .line 255
    :cond_1e
    move/from16 v23, v21

    move/from16 v24, v22

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v22, v23

    .line 256
    move/from16 v23, v20

    if-lez v23, :cond_1f

    .line 257
    move/from16 v23, v20

    move/from16 v24, v22

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v22, v23

    .line 260
    :cond_1f
    move/from16 v23, v22

    move/from16 v24, v19

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    .line 261
    add-int/lit8 v16, v16, 0x1

    .line 262
    move/from16 v23, v22

    move/from16 v19, v23

    goto/16 :goto_c

    .line 268
    :cond_20
    move/from16 v23, v16

    if-lez v23, :cond_24

    .line 269
    move/from16 v23, v8

    move/from16 v24, v16

    sub-int v23, v23, v24

    move/from16 v8, v23

    .line 271
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 272
    const/16 v23, 0x0

    move/from16 v17, v23

    :goto_d
    move/from16 v23, v17

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_24

    .line 273
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object/from16 v18, v23

    .line 274
    move-object/from16 v23, v18

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 272
    :cond_21
    :goto_e
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 277
    :cond_22
    move/from16 v23, v17

    if-lez v23, :cond_23

    move/from16 v23, v17

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_23

    .line 278
    move/from16 v23, v7

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v7, v23

    .line 280
    :cond_23
    move/from16 v23, v7

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v7, v23

    .line 281
    move/from16 v23, v17

    move/from16 v24, v11

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_21

    move/from16 v23, v17

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_21

    .line 282
    move/from16 v23, v7

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v7, v23

    goto :goto_e

    .line 286
    :cond_24
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_25

    move/from16 v23, v16

    if-nez v23, :cond_25

    .line 287
    move-object/from16 v23, v2

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 291
    :cond_25
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_26

    .line 292
    move-object/from16 v23, v2

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 295
    :cond_26
    move/from16 v23, v10

    if-lez v23, :cond_27

    move/from16 v23, v8

    if-nez v23, :cond_27

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_27

    .line 297
    move-object/from16 v23, v2

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    .line 300
    :cond_27
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_38

    .line 301
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 302
    move/from16 v23, v10

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2c

    .line 303
    move/from16 v23, v6

    move/from16 v24, v7

    sub-int v23, v23, v24

    move/from16 v24, v10

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    div-int v23, v23, v24

    move/from16 v16, v23

    .line 307
    :cond_28
    :goto_f
    move/from16 v23, v8

    if-lez v23, :cond_29

    .line 308
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 310
    :cond_29
    const/16 v23, 0x0

    move/from16 v17, v23

    :goto_10
    move/from16 v23, v17

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_37

    .line 311
    move/from16 v23, v17

    move/from16 v18, v23

    .line 312
    move/from16 v23, v5

    if-eqz v23, :cond_2a

    .line 313
    move/from16 v23, v11

    move/from16 v24, v17

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    sub-int v23, v23, v24

    move/from16 v18, v23

    .line 315
    :cond_2a
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object/from16 v19, v23

    .line 316
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    .line 317
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 318
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 310
    :cond_2b
    :goto_11
    add-int/lit8 v17, v17, 0x1

    goto :goto_10

    .line 304
    :cond_2c
    move/from16 v23, v10

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    .line 305
    move/from16 v23, v6

    move/from16 v24, v7

    sub-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move/from16 v16, v23

    goto/16 :goto_f

    .line 321
    :cond_2d
    move/from16 v23, v17

    if-lez v23, :cond_2e

    .line 322
    move/from16 v23, v5

    if-eqz v23, :cond_31

    .line 323
    move/from16 v23, v14

    move/from16 v24, v16

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 328
    :cond_2e
    :goto_12
    move/from16 v23, v17

    if-lez v23, :cond_2f

    move/from16 v23, v17

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2f

    .line 329
    move/from16 v23, v5

    if-eqz v23, :cond_32

    .line 330
    move/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 336
    :cond_2f
    :goto_13
    move/from16 v23, v5

    if-eqz v23, :cond_33

    .line 337
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 342
    :goto_14
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    move/from16 v23, v0

    move/from16 v20, v23

    .line 343
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v23, v0

    sget-object v24, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_30

    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_30

    .line 345
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    move/from16 v23, v0

    move/from16 v20, v23

    .line 347
    :cond_30
    move/from16 v23, v5

    if-eqz v23, :cond_34

    .line 348
    move/from16 v23, v14

    move/from16 v24, v20

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 353
    :goto_15
    move/from16 v23, v5

    if-eqz v23, :cond_35

    .line 354
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 358
    :goto_16
    move-object/from16 v23, v19

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 359
    move/from16 v23, v17

    move/from16 v24, v11

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2b

    move/from16 v23, v17

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2b

    .line 360
    move/from16 v23, v5

    if-eqz v23, :cond_36

    .line 361
    move/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_11

    .line 325
    :cond_31
    move/from16 v23, v14

    move/from16 v24, v16

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_12

    .line 332
    :cond_32
    move/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_13

    .line 339
    :cond_33
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    goto/16 :goto_14

    .line 350
    :cond_34
    move/from16 v23, v14

    move/from16 v24, v20

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_15

    .line 356
    :cond_35
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    goto/16 :goto_16

    .line 363
    :cond_36
    move/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_11

    .line 491
    :cond_37
    :goto_17
    goto/16 :goto_0

    .line 367
    :cond_38
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    move/from16 v23, v0

    if-nez v23, :cond_46

    .line 368
    move/from16 v23, v6

    move/from16 v24, v7

    sub-int v23, v23, v24

    move/from16 v24, v10

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    div-int v23, v23, v24

    move/from16 v16, v23

    .line 369
    move/from16 v23, v8

    if-lez v23, :cond_39

    .line 370
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 372
    :cond_39
    const/16 v23, 0x0

    move/from16 v17, v23

    :goto_18
    move/from16 v23, v17

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_45

    .line 373
    move/from16 v23, v17

    move/from16 v18, v23

    .line 374
    move/from16 v23, v5

    if-eqz v23, :cond_3a

    .line 375
    move/from16 v23, v11

    move/from16 v24, v17

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    sub-int v23, v23, v24

    move/from16 v18, v23

    .line 377
    :cond_3a
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object/from16 v19, v23

    .line 378
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3c

    .line 379
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 380
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 372
    :cond_3b
    :goto_19
    add-int/lit8 v17, v17, 0x1

    goto :goto_18

    .line 383
    :cond_3c
    move/from16 v23, v5

    if-eqz v23, :cond_3f

    .line 384
    move/from16 v23, v14

    move/from16 v24, v16

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 388
    :goto_1a
    move/from16 v23, v17

    if-lez v23, :cond_3d

    move/from16 v23, v17

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3d

    .line 389
    move/from16 v23, v5

    if-eqz v23, :cond_40

    .line 390
    move/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 396
    :cond_3d
    :goto_1b
    move/from16 v23, v5

    if-eqz v23, :cond_41

    .line 397
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 402
    :goto_1c
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    move/from16 v23, v0

    move/from16 v20, v23

    .line 403
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v23, v0

    sget-object v24, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3e

    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3e

    .line 405
    move/from16 v23, v20

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v20, v23

    .line 408
    :cond_3e
    move/from16 v23, v5

    if-eqz v23, :cond_42

    .line 409
    move/from16 v23, v14

    move/from16 v24, v20

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 414
    :goto_1d
    move/from16 v23, v5

    if-eqz v23, :cond_43

    .line 415
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 419
    :goto_1e
    move/from16 v23, v17

    move/from16 v24, v11

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3b

    move/from16 v23, v17

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3b

    .line 420
    move/from16 v23, v5

    if-eqz v23, :cond_44

    .line 421
    move/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_19

    .line 386
    :cond_3f
    move/from16 v23, v14

    move/from16 v24, v16

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_1a

    .line 392
    :cond_40
    move/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_1b

    .line 399
    :cond_41
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    goto/16 :goto_1c

    .line 411
    :cond_42
    move/from16 v23, v14

    move/from16 v24, v20

    add-int v23, v23, v24

    move/from16 v14, v23

    goto :goto_1d

    .line 417
    :cond_43
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_1e

    .line 423
    :cond_44
    move/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_19

    .line 427
    :cond_45
    goto/16 :goto_17

    :cond_46
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->chainStyle:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_37

    .line 428
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    move/from16 v23, v0

    if-nez v23, :cond_4c

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v23

    .line 429
    :goto_1f
    move/from16 v16, v23

    .line 430
    move/from16 v23, v5

    if-eqz v23, :cond_47

    .line 431
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v24, v16

    sub-float v23, v23, v24

    move/from16 v16, v23

    .line 433
    :cond_47
    const/high16 v23, 0x3f000000    # 0.5f

    move/from16 v24, v6

    move/from16 v25, v7

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v16

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v17, v23

    .line 434
    move/from16 v23, v17

    if-ltz v23, :cond_48

    move/from16 v23, v8

    if-lez v23, :cond_49

    .line 435
    :cond_48
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 437
    :cond_49
    move/from16 v23, v5

    if-eqz v23, :cond_4d

    .line 438
    move/from16 v23, v14

    move/from16 v24, v17

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 442
    :goto_20
    const/16 v23, 0x0

    move/from16 v18, v23

    :goto_21
    move/from16 v23, v18

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_37

    .line 443
    move/from16 v23, v18

    move/from16 v19, v23

    .line 444
    move/from16 v23, v5

    if-eqz v23, :cond_4a

    .line 445
    move/from16 v23, v11

    move/from16 v24, v18

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    sub-int v23, v23, v24

    move/from16 v19, v23

    .line 447
    :cond_4a
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    move-object/from16 v20, v23

    .line 448
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4e

    .line 449
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 450
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 442
    :cond_4b
    :goto_22
    add-int/lit8 v18, v18, 0x1

    goto :goto_21

    .line 428
    :cond_4c
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    .line 429
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v23

    goto/16 :goto_1f

    .line 440
    :cond_4d
    move/from16 v23, v14

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v14, v23

    goto :goto_20

    .line 453
    :cond_4e
    move/from16 v23, v18

    if-lez v23, :cond_4f

    move/from16 v23, v18

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_4f

    .line 454
    move/from16 v23, v5

    if-eqz v23, :cond_51

    .line 455
    move/from16 v23, v14

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 460
    :cond_4f
    :goto_23
    move/from16 v23, v5

    if-eqz v23, :cond_52

    .line 461
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 466
    :goto_24
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    move/from16 v23, v0

    move/from16 v21, v23

    .line 467
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v23, v0

    sget-object v24, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_50

    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_50

    .line 469
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    move/from16 v23, v0

    move/from16 v21, v23

    .line 471
    :cond_50
    move/from16 v23, v5

    if-eqz v23, :cond_53

    .line 472
    move/from16 v23, v14

    move/from16 v24, v21

    sub-int v23, v23, v24

    move/from16 v14, v23

    .line 477
    :goto_25
    move/from16 v23, v5

    if-eqz v23, :cond_54

    .line 478
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 482
    :goto_26
    move/from16 v23, v18

    move/from16 v24, v11

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4b

    move/from16 v23, v18

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4b

    .line 483
    move/from16 v23, v5

    if-eqz v23, :cond_55

    .line 484
    move/from16 v23, v14

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_22

    .line 457
    :cond_51
    move/from16 v23, v14

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_23

    .line 463
    :cond_52
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    goto/16 :goto_24

    .line 474
    :cond_53
    move/from16 v23, v14

    move/from16 v24, v21

    add-int v23, v23, v24

    move/from16 v14, v23

    goto :goto_25

    .line 480
    :cond_54
    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_26

    .line 486
    :cond_55
    move/from16 v23, v14

    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v14, v23

    goto/16 :goto_22
.end method
