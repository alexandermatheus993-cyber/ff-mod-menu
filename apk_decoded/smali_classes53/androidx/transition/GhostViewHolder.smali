.class Landroidx/transition/GhostViewHolder;
.super Landroid/widget/FrameLayout;
.source "GhostViewHolder.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mParent:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/transition/GhostViewHolder;->setClipChildren(Z)V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 41
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    sget v3, Landroidx/transition/R$id;->ghost_view_holder:I

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 42
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 43
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/transition/GhostViewHolder;->mAttached:Z

    .line 44
    return-void
.end method

.method static getHolder(Landroid/view/ViewGroup;)Landroidx/transition/GhostViewHolder;
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    sget v2, Landroidx/transition/R$id;->ghost_view_holder:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/GhostViewHolder;

    move-object v0, v1

    return-object v0
.end method

.method private getInsertIndex(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 106
    const/4 v7, 0x0

    move v3, v7

    .line 107
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .line 109
    :goto_0
    move v7, v3

    move v8, v4

    if-gt v7, v8, :cond_1

    .line 110
    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v5, v7

    .line 111
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/transition/GhostViewHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/transition/GhostViewPort;

    move-object v6, v7

    .line 112
    move-object v7, v6

    iget-object v7, v7, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    move-object v8, v2

    invoke-static {v7, v8}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 113
    move-object v7, v1

    move-object v8, v2

    invoke-static {v7, v8}, Landroidx/transition/GhostViewHolder;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    .line 118
    :goto_1
    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 119
    goto :goto_0

    .line 116
    :cond_0
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    goto :goto_1

    .line 121
    :cond_1
    move v7, v3

    move v0, v7

    return v0
.end method

.method private static getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 157
    move-object v3, v2

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 158
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 160
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 161
    return-void
.end method

.method private static isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .locals 10

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object v2, v8

    .line 171
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v3, v8

    .line 175
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1

    .line 176
    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getZ()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getZ()F

    move-result v9

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 177
    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getZ()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getZ()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v0, v8

    .line 197
    :goto_1
    return v0

    .line 177
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 184
    :cond_1
    const/4 v8, 0x1

    move v4, v8

    .line 185
    const/4 v8, 0x0

    move v5, v8

    :goto_2
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 186
    move-object v8, v2

    move v9, v5

    invoke-static {v8, v9}, Landroidx/transition/ViewGroupUtils;->getChildDrawingOrder(Landroid/view/ViewGroup;I)I

    move-result v8

    move v6, v8

    .line 187
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 188
    move-object v8, v7

    move-object v9, v0

    if-ne v8, v9, :cond_3

    .line 189
    const/4 v8, 0x0

    move v4, v8

    .line 197
    :cond_2
    :goto_3
    move v8, v4

    move v0, v8

    goto :goto_1

    .line 191
    :cond_3
    move-object v8, v7

    move-object v9, v1

    if-ne v8, v9, :cond_4

    .line 192
    const/4 v8, 0x1

    move v4, v8

    .line 193
    goto :goto_3

    .line 185
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    const/4 v7, 0x0

    .line 133
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 135
    :cond_0
    const/4 v6, 0x1

    move v0, v6

    .line 149
    :goto_0
    return v0

    .line 137
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v6

    .line 138
    const/4 v6, 0x1

    move v3, v6

    :goto_1
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 139
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v4, v6

    .line 140
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 142
    move-object v6, v4

    move-object v7, v5

    if-eq v6, v7, :cond_2

    .line 144
    move-object v6, v4

    move-object v7, v5

    invoke-static {v6, v7}, Landroidx/transition/GhostViewHolder;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    move v0, v6

    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    :cond_3
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method addGhostView(Landroidx/transition/GhostViewPort;)V
    .locals 8

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 89
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 91
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/transition/GhostViewHolder;->getInsertIndex(Ljava/util/ArrayList;)I

    move-result v4

    move v3, v4

    .line 92
    move v4, v3

    if-ltz v4, :cond_0

    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 93
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/GhostViewHolder;->addView(Landroid/view/View;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/transition/GhostViewHolder;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/transition/GhostViewHolder;->mAttached:Z

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This GhostViewHolder is detached!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 60
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/transition/GhostViewHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v1

    if-eq v2, v3, :cond_1

    :cond_0
    move-object v2, v0

    .line 61
    invoke-virtual {v2}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 62
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    sget v3, Landroidx/transition/R$id;->ghost_view_holder:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 63
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v2

    move-object v3, v0

    invoke-interface {v2, v3}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/transition/GhostViewHolder;->mAttached:Z

    .line 66
    :cond_2
    return-void
.end method

.method popToOverlayTop()V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/transition/GhostViewHolder;->mAttached:Z

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This GhostViewHolder is detached!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    .line 79
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 80
    return-void
.end method
