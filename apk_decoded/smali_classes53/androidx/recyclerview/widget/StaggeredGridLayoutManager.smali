.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Landroidx/recyclerview/widget/LayoutState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 244
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 106
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 129
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 134
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 145
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 151
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 157
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 162
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 188
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 193
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 201
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 207
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 215
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 245
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 246
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 247
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 248
    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 106
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 129
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 134
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 145
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 151
    move-object v6, v0

    const/high16 v7, -0x80000000

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 157
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 162
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 188
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 193
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 201
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 207
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 215
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 229
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 230
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 231
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 232
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 233
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/LayoutState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 234
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    .line 235
    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1780
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1781
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1780
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1783
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 6

    .prologue
    .line 794
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v4, :cond_2

    .line 795
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_4

    .line 796
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_2

    .line 797
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 798
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 799
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 800
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v4, :cond_1

    .line 801
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 806
    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 796
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 803
    :cond_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    goto :goto_1

    .line 813
    :cond_2
    :goto_2
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 814
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 815
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 817
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 818
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 819
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 823
    :goto_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 824
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 825
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 827
    :cond_3
    return-void

    .line 809
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 810
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_2

    .line 821
    :cond_5
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_3
.end method

.method private attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 6

    .prologue
    .line 1724
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    iget v4, v4, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1725
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 1726
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1737
    :goto_0
    return-void

    .line 1728
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1731
    :cond_1
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_2

    .line 1732
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1734
    :cond_2
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5

    .prologue
    .line 2017
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2018
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 2021
    :goto_1
    return v0

    .line 2018
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 2020
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    move v2, v3

    .line 2021
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    const/4 v3, -0x1

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 7

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1

    .line 403
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 405
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 406
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 407
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 415
    :goto_1
    return v0

    .line 407
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 409
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 411
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 412
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 413
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 415
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    const/4 v2, 0x0

    move v0, v2

    .line 1103
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 1104
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 1105
    :goto_2
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1103
    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1104
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    .prologue
    .line 1080
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1081
    const/4 v2, 0x0

    move v0, v2

    .line 1083
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 1084
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 1085
    :goto_2
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 1083
    invoke-static/range {v2 .. v8}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1084
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1120
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1121
    const/4 v2, 0x0

    move v0, v2

    .line 1123
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 1124
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 1125
    :goto_2
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1123
    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1124
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    .line 2366
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 2399
    const/high16 v2, -0x80000000

    move v0, v2

    :goto_0
    return v0

    .line 2368
    :sswitch_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2369
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2370
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2371
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2373
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2376
    :sswitch_1
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2377
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2378
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2379
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 2381
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2384
    :sswitch_2
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    .line 2385
    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_1

    .line 2387
    :sswitch_3
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    .line 2388
    :cond_5
    const/high16 v2, -0x80000000

    goto :goto_2

    .line 2390
    :sswitch_4
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_6

    const/4 v2, -0x1

    :goto_3
    move v0, v2

    goto :goto_0

    .line 2391
    :cond_6
    const/high16 v2, -0x80000000

    goto :goto_3

    .line 2393
    :sswitch_5
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    move v0, v2

    goto :goto_0

    .line 2394
    :cond_7
    const/high16 v2, -0x80000000

    goto :goto_4

    .line 2366
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 10

    .prologue
    .line 1706
    move-object v0, p0

    move v1, p1

    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object v2, v4

    .line 1707
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1708
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 1709
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v5, v3

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v8, v3

    aget-object v7, v7, v8

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 1708
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1711
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 9

    .prologue
    .line 1715
    move-object v0, p0

    move v1, p1

    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object v2, v4

    .line 1716
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1717
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 1718
    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v7, v3

    aget-object v6, v6, v7

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v6

    move v7, v1

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 1717
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1720
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 5

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 258
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v3, v4, 0x1

    .line 259
    invoke-static {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 260
    return-void
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 25

    .prologue
    .line 1549
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Ljava/util/BitSet;->set(IIZ)V

    .line 1554
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1555
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1556
    const v19, 0x7fffffff

    move/from16 v6, v19

    .line 1568
    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1575
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 1576
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    .line 1577
    :goto_1
    move/from16 v7, v19

    .line 1578
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 1579
    :goto_2
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    .line 1580
    invoke-virtual/range {v19 .. v19}, Ljava/util/BitSet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1a

    .line 1581
    :cond_0
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    .line 1582
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v10, v19

    .line 1583
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v19

    move/from16 v11, v19

    .line 1584
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v19

    move/from16 v12, v19

    .line 1586
    move/from16 v19, v12

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_3
    move/from16 v14, v19

    .line 1587
    move/from16 v19, v14

    if-eqz v19, :cond_a

    .line 1588
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    :goto_4
    move-object/from16 v13, v19

    .line 1589
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    .line 1600
    :goto_5
    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1601
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1602
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    .line 1606
    :goto_6
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1610
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1611
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v19

    .line 1612
    :goto_7
    move/from16 v15, v19

    .line 1613
    move/from16 v19, v15

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v16, v19

    .line 1614
    move/from16 v19, v14

    if-eqz v19, :cond_1

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1616
    move-object/from16 v19, v2

    move/from16 v20, v15

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1617
    move-object/from16 v19, v17

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1618
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1619
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1635
    :cond_1
    :goto_8
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1636
    move/from16 v19, v14

    if-eqz v19, :cond_f

    .line 1637
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1655
    :cond_2
    :goto_9
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v22}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V

    .line 1658
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1659
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    .line 1660
    :goto_a
    move/from16 v18, v19

    .line 1662
    move/from16 v19, v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v17, v19

    .line 1670
    :goto_b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1671
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move/from16 v21, v17

    move/from16 v22, v15

    move/from16 v23, v18

    move/from16 v24, v16

    invoke-virtual/range {v19 .. v24}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1676
    :goto_c
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 1677
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1681
    :goto_d
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 1682
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1683
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 1684
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/BitSet;->clear()V

    .line 1689
    :cond_3
    :goto_e
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1690
    goto/16 :goto_2

    .line 1558
    :cond_4
    const/high16 v19, -0x80000000

    move/from16 v6, v19

    goto/16 :goto_0

    .line 1561
    :cond_5
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1562
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v6, v19

    goto/16 :goto_0

    .line 1564
    :cond_6
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v6, v19

    goto/16 :goto_0

    .line 1577
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    goto/16 :goto_1

    .line 1586
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1588
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-result-object v19

    goto/16 :goto_4

    .line 1597
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    move/from16 v20, v12

    aget-object v19, v19, v20

    move-object/from16 v13, v19

    goto/16 :goto_5

    .line 1604
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1612
    :cond_c
    move-object/from16 v19, v13

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v19

    goto/16 :goto_7

    .line 1622
    :cond_d
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v19

    .line 1623
    :goto_f
    move/from16 v16, v19

    .line 1624
    move/from16 v19, v16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 1625
    move/from16 v19, v14

    if-eqz v19, :cond_1

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1627
    move-object/from16 v19, v2

    move/from16 v20, v16

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v17, v19

    .line 1628
    move-object/from16 v19, v17

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1629
    move-object/from16 v19, v17

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1630
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_8

    .line 1623
    :cond_e
    move-object/from16 v19, v13

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v19

    goto :goto_f

    .line 1640
    :cond_f
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1641
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v19

    if-nez v19, :cond_11

    const/16 v19, 0x1

    :goto_10
    move/from16 v17, v19

    .line 1645
    :goto_11
    move/from16 v19, v17

    if-eqz v19, :cond_2

    .line 1646
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v19, v0

    move/from16 v20, v11

    .line 1647
    invoke-virtual/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1648
    move-object/from16 v19, v18

    if-eqz v19, :cond_10

    .line 1649
    move-object/from16 v19, v18

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1651
    :cond_10
    move-object/from16 v19, v2

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    .line 1641
    :cond_11
    const/16 v19, 0x0

    goto :goto_10

    .line 1643
    :cond_12
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v19

    if-nez v19, :cond_13

    const/16 v19, 0x1

    :goto_12
    move/from16 v17, v19

    goto :goto_11

    :cond_13
    const/16 v19, 0x0

    goto :goto_12

    .line 1661
    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    .line 1660
    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    sub-int v19, v19, v20

    goto/16 :goto_a

    .line 1664
    :cond_15
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    .line 1666
    :goto_13
    move/from16 v17, v19

    .line 1667
    move/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v18, v19

    goto/16 :goto_b

    .line 1666
    :cond_16
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v20

    add-int v19, v19, v20

    goto :goto_13

    .line 1673
    :cond_17
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move/from16 v21, v15

    move/from16 v22, v17

    move/from16 v23, v16

    move/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1679
    :cond_18
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v21, v0

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_d

    .line 1686
    :cond_19
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1691
    :cond_1a
    move/from16 v19, v8

    if-nez v19, :cond_1b

    .line 1692
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 1695
    :cond_1b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 1696
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v19

    move/from16 v10, v19

    .line 1697
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v19

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v9, v19

    .line 1702
    :goto_14
    move/from16 v19, v9

    if-lez v19, :cond_1d

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    move/from16 v19, v0

    move/from16 v20, v9

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    :goto_15
    move/from16 v2, v19

    return v2

    .line 1699
    :cond_1c
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v19

    move/from16 v10, v19

    .line 1700
    move/from16 v19, v10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v9, v19

    goto :goto_14

    .line 1702
    :cond_1d
    const/16 v19, 0x0

    goto :goto_15
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 8

    .prologue
    .line 2192
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 2193
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 2194
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 2195
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v5, v6

    .line 2196
    move v6, v5

    if-ltz v6, :cond_0

    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 2197
    move v6, v5

    move v0, v6

    .line 2200
    :goto_1
    return v0

    .line 2193
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2200
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 7

    .prologue
    .line 2209
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 2210
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2211
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    move v4, v5

    .line 2212
    move v5, v4

    if-ltz v5, :cond_0

    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 2213
    move v5, v4

    move v0, v5

    .line 2216
    :goto_1
    return v0

    .line 2209
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2216
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 1385
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    const/high16 v8, -0x80000000

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v7

    move v4, v7

    .line 1386
    move v7, v4

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1389
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 1391
    move v7, v5

    if-lez v7, :cond_2

    .line 1392
    move-object v7, v0

    move v8, v5

    neg-int v8, v8

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 1396
    move v7, v5

    move v8, v6

    sub-int/2addr v7, v8

    move v5, v7

    .line 1397
    move v7, v3

    if-eqz v7, :cond_1

    move v7, v5

    if-lez v7, :cond_1

    .line 1398
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1400
    :cond_1
    goto :goto_0

    .line 1394
    :cond_2
    goto :goto_0
