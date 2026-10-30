.class Landroidx/transition/GhostViewPort;
.super Landroid/view/ViewGroup;
.source "GhostViewPort.java"

# interfaces
.implements Landroidx/transition/GhostView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mReferences:I

.field mStartParent:Landroid/view/ViewGroup;

.field mStartView:Landroid/view/View;

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 51
    move-object v2, v0

    new-instance v3, Landroidx/transition/GhostViewPort$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/transition/GhostViewPort$1;-><init>(Landroidx/transition/GhostViewPort;)V

    iput-object v3, v2, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 69
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/transition/GhostViewPort;->setWillNotDraw(Z)V

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/transition/GhostViewPort;->setClipChildren(Z)V

    .line 72
    move-object v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/transition/GhostViewPort;->setLayerType(ILandroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewPort;
    .locals 11

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-nez v7, :cond_0

    .line 165
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 167
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Landroidx/transition/GhostViewHolder;->getHolder(Landroid/view/ViewGroup;)Landroidx/transition/GhostViewHolder;

    move-result-object v7

    move-object v3, v7

    .line 168
    move-object v7, v0

    invoke-static {v7}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    move-result-object v7

    move-object v4, v7

    .line 169
    const/4 v7, 0x0

    move v5, v7

    .line 170
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 171
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/transition/GhostViewPort;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/transition/GhostViewHolder;

    move-object v6, v7

    .line 172
    move-object v7, v6

    move-object v8, v3

    if-eq v7, v8, :cond_1

    .line 173
    move-object v7, v4

    iget v7, v7, Landroidx/transition/GhostViewPort;->mReferences:I

    move v5, v7

    .line 174
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/transition/GhostViewHolder;->removeView(Landroid/view/View;)V

    .line 175
    const/4 v7, 0x0

    move-object v4, v7

    .line 178
    :cond_1
    move-object v7, v4

    if-nez v7, :cond_5

    .line 179
    move-object v7, v2

    if-nez v7, :cond_2

    .line 180
    new-instance v7, Landroid/graphics/Matrix;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v7

    .line 181
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroidx/transition/GhostViewPort;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 183
    :cond_2
    new-instance v7, Landroidx/transition/GhostViewPort;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/transition/GhostViewPort;-><init>(Landroid/view/View;)V

    move-object v4, v7

    .line 184
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/transition/GhostViewPort;->setMatrix(Landroid/graphics/Matrix;)V

    .line 185
    move-object v7, v3

    if-nez v7, :cond_4

    .line 186
    new-instance v7, Landroidx/transition/GhostViewHolder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/transition/GhostViewHolder;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v7

    .line 190
    :goto_0
    move-object v7, v1

    move-object v8, v3

    invoke-static {v7, v8}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 191
    move-object v7, v1

    move-object v8, v4

    invoke-static {v7, v8}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 192
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/transition/GhostViewHolder;->addGhostView(Landroidx/transition/GhostViewPort;)V

    .line 193
    move-object v7, v4

    move v8, v5

    iput v8, v7, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 197
    :cond_3
    :goto_1
    move-object v7, v4

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroidx/transition/GhostViewPort;->mReferences:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 198
    move-object v7, v4

    move-object v0, v7

    return-object v0

    .line 188
    :cond_4
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/transition/GhostViewHolder;->popToOverlayTop()V

    goto :goto_0

    .line 194
    :cond_5
    move-object v7, v2

    if-eqz v7, :cond_3

    .line 195
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/transition/GhostViewPort;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method static calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 157
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 158
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 159
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v4

    .line 160
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 161
    return-void
.end method

.method static copySize(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v1

    .line 141
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object v4, v1

    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v1

    .line 143
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object v6, v1

    .line 144
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 140
    invoke-static {v2, v3, v4, v5, v6}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 145
    return-void
.end method

.method static getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;
    .locals 3

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, v0

    sget v2, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/GhostViewPort;

    move-object v0, v1

    return-object v0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    move-result-object v3

    move-object v1, v3

    .line 203
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 204
    move-object v3, v1

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/transition/GhostViewPort;->mReferences:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 205
    move-object v3, v1

    iget v3, v3, Landroidx/transition/GhostViewPort;->mReferences:I

    if-gtz v3, :cond_0

    .line 206
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/transition/GhostViewPort;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/transition/GhostViewHolder;

    move-object v2, v3

    .line 207
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/GhostViewHolder;->removeView(Landroid/view/View;)V

    .line 210
    :cond_0
    return-void
.end method

.method static setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/GhostViewPort;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    sget v3, Landroidx/transition/R$id;->ghost_view:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 102
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/transition/GhostViewPort;->setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V

    .line 104
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 106
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 107
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 110
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 115
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 116
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/transition/GhostViewPort;->setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V

    .line 117
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 120
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 121
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 125
    move-object v1, p0

    move-object v2, p1

    move-object v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroidx/transition/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 126
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 131
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 132
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 133
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 135
    move-object v3, v1

    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/transition/GhostViewPort;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/transition/GhostViewPort;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 136
    move-object v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/transition/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 137
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    .line 96
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    .line 97
    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    .line 91
    return-void
.end method

.method public setVisibility(I)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    move-result-object v3

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 79
    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x4

    :goto_0
    move v2, v3

    .line 80
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    move v4, v2

    invoke-static {v3, v4}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 82
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
