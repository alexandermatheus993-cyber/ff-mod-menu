.class Landroidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mWindow:Landroid/view/Window;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 396
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 397
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 398
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 399
    return-void
.end method

.method private hideForType(I)V
    .locals 5

    .prologue
    .line 468
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 482
    :goto_0
    return-void

    .line 470
    :sswitch_0
    move-object v2, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 471
    move-object v2, v0

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setWindowFlag(I)V

    .line 472
    goto :goto_0

    .line 474
    :sswitch_1
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 475
    goto :goto_0

    .line 477
    :sswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 478
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 479
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v2

    goto :goto_0

    .line 468
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private showForType(I)V
    .locals 10

    .prologue
    .line 413
    move-object v0, p0

    move v1, p1

    move v4, v1

    sparse-switch v4, :sswitch_data_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 415
    :sswitch_0
    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 416
    move-object v4, v0

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetWindowFlag(I)V

    .line 417
    goto :goto_0

    .line 419
    :sswitch_1
    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 420
    goto :goto_0

    .line 423
    :sswitch_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    move-object v2, v4

    .line 426
    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v4

    .line 436
    :goto_1
    move-object v4, v2

    if-nez v4, :cond_2

    .line 437
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 440
    :cond_2
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    move-object v4, v2

    move-object v3, v4

    .line 442
    move-object v4, v3

    new-instance v5, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20$1;-><init>(Landroidx/core/view/WindowInsetsControllerCompat$Impl20;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_0

    .line 432
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method addOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;)V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method getSystemBarsBehavior()I
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method hide(I)V
    .locals 5

    .prologue
    .line 458
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    const/16 v4, 0x100

    if-gt v3, v4, :cond_1

    .line 460
    move v3, v1

    move v4, v2

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 459
    :goto_1
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 463
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->hideForType(I)V

    goto :goto_1

    .line 465
    :cond_1
    return-void
.end method

.method removeOnControllableInsetsChangedListener(Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;)V
    .locals 0
    .param p1    # Landroidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 530
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method protected setSystemUiFlag(I)V
    .locals 6

    .prologue
    .line 485
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 486
    move-object v3, v2

    move-object v4, v2

    .line 487
    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    move v5, v1

    or-int/2addr v4, v5

    .line 486
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 489
    return-void
.end method

.method protected setWindowFlag(I)V
    .locals 4

    .prologue
    .line 499
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 500
    return-void
.end method

.method show(I)V
    .locals 5

    .prologue
    .line 403
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    const/16 v4, 0x100

    if-gt v3, v4, :cond_1

    .line 405
    move v3, v1

    move v4, v2

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 404
    :goto_1
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 408
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->showForType(I)V

    goto :goto_1

    .line 410
    :cond_1
    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .locals 7

    .prologue
    .line 492
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 493
    move-object v3, v2

    move-object v4, v2

    .line 494
    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    .line 493
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 496
    return-void
.end method

.method protected unsetWindowFlag(I)V
    .locals 4

    .prologue
    .line 503
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 504
    return-void
.end method
