.class public Landroidx/recyclerview/widget/LinearSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


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
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F
    .locals 14

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const/4 v11, 0x0

    move-object v3, v11

    .line 223
    const/4 v11, 0x0

    move-object v4, v11

    .line 224
    const v11, 0x7fffffff

    move v5, v11

    .line 225
    const/high16 v11, -0x80000000

    move v6, v11

    .line 226
    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    move v7, v11

    .line 227
    move v11, v7

    if-nez v11, :cond_0

    .line 228
    const/high16 v11, 0x3f800000    # 1.0f

    move v0, v11

    .line 257
    :goto_0
    return v0

    .line 231
    :cond_0
    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_4

    .line 232
    move-object v11, v1

    move v12, v8

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v9, v11

    .line 233
    move-object v11, v1

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 234
    move v11, v10

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 231
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 237
    :cond_2
    move v11, v10

    move v12, v5

    if-ge v11, v12, :cond_3

    .line 238
    move v11, v10

    move v5, v11

    .line 239
    move-object v11, v9

    move-object v3, v11

    .line 241
    :cond_3
    move v11, v10

    move v12, v6

    if-le v11, v12, :cond_1

    .line 242
    move v11, v10

    move v6, v11

    .line 243
    move-object v11, v9

    move-object v4, v11

    goto :goto_2

    .line 246
    :cond_4
    move-object v11, v3

    if-eqz v11, :cond_5

    move-object v11, v4

    if-nez v11, :cond_6

    .line 247
    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    move v0, v11

    goto :goto_0

    .line 249
    :cond_6
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v2

    move-object v13, v4

    .line 250
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 249
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 251
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    move-object v12, v2

    move-object v13, v4

    .line 252
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    .line 251
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v9, v11

    .line 253
    move v11, v9

    move v12, v8

    sub-int/2addr v11, v12

    move v10, v11

    .line 254
    move v11, v10

    if-nez v11, :cond_7

    .line 255
    const/high16 v11, 0x3f800000    # 1.0f

    move v0, v11

    goto :goto_0

    .line 257
    :cond_7
    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v10

    int-to-float v12, v12

    mul-float/2addr v11, v12

    move v12, v6

    move v13, v5

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    move v0, v11

    goto :goto_0
.end method

.method private distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    move-object v6, v2

    move-object v7, v1

    .line 143
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v3, v5

    .line 144
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

    .line 145
    move v5, v3

    move v6, v4

    sub-int/2addr v5, v6

    move v0, v5

    return v0
.end method

