.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# instance fields
.field private mAlpha:F

.field private final mDurationMillis:J

.field private mFraction:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTypeMask:I


# direct methods
.method constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 9
    .param p2    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 537
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 538
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mTypeMask:I

    .line 539
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 540
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mDurationMillis:J

    .line 541
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 2

    .prologue
    .line 568
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mAlpha:F

    move v0, v1

    return v0
.end method

.method public getDurationMillis()J
    .locals 3

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mDurationMillis:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getFraction()F
    .locals 2

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mFraction:F

    move v0, v1

    return v0
.end method

.method public getInterpolatedFraction()F
    .locals 3

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    .line 553
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v2, v0

    iget v2, v2, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mFraction:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    move v0, v1

    .line 555
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mFraction:F

    move v0, v1

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v1

    return-object v0
.end method

.method public getTypeMask()I
    .locals 2

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mTypeMask:I

    move v0, v1

    return v0
.end method

.method public setAlpha(F)V
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mAlpha:F

    .line 577
    return-void
.end method

.method public setFraction(F)V
    .locals 4

    .prologue
    .line 572
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->mFraction:F

    .line 573
    return-void
.end method
