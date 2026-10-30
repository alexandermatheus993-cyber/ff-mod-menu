.class public Landroidx/constraintlayout/solver/widgets/HelperWidget;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "HelperWidget.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/Helper;


# instance fields
.field public mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mWidgetsCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 14
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 15
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 32
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 34
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 35
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    .line 36
    goto :goto_0
.end method

.method public addDependents(Ljava/util/ArrayList;ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ">;I",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v6, v7, :cond_0

    .line 59
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 60
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v6

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v6, v7, :cond_1

    .line 63
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 64
    move-object v6, v5

    move v7, v2

    move-object v8, v1

    move-object v9, v3

    invoke-static {v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v6

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 66
    :cond_1
    return-void
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 41
    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-object v3, v6

    .line 42
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    .line 43
    move-object v6, v3

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    move v4, v6

    .line 44
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 45
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public findGroupInDependents(I)I
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v4, v5, :cond_2

    .line 70
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 71
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 72
    move-object v4, v3

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    move v0, v4

    .line 78
    :goto_1
    return v0

    .line 74
    :cond_0
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v4, v3

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 75
    move-object v4, v3

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    move v0, v4

    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method public removeAllIds()V
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    .line 54
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public updateConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method
