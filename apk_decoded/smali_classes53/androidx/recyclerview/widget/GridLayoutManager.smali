.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mUsingSpansToEstimateScrollBarDimensions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 44
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    move-object v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 86
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 44
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    move-object v5, v0

    new-instance v6, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 99
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 12

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 74
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 75
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 76
    return-void
.end method

.method private assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IZ)V
    .locals 18

    .prologue
    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v12, v4

    if-eqz v12, :cond_0

    .line 786
    const/4 v12, 0x0

    move v6, v12

    .line 787
    move v12, v3

    move v7, v12

    .line 788
    const/4 v12, 0x1

    move v8, v12

    .line 794
    :goto_0
    const/4 v12, 0x0

    move v5, v12

    .line 795
    move v12, v6

    move v9, v12

    :goto_1
    move v12, v9

    move v13, v7

    if-eq v12, v13, :cond_1

    .line 796
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 797
    move-object v12, v10

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v11, v12

    .line 798
    move-object v12, v11

    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    invoke-direct/range {v13 .. v16}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v13

    iput v13, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 799
    move-object v12, v11

    move v13, v5

    iput v13, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 800
    move v12, v5

    move-object v13, v11

    iget v13, v13, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v12, v13

    move v5, v12

    .line 795
    move v12, v9

    move v13, v8

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 790
    :cond_0
    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v6, v12

    .line 791
    const/4 v12, -0x1

    move v7, v12

    .line 792
    const/4 v12, -0x1

    move v8, v12

    goto :goto_0

    .line 802
    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 8

    .prologue
    .line 189
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    move v1, v5

    .line 190
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 191
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v3, v5

    .line 192
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    move v4, v5

    .line 193
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 6

    .prologue
    .line 314
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 315
    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 12

    .prologue
    .line 325
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    if-eqz v9, :cond_0

    move-object v9, v0

    array-length v9, v9

    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    if-ne v9, v10, :cond_0

    move-object v9, v0

    move-object v10, v0

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    move v10, v2

    if-eq v9, v10, :cond_1

    .line 327
    :cond_0
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v0, v9

    .line 329
    :cond_1
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 330
    move v9, v2

    move v10, v1

    div-int/2addr v9, v10

    move v3, v9

    .line 331
    move v9, v2

    move v10, v1

    rem-int/2addr v9, v10

    move v4, v9

    .line 332
    const/4 v9, 0x0

    move v5, v9

    .line 333
    const/4 v9, 0x0

    move v6, v9

    .line 334
    const/4 v9, 0x1

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v1

    if-gt v9, v10, :cond_3

    .line 335
    move v9, v3

    move v8, v9

    .line 336
    move v9, v6

    move v10, v4

    add-int/2addr v9, v10

    move v6, v9

    .line 337
    move v9, v6

    if-lez v9, :cond_2

    move v9, v1

    move v10, v6

    sub-int/2addr v9, v10

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 338
    add-int/lit8 v8, v8, 0x1

    .line 339
    move v9, v6

    move v10, v1

    sub-int/2addr v9, v10

    move v6, v9

    .line 341
    :cond_2
    move v9, v5

    move v10, v8

    add-int/2addr v9, v10

    move v5, v9

    .line 342
    move-object v9, v0

    move v10, v7

    move v11, v5

    aput v11, v9, v10

    .line 334
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 344
    :cond_3
    move-object v9, v0

    move-object v0, v9

    return-object v0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    return-void
.end method