.end method

.method private fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 11

    .prologue
    .line 1404
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    const v8, 0x7fffffff

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v7

    move v4, v7

    .line 1405
    move v7, v4

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_0

    .line 1419
    :goto_0
    return-void

    .line 1408
    :cond_0
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1410
    move v7, v5

    if-lez v7, :cond_2

    .line 1411
    move-object v7, v0

    move v8, v5

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    move v6, v7

    .line 1415
    move v7, v5

    move v8, v6

    sub-int/2addr v7, v8

    move v5, v7

    .line 1416
    move v7, v3

    if-eqz v7, :cond_1

    move v7, v5

    if-lez v7, :cond_1

    .line 1417
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v5

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1419
    :cond_1
    goto :goto_0

    .line 1413
    :cond_2
    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 7

    .prologue
    .line 1859
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v2, v5

    .line 1860
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1861
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v4, v5

    .line 1862
    move v5, v4

    move v6, v2

    if-le v5, v6, :cond_0

    .line 1863
    move v5, v4

    move v2, v5

    .line 1860
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1866
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMaxStart(I)I
    .locals 7

    .prologue
    .line 1817
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v2, v5

    .line 1818
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1819
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v4, v5

    .line 1820
    move v5, v4

    move v6, v2

    if-le v5, v6, :cond_0

    .line 1821
    move v5, v4

    move v2, v5

    .line 1818
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1824
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMinEnd(I)I
    .locals 7

    .prologue
    .line 1870
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v2, v5

    .line 1871
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1872
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    move v4, v5

    .line 1873
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1874
    move v5, v4

    move v2, v5

    .line 1871
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1877
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getMinStart(I)I
    .locals 7

    .prologue
    .line 1828
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v2, v5

    .line 1829
    const/4 v5, 0x1

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v5, v6, :cond_1

    .line 1830
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    move v4, v5

    .line 1831
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1832
    move v5, v4

    move v2, v5

    .line 1829
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1835
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method private getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .locals 14

    .prologue
    .line 1954
    move-object v0, p0

    move-object v1, p1

    move-object v12, v0

    move-object v13, v1

    iget v13, v13, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v12, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v12

    move v2, v12

    .line 1956
    move v12, v2

    if-eqz v12, :cond_1

    .line 1957
    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v3, v12

    .line 1958
    const/4 v12, -0x1

    move v4, v12

    .line 1959
    const/4 v12, -0x1

    move v5, v12

    .line 1965
    :goto_0
    move-object v12, v1

    iget v12, v12, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1966
    const/4 v12, 0x0

    move-object v6, v12

    .line 1967
    const v12, 0x7fffffff

    move v7, v12

    .line 1968
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    move v8, v12

    .line 1969
    move v12, v3

    move v9, v12

    :goto_1
    move v12, v9

    move v13, v4

    if-eq v12, v13, :cond_2

    .line 1970
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 1971
    move-object v12, v10

    move v13, v8

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v12

    move v11, v12

    .line 1972
    move v12, v11

    move v13, v7

    if-ge v12, v13, :cond_0

    .line 1973
    move-object v12, v10

    move-object v6, v12

    .line 1974
    move v12, v11

    move v7, v12

    .line 1969
    :cond_0
    move v12, v9

    move v13, v5

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 1961
    :cond_1
    const/4 v12, 0x0

    move v3, v12

    .line 1962
    move-object v12, v0

    iget v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v4, v12

    .line 1963
    const/4 v12, 0x1

    move v5, v12

    goto :goto_0

    .line 1977
    :cond_2
    move-object v12, v6

    move-object v0, v12

    .line 1990
    :goto_2
    return-object v0

    .line 1979
    :cond_3
    const/4 v12, 0x0

    move-object v6, v12

    .line 1980
    const/high16 v12, -0x80000000

    move v7, v12

    .line 1981
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v12

    move v8, v12

    .line 1982
    move v12, v3

    move v9, v12

    :goto_3
    move v12, v9

    move v13, v4

    if-eq v12, v13, :cond_5

    .line 1983
    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 1984
    move-object v12, v10

    move v13, v8

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v12

    move v11, v12

    .line 1985
    move v12, v11

    move v13, v7

    if-le v12, v13, :cond_4

    .line 1986
    move-object v12, v10

    move-object v6, v12

    .line 1987
    move v12, v11

    move v7, v12

    .line 1982
    :cond_4
    move v12, v9

    move v13, v5

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_3

    .line 1990
    :cond_5
    move-object v12, v6

    move-object v0, v12

    goto :goto_2
