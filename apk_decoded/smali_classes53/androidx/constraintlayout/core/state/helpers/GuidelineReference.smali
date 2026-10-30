.class public Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
.super Ljava/lang/Object;
.source "GuidelineReference.java"

# interfaces
.implements Landroidx/constraintlayout/core/state/Reference;


# instance fields
.field private key:Ljava/lang/Object;

.field private mEnd:I

.field private mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

.field private mOrientation:I

.field private mPercent:F

.field private mStart:I

.field final mState:Landroidx/constraintlayout/core/state/State;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    .line 30
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    .line 31
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    .line 43
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/core/state/State;

    .line 44
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mOrientation:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    .line 74
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 75
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideBegin(I)V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 77
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 79
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0
.end method

.method public end(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    .line 54
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/core/state/State;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    .line 56
    return-void
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v1, :cond_0

    .line 86
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    .line 88
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v0, v1

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public percent(F)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    .line 60
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    .line 61
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    .line 62
    return-void
.end method

.method public setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v2, :cond_0

    .line 94
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/core/widgets/Guideline;

    iput-object v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    goto :goto_0
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mOrientation:I

    .line 66
    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/core/state/State;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    .line 48
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    .line 50
    return-void
.end method
