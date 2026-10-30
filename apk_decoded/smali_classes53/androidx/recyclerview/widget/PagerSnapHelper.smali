.class public Landroidx/recyclerview/widget/PagerSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    move-object v6, v2

    move-object v7, v1

    .line 201
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v3, v5

    .line 202
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v4, v5

    .line 203
    move v5, v3

    move v6, v4

    sub-int/2addr v5, v6

    move v0, v5

    return v0
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    move v3, v11

    .line 219
    move v11, v3

    if-nez v11, :cond_0

    .line 220
    const/4 v11, 0x0

    move-object v0, v11

    .line 239
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const/4 v11, 0x0

    move-object v4, v11

    .line 224
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    move-object v12, v2

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v5, v11

    .line 225
    const v11, 0x7fffffff

    move v6, v11

    .line 227
    const/4 v11, 0x0

    move v7, v11

    :goto_1
    move v11, v7

    move v12, v3

    if-ge v11, v12, :cond_2

    .line 228
    move-object v11, v1

    move v12, v7

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 229
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v2

    move-object v13, v8

    .line 230
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v9, v11

    .line 231
    move v11, v9

    move v12, v5

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    move v10, v11

    .line 234
    move v11, v10

    move v12, v6

    if-ge v11, v12, :cond_1

    .line 235
    move v11, v10

    move v6, v11

    .line 236
    move-object v11, v8

    move-object v4, v11

    .line 227
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 239
    :cond_2
    move-object v11, v4

    move-object v0, v11

    goto :goto_0
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 265
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 267
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v0, v2

    return-object v0
.end method

.method private getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    move-object v0, v2

    .line 249
    :goto_0
    return-object v0

    .line 246
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 249
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 256
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 258
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v0, v2

    return-object v0
.end method

.method private isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    move v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 150
    :goto_1
    return v0

    .line 148
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 150
    :cond_1
    move v4, v3

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 8

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v5

    move v2, v5

    .line 156
    move-object v5, v1

    instance-of v5, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v5, :cond_2

    .line 157
    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    move-object v3, v5

    .line 159
    move-object v5, v3

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v5

    move-object v4, v5

    .line 160
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 161
    move-object v5, v4

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    move-object v5, v4

    iget v5, v5, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 164
    :goto_1
    return v0

    .line 161
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 164
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 52
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    .line 54
    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v8

    .line 53
    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v6

    aput v6, v4, v5

    .line 59
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    .line 61
    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v8

    .line 60
    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v6

    aput v6, v4, v5

    .line 65
    :goto_1
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 56
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_0

    .line 63
    :cond_1
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_1
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v2, :cond_0

    .line 172
    const/4 v2, 0x0

    move-object v0, v2

    .line 174
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/PagerSnapHelper$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/PagerSnapHelper$1;-><init>(Landroidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 76
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 21

    .prologue
    .line 82
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v17

    move/from16 v6, v17

    .line 83
    move/from16 v17, v6

    if-nez v17, :cond_0

    .line 84
    const/16 v17, -0x1

    move/from16 v2, v17

    .line 142
    :goto_0
    return v2

    .line 87
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v18}, Landroidx/recyclerview/widget/PagerSnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v17

    move-object/from16 v7, v17

    .line 88
    move-object/from16 v17, v7

    if-nez v17, :cond_1

    .line 89
    const/16 v17, -0x1

    move/from16 v2, v17

    goto :goto_0

    .line 93
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 94
    const/high16 v17, -0x80000000

    move/from16 v9, v17

    .line 95
    const/16 v17, 0x0

    move-object/from16 v10, v17

    .line 96
    const v17, 0x7fffffff

    move/from16 v11, v17

    .line 99
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v17

    move/from16 v12, v17

    .line 100
    const/16 v17, 0x0

    move/from16 v13, v17

    :goto_1
    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 101
    move-object/from16 v17, v3

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v14, v17

    .line 102
    move-object/from16 v17, v14

    if-nez v17, :cond_3

    .line 100
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 105
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    move-object/from16 v19, v7

    invoke-direct/range {v17 .. v19}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v17

    move/from16 v15, v17

    .line 107
    move/from16 v17, v15

    if-gtz v17, :cond_4

    move/from16 v17, v15

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 109
    move/from16 v17, v15

    move/from16 v9, v17

    .line 110
    move-object/from16 v17, v14

    move-object/from16 v8, v17

    .line 112
    :cond_4
    move/from16 v17, v15

    if-ltz v17, :cond_2

    move/from16 v17, v15

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 114
    move/from16 v17, v15

    move/from16 v11, v17

    .line 115
    move-object/from16 v17, v14

    move-object/from16 v10, v17

    goto :goto_2

    .line 120
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-direct/range {v17 .. v20}, Landroidx/recyclerview/widget/PagerSnapHelper;->isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result v17

    move/from16 v13, v17

    .line 121
    move/from16 v17, v13

    if-eqz v17, :cond_6

    move-object/from16 v17, v10

    if-eqz v17, :cond_6

    .line 122
    move-object/from16 v17, v3

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v2, v17

    goto/16 :goto_0

    .line 123
    :cond_6
    move/from16 v17, v13

    if-nez v17, :cond_7

    move-object/from16 v17, v8

    if-eqz v17, :cond_7

    .line 124
    move-object/from16 v17, v3

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v2, v17

    goto/16 :goto_0

    .line 131
    :cond_7
    move/from16 v17, v13

    if-eqz v17, :cond_8

    move-object/from16 v17, v8

    :goto_3
    move-object/from16 v14, v17

    .line 132
    move-object/from16 v17, v14

    if-nez v17, :cond_9

    .line 133
    const/16 v17, -0x1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 131
    :cond_8
    move-object/from16 v17, v10

    goto :goto_3

    .line 135
    :cond_9
    move-object/from16 v17, v3

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 136
    move/from16 v17, v15

    .line 137
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Landroidx/recyclerview/widget/PagerSnapHelper;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v18

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v18, -0x1

    :goto_4
    add-int v17, v17, v18

    move/from16 v16, v17

    .line 139
    move/from16 v17, v16

    if-ltz v17, :cond_a

    move/from16 v17, v16

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    .line 140
    :cond_a
    const/16 v17, -0x1

    move/from16 v2, v17

    goto/16 :goto_0

    .line 137
    :cond_b
    const/16 v18, 0x1

    goto :goto_4

    .line 142
    :cond_c
    move/from16 v17, v16

    move/from16 v2, v17

    goto/16 :goto_0
.end method