.end method

.method private handleUpdate(III)V
    .locals 11

    .prologue
    .line 1505
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    :goto_0
    move v4, v8

    .line 1509
    move v8, v3

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    .line 1510
    move v8, v1

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 1511
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 1512
    move v8, v1

    move v6, v8

    .line 1522
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v8

    .line 1523
    move v8, v3

    sparse-switch v8, :sswitch_data_0

    .line 1537
    :goto_2
    move v8, v5

    move v9, v4

    if-gt v8, v9, :cond_3

    .line 1545
    :goto_3
    return-void

    .line 1505
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    goto :goto_0

    .line 1514
    :cond_1
    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 1515
    move v8, v2

    move v6, v8

    goto :goto_1

    .line 1518
    :cond_2
    move v8, v1

    move v6, v8

    .line 1519
    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_1

    .line 1525
    :sswitch_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    .line 1526
    goto :goto_2

    .line 1528
    :sswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1529
    goto :goto_2

    .line 1532
    :sswitch_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1533
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v9, v2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1541
    :cond_3
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    :goto_4
    move v7, v8

    .line 1542
    move v8, v6

    move v9, v7

    if-gt v8, v9, :cond_4

    .line 1543
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1545
    :cond_4
    goto :goto_3

    .line 1541
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    goto :goto_4

    .line 1523
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 12

    .prologue
    .line 1201
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1202
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v7

    .line 1203
    move-object v7, v0

    move v8, v2

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v7

    move v2, v7

    .line 1205
    move-object v7, v0

    move v8, v3

    move-object v9, v5

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result v7

    move v3, v7

    .line 1207
    move v7, v4

    if-eqz v7, :cond_1

    .line 1208
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    .line 1209
    :goto_0
    move v6, v7

    .line 1210
    move v7, v6

    if-eqz v7, :cond_0

    .line 1211
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1214
    :cond_0
    return-void

    .line 1209
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v7

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 12

    .prologue
    .line 1136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_1

    .line 1137
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1138
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    move-object v7, v0

    .line 1140
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    .line 1141
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    move-object v9, v0

    .line 1142
    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x1

    .line 1139
    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1138
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 1197
    :goto_0
    return-void

    .line 1147
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    .line 1150
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v6

    move-object v7, v0

    .line 1151
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    move-object v8, v0

    .line 1152
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x1

    .line 1149
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    move v8, v3

    .line 1147
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1159
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1162
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v7, v0

    .line 1166
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x0

    .line 1164
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    .line 1171
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v7

    move-object v8, v0

    .line 1172
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    move-object v9, v0

    .line 1173
    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x1

    .line 1170
    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1162
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1180
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    .line 1183
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v6

    move-object v7, v0

    .line 1184
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v7

    move-object v8, v0

    .line 1185
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x1

    .line 1182
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v8, v0

    .line 1190
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x0

    .line 1188
    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    move v8, v3

    .line 1180
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto/16 :goto_0
.end method

