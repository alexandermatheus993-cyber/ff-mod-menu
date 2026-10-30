.class Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "GuidelineReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 26
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 27
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 28
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->orientation:I

    .line 29
    return-void
.end method

.method private addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 49
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 50
    return-void
.end method


# virtual methods
.method apply()V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v1, v5

    .line 70
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v5

    move v2, v5

    .line 71
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v5

    move v3, v5

    .line 72
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    move-result v5

    move v4, v5

    .line 73
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 74
    move v5, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 75
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 76
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 77
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 88
    :goto_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-direct {v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 89
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-direct {v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 108
    :goto_1
    return-void

    .line 78
    :cond_0
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 79
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 80
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 81
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move v6, v3

    neg-int v6, v6

    iput v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    goto :goto_0

    .line 83
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 84
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 85
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 91
    :cond_2
    move v5, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 92
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 93
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 94
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 105
    :goto_2
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-direct {v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 106
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-direct {v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/16 :goto_1

    .line 95
    :cond_3
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 96
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 97
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 98
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move v6, v3

    neg-int v6, v6

    iput v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    goto :goto_2

    .line 100
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 101
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 102
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2
.end method

.method public applyToWidget()V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v2, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v1, v2

    .line 113
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 114
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    goto :goto_0
.end method

.method clear()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 34
    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 39
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 40
    return-void
.end method

.method supportsWrapComputation()Z
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    if-nez v5, :cond_0

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_1

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object v2, v5

    .line 62
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v3, v5

    .line 63
    const/high16 v5, 0x3f000000    # 0.5f

    move-object v6, v2

    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    int-to-float v6, v6

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 64
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 65
    goto :goto_0
.end method
