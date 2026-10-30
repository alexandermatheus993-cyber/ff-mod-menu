.class Landroidx/transition/Visibility$DisappearListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;
.implements Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSuppressLayout:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 536
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 539
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 540
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 541
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v4, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    .line 542
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroidx/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    .line 544
    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 545
    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 3

    .prologue
    .line 609
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v1, :cond_0

    .line 611
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    move-object v2, v0

    iget v2, v2, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v1, v2}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 612
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 613
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 617
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 618
    return-void
.end method

.method private suppressLayout(Z)V
    .locals 4

    .prologue
    .line 621
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 622
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 623
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 625
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 568
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 581
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v2, :cond_0

    .line 552
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v2, v3}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 554
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v2, :cond_0

    .line 561
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 563
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 596
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 590
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 591
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v2

    .line 592
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 600
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 601
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 605
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 606
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 586
    return-void
.end method