.method private onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 12

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v4, v8

    .line 620
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v8, :cond_0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 621
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 622
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 623
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 730
    :goto_0
    return-void

    .line 628
    :cond_1
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_8

    :cond_2
    const/4 v8, 0x1

    :goto_1
    move v5, v8

    .line 630
    move v8, v5

    if-eqz v8, :cond_3

    .line 631
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 632
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_9

    .line 633
    move-object v8, v0

    move-object v9, v4

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 638
    :goto_2
    move-object v8, v0

    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 639
    move-object v8, v4

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 641
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v8, :cond_5

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 642
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v8, v9, :cond_4

    move-object v8, v0

    .line 643
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v8

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v8, v9, :cond_5

    .line 644
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 645
    move-object v8, v4

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 649
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_a

    .line 651
    :cond_6
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v8, :cond_10

    .line 652
    const/4 v8, 0x0

    move v6, v8

    :goto_3
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_a

    .line 654
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 655
    move-object v8, v4

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_7

    .line 656
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 652
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 628
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 635
    :cond_9
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 636
    move-object v8, v4

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2

    .line 675
    :cond_a
    :goto_4
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 676
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 677
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 678
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 679
    move-object v8, v0

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 680
    move-object v8, v4

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_14

    .line 682
    move-object v8, v0

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 683
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    .line 685
    move-object v8, v0

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 686
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 687
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    .line 698
    :goto_5
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 700
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 701
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_15

    .line 702
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 703
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 709
    :cond_b
    :goto_6
    const/4 v8, 0x0

    move v6, v8

    .line 710
    move v8, v3

    if-eqz v8, :cond_d

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_d

    .line 711
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v8, :cond_16

    move-object v8, v0

    .line 712
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_16

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v8, :cond_c

    move-object v8, v0

    .line 713
    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_16

    :cond_c
    const/4 v8, 0x1

    :goto_7
    move v7, v8

    .line 714
    move v8, v7

    if-eqz v8, :cond_d

    .line 715
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v8

    .line 716
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 717
    const/4 v8, 0x1

    move v6, v8

    .line 721
    :cond_d
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 722
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 724
    :cond_e
    move-object v8, v0

    move-object v9, v4

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 725
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v9

    iput-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 726
    move v8, v6

    if-eqz v8, :cond_f

    .line 727
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 728
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 730
    :cond_f
    goto/16 :goto_0

    .line 660
    :cond_10
    move v8, v5

    if-nez v8, :cond_11

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v8, :cond_13

    .line 661
    :cond_11
    const/4 v8, 0x0

    move v6, v8

    :goto_8
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_12

    .line 662
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v10, v4

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 661
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 665
    :cond_12
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    goto/16 :goto_4

    .line 667
    :cond_13
    const/4 v8, 0x0

    move v6, v8

    :goto_9
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_a

    .line 668
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 669
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 670
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    move v10, v6

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 667
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 690
    :cond_14
    move-object v8, v0

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 691
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    .line 693
    move-object v8, v0

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 694
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v9, v4

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 695
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v8

    goto/16 :goto_5

    .line 705
    :cond_15
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 706
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto/16 :goto_6

    .line 713
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_7
.end method

.method private preferLastSpan(I)Z
    .locals 4

    .prologue
    .line 1944
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    .line 1945
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 1947
    :goto_2
    return v0

    .line 1945
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1947
    :cond_2
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_5
    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1787
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 1788
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1787
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1790
    :cond_0
    return-void
.end method

.method private recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 8

    .prologue
    .line 1740
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    if-eqz v5, :cond_1

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1743
    :cond_1
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    if-nez v5, :cond_3

    .line 1745
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1746
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 1776
    :goto_1
    goto :goto_0

    .line 1748
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_1

    .line 1753
    :cond_3
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1755
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move-object v6, v0

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 1757
    move v5, v3

    if-gez v5, :cond_4

    .line 1758
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    move v4, v5

    .line 1762
    :goto_2
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 1763
    goto :goto_1

    .line 1760
    :cond_4
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    move v6, v3

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    goto :goto_2

    .line 1765
    :cond_5
    move-object v5, v0

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v5

    move-object v6, v2

    iget v6, v6, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 1767
    move v5, v3

    if-gez v5, :cond_6

    .line 1768
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move v4, v5

    .line 1772
    :goto_3
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_1

    .line 1770
    :cond_6
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move v6, v3

    move-object v7, v2

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    goto :goto_3
.end method

.method private recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 11

    .prologue
    .line 1910
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1912
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    :goto_0
    move v8, v4

    if-ltz v8, :cond_6

    .line 1913
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1914
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    move v9, v2

    if-lt v8, v9, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v5

    .line 1915
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v8

    move v9, v2

    if-lt v8, v9, :cond_5

    .line 1916
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v8

    .line 1918
    move-object v8, v6

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v8, :cond_3

    .line 1919
    const/4 v8, 0x0

    move v7, v8

    :goto_1
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_1

    .line 1920
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v7

    aget-object v8, v8, v9

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1938
    :goto_2
    return-void

    .line 1919
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1924
    :cond_1
    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v8, v9, :cond_2

    .line 1925
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v9, v7

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1924
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1933
    :cond_2
    :goto_4
    move-object v8, v0

    move-object v9, v5

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1912
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1928
    :cond_3
    move-object v8, v6

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1929
    goto :goto_2

    .line 1931
    :cond_4
    move-object v8, v6

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    goto :goto_4

    .line 1935
    :cond_5
    goto :goto_2

    .line 1938
    :cond_6
    goto :goto_2
.end method

.method private recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 9

    .prologue
    .line 1881
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 1882
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1883
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    move v7, v2

    if-gt v6, v7, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v3

    .line 1884
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v6

    move v7, v2

    if-gt v6, v7, :cond_5

    .line 1885
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v4, v6

    .line 1887
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v6, :cond_3

    .line 1888
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v7, :cond_1

    .line 1889
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v7, v5

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1907
    :goto_2
    return-void

    .line 1888
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1893
    :cond_1
    const/4 v6, 0x0

    move v5, v6

    :goto_3
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, v7, :cond_2

    .line 1894
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v7, v5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1893
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1902
    :cond_2
    :goto_4
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1906
    goto :goto_0

    .line 1897
    :cond_3
    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1898
    goto :goto_2

    .line 1900
    :cond_4
    move-object v6, v4

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    goto :goto_4

    .line 1904
    :cond_5
    goto :goto_2

    .line 1907
    :cond_6
    goto :goto_2
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 13

    .prologue
    .line 742
    move-object v0, p0

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_0

    .line 788
    :goto_0
    return-void

    .line 745
    :cond_0
    const/4 v10, 0x0

    move v1, v10

    .line 746
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v10

    move v2, v10

    .line 747
    const/4 v10, 0x0

    move v3, v10

    :goto_1
    move v10, v3

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 748
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 749
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    move v5, v10

    .line 750
    move v10, v5

    move v11, v1

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 747
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 753
    :cond_1
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v6, v10

    .line 754
    move-object v10, v6

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 755
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v5, v10

    .line 757
    :cond_2
    move v10, v1

    move v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v1, v10

    goto :goto_2

    .line 759
    :cond_3
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move v3, v10

    .line 760
    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move v4, v10

    .line 761
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v10

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_4

    .line 762
    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v4, v10

    .line 764
    :cond_4
    move-object v10, v0

    move v11, v4

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 765
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move v11, v3

    if-ne v10, v11, :cond_5

    .line 766
    goto :goto_0

    .line 768
    :cond_5
    const/4 v10, 0x0

    move v5, v10

    :goto_3
    move v10, v5

    move v11, v2

    if-ge v10, v11, :cond_9

    .line 769
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 770
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v7, v10

    .line 771
    move-object v10, v7

    iget-boolean v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v10, :cond_6

    .line 768
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 774
    :cond_6
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 775
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v7

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v10, v11

    neg-int v10, v10

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v10, v11

    move v8, v10

    .line 776
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v7

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v10, v11

    neg-int v10, v10

    move v11, v3

    mul-int/2addr v10, v11

    move v9, v10

    .line 777
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 778
    goto :goto_4

    .line 779
    :cond_7
    move-object v10, v7

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v10, v11

    move v8, v10

    .line 780
    move-object v10, v7

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move v11, v3

    mul-int/2addr v10, v11

    move v9, v10

    .line 781
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 782
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 784
    :cond_8
    move-object v10, v6

    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    .line 788
    :cond_9
    goto/16 :goto_0
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 6

    .prologue
    .line 1453
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    .line 1454
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-ne v3, v4, :cond_1

    .line 1455
    const/4 v3, 0x1

    :goto_1
    iput v3, v2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    .line 1456
    return-void

    .line 1454
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1455
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 8

    .prologue
    .line 1793
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    .line 1794
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1793
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1797
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v3

    aget-object v5, v5, v6

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    .line 1799
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 6

    .prologue
    .line 848
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v4, :cond_0

    .line 849
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v4

    .line 850
    :goto_0
    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 851
    move-object v3, v2

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 852
    const/4 v3, 0x1

    move v0, v3

    return v0

    .line 850
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v4

    goto :goto_0
