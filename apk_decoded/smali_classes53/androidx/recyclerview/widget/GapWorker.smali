.class final Landroidx/recyclerview/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Landroidx/recyclerview/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/recyclerview/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 190
    new-instance v0, Landroidx/recyclerview/widget/GapWorker$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/GapWorker$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 59
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 15

    .prologue
    .line 217
    move-object v0, p0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v1, v11

    .line 218
    const/4 v11, 0x0

    move v2, v11

    .line 219
    const/4 v11, 0x0

    move v3, v11

    :goto_0
    move v11, v3

    move v12, v1

    if-ge v11, v12, :cond_1

    .line 220
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v11

    .line 221
    move-object v11, v4

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v11

    if-nez v11, :cond_0

    .line 222
    move-object v11, v4

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object v12, v4

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 223
    move v11, v2

    move-object v12, v4

    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v12, v12, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v11, v12

    move v2, v11

    .line 219
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 229
    const/4 v11, 0x0

    move v3, v11

    .line 230
    const/4 v11, 0x0

    move v4, v11

    :goto_1
    move v11, v4

    move v12, v1

    if-ge v11, v12, :cond_6

    .line 231
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v11

    .line 232
    move-object v11, v5

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v11

    if-eqz v11, :cond_3

    .line 230
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 237
    :cond_3
    move-object v11, v5

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object v6, v11

    .line 238
    move-object v11, v6

    iget v11, v11, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 239
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    move v7, v11

    .line 240
    const/4 v11, 0x0

    move v8, v11

    :goto_2
    move v11, v8

    move-object v12, v6

    iget v12, v12, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_2

    .line 242
    move v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_4

    .line 243
    new-instance v11, Landroidx/recyclerview/widget/GapWorker$Task;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Landroidx/recyclerview/widget/GapWorker$Task;-><init>()V

    move-object v9, v11

    .line 244
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 248
    :goto_3
    move-object v11, v6

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    move v10, v11

    .line 250
    move-object v11, v9

    move v12, v10

    move v13, v7

    if-gt v12, v13, :cond_5

    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    .line 251
    move-object v11, v9

    move v12, v7

    iput v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 252
    move-object v11, v9

    move v12, v10

    iput v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 253
    move-object v11, v9

    move-object v12, v5

    iput-object v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    move-object v11, v9

    move-object v12, v6

    iget-object v12, v12, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v13, v8

    aget v12, v12, v13

    iput v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    .line 256
    add-int/lit8 v3, v3, 0x1

    .line 240
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 246
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/GapWorker$Task;

    move-object v9, v11

    goto :goto_3

    .line 250
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 261
    :cond_6
    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v12, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    return-void
.end method

.method private flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V
    .locals 12

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, v1

    iget-boolean v7, v7, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz v7, :cond_1

    const-wide v7, 0x7fffffffffffffffL

    :goto_0
    move-wide v4, v7

    .line 345
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    move-object v9, v1

    iget v9, v9, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v6, v7

    .line 347
    move-object v7, v6

    if-eqz v7, :cond_0

    move-object v7, v6

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 349
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 350
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_0

    .line 351
    move-object v7, v0

    move-object v8, v6

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    move-wide v9, v2

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V

    .line 353
    :cond_0
    return-void

    .line 344
    :cond_1
    move-wide v7, v2

    goto :goto_0
.end method

