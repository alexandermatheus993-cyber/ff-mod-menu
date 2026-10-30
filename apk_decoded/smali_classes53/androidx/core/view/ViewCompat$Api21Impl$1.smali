.class Landroidx/core/view/ViewCompat$Api21Impl$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field mReturnedInsets:Landroid/view/WindowInsets;

.field final synthetic val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 5

    .prologue
    .line 4746
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/view/ViewCompat$Api21Impl$1;->val$v:Landroid/view/View;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/view/ViewCompat$Api21Impl$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 4747
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 4748
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/view/ViewCompat$Api21Impl$1;->mReturnedInsets:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .prologue
    .line 4753
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    move-object v3, v4

    .line 4755
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_1

    .line 4756
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/ViewCompat$Api21Impl$1;->val$v:Landroid/view/View;

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat$Api21Impl;->callCompatInsetAnimationCallback(Landroid/view/WindowInsets;Landroid/view/View;)V

    .line 4758
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4760
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewCompat$Api21Impl$1;->mReturnedInsets:Landroid/view/WindowInsets;

    move-object v0, v4

    .line 4778
    :goto_0
    return-object v0

    .line 4762
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 4764
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewCompat$Api21Impl$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    move-object v3, v4

    .line 4766
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_2

    .line 4767
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 4774
    :cond_2
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 4777
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/view/ViewCompat$Api21Impl$1;->mReturnedInsets:Landroid/view/WindowInsets;

    .line 4778
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/ViewCompat$Api21Impl$1;->mReturnedInsets:Landroid/view/WindowInsets;

    move-object v0, v4

    goto :goto_0
.end method