.method private estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I
    .locals 11

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v8, v0

    move v9, v3

    move v10, v4

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object v8

    move-object v5, v8

    .line 162
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/recyclerview/widget/LinearSnapHelper;->computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v8

    move v6, v8

    .line 163
    move v8, v6

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 164
    const/4 v8, 0x0

    move v0, v8

    .line 168
    :goto_0
    return v0

    .line 167
    :cond_0
    move-object v8, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v8, v9, :cond_1

    move-object v8, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    :goto_1
    move v7, v8

    .line 168
    move v8, v7

    int-to-float v8, v8

    move v9, v6

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v0, v8

    goto :goto_0

    .line 167
    :cond_1
    move-object v8, v5

    const/4 v9, 0x1

    aget v8, v8, v9

    goto :goto_1
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    move v3, v11

    .line 184
    move v11, v3

    if-nez v11, :cond_0

    .line 185
    const/4 v11, 0x0

    move-object v0, v11

    .line 204
    :goto_0
    return-object v0

    .line 188
    :cond_0
    const/4 v11, 0x0

    move-object v4, v11

    .line 189
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

    .line 190
    const v11, 0x7fffffff

    move v6, v11

    .line 192
    const/4 v11, 0x0

    move v7, v11

    :goto_1
    move v11, v7

    move v12, v3

    if-ge v11, v12, :cond_2

    .line 193
    move-object v11, v1

    move v12, v7

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 194
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v2

    move-object v13, v8

    .line 195
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    move v9, v11

    .line 196
    move v11, v9

    move v12, v5

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    move v10, v11

    .line 199
    move v11, v10

    move v12, v6

    if-ge v11, v12, :cond_1

    .line 200
    move v11, v10

    move v6, v11

    .line 201
    move-object v11, v8

    move-object v4, v11

    .line 192
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 204
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
    .line 271
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 272
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 274
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v0, v2

    return-object v0
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
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 263
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 265
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v0, v2

    return-object v0
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

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 47
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    .line 49
    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v8

    .line 48
    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/LinearSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v6

    aput v6, v4, v5

    .line 54
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    .line 56
    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v8

    .line 55
    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/LinearSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v6

    aput v6, v4, v5

    .line 60
    :goto_1
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 51
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_0

    .line 58
    :cond_1
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 6

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/LinearSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/LinearSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 138
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 18

    .prologue
    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v13, v1

    instance-of v13, v13, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v13, :cond_0

    .line 67
    const/4 v13, -0x1

    move v0, v13

    .line 128
    :goto_0
    return v0

    .line 70
    :cond_0
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v13

    move v4, v13

    .line 71
    move v13, v4

    if-nez v13, :cond_1

    .line 72
    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 75
    :cond_1
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v13

    move-object v5, v13

    .line 76
    move-object v13, v5

    if-nez v13, :cond_2

    .line 77
    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 80
    :cond_2
    move-object v13, v1

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    move v6, v13

    .line 81
    move v13, v6

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 82
    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 85
    :cond_3
    move-object v13, v1

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    move-object v7, v13

    .line 90
    move-object v13, v7

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v13, v14}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v13

    move-object v8, v13

    .line 91
    move-object v13, v8

    if-nez v13, :cond_4

    .line 93
    const/4 v13, -0x1

    move v0, v13

    goto :goto_0

    .line 97
    :cond_4
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 98
    move-object v13, v0

    move-object v14, v1

    move-object v15, v0

    move-object/from16 v16, v1

    .line 99
    invoke-direct/range {v15 .. v16}, Landroidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v15

    move/from16 v16, v2

    const/16 v17, 0x0

    .line 98
    invoke-direct/range {v13 .. v17}, Landroidx/recyclerview/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I

    move-result v13

    move v10, v13

    .line 100
    move-object v13, v8

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 101
    move v13, v10

    neg-int v13, v13

    move v10, v13

    .line 106
    :cond_5
    :goto_1
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 107
    move-object v13, v0

    move-object v14, v1

    move-object v15, v0

    move-object/from16 v16, v1

    .line 108
    invoke-direct/range {v15 .. v16}, Landroidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v3

    .line 107
    invoke-direct/range {v13 .. v17}, Landroidx/recyclerview/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I

    move-result v13

    move v9, v13

    .line 109
    move-object v13, v8

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    .line 110
    move v13, v9

    neg-int v13, v13

    move v9, v13

    .line 116
    :cond_6
    :goto_2
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v13

    if-eqz v13, :cond_9

    move v13, v9

    :goto_3
    move v11, v13

    .line 117
    move v13, v11

    if-nez v13, :cond_a

    .line 118
    const/4 v13, -0x1

    move v0, v13

    goto/16 :goto_0

    .line 104
    :cond_7
    const/4 v13, 0x0

    move v10, v13

    goto :goto_1

    .line 113
    :cond_8
    const/4 v13, 0x0

    move v9, v13

    goto :goto_2

    .line 116
    :cond_9
    move v13, v10

    goto :goto_3

    .line 121
    :cond_a
    move v13, v6

    move v14, v11

    add-int/2addr v13, v14

    move v12, v13

    .line 122
    move v13, v12

    if-gez v13, :cond_b

    .line 123
    const/4 v13, 0x0

    move v12, v13

    .line 125
    :cond_b
    move v13, v12

    move v14, v4

    if-lt v13, v14, :cond_c

    .line 126
    move v13, v4

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v12, v13

    .line 128
    :cond_c
    move v13, v12

    move v0, v13

    goto/16 :goto_0
.end method