.end method

.method private updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .prologue
    .line 1422
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v7, 0x0

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 1423
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v7, v1

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 1424
    const/4 v6, 0x0

    move v3, v6

    .line 1425
    const/4 v6, 0x0

    move v4, v6

    .line 1426
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1427
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v6

    move v5, v6

    .line 1428
    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1429
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-ne v6, v7, :cond_2

    .line 1430
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    move v4, v6

    .line 1438
    :cond_0
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v6

    move v5, v6

    .line 1439
    move v6, v5

    if-eqz v6, :cond_3

    .line 1440
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move v8, v3

    sub-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    .line 1441
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 1446
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 1447
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 1448
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1449
    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    .line 1450
    return-void

    .line 1429
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1432
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    move v3, v6

    goto :goto_1

    .line 1443
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v7

    move v8, v4

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    .line 1444
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v7, v3

    neg-int v7, v7

    iput v7, v6, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    goto :goto_2

    .line 1449
    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 9

    .prologue
    .line 1802
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v6

    move v4, v6

    .line 1803
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 1804
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v6

    move v5, v6

    .line 1805
    move v6, v5

    move v7, v4

    add-int/2addr v6, v7

    move v7, v3

    if-gt v6, v7, :cond_0

    .line 1806
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object v7, v1

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1809
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v6

    move v5, v6

    .line 1810
    move v6, v5

    move v7, v4

    sub-int/2addr v6, v7

    move v7, v3

    if-lt v6, v7, :cond_0

    .line 1811
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object v7, v1

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 8

    .prologue
    .line 1217
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    if-nez v5, :cond_0

    move v5, v3

    if-nez v5, :cond_0

    .line 1218
    move v5, v1

    move v0, v5

    .line 1225
    :goto_0
    return v0

    .line 1220
    :cond_0
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v4, v5

    .line 1221
    move v5, v4

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_1

    move v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_2

    .line 1222
    :cond_1
    const/4 v5, 0x0

    move v6, v1

    .line 1223
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    move v7, v3

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v4

    .line 1222
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1225
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .prologue
    .line 1839
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v1, v3

    .line 1840
    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1841
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1842
    const/4 v3, 0x0

    move v0, v3

    .line 1845
    :goto_1
    return v0

    .line 1840
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1845
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method areAllStartsEqual()Z
    .locals 5

    .prologue
    .line 1849
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v1, v3

    .line 1850
    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_1

    .line 1851
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1852
    const/4 v3, 0x0

    move v0, v3

    .line 1855
    :goto_1
    return v0

    .line 1850
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1855
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v2, :cond_0

    .line 528
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 2001
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 3

    .prologue
    .line 1996
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkForGaps()Z
    .locals 11

    .prologue
    .line 269
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v6

    if-nez v6, :cond_1

    .line 270
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 310
    :goto_0
    return v0

    .line 273
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    .line 274
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    move v1, v6

    .line 275
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    move v2, v6

    .line 280
    :goto_1
    move v6, v1

    if-nez v6, :cond_3

    .line 281
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 282
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 283
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 284
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 285
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 286
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 277
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    move v1, v6

    .line 278
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    move v2, v6

    goto :goto_1

    .line 289
    :cond_3
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v6, :cond_4

    .line 290
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 292
    :cond_4
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    :goto_2
    move v3, v6

    .line 293
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v3

    const/4 v10, 0x1

    .line 294
    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    move-object v4, v6

    .line 295
    move-object v6, v4

    if-nez v6, :cond_6

    .line 296
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 297
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    .line 298
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 292
    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    .line 300
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move v7, v1

    move-object v8, v4

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v3

    const/4 v10, -0x1

    mul-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    .line 301
    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    move-object v5, v6

    .line 303
    move-object v6, v5

    if-nez v6, :cond_7

    .line 304
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v4

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    .line 308
    :goto_3
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 309
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 310
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 306
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    move-result v6

    goto :goto_3
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 2247
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move v0, v2

    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 14
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2097
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v9, :cond_1

    move v9, v1

    :goto_0
    move v5, v9

    .line 2098
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_0

    move v9, v5

    if-nez v9, :cond_2

    .line 2129
    :cond_0
    :goto_1
    return-void

    .line 2097
    :cond_1
    move v9, v2

    goto :goto_0

    .line 2102
    :cond_2
    move-object v9, v0

    move v10, v5

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2105
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    array-length v9, v9

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v9, v10, :cond_4

    .line 2106
    :cond_3
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v10, v10, [I

    iput-object v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 2109
    :cond_4
    const/4 v9, 0x0

    move v6, v9

    .line 2110
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v9, v10, :cond_7

    .line 2112
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v9, v9, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    .line 2113
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v9, v9, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v11, v7

    aget-object v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v10

    sub-int/2addr v9, v10

    .line 2114
    :goto_3
    move v8, v9

    .line 2115
    move v9, v8

    if-ltz v9, :cond_5

    .line 2117
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    move v10, v6

    move v11, v8

    aput v11, v9, v10

    .line 2118
    add-int/lit8 v6, v6, 0x1

    .line 2110
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2114
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v10, v7

    aget-object v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    sub-int/2addr v9, v10

    goto :goto_3

    .line 2121
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->sort([III)V

    .line 2124
    const/4 v9, 0x0

    move v7, v9

    :goto_4
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2125
    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    move v12, v7

    aget v11, v11, v12

    invoke-interface {v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 2127
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v10, v11

    iput v10, v9, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 2124
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2129
    :cond_8
    goto/16 :goto_1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1096
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1076
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 7

    .prologue
    .line 2026
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v4

    move v2, v4

    .line 2027
    new-instance v4, Landroid/graphics/PointF;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    move-object v3, v4

    .line 2028
    move v4, v2

    if-nez v4, :cond_0

    .line 2029
    const/4 v4, 0x0

    move-object v0, v4

    .line 2038
    :goto_0
    return-object v0

    .line 2031
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    .line 2032
    move-object v4, v3

    move v5, v2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 2033
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 2038
    :goto_1
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 2035
    :cond_1
    move-object v4, v3

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 2036
    move-object v4, v3

    move v5, v2

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1091
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 998
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 999
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 1004
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 1005
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 1004
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1001
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1007
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 11

    .prologue
    .line 1361
    move-object v0, p0

    move v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    move v2, v9

    .line 1362
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v9

    move v3, v9

    .line 1363
    const/4 v9, 0x0

    move-object v4, v9

    .line 1364
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    :goto_0
    move v9, v5

    if-ltz v9, :cond_4

    .line 1365
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1366
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    move v7, v9

    .line 1367
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    move v8, v9

    .line 1368
    move v9, v8

    move v10, v2

    if-le v9, v10, :cond_0

    move v9, v7

    move v10, v3

    if-lt v9, v10, :cond_1

    .line 1364
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1371
    :cond_1
    move v9, v8

    move v10, v3

    if-le v9, v10, :cond_2

    move v9, v1

    if-nez v9, :cond_3

    .line 1374
    :cond_2
    move-object v9, v6

    move-object v0, v9

    .line 1380
    :goto_2
    return-object v0

    .line 1376
    :cond_3
    move-object v9, v4

    if-nez v9, :cond_0

    .line 1377
    move-object v9, v6

    move-object v4, v9

    goto :goto_1

    .line 1380
    :cond_4
    move-object v9, v4

    move-object v0, v9

    goto :goto_2
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 12

    .prologue
    .line 1331
    move-object v0, p0

    move v1, p1

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v10

    move v2, v10

    .line 1332
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move v3, v10

    .line 1333
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v10

    move v4, v10

    .line 1334
    const/4 v10, 0x0

    move-object v5, v10

    .line 1335
    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v4

    if-ge v10, v11, :cond_4

    .line 1336
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1337
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    move v8, v10

    .line 1338
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move v9, v10

    .line 1339
    move v10, v9

    move v11, v2

    if-le v10, v11, :cond_0

    move v10, v8

    move v11, v3

    if-lt v10, v11, :cond_1

    .line 1335
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1342
    :cond_1
    move v10, v8

    move v11, v2

    if-ge v10, v11, :cond_2

    move v10, v1

    if-nez v10, :cond_3

    .line 1345
    :cond_2
    move-object v10, v7

    move-object v0, v10

    .line 1351
    :goto_2
    return-object v0

    .line 1347
    :cond_3
    move-object v10, v5

    if-nez v10, :cond_0

    .line 1348
    move-object v10, v7

    move-object v5, v10

    goto :goto_1

    .line 1351
    :cond_4
    move-object v10, v5

    move-object v0, v10

    goto :goto_2
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 4

    .prologue
    .line 1319
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v2

    .line 1320
    :goto_0
    move-object v1, v2

    .line 1321
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    return v0

    .line 1320
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1321
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 966
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 967
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 972
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 973
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 972
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 969
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 975
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 1062
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1063
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 1068
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 1069
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 1068
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1065
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1071
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 8

    .prologue
    .line 1030
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1031
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    move-object v1, v3

    .line 1036
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_2

    .line 1037
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v5

    aput v5, v3, v4

    .line 1036
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1032
    :cond_1
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1033
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1039
    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 2222
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    .line 2223
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 2226
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 2233
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 2238
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 2239
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    .line 2241
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method getFirstChildPosition()I
    .locals 5

    .prologue
    .line 2182
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    move v1, v2

    .line 2183
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public getGapStrategy()I
    .locals 2

    .prologue
    .line 499
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    move v0, v1

    return v0
.end method

.method getLastChildPosition()I
    .locals 6

    .prologue
    .line 2177
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    move v1, v2

    .line 2178
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 2251
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getReverseLayout()Z
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    move v0, v1

    return v0
.end method

.method public getSpanCount()I
    .locals 2

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v0, v1

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 22

    .prologue
    .line 338
    move-object/from16 v2, p0

    const/16 v17, 0x0

    move/from16 v3, v17

    .line 339
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v4, v17

    .line 340
    new-instance v17, Ljava/util/BitSet;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/BitSet;-><init>(I)V

    move-object/from16 v5, v17

    .line 341
    move-object/from16 v17, v5

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Ljava/util/BitSet;->set(IIZ)V

    .line 344
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v8, v17

    .line 346
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 347
    move/from16 v17, v4

    move/from16 v6, v17

    .line 348
    move/from16 v17, v3

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v7, v17

    .line 353
    :goto_1
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_2
    move/from16 v9, v17

    .line 354
    move/from16 v17, v6

    move/from16 v10, v17

    :goto_3
    move/from16 v17, v10

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 355
    move-object/from16 v17, v2

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v11, v17

    .line 356
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v12, v17

    .line 357
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 358
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 359
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    .line 398
    :goto_4
    return-object v2

    .line 344
    :cond_0
    const/16 v17, -0x1

    goto :goto_0

    .line 350
    :cond_1
    move/from16 v17, v3

    move/from16 v6, v17

    .line 351
    move/from16 v17, v4

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v7, v17

    goto :goto_1

    .line 353
    :cond_2
    const/16 v17, -0x1

    goto :goto_2

    .line 361
    :cond_3
    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->clear(I)V

    .line 363
    :cond_4
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 354
    :cond_5
    move/from16 v17, v10

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v10, v17

    goto/16 :goto_3

    .line 367
    :cond_6
    move/from16 v17, v10

    move/from16 v18, v9

    add-int v17, v17, v18

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 368
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v9

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v13, v17

    .line 369
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 370
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 372
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 373
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v16, v17

    .line 374
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 375
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 376
    :cond_7
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 377
    const/16 v17, 0x1

    move/from16 v14, v17

    .line 388
    :cond_8
    :goto_5
    move/from16 v17, v14

    if-eqz v17, :cond_5

    .line 390
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v15, v17

    .line 391
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-gez v17, :cond_b

    const/16 v17, 0x1

    :goto_6
    move/from16 v18, v8

    if-gez v18, :cond_c

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 392
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 380
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 381
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v16, v17

    .line 382
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 383
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 384
    :cond_a
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 385
    const/16 v17, 0x1

    move/from16 v14, v17

    goto :goto_5

    .line 391
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    :cond_c
    const/16 v18, 0x0

    goto :goto_7

    .line 398
    :cond_d
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto/16 :goto_4
.end method

.method public invalidateSpanAssignments()V
    .locals 2

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 549
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 550
    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isLayoutRTL()Z
    .locals 3

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 5

    .prologue
    .line 1460
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1461
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1462
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1464
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 5

    .prologue
    .line 1468
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1469
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 1470
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1469
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1472
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 611
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 612
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 613
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 7

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 324
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    .line 325
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_0

    .line 326
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 330
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 20
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2258
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 2259
    const/16 v16, 0x0

    move-object/from16 v2, v16

    .line 2352
    :goto_0
    return-object v2

    .line 2262
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    .line 2263
    move-object/from16 v16, v7

    if-nez v16, :cond_1

    .line 2264
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto :goto_0

    .line 2267
    :cond_1
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2268
    move-object/from16 v16, v2

    move/from16 v17, v4

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v16

    move/from16 v8, v16

    .line 2269
    move/from16 v16, v8

    const/high16 v17, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2270
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto :goto_0

    .line 2272
    :cond_2
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object/from16 v9, v16

    .line 2273
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v16, v0

    move/from16 v10, v16

    .line 2274
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    .line 2276
    move/from16 v16, v8

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 2277
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v16

    move/from16 v12, v16

    .line 2281
    :goto_1
    move-object/from16 v16, v2

    move/from16 v17, v12

    move-object/from16 v18, v6

    invoke-direct/range {v16 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2282
    move-object/from16 v16, v2

    move/from16 v17, v8

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2284
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v16, v0

    move/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 2285
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v16, v0

    const v17, 0x3eaaaaab

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 2286
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    .line 2287
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 2288
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v19}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v16

    .line 2289
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2290
    move/from16 v16, v10

    if-nez v16, :cond_4

    .line 2291
    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v13, v16

    .line 2292
    move-object/from16 v16, v13

    if-eqz v16, :cond_4

    move-object/from16 v16, v13

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 2293
    move-object/from16 v16, v13

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2279
    :cond_3
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v16

    move/from16 v12, v16

    goto/16 :goto_1

    .line 2299
    :cond_4
    move-object/from16 v16, v2

    move/from16 v17, v8

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2300
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v13, v16

    :goto_2
    move/from16 v16, v13

    if-ltz v16, :cond_6

    .line 2301
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v16, v0

    move/from16 v17, v13

    aget-object v16, v16, v17

    move/from16 v17, v12

    move/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2302
    move-object/from16 v16, v14

    if-eqz v16, :cond_5

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 2303
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2300
    :cond_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 2319
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    const/16 v16, 0x1

    :goto_3
    move/from16 v17, v8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const/16 v16, 0x1

    :goto_5
    move/from16 v13, v16

    .line 2320
    const/16 v16, 0x0

    move-object/from16 v14, v16

    .line 2321
    move/from16 v16, v10

    if-nez v16, :cond_d

    .line 2322
    move-object/from16 v16, v2

    move/from16 v17, v13

    if-eqz v17, :cond_c

    .line 2323
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v17

    .line 2322
    :goto_6
    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2325
    move-object/from16 v16, v14

    if-eqz v16, :cond_d

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 2326
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2307
    :cond_7
    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_7
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 2308
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v16, v0

    move/from16 v17, v13

    aget-object v16, v16, v17

    move/from16 v17, v12

    move/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2309
    move-object/from16 v16, v14

    if-eqz v16, :cond_8

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 2310
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2307
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2319
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    .line 2324
    :cond_c
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v17

    goto :goto_6

    .line 2330
    :cond_d
    move-object/from16 v16, v2

    move/from16 v17, v8

    invoke-direct/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 2331
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v15, v16

    :goto_8
    move/from16 v16, v15

    if-ltz v16, :cond_11

    .line 2332
    move/from16 v16, v15

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 2331
    :cond_e
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 2335
    :cond_f
    move-object/from16 v16, v2

    move/from16 v17, v13

    if-eqz v17, :cond_10

    .line 2336
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move/from16 v18, v15

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v17

    .line 2335
    :goto_9
    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2338
    move-object/from16 v16, v14

    if-eqz v16, :cond_e

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_e

    .line 2339
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2337
    :cond_10
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move/from16 v18, v15

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v17

    goto :goto_9

    .line 2352
    :cond_11
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2343
    :cond_12
    const/16 v16, 0x0

    move/from16 v15, v16

    :goto_a
    move/from16 v16, v15

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 2344
    move-object/from16 v16, v2

    move/from16 v17, v13

    if-eqz v17, :cond_13

    .line 2345
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move/from16 v18, v15

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result v17

    .line 2344
    :goto_b
    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2347
    move-object/from16 v16, v14

    if-eqz v16, :cond_14

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_14

    .line 2348
    move-object/from16 v16, v14

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 2346
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object/from16 v17, v0

    move/from16 v18, v15

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result v17

    goto :goto_b

    .line 2343
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto :goto_a
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    .prologue
    .line 1294
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1295
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 1296
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v6

    move-object v2, v6

    .line 1297
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 1298
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v4, v6

    .line 1302
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v5, v6

    .line 1303
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_3

    .line 1304
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1305
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1311
    :cond_2
    :goto_1
    goto :goto_0

    .line 1307
    :cond_3
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1308
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_1
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 1481
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1482
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 1486
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1487
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1488
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 9

    .prologue
    .line 1492
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    const/16 v8, 0x8

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1493
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .prologue
    .line 1476
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1477
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 1498
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1499
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 605
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 734
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 735
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 736
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 737
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 738
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 739
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_1

    .line 1231
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 1232
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1233
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1234
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 1236
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 1240
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1244
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_0

    .line 1245
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    move-object v0, v4

    .line 1289
    :goto_0
    return-object v0

    .line 1247
    :cond_0
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    move-object v1, v4

    .line 1248
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1249
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1250
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1252
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v4, :cond_2

    .line 1253
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1254
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v5, v5

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1255
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1260
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 1261
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v5

    .line 1262
    :goto_2
    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1263
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1264
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1265
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v5, v5, [I

    iput-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1266
    const/4 v4, 0x0

    move v2, v4

    :goto_3
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_5

    .line 1268
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v4, :cond_4

    .line 1269
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    move v3, v4

    .line 1270
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 1271
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1279
    :cond_1
    :goto_4
    move-object v4, v1

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    move v5, v2

    move v6, v3

    aput v6, v4, v5

    .line 1266
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1257
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    .line 1262
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v5

    goto :goto_2

    .line 1274
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v5, v2

    aget-object v4, v4, v5

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    move v3, v4

    .line 1275
    move v4, v3

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 1276
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_4

    .line 1289
    :cond_5
    :goto_5
    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    .line 1282
    :cond_6
    move-object v4, v1

    const/4 v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1283
    move-object v4, v1

    const/4 v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1284
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto :goto_5
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 316
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v2

    .line 318
    :cond_0
    return-void
.end method

.method prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .prologue
    .line 2134
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    if-lez v5, :cond_0

    .line 2135
    const/4 v5, 0x1

    move v4, v5

    .line 2136
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v5

    move v3, v5

    .line 2141
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 2142
    move-object v5, v0

    move v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2143
    move-object v5, v0

    move v6, v4

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2144
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 2145
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 2146
    return-void

    .line 2138
    :cond_0
    const/4 v5, -0x1

    move v4, v5

    .line 2139
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v5

    move v3, v5

    goto :goto_0
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 11

    .prologue
    .line 2149
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    move v7, v1

    if-nez v7, :cond_1

    .line 2150
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 2173
    :goto_0
    return v0

    .line 2153
    :cond_1
    move-object v7, v0

    move v8, v1

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2154
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    move v4, v7

    .line 2155
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v7, v7, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    move v5, v7

    .line 2157
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 2158
    move v7, v1

    move v6, v7

    .line 2168
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v6

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 2170
    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2171
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v8, 0x0

    iput v8, v7, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    .line 2172
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    .line 2173
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 2159
    :cond_2
    move v7, v1

    if-gez v7, :cond_3

    .line 2160
    move v7, v4

    neg-int v7, v7

    move v6, v7

    goto :goto_1

    .line 2162
    :cond_3
    move v7, v4

    move v6, v7

    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 2007
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 2051
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 2052
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2054
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2055
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2056
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2057
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 5

    .prologue
    .line 2073
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 2074
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2076
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2077
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2078
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 2079
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 2013
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 6

    .prologue
    .line 512
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 513
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne v2, v3, :cond_0

    .line 523
    :goto_0
    return-void

    .line 516
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 518
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 522
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 523
    goto :goto_0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 12

    .prologue
    .line 586
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    .line 587
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 588
    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 589
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 590
    move v9, v3

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    .line 591
    move v9, v2

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v10, v11

    move v11, v6

    add-int/2addr v10, v11

    move-object v11, v0

    .line 592
    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v11

    .line 591
    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 599
    :goto_0
    move-object v9, v0

    move v10, v4

    move v11, v5

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    .line 600
    return-void

    .line 594
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move v10, v6

    add-int/2addr v9, v10

    move v8, v9

    .line 595
    move v9, v2

    move v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v4, v9

    .line 596
    move v9, v3

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr v10, v11

    move v11, v7

    add-int/2addr v10, v11

    move-object v11, v0

    .line 597
    invoke-virtual {v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v11

    .line 596
    invoke-static {v9, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result v9

    move v5, v9

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 448
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 449
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "invalid orientation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 452
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_1

    .line 460
    :goto_0
    return-void

    .line 455
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 456
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v2, v3

    .line 457
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 458
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 459
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 460
    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 4

    .prologue
    .line 476
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 477
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 478
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 480
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 481
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 482
    return-void
.end method

.method public setSpanCount(I)V
    .locals 10

    .prologue
    .line 428
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 429
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq v3, v4, :cond_1

    .line 430
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 431
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 432
    move-object v3, v0

    new-instance v4, Ljava/util/BitSet;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 433
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v4, v4, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iput-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 434
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_0

    .line 435
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move v4, v2

    new-instance v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v5, v3, v4

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    .line 439
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 9

    .prologue
    .line 2044
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 2045
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2046
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2047
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 943
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 11

    .prologue
    .line 857
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 858
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 931
    :goto_0
    return v0

    .line 861
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 862
    :cond_2
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 863
    move-object v7, v0

    const/high16 v8, -0x80000000

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 864
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 867
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_f

    .line 870
    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 871
    move-object v7, v3

    if-eqz v7, :cond_c

    .line 874
    move-object v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v8

    .line 875
    :goto_1
    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 876
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_7

    .line 877
    move-object v7, v2

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_6

    .line 878
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 880
    move-object v7, v2

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 886
    :goto_2
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 875
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v8

    goto :goto_1

    .line 882
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v7, v8

    move v4, v7

    .line 884
    move-object v7, v2

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_2

    .line 890
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 891
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    if-le v7, v8, :cond_9

    .line 893
    move-object v7, v2

    move-object v8, v2

    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_8

    .line 894
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    .line 895
    :goto_3
    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 896
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 895
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    goto :goto_3

    .line 899
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 900
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 901
    move v7, v5

    if-gez v7, :cond_a

    .line 902
    move-object v7, v2

    move v8, v5

    neg-int v8, v8

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 903
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 905
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v3

    .line 906
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 907
    move v7, v6

    if-gez v7, :cond_b

    .line 908
    move-object v7, v2

    move v8, v6

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 909
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 912
    :cond_b
    move-object v7, v2

    const/high16 v8, -0x80000000

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 931
    :goto_4
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 916
    :cond_c
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 917
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_e

    .line 918
    move-object v7, v0

    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v7

    move v4, v7

    .line 920
    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 921
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 925
    :goto_6
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto :goto_4

    .line 920
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 923
    :cond_e
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_6

    .line 928
    :cond_f
    move-object v7, v2

    const/high16 v8, -0x80000000

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 929
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_4
.end method

.method updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 6

    .prologue
    .line 830
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 841
    :goto_0
    return-void

    .line 833
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 834
    goto :goto_0

    .line 839
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 840
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 841
    goto :goto_0
.end method

.method updateMeasureSpecs(I)V
    .locals 5

    .prologue
    .line 935
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 937
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 938
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v4

    .line 937
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 939
    return-void
.end method