.method private computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 21

    .prologue
    .line 1314
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 1315
    :cond_0
    const/16 v17, 0x0

    move/from16 v1, v17

    .line 1351
    :goto_0
    return v1

    .line 1317
    :cond_1
    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 1319
    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v17

    move/from16 v3, v17

    .line 1320
    move-object/from16 v17, v1

    move/from16 v18, v3

    if-nez v18, :cond_3

    const/16 v18, 0x1

    :goto_1
    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v17

    move-object/from16 v4, v17

    .line 1321
    move-object/from16 v17, v1

    move/from16 v18, v3

    if-nez v18, :cond_4

    const/16 v18, 0x1

    :goto_2
    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v17

    move-object/from16 v5, v17

    .line 1322
    move-object/from16 v17, v4

    if-eqz v17, :cond_2

    move-object/from16 v17, v5

    if-nez v17, :cond_5

    .line 1323
    :cond_2
    const/16 v17, 0x0

    move/from16 v1, v17

    goto :goto_0

    .line 1320
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 1321
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 1325
    :cond_5
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v17

    move/from16 v6, v17

    .line 1327
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v17

    move/from16 v7, v17

    .line 1330
    move/from16 v17, v6

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v8, v17

    .line 1331
    move/from16 v17, v6

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v9, v17

    .line 1332
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v10, v17

    .line 1335
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1336
    const/16 v17, 0x0

    move/from16 v18, v10

    move/from16 v19, v9

    sub-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1337
    :goto_3
    move/from16 v11, v17

    .line 1338
    move/from16 v17, v3

    if-nez v17, :cond_7

    .line 1339
    move/from16 v17, v11

    move/from16 v1, v17

    goto/16 :goto_0

    .line 1337
    :cond_6
    const/16 v17, 0x0

    move/from16 v18, v8

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto :goto_3

    .line 1341
    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    .line 1342
    invoke-virtual/range {v18 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v18

    sub-int v17, v17, v18

    .line 1341
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v12, v17

    .line 1344
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    .line 1345
    invoke-virtual/range {v18 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v17

    move/from16 v13, v17

    .line 1346
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v17

    move/from16 v14, v17

    .line 1348
    move/from16 v17, v14

    move/from16 v18, v13

    sub-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v15, v17

    .line 1349
    move/from16 v17, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 1351
    move/from16 v17, v11

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v16

    mul-float v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v18

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    .line 1352
    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    .line 1351
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v1, v17

    goto/16 :goto_0
.end method

.method private computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 12

    .prologue
    .line 1281
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 1282
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 1310
    :goto_0
    return v0

    .line 1284
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 1286
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v9

    move-object v2, v9

    .line 1287
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v9

    move-object v3, v9

    .line 1289
    move-object v9, v2

    if-eqz v9, :cond_2

    move-object v9, v3

    if-nez v9, :cond_5

    .line 1290
    :cond_2
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 1286
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 1287
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 1292
    :cond_5
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1293
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object v10, v1

    .line 1294
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 1293
    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v0, v9

    goto :goto_0

    .line 1298
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v2

    .line 1299
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    move v4, v9

    .line 1301
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object v10, v0

    move-object v11, v2

    .line 1302
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v9

    move v5, v9

    .line 1303
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v9

    move v6, v9

    .line 1305
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 1307
    move v9, v6

    move v10, v5

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v8, v9

    .line 1310
    move v9, v4

    int-to-float v9, v9

    move v10, v8

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v10, v7

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v0, v9

    goto/16 :goto_0
.end method

.method private ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 17

    .prologue
    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v11, v4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v5, v11

    .line 393
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    iget v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v11, v12, v13, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v11

    move v6, v11

    .line 394
    move v11, v5

    if-eqz v11, :cond_1

    .line 396
    :goto_1
    move v11, v6

    if-lez v11, :cond_3

    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v11, :cond_3

    .line 397
    move-object v11, v3

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 398
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    iget v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v11, v12, v13, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v11

    move v6, v11

    goto :goto_1

    .line 391
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 402
    :cond_1
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    .line 403
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move v8, v11

    .line 404
    move v11, v6

    move v9, v11

    .line 405
    :goto_2
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_2

    .line 406
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v11

    move v10, v11

    .line 407
    move v11, v10

    move v12, v9

    if-le v11, v12, :cond_2

    .line 408
    add-int/lit8 v8, v8, 0x1

    .line 409
    move v11, v10

    move v9, v11

    .line 413
    goto :goto_2

    .line 414
    :cond_2
    move-object v11, v3

    move v12, v8

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 416
    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 3

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v1, v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v1, v2, :cond_1

    .line 369
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 371
    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 9

    .prologue
    .line 467
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 468
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    .line 479
    :goto_0
    return v0

    .line 470
    :cond_0
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v5

    move v4, v5

    .line 471
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 476
    const-string v5, "GridLayoutManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find span size for pre layout position. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 477
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 479
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method private getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 10

    .prologue
    .line 483
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_0

    .line 484
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v6

    move v0, v6

    .line 500
    :goto_0
    return v0

    .line 486
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    move v7, v3

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move v4, v6

    .line 487
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 488
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 490
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v6

    move v5, v6

    .line 491
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 496
    const-string v6, "GridLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 498
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 500
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 10

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_0

    .line 505
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    move v0, v6

    .line 521
    :goto_0
    return v0

    .line 507
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    move v7, v3

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move v4, v6

    .line 508
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 509
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 511
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v6

    move v5, v6

    .line 512
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 517
    const-string v6, "GridLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 519
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 521
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v5

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private guessMeasurement(FI)V
    .locals 7

    .prologue
    .line 760
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v4

    .line 762
    move-object v4, v0

    move v5, v3

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 763
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 16

    .prologue
    .line 726
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v4, v11

    .line 727
    move-object v11, v4

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v5, v11

    .line 728
    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v5

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v6, v11

    .line 730
    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move-object v12, v5

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    move v7, v11

    .line 732
    move-object v11, v0

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object v13, v4

    iget v13, v13, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v11

    move v8, v11

    .line 735
    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 736
    move v11, v8

    move v12, v2

    move v13, v7

    move-object v14, v4

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v9, v11

    .line 738
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeightMode()I

    move-result v12

    move v13, v6

    move-object v14, v4

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v15, 0x1

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v10, v11

    .line 746
    :goto_0
    move-object v11, v0

    move-object v12, v1

    move v13, v9

    move v14, v10

    move v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 747
    return-void

    .line 741
    :cond_0
    move v11, v8

    move v12, v2

    move v13, v6

    move-object v14, v4

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v10, v11

    .line 743
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidthMode()I

    move-result v12

    move v13, v7

    move-object v14, v4

    iget v14, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v15, 0x1

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    move v9, v11

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 12

    .prologue
    .line 767
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v7

    .line 769
    move v7, v4

    if-eqz v7, :cond_1

    .line 770
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    move v6, v7

    .line 774
    :goto_0
    move v7, v6

    if-eqz v7, :cond_0

    .line 775
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 777
    :cond_0
    return-void

    .line 772
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    move v6, v7

    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 281
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 285
    :goto_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 286
    return-void

    .line 283
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move v0, v2

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 13

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v4, v8

    .line 528
    const/4 v8, 0x0

    move v5, v8

    .line 529
    :goto_0
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_0

    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v4

    if-lez v8, :cond_0

    .line 530
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v6, v8

    .line 531
    move-object v8, v3

    move v9, v6

    const/4 v10, 0x0

    move-object v11, v2

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 532
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v7, v8

    .line 533
    move v8, v4

    move v9, v7

    sub-int/2addr v8, v9

    move v4, v8

    .line 534
    move-object v8, v2

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 535
    add-int/lit8 v5, v5, 0x1

    .line 536
    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1223
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v2, :cond_0

    .line 1224
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .line 1226
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1205
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v2, :cond_0

    .line 1206
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .line 1208
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1232
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v2, :cond_0

    .line 1233
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .line 1235
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1214
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v2, :cond_0

    .line 1215
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    .line 1217
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;
    .locals 23

    .prologue
    .line 422
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    const/16 v19, 0x0

    move/from16 v7, v19

    .line 423
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v19

    move/from16 v8, v19

    .line 424
    const/16 v19, 0x1

    move/from16 v9, v19

    .line 425
    move/from16 v19, v6

    if-eqz v19, :cond_0

    .line 426
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v7, v19

    .line 427
    const/16 v19, -0x1

    move/from16 v8, v19

    .line 428
    const/16 v19, -0x1

    move/from16 v9, v19

    .line 431
    :cond_0
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v19

    move/from16 v10, v19

    .line 433
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 434
    const/16 v19, 0x0

    move-object/from16 v11, v19

    .line 435
    const/16 v19, 0x0

    move-object/from16 v12, v19

    .line 437
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    move/from16 v13, v19

    .line 438
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    move/from16 v14, v19

    .line 440
    move/from16 v19, v7

    move/from16 v15, v19

    :goto_0
    move/from16 v19, v15

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 441
    move-object/from16 v19, v2

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v16, v19

    .line 442
    move-object/from16 v19, v2

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v19

    move/from16 v17, v19

    .line 443
    move/from16 v19, v17

    if-ltz v19, :cond_1

    move/from16 v19, v17

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 444
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v17

    invoke-direct/range {v19 .. v22}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v19

    move/from16 v18, v19

    .line 445
    move/from16 v19, v18

    if-eqz v19, :cond_2

    .line 440
    :cond_1
    :goto_1
    move/from16 v19, v15

    move/from16 v20, v9

    add-int v19, v19, v20

    move/from16 v15, v19

    goto :goto_0

    .line 448
    :cond_2
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 449
    move-object/from16 v19, v11

    if-nez v19, :cond_1

    .line 450
    move-object/from16 v19, v16

    move-object/from16 v11, v19

    goto :goto_1

    .line 452
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v19

    move/from16 v20, v14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    move-object/from16 v20, v16

    .line 453
    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v19

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 454
    :cond_4
    move-object/from16 v19, v12

    if-nez v19, :cond_1

    .line 455
    move-object/from16 v19, v16

    move-object/from16 v12, v19

    goto :goto_1

    .line 458
    :cond_5
    move-object/from16 v19, v16

    move-object/from16 v2, v19

    .line 462
    :goto_2
    return-object v2

    :cond_6
    move-object/from16 v19, v12

    if-eqz v19, :cond_7

    move-object/from16 v19, v12

    :goto_3
    move-object/from16 v2, v19

    goto :goto_2

    :cond_7
    move-object/from16 v19, v11

    goto :goto_3
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 235
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 248
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    .line 250
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 134
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 141
    :goto_0
    return v0

    .line 136
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 137
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 141
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_0

    .line 120
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 127
    :goto_0
    return v0

    .line 122
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 123
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 127
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method getSpaceForSpanRange(II)I
    .locals 7

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v5, v1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v6, v1

    sub-int/2addr v5, v6

    move v6, v2

    sub-int/2addr v5, v6

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move v0, v3

    .line 352
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move v5, v1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 2

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move v0, v1

    return v0
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-object v0, v1

    return-object v0
.end method

.method public isUsingSpansToEstimateScrollbarDimensions()Z
    .locals 2

    .prologue
    .line 1277
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    move v0, v1

    return v0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 31

    .prologue
    .line 542
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/OrientationHelper;->getModeInOther()I

    move-result v24

    move/from16 v7, v24

    .line 543
    move/from16 v24, v7

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v24, 0x1

    :goto_0
    move/from16 v8, v24

    .line 544
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v24

    if-lez v24, :cond_3

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v25, v0

    aget v24, v24, v25

    :goto_1
    move/from16 v9, v24

    .line 548
    move/from16 v24, v8

    if-eqz v24, :cond_0

    .line 549
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 551
    :cond_0
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/16 v24, 0x1

    :goto_2
    move/from16 v10, v24

    .line 553
    const/16 v24, 0x0

    move/from16 v11, v24

    .line 554
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v24, v0

    move/from16 v12, v24

    .line 555
    move/from16 v24, v10

    if-nez v24, :cond_1

    .line 556
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v24

    move/from16 v13, v24

    .line 557
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v24

    move/from16 v14, v24

    .line 558
    move/from16 v24, v13

    move/from16 v25, v14

    add-int v24, v24, v25

    move/from16 v12, v24

    .line 560
    :cond_1
    :goto_3
    move/from16 v24, v11

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    move-object/from16 v24, v5

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v24

    if-eqz v24, :cond_6

    move/from16 v24, v12

    if-lez v24, :cond_6

    .line 561
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v24, v0

    move/from16 v13, v24

    .line 562
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v27, v13

    invoke-direct/range {v24 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v24

    move/from16 v14, v24

    .line 563
    move/from16 v24, v14

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 564
    new-instance v24, Ljava/lang/IllegalArgumentException;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Item at position "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " requires "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v27, v14

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " spans but GridLayoutManager has only "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " spans."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 543
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 544
    :cond_3
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 551
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 568
    :cond_5
    move/from16 v24, v12

    move/from16 v25, v14

    sub-int v24, v24, v25

    move/from16 v12, v24

    .line 569
    move/from16 v24, v12

    if-gez v24, :cond_7

    .line 580
    :cond_6
    :goto_4
    move/from16 v24, v11

    if-nez v24, :cond_9

    .line 581
    move-object/from16 v24, v6

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 714
    :goto_5
    return-void

    .line 572
    :cond_7
    move-object/from16 v24, v5

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v15, v24

    .line 573
    move-object/from16 v24, v15

    if-nez v24, :cond_8

    .line 574
    goto :goto_4

    .line 576
    :cond_8
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v11

    move-object/from16 v26, v15

    aput-object v26, v24, v25

    .line 577
    add-int/lit8 v11, v11, 0x1

    .line 578
    goto/16 :goto_3

    .line 585
    :cond_9
    const/16 v24, 0x0

    move/from16 v13, v24

    .line 586
    const/16 v24, 0x0

    move/from16 v14, v24

    .line 589
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v27, v11

    move/from16 v28, v10

    invoke-direct/range {v24 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IZ)V

    .line 590
    const/16 v24, 0x0

    move/from16 v15, v24

    :goto_6
    move/from16 v24, v15

    move/from16 v25, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 591
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v15

    aget-object v24, v24, v25

    move-object/from16 v16, v24

    .line 592
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    move-object/from16 v24, v0

    if-nez v24, :cond_d

    .line 593
    move/from16 v24, v10

    if-eqz v24, :cond_c

    .line 594
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 605
    :goto_7
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 607
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move/from16 v26, v7

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 608
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v24, v0

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v24

    move/from16 v17, v24

    .line 609
    move/from16 v24, v17

    move/from16 v25, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 610
    move/from16 v24, v17

    move/from16 v13, v24

    .line 612
    :cond_a
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v18, v24

    .line 613
    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    move/from16 v19, v24

    .line 615
    move/from16 v24, v19

    move/from16 v25, v14

    cmpl-float v24, v24, v25

    if-lez v24, :cond_b

    .line 616
    move/from16 v24, v19

    move/from16 v14, v24

    .line 590
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 596
    :cond_c
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 599
    :cond_d
    move/from16 v24, v10

    if-eqz v24, :cond_e

    .line 600
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 602
    :cond_e
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 619
    :cond_f
    move/from16 v24, v8

    if-eqz v24, :cond_11

    .line 621
    move-object/from16 v24, v2

    move/from16 v25, v14

    move/from16 v26, v9

    invoke-direct/range {v24 .. v26}, Landroidx/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 623
    const/16 v24, 0x0

    move/from16 v13, v24

    .line 624
    const/16 v24, 0x0

    move/from16 v15, v24

    :goto_8
    move/from16 v24, v15

    move/from16 v25, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 625
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v15

    aget-object v24, v24, v25

    move-object/from16 v16, v24

    .line 626
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    const/high16 v26, 0x40000000    # 2.0f

    const/16 v27, 0x1

    invoke-direct/range {v24 .. v27}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 627
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v24, v0

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v24

    move/from16 v17, v24

    .line 628
    move/from16 v24, v17

    move/from16 v25, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 629
    move/from16 v24, v17

    move/from16 v13, v24

    .line 624
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 636
    :cond_11
    const/16 v24, 0x0

    move/from16 v15, v24

    :goto_9
    move/from16 v24, v15

    move/from16 v25, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    .line 637
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v15

    aget-object v24, v24, v25

    move-object/from16 v16, v24

    .line 638
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v24, v0

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v24

    move/from16 v25, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_12

    .line 639
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v17, v24

    .line 640
    move-object/from16 v24, v17

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v18, v24

    .line 641
    move-object/from16 v24, v18

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v19, v24

    .line 643
    move-object/from16 v24, v18

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v20, v24

    .line 645
    move-object/from16 v24, v2

    move-object/from16 v25, v17

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v25, v0

    move-object/from16 v26, v17

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v24

    move/from16 v21, v24

    .line 648
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 649
    move/from16 v24, v21

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v26, v20

    move-object/from16 v27, v17

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v24

    move/from16 v22, v24

    .line 651
    move/from16 v24, v13

    move/from16 v25, v19

    sub-int v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v23, v24

    .line 659
    :goto_a
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move/from16 v26, v22

    move/from16 v27, v23

    const/16 v28, 0x1

    invoke-direct/range {v24 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 636
    :cond_12
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    .line 654
    :cond_13
    move/from16 v24, v13

    move/from16 v25, v20

    sub-int v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    move/from16 v22, v24

    .line 656
    move/from16 v24, v21

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v26, v19

    move-object/from16 v27, v17

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v24

    move/from16 v23, v24

    goto :goto_a

    .line 663
    :cond_14
    move-object/from16 v24, v6

    move/from16 v25, v13

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 665
    const/16 v24, 0x0

    move/from16 v15, v24

    const/16 v24, 0x0

    move/from16 v16, v24

    const/16 v24, 0x0

    move/from16 v17, v24

    const/16 v24, 0x0

    move/from16 v18, v24

    .line 666
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 667
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 668
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v24, v0

    move/from16 v18, v24

    .line 669
    move/from16 v24, v18

    move/from16 v25, v13

    sub-int v24, v24, v25

    move/from16 v17, v24

    .line 683
    :goto_b
    const/16 v24, 0x0

    move/from16 v19, v24

    :goto_c
    move/from16 v24, v19

    move/from16 v25, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1c

    .line 684
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v19

    aget-object v24, v24, v25

    move-object/from16 v20, v24

    .line 685
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v21, v24

    .line 686
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 687
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 688
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v24

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v26, v0

    move-object/from16 v27, v21

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    aget v25, v25, v26

    add-int v24, v24, v25

    move/from16 v16, v24

    .line 689
    move/from16 v24, v16

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v15, v24

    .line 700
    :goto_d
    move-object/from16 v24, v2

    move-object/from16 v25, v20

    move/from16 v26, v15

    move/from16 v27, v17

    move/from16 v28, v16

    move/from16 v29, v18

    invoke-virtual/range {v24 .. v29}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 708
    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v24

    if-nez v24, :cond_15

    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 709
    :cond_15
    move-object/from16 v24, v6

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 711
    :cond_16
    move-object/from16 v24, v6

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    move/from16 v25, v0

    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->hasFocusable()Z

    move-result v26

    or-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 683
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_c

    .line 671
    :cond_17
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v24, v0

    move/from16 v17, v24

    .line 672
    move/from16 v24, v17

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v18, v24

    goto/16 :goto_b

    .line 675
    :cond_18
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 676
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v24, v0

    move/from16 v16, v24

    .line 677
    move/from16 v24, v16

    move/from16 v25, v13

    sub-int v24, v24, v25

    move/from16 v15, v24

    goto/16 :goto_b

    .line 679
    :cond_19
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v24, v0

    move/from16 v15, v24

    .line 680
    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v16, v24

    goto/16 :goto_b

    .line 691
    :cond_1a
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v24

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v25, v0

    move-object/from16 v26, v21

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v26, v0

    aget v25, v25, v26

    add-int v24, v24, v25

    move/from16 v15, v24

    .line 692
    move/from16 v24, v15

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v16, v24

    goto/16 :goto_d

    .line 695
    :cond_1b
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v24

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v25, v0

    move-object/from16 v26, v21

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v26, v0

    aget v25, v25, v26

    add-int v24, v24, v25

    move/from16 v17, v24

    .line 696
    move/from16 v24, v17

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v25, v0

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v18, v24

    goto/16 :goto_d

    .line 713
    :cond_1c
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 714
    goto/16 :goto_5
.end method

.method onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 10

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 360
    move-object v5, v0

    invoke-direct {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 361
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    if-lez v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 362
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 364
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 365
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 40

    .prologue
    .line 1078
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    invoke-virtual/range {v35 .. v36}, Landroidx/recyclerview/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v35

    move-object/from16 v7, v35

    .line 1079
    move-object/from16 v35, v7

    if-nez v35, :cond_0

    .line 1080
    const/16 v35, 0x0

    move-object/from16 v2, v35

    .line 1195
    :goto_0
    return-object v2

    .line 1082
    :cond_0
    move-object/from16 v35, v7

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v35

    check-cast v35, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v8, v35

    .line 1083
    move-object/from16 v35, v8

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move/from16 v9, v35

    .line 1084
    move-object/from16 v35, v8

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v10, v35

    .line 1085
    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v39, v6

    invoke-super/range {v35 .. v39}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v35

    move-object/from16 v11, v35

    .line 1086
    move-object/from16 v35, v11

    if-nez v35, :cond_1

    .line 1087
    const/16 v35, 0x0

    move-object/from16 v2, v35

    goto :goto_0

    .line 1091
    :cond_1
    move-object/from16 v35, v2

    move/from16 v36, v4

    invoke-virtual/range {v35 .. v36}, Landroidx/recyclerview/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v35

    move/from16 v12, v35

    .line 1092
    move/from16 v35, v12

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    const/16 v35, 0x1

    :goto_1
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_4

    const/16 v35, 0x1

    :goto_2
    move/from16 v13, v35

    .line 1094
    move/from16 v35, v13

    if-eqz v35, :cond_5

    .line 1095
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v35

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    move/from16 v14, v35

    .line 1096
    const/16 v35, -0x1

    move/from16 v15, v35

    .line 1097
    const/16 v35, -0x1

    move/from16 v16, v35

    .line 1103
    :goto_3
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v35

    if-eqz v35, :cond_6

    const/16 v35, 0x1

    :goto_4
    move/from16 v17, v35

    .line 1108
    const/16 v35, 0x0

    move-object/from16 v18, v35

    .line 1109
    const/16 v35, -0x1

    move/from16 v19, v35

    .line 1110
    const/16 v35, 0x0

    move/from16 v20, v35

    .line 1118
    const/16 v35, 0x0

    move-object/from16 v21, v35

    .line 1119
    const/16 v35, -0x1

    move/from16 v22, v35

    .line 1120
    const/16 v35, 0x0

    move/from16 v23, v35

    .line 1127
    move-object/from16 v35, v2

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move/from16 v38, v14

    invoke-direct/range {v35 .. v38}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v35

    move/from16 v24, v35

    .line 1128
    move/from16 v35, v14

    move/from16 v25, v35

    :goto_5
    move/from16 v35, v25

    move/from16 v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_2

    .line 1129
    move-object/from16 v35, v2

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move/from16 v38, v25

    invoke-direct/range {v35 .. v38}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v35

    move/from16 v26, v35

    .line 1130
    move-object/from16 v35, v2

    move/from16 v36, v25

    invoke-virtual/range {v35 .. v36}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    move-object/from16 v27, v35

    .line 1131
    move-object/from16 v35, v27

    move-object/from16 v36, v7

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_7

    .line 1195
    :cond_2
    :goto_6
    move-object/from16 v35, v18

    if-eqz v35, :cond_15

    move-object/from16 v35, v18

    :goto_7
    move-object/from16 v2, v35

    goto/16 :goto_0

    .line 1092
    :cond_3
    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 1099
    :cond_5
    const/16 v35, 0x0

    move/from16 v14, v35

    .line 1100
    const/16 v35, 0x1

    move/from16 v15, v35

    .line 1101
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v35

    move/from16 v16, v35

    goto/16 :goto_3

    .line 1103
    :cond_6
    const/16 v35, 0x0

    goto :goto_4

    .line 1135
    :cond_7
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_8

    move/from16 v35, v26

    move/from16 v36, v24

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    .line 1140
    move-object/from16 v35, v18

    if-eqz v35, :cond_d

    .line 1141
    goto :goto_6

    .line 1146
    :cond_8
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v35

    check-cast v35, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v28, v35

    .line 1147
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move/from16 v29, v35

    .line 1148
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v30, v35

    .line 1149
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_9

    move/from16 v35, v29

    move/from16 v36, v9

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    move/from16 v35, v30

    move/from16 v36, v10

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 1151
    move-object/from16 v35, v27

    move-object/from16 v2, v35

    goto/16 :goto_0

    .line 1153
    :cond_9
    const/16 v35, 0x0

    move/from16 v31, v35

    .line 1154
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_a

    move-object/from16 v35, v18

    if-eqz v35, :cond_b

    :cond_a
    move-object/from16 v35, v27

    .line 1155
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-nez v35, :cond_e

    move-object/from16 v35, v21

    if-nez v35, :cond_e

    .line 1156
    :cond_b
    const/16 v35, 0x1

    move/from16 v31, v35

    .line 1181
    :cond_c
    :goto_8
    move/from16 v35, v31

    if-eqz v35, :cond_d

    .line 1182
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_14

    .line 1183
    move-object/from16 v35, v27

    move-object/from16 v18, v35

    .line 1184
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move/from16 v19, v35

    .line 1185
    move/from16 v35, v30

    move/from16 v36, v10

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v36, v29

    move/from16 v37, v9

    .line 1186
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v20, v35

    .line 1128
    :cond_d
    :goto_9
    move/from16 v35, v25

    move/from16 v36, v15

    add-int v35, v35, v36

    move/from16 v25, v35

    goto/16 :goto_5

    .line 1158
    :cond_e
    move/from16 v35, v29

    move/from16 v36, v9

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v32, v35

    .line 1159
    move/from16 v35, v30

    move/from16 v36, v10

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v33, v35

    .line 1160
    move/from16 v35, v33

    move/from16 v36, v32

    sub-int v35, v35, v36

    move/from16 v34, v35

    .line 1161
    move-object/from16 v35, v27

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-eqz v35, :cond_11

    .line 1162
    move/from16 v35, v34

    move/from16 v36, v20

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_f

    .line 1163
    const/16 v35, 0x1

    move/from16 v31, v35

    goto :goto_8

    .line 1164
    :cond_f
    move/from16 v35, v34

    move/from16 v36, v20

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    move/from16 v35, v17

    move/from16 v36, v29

    move/from16 v37, v19

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_10

    const/16 v36, 0x1

    :goto_a
    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 1167
    const/16 v35, 0x1

    move/from16 v31, v35

    goto/16 :goto_8

    .line 1164
    :cond_10
    const/16 v36, 0x0

    goto :goto_a

    .line 1169
    :cond_11
    move-object/from16 v35, v18

    if-nez v35, :cond_c

    move-object/from16 v35, v2

    move-object/from16 v36, v27

    const/16 v37, 0x0

    const/16 v38, 0x1

    .line 1170
    invoke-virtual/range {v35 .. v38}, Landroidx/recyclerview/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 1171
    move/from16 v35, v34

    move/from16 v36, v23

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_12

    .line 1172
    const/16 v35, 0x1

    move/from16 v31, v35

    goto/16 :goto_8

    .line 1173
    :cond_12
    move/from16 v35, v34

    move/from16 v36, v23

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    move/from16 v35, v17

    move/from16 v36, v29

    move/from16 v37, v22

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_13

    const/16 v36, 0x1

    :goto_b
    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 1176
    const/16 v35, 0x1

    move/from16 v31, v35

    goto/16 :goto_8

    .line 1173
    :cond_13
    const/16 v36, 0x0

    goto :goto_b

    .line 1188
    :cond_14
    move-object/from16 v35, v27

    move-object/from16 v21, v35

    .line 1189
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v35, v0

    move/from16 v22, v35

    .line 1190
    move/from16 v35, v30

    move/from16 v36, v10

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v36, v29

    move/from16 v37, v9

    .line 1191
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v23, v35

    goto/16 :goto_9

    .line 1195
    :cond_15
    move-object/from16 v35, v21

    goto/16 :goto_7
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 15

    .prologue
    .line 147
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v5, v8

    .line 148
    move-object v8, v5

    instance-of v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez v8, :cond_0

    .line 149
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    invoke-super {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_0
    move-object v8, v5

    check-cast v8, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v6, v8

    .line 153
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v8

    move v7, v8

    .line 154
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v8, :cond_1

    .line 155
    move-object v8, v4

    move-object v9, v6

    .line 156
    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v9

    move-object v10, v6

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v10

    move v11, v7

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 155
    invoke-static/range {v9 .. v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 163
    :goto_1
    goto :goto_0

    .line 159
    :cond_1
    move-object v8, v4

    move v9, v7

    const/4 v10, 0x1

    move-object v11, v6

    .line 161
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v11

    move-object v12, v6

    invoke-virtual {v12}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 159
    invoke-static/range {v9 .. v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 201
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 202
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 207
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 208
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 226
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 227
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 213
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 214
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 220
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 221
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 170
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 174
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 175
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 180
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 181
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 376
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 377
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 378
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 384
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 385
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 386
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 13

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v9, :cond_0

    .line 291
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-super {v9, v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 294
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    .line 295
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 296
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 297
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 298
    move v9, v3

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    .line 299
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v0

    .line 300
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v11

    .line 299
    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 307
    :goto_0
    move-object v9, v0

    move v10, v4

    move v11, v5

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 308
    return-void

    .line 302
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move v10, v6

    add-int/2addr v9, v10

    move v8, v9

    .line 303
    move v9, v2

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 304
    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    move v11, v7

    add-int/2addr v10, v11

    move-object v11, v0

    .line 305
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v11

    .line 304
    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 7

    .prologue
    .line 824
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne v2, v3, :cond_0

    .line 835
    :goto_0
    return-void

    .line 827
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 828
    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 829
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Span count should be at least 1. Provided "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 832
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 833
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 834
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->requestLayout()V

    .line 835
    goto :goto_0
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 267
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 109
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 114
    return-void
.end method

.method public setUsingSpansToEstimateScrollbarDimensions(Z)V
    .locals 4

    .prologue
    .line 1265
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    .line 1266
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 1200
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