.method private flushTasksWithDeadline(J)V
    .locals 11

    .prologue
    .line 356
    move-object v1, p0

    move-wide v2, p1

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 357
    move-object v6, v1

    iget-object v6, v6, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/GapWorker$Task;

    move-object v5, v6

    .line 358
    move-object v6, v5

    iget-object v6, v6, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v6, :cond_1

    .line 364
    :cond_0
    return-void

    .line 361
    :cond_1
    move-object v6, v1

    move-object v7, v5

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Landroidx/recyclerview/widget/GapWorker;->flushTaskWithDeadline(Landroidx/recyclerview/widget/GapWorker$Task;J)V

    .line 362
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/GapWorker$Task;->clear()V

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 8

    .prologue
    .line 265
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v2, v6

    .line 266
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 267
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 268
    move-object v6, v4

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 270
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 271
    const/4 v6, 0x1

    move v0, v6

    .line 274
    :goto_1
    return v0

    .line 266
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Landroidx/recyclerview/widget/RecyclerView;J)V
    .locals 14
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object v8, v1

    if-nez v8, :cond_0

    .line 341
    :goto_0
    return-void

    .line 316
    :cond_0
    move-object v8, v1

    iget-boolean v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v8, :cond_1

    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 317
    invoke-virtual {v8}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v8

    if-eqz v8, :cond_1

    .line 320
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 324
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move-object v4, v8

    .line 325
    move-object v8, v4

    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 327
    move-object v8, v4

    iget v8, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v8, :cond_3

    .line 329
    :try_start_0
    const-string v8, "RV Nested Prefetch"

    invoke-static {v8}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 330
    move-object v8, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    move-object v9, v1

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$State;->prepareForNestedPrefetch(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 331
    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_2

    .line 334
    move-object v8, v4

    iget-object v8, v8, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    move v9, v5

    aget v8, v8, v9

    move v6, v8

    .line 335
    move-object v8, v0

    move-object v9, v1

    move v10, v6

    move-wide v11, v2

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 331
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 338
    :cond_2
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 341
    :cond_3
    goto :goto_0

    .line 338
    :catchall_0
    move-exception v8

    move-object v7, v8

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 339
    move-object v8, v7

    throw v8
.end method

.method private prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 15

    .prologue
    .line 279
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object v9, v2

    move v10, v3

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/GapWorker;->isPrefetchPositionAttached(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 281
    const/4 v9, 0x0

    move-object v1, v9

    .line 307
    :goto_0
    return-object v1

    .line 284
    :cond_0
    move-object v9, v2

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    move-object v6, v9

    .line 287
    move-object v9, v2

    :try_start_0
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 288
    move-object v9, v6

    move v10, v3

    const/4 v11, 0x0

    move-wide v12, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v7, v9

    .line 291
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 292
    move-object v9, v7

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v9

    if-nez v9, :cond_2

    .line 295
    move-object v9, v6

    move-object v10, v7

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_1
    :goto_1
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 307
    move-object v9, v7

    move-object v1, v9

    goto :goto_0

    .line 301
    :cond_2
    move-object v9, v6

    move-object v10, v7

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 305
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 306
    move-object v9, v8

    throw v9
.end method


# virtual methods
.method public add(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 164
    return-void
.end method

.method postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    move-object v4, v0

    iget-wide v4, v4, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 182
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 183
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 187
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    .line 188
    return-void
.end method

.method prefetch(J)V
    .locals 7

    .prologue
    .line 367
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/GapWorker;->buildTaskList()V

    .line 368
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GapWorker;->flushTasksWithDeadline(J)V

    .line 369
    return-void
.end method

.method public remove(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 171
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 374
    move-object v0, p0

    :try_start_0
    const-string v7, "RV Prefetch"

    invoke-static {v7}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 376
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 403
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 406
    :goto_0
    return-void

    .line 383
    :cond_0
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 384
    const-wide/16 v7, 0x0

    move-wide v2, v7

    .line 385
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 386
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v7

    .line 387
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 388
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v7

    move-wide v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    move-wide v2, v7

    .line 385
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 392
    :cond_2
    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 403
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 394
    goto :goto_0

    .line 397
    :cond_3
    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    move-object v9, v0

    iget-wide v9, v9, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v7, v9

    move-wide v4, v7

    .line 399
    move-object v7, v0

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 406
    goto :goto_0

    .line 403
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 405
    move-object v7, v6

    throw v7
.end method
