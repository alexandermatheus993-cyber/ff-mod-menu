.class Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;
.super Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.source "HelperReferences.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 25
    return-void
.end method

.method private addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 45
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    return-void
.end method


# virtual methods
.method apply()V
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v7, :cond_0

    .line 51
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 52
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v7, Landroidx/constraintlayout/solver/widgets/Barrier;

    move-object v1, v7

    .line 53
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/Barrier;->getBarrierType()I

    move-result v7

    move v2, v7

    .line 54
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v7

    move v3, v7

    .line 55
    move v7, v2

    packed-switch v7, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 58
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v7, v8, :cond_2

    .line 59
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 60
    move v7, v3

    if-nez v7, :cond_1

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 58
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    :cond_1
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v6, v7

    .line 64
    move-object v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 65
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    .line 68
    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 69
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 70
    goto :goto_0

    .line 72
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 73
    const/4 v7, 0x0

    move v4, v7

    :goto_3
    move v7, v4

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v7, v8, :cond_4

    .line 74
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 75
    move v7, v3

    if-nez v7, :cond_3

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 73
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 78
    :cond_3
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v6, v7

    .line 79
    move-object v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 80
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_4

    .line 83
    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 84
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 85
    goto/16 :goto_0

    .line 87
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 88
    const/4 v7, 0x0

    move v4, v7

    :goto_5
    move v7, v4

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v7, v8, :cond_6

    .line 89
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 90
    move v7, v3

    if-nez v7, :cond_5

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    .line 88
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 93
    :cond_5
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v6, v7

    .line 94
    move-object v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 95
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_6

    .line 98
    :cond_6
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 99
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 100
    goto/16 :goto_0

    .line 102
    :pswitch_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 103
    const/4 v7, 0x0

    move v4, v7

    :goto_7
    move v7, v4

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v7, v8, :cond_8

    .line 104
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 105
    move v7, v3

    if-nez v7, :cond_7

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_7

    .line 103
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 108
    :cond_7
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v6, v7

    .line 109
    move-object v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 110
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_8

    .line 113
    :cond_8
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 114
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    goto/16 :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public applyToWidget()V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v3, :cond_1

    .line 145
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Barrier;

    move-object v1, v3

    .line 146
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Barrier;->getBarrierType()I

    move-result v3

    move v2, v3

    .line 147
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 149
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setX(I)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setY(I)V

    goto :goto_0
.end method

.method clear()V
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->runGroup:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 30
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->clear()V

    .line 31
    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 36
    return-void
.end method

.method supportsWrapComputation()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public update(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .locals 12

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v9, Landroidx/constraintlayout/solver/widgets/Barrier;

    move-object v2, v9

    .line 123
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Barrier;->getBarrierType()I

    move-result v9

    move v3, v9

    .line 125
    const/4 v9, -0x1

    move v4, v9

    .line 126
    const/4 v9, 0x0

    move v5, v9

    .line 127
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_0
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v7, v9

    .line 128
    move-object v9, v7

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v8, v9

    .line 129
    move v9, v4

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    move v9, v8

    move v10, v4

    if-ge v9, v10, :cond_1

    .line 130
    :cond_0
    move v9, v8

    move v4, v9

    .line 132
    :cond_1
    move v9, v5

    move v10, v8

    if-ge v9, v10, :cond_2

    .line 133
    move v9, v8

    move v5, v9

    .line 135
    :cond_2
    goto :goto_0

    .line 136
    :cond_3
    move v9, v3

    if-eqz v9, :cond_4

    move v9, v3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 137
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move v10, v4

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Barrier;->getMargin()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 141
    :goto_1
    return-void

    .line 139
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move v10, v5

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Barrier;->getMargin()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_1
.end method
