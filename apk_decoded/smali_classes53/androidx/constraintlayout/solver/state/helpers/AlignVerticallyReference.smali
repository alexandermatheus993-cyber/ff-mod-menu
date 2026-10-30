.class public Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;
.super Landroidx/constraintlayout/solver/state/HelperReference;
.source "AlignVerticallyReference.java"


# instance fields
.field private mBias:F

.field private mBottomToBottom:Ljava/lang/Object;

.field private mBottomToTop:Ljava/lang/Object;

.field private mTopToBottom:Ljava/lang/Object;

.field private mTopToTop:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/solver/state/HelperReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    .line 25
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBias:F

    .line 34
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 38
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mState:Landroidx/constraintlayout/solver/state/State;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    move-object v3, v4

    .line 39
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clearVertical()Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 40
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 41
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 47
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 48
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 54
    :goto_2
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBias:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 55
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBias:F

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 57
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 43
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    goto :goto_1

    .line 45
    :cond_2
    move-object v4, v3

    sget-object v5, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    goto :goto_1

    .line 49
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 50
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    goto :goto_2

    .line 52
    :cond_4
    move-object v4, v3

    sget-object v5, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    goto :goto_2

    .line 58
    :cond_5
    return-void
.end method

.method public bias(F)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBias:F

    return-void
.end method

.method public bottomToBottom(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    return-void
.end method

.method public bottomToTop(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    return-void
.end method

.method public topToBottom(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    return-void
.end method

.method public topToTop(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    return-void
.end method
