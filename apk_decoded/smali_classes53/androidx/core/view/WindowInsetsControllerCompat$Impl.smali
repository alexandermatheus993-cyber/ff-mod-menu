.class Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 343
    return-void
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method getSystemBarsBehavior()I
    .locals 2

    .prologue
    .line 360
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method hide(I)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .locals 2

    .prologue
    .line 371
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 0
    .param p1    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 384
    return-void
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method show(I)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method
