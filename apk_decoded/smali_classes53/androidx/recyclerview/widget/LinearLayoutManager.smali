.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;,
        Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReusableIntPair:[I

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 67
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 94
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 101
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 108
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 114
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 120
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 126
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 130
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 136
    move-object v4, v0

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 141
    move-object v4, v0

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 146
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 151
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 170
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 171
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 67
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 94
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 101
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 108
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 114
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 120
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 126
    move-object v6, v0

    const/high16 v7, -0x80000000

    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 130
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 136
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    .line 141
    move-object v6, v0

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 146
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 151
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    .line 184
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 185
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 186
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 187
    move-object v6, v0

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 188
    return-void
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1181
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1182
    const/4 v2, 0x0

    move v0, v2

    .line 1185
    :goto_0
    return v0

    .line 1184
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1185
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1186
    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1187
    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1185
    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1186
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9

    .prologue
    .line 1170
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1171
    const/4 v2, 0x0

    move v0, v2

    .line 1174
    :goto_0
    return v0

    .line 1173
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1174
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1175
    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1176
    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1174
    invoke-static/range {v2 .. v8}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1175
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1193
    const/4 v2, 0x0

    move v0, v2

    .line 1196
    :goto_0
    return v0

    .line 1195
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1196
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    .line 1197
    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x1

    .line 1198
    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1196
    invoke-static/range {v2 .. v7}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1197
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .locals 4

    .prologue
    .line 1924
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;
    .locals 4

    .prologue
    .line 1928
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;
    .locals 2

    .prologue
    .line 1912
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    .line 1913
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;
    .locals 2

    .prologue
    .line 1919
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    .line 1920
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 11

    .prologue
    .line 969
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 970
    const/4 v7, 0x0

    move v6, v7

    .line 971
    move v7, v5

    if-lez v7, :cond_0

    .line 972
    move-object v7, v0

    move v8, v5

    neg-int v8, v8

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 977
    move v7, v1

    move v8, v6

    add-int/2addr v7, v8

    move v1, v7

    .line 978
    move v7, v4

    if-eqz v7, :cond_1

    .line 980
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 981
    move v7, v5

    if-lez v7, :cond_1

    .line 982
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 983
    move v7, v5

    move v8, v6

    add-int/2addr v7, v8

    move v0, v7

    .line 986
    :goto_0
    return v0

    .line 974
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 986
    :cond_1
    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 11

    .prologue
    .line 994
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 995
    const/4 v7, 0x0

    move v6, v7

    .line 996
    move v7, v5

    if-lez v7, :cond_0

    .line 998
    move-object v7, v0

    move v8, v5

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    neg-int v7, v7

    move v6, v7

    .line 1002
    move v7, v1

    move v8, v6

    add-int/2addr v7, v8

    move v1, v7

    .line 1003
    move v7, v4

    if-eqz v7, :cond_1

    .line 1005
    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 1006
    move v7, v5

    if-lez v7, :cond_1

    .line 1007
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move v8, v5

    neg-int v8, v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1008
    move v7, v6

    move v8, v5

    sub-int/2addr v7, v8

    move v0, v7

    .line 1011
    :goto_0
    return v0

    .line 1000
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1011
    :cond_1
    move v7, v6

    move v0, v7

    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 4

    .prologue
    .line 1775
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 4

    .prologue
    .line 1765
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 20

    .prologue
    .line 759
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v15, v3

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v15

    if-eqz v15, :cond_0

    move-object v15, v3

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v1

    .line 760
    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v15

    if-nez v15, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    const/4 v15, 0x0

    move v6, v15

    const/4 v15, 0x0

    move v7, v15

    .line 765
    move-object v15, v2

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v15

    move-object v8, v15

    .line 766
    move-object v15, v8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move v9, v15

    .line 767
    move-object v15, v1

    move-object/from16 v16, v1

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v15

    move v10, v15

    .line 768
    const/4 v15, 0x0

    move v11, v15

    :goto_1
    move v15, v11

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 769
    move-object v15, v8

    move/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v12, v15

    .line 770
    move-object v15, v12

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 768
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 773
    :cond_2
    move-object v15, v12

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v15

    move v13, v15

    .line 774
    move v15, v13

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 775
    const/4 v15, -0x1

    :goto_4
    move v14, v15

    .line 776
    move v15, v14

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 777
    move v15, v6

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    move v6, v15

    goto :goto_2

    .line 774
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    .line 775
    :cond_4
    const/4 v15, 0x1

    goto :goto_4

    .line 779
    :cond_5
    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    move v7, v15

    goto :goto_2

    .line 787
    :cond_6
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iput-object v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 788
    move v15, v6

    if-lez v15, :cond_7

    .line 789
    move-object v15, v1

    invoke-direct {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v15

    move-object v11, v15

    .line 790
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    move/from16 v17, v4

    invoke-direct/range {v15 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 791
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move/from16 v16, v6

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 792
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 793
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 794
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v15

    .line 797
    :cond_7
    move v15, v7

    if-lez v15, :cond_8

    .line 798
    move-object v15, v1

    invoke-direct {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v15

    move-object v11, v15

    .line 799
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    move/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 800
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move/from16 v16, v7

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 801
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 802
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 803
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v15

    .line 805
    :cond_8
    move-object v15, v1

    iget-object v15, v15, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 806
    goto/16 :goto_0
.end method

.method private logChildren()V
    .locals 8

    .prologue
    .line 2116
    move-object v0, p0

    const-string v3, "LinearLayoutManager"

    const-string v4, "internal representation of views on the screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2117
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2118
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 2119
    const-string v3, "LinearLayoutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", coord:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v2

    .line 2120
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2119
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2122
    :cond_0
    const-string v3, "LinearLayoutManager"

    const-string v4, "=============="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2123
    return-void
.end method

.method private recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V
    .locals 9

    .prologue
    .line 1550
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v5, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move v3, v5

    .line 1554
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    move v4, v5

    .line 1555
    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1556
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1560
    :goto_1
    goto :goto_0

    .line 1558
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    goto :goto_1
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 8

    .prologue
    .line 1425
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    move v6, v3

    if-ne v5, v6, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1431
    :cond_0
    move v5, v3

    move v6, v2

    if-le v5, v6, :cond_2

    .line 1432
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v2

    if-lt v5, v6, :cond_1

    .line 1433
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1432
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1440
    :cond_1
    goto :goto_0

    .line 1436
    :cond_2
    move v5, v2

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_1

    .line 1437
    move-object v5, v0

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1436
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 12

    .prologue
    .line 1506
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    move v4, v8

    .line 1507
    move v8, v2

    if-gez v8, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1514
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v8

    move v9, v2

    sub-int/2addr v8, v9

    move v9, v3

    add-int/2addr v8, v9

    move v5, v8

    .line 1515
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_4

    .line 1516
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_3

    .line 1517
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1518
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    move v9, v5

    if-lt v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v7

    .line 1519
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v8

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 1521
    :cond_1
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v6

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1522
    goto :goto_0

    .line 1516
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1536
    :cond_3
    goto :goto_0

    .line 1526
    :cond_4
    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    :goto_2
    move v8, v6

    if-ltz v8, :cond_3

    .line 1527
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1528
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    move v9, v5

    if-lt v8, v9, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v7

    .line 1529
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v8

    move v9, v5

    if-ge v8, v9, :cond_6

    .line 1531
    :cond_5
    move-object v8, v0

    move-object v9, v1

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v11, v6

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1532
    goto :goto_0

    .line 1526
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 12

    .prologue
    .line 1457
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, v2

    if-gez v8, :cond_0

    .line 1488
    :goto_0
    return-void

    .line 1465
    :cond_0
    move v8, v2

    move v9, v3

    sub-int/2addr v8, v9

    move v4, v8

    .line 1466
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    move v5, v8

    .line 1467
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_4

    .line 1468
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    :goto_1
    move v8, v6

    if-ltz v8, :cond_3

    .line 1469
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1470
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    move v9, v4

    if-gt v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v7

    .line 1471
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v8

    move v9, v4

    if-le v8, v9, :cond_2

    .line 1473
    :cond_1
    move-object v8, v0

    move-object v9, v1

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v11, v6

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1474
    goto :goto_0

    .line 1468
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1488
    :cond_3
    goto :goto_0

    .line 1478
    :cond_4
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    .line 1479
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1480
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    move v9, v4

    if-gt v8, v9, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v7

    .line 1481
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v8

    move v9, v4

    if-le v8, v9, :cond_6

    .line 1483
    :cond_5
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v6

    invoke-direct {v8, v9, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 1484
    goto :goto_0

    .line 1478
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    .line 365
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 18

    .prologue
    .line 838
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v13

    if-nez v13, :cond_0

    .line 839
    const/4 v13, 0x0

    move v1, v13

    .line 875
    :goto_0
    return v1

    .line 841
    :cond_0
    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v13

    move-object v5, v13

    .line 842
    move-object v13, v5

    if-eqz v13, :cond_1

    move-object v13, v4

    move-object v14, v5

    move-object v15, v3

    invoke-virtual {v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 843
    move-object v13, v4

    move-object v14, v5

    move-object v15, v1

    move-object/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    .line 844
    const/4 v13, 0x1

    move v1, v13

    goto :goto_0

    .line 846
    :cond_1
    move-object v13, v1

    iget-boolean v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v14, v1

    iget-boolean v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v13, v14, :cond_2

    .line 847
    const/4 v13, 0x0

    move v1, v13

    goto :goto_0

    .line 849
    :cond_2
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v17, v0

    .line 850
    invoke-virtual/range {v13 .. v17}, Landroidx/recyclerview/widget/LinearLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;

    move-result-object v13

    move-object v6, v13

    .line 855
    move-object v13, v6

    if-eqz v13, :cond_8

    .line 856
    move-object v13, v4

    move-object v14, v6

    move-object v15, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 859
    move-object v13, v3

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v13

    if-nez v13, :cond_4

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 861
    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v14, v6

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v13

    move v7, v13

    .line 862
    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v14, v6

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    move v8, v13

    .line 863
    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v13

    move v9, v13

    .line 864
    move-object v13, v1

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v13

    move v10, v13

    .line 867
    move v13, v8

    move v14, v9

    if-gt v13, v14, :cond_5

    move v13, v7

    move v14, v9

    if-ge v13, v14, :cond_5

    const/4 v13, 0x1

    :goto_1
    move v11, v13

    .line 868
    move v13, v7

    move v14, v10

    if-lt v13, v14, :cond_6

    move v13, v8

    move v14, v10

    if-le v13, v14, :cond_6

    const/4 v13, 0x1

    :goto_2
    move v12, v13

    .line 869
    move v13, v11

    if-nez v13, :cond_3

    move v13, v12

    if-eqz v13, :cond_4

    .line 870
    :cond_3
    move-object v13, v4

    move-object v14, v4

    iget-boolean v14, v14, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v14, :cond_7

    move v14, v10

    :goto_3
    iput v14, v13, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 873
    :cond_4
    const/4 v13, 0x1

    move v1, v13

    goto/16 :goto_0

    .line 867
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 868
    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    .line 870
    :cond_7
    move v14, v9

    goto :goto_3

    .line 875
    :cond_8
    const/4 v13, 0x0

    move v1, v13

    goto/16 :goto_0
.end method

.method private updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 10

    .prologue
    .line 883
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 884
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 961
    :goto_0
    return v0

    .line 887
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 888
    :cond_2
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 889
    move-object v7, v0

    const/high16 v8, -0x80000000

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 893
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 898
    :cond_3
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 899
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 902
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 903
    move-object v7, v2

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v7, :cond_4

    .line 904
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 910
    :goto_1
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 907
    :cond_4
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_1

    .line 913
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_e

    .line 914
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 915
    move-object v7, v3

    if-eqz v7, :cond_a

    .line 916
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 917
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    if-le v7, v8, :cond_6

    .line 919
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 920
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 922
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 923
    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 924
    move v7, v5

    if-gez v7, :cond_7

    .line 925
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 926
    move-object v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 927
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 929
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v3

    .line 930
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 931
    move v7, v6

    if-gez v7, :cond_8

    .line 932
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 933
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 934
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 936
    :cond_8
    move-object v7, v2

    move-object v8, v2

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_9

    .line 937
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 938
    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v9

    add-int/2addr v8, v9

    .line 939
    :goto_2
    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 949
    :goto_3
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 939
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    goto :goto_2

    .line 941
    :cond_a
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_b

    .line 943
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v4, v7

    .line 944
    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move v9, v4

    if-ge v8, v9, :cond_c

    const/4 v8, 0x1

    :goto_4
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 947
    :cond_b
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_3

    .line 944
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 952
    :cond_e
    move-object v7, v2

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 954
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_f

    .line 955
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 961
    :goto_6
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 958
    :cond_f
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_6
.end method

.method private updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 8

    .prologue
    .line 810
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 828
    :goto_0
    return-void

    .line 817
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 821
    goto :goto_0

    .line 826
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 827
    move-object v4, v3

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_1
    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 828
    goto :goto_0

    .line 827
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 14

    .prologue
    .line 1235
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v11

    iput-boolean v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1236
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v1

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1237
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1238
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1239
    move-object v10, v0

    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 1240
    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v5, v10

    .line 1241
    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v6, v10

    .line 1242
    move v10, v1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_0
    move v7, v10

    .line 1243
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v7

    if-eqz v11, :cond_2

    move v11, v6

    :goto_1
    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1244
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v7

    if-eqz v11, :cond_3

    move v11, v5

    :goto_2
    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 1246
    move v10, v7

    if-eqz v10, :cond_5

    .line 1247
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1249
    move-object v10, v0

    invoke-direct {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v10

    move-object v9, v10

    .line 1251
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v11, :cond_4

    const/4 v11, -0x1

    .line 1252
    :goto_3
    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1253
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1254
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1256
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1257
    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v11

    sub-int/2addr v10, v11

    move v8, v10

    .line 1269
    :goto_4
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v2

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1270
    move v10, v3

    if-eqz v10, :cond_0

    .line 1271
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v12, v8

    sub-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1273
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v8

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1274
    return-void

    .line 1242
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1243
    :cond_2
    move v11, v5

    goto :goto_1

    .line 1244
    :cond_3
    move v11, v6

    goto :goto_2

    .line 1252
    :cond_4
    const/4 v11, 0x1

    goto :goto_3

    .line 1260
    :cond_5
    move-object v10, v0

    invoke-direct {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v10

    move-object v9, v10

    .line 1261
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1262
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    .line 1263
    :goto_5
    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1264
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1265
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v9

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1266
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    neg-int v10, v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1267
    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    add-int/2addr v10, v11

    move v8, v10

    goto :goto_4

    .line 1263
    :cond_6
    const/4 v11, -0x1

    goto :goto_5
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 6

    .prologue
    .line 1019
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1020
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    .line 1021
    :goto_0
    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1022
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1023
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v4, 0x1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1024
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1025
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1026
    return-void

    .line 1021
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5

    .prologue
    .line 1015
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 1016
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 6

    .prologue
    .line 1033
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1034
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1035
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 1036
    :goto_0
    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1037
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v4, -0x1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1038
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1039
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1041
    return-void

    .line 1036
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5

    .prologue
    .line 1029
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move-object v4, v1

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 1030
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1413
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v2, :cond_0

    .line 1414
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1416
    :cond_0
    return-void
.end method

.method protected calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x0

    move v3, v6

    .line 486
    const/4 v6, 0x0

    move v4, v6

    .line 491
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v6

    move v5, v6

    .line 492
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 493
    move v6, v5

    move v3, v6

    .line 498
    :goto_0
    move-object v6, v2

    const/4 v7, 0x0

    move v8, v3

    aput v8, v6, v7

    .line 499
    move-object v6, v2

    const/4 v7, 0x1

    move v8, v4

    aput v8, v6, v7

    .line 500
    return-void

    .line 495
    :cond_0
    move v6, v5

    move v4, v6

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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
    .line 306
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

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

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 13

    .prologue
    .line 1372
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v8, :cond_1

    move v8, v1

    :goto_0
    move v5, v8

    .line 1373
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v5

    if-nez v8, :cond_2

    .line 1383
    :cond_0
    :goto_1
    return-void

    .line 1372
    :cond_1
    move v8, v2

    goto :goto_0

    .line 1378
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1379
    move v8, v5

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    move v6, v8

    .line 1380
    move v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v7, v8

    .line 1381
    move-object v8, v0

    move v9, v6

    move v10, v7

    const/4 v11, 0x1

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1382
    move-object v8, v0

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 1383
    goto :goto_1

    .line 1379
    :cond_3
    const/4 v8, -0x1

    goto :goto_2
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 11

    .prologue
    .line 1294
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1296
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    move v3, v8

    .line 1297
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    move v4, v8

    .line 1308
    :goto_0
    move v8, v3

    if-eqz v8, :cond_3

    .line 1309
    const/4 v8, -0x1

    .line 1310
    :goto_1
    move v5, v8

    .line 1311
    move v8, v4

    move v6, v8

    .line 1312
    const/4 v8, 0x0

    move v7, v8

    :goto_2
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v8, v9, :cond_4

    .line 1313
    move v8, v6

    if-ltz v8, :cond_4

    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_4

    .line 1314
    move-object v8, v2

    move v9, v6

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1318
    move v8, v6

    move v9, v5

    add-int/2addr v8, v9

    move v6, v8

    .line 1312
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1299
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1300
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move v3, v8

    .line 1301
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 1302
    move v8, v3

    if-eqz v8, :cond_1

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_3
    move v4, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_3

    .line 1304
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move v4, v8

    goto :goto_0

    .line 1310
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 1320
    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 9

    .prologue
    .line 1283
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v4, v5

    .line 1284
    move v5, v4

    if-ltz v5, :cond_0

    move v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1285
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x0

    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 1287
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1151
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1141
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1161
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 9

    .prologue
    .line 513
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 514
    const/4 v4, 0x0

    move-object v0, v4

    .line 521
    :goto_0
    return-object v0

    .line 516
    :cond_0
    move-object v4, v0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    move v2, v4

    .line 517
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v4, v5, :cond_2

    const/4 v4, -0x1

    :goto_2
    move v3, v4

    .line 518
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_3

    .line 519
    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    goto :goto_0

    .line 517
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 521
    :cond_3
    new-instance v4, Landroid/graphics/PointF;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v3

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1156
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1146
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .prologue
    .line 1166
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    .line 1720
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 1753
    const/high16 v2, -0x80000000

    move v0, v2

    :goto_0
    return v0

    .line 1722
    :sswitch_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1723
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1724
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1725
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1727
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1730
    :sswitch_1
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1731
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1732
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1733
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 1735
    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1738
    :sswitch_2
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    .line 1739
    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_1

    .line 1741
    :sswitch_3
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    .line 1742
    :cond_5
    const/high16 v2, -0x80000000

    goto :goto_2

    .line 1744
    :sswitch_4
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_6

    const/4 v2, -0x1

    :goto_3
    move v0, v2

    goto :goto_0

    .line 1745
    :cond_6
    const/high16 v2, -0x80000000

    goto :goto_3

    .line 1747
    :sswitch_5
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    move v0, v2

    goto :goto_0

    .line 1748
    :cond_7
    const/high16 v2, -0x80000000

    goto :goto_4

    .line 1720
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

.method createLayoutState()Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .locals 4

    .prologue
    .line 1059
    move-object v0, p0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 3

    .prologue
    .line 1048
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    if-nez v1, :cond_0

    .line 1049
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->createLayoutState()Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    .line 1051
    :cond_0
    return-void
.end method

.method fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 14

    .prologue
    .line 1576
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v5, v8

    .line 1577
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_1

    .line 1579
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v8, :cond_0

    .line 1580
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1582
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 1584
    :cond_1
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1585
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutChunkResult:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    move-object v7, v8

    .line 1586
    :cond_2
    move-object v8, v2

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v8, :cond_3

    move v8, v6

    if-lez v8, :cond_4

    :cond_3
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1587
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1591
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1595
    move-object v8, v7

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v8, :cond_5

    .line 1626
    :cond_4
    :goto_0
    move v8, v5

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v8, v9

    move v0, v8

    return v0

    .line 1598
    :cond_5
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v10, v7

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    move-object v11, v2

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1605
    move-object v8, v7

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v8, :cond_6

    move-object v8, v2

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v8, :cond_6

    move-object v8, v3

    .line 1606
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1607
    :cond_6
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move-object v10, v7

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1609
    move v8, v6

    move-object v9, v7

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v8, v9

    move v6, v8

    .line 1612
    :cond_7
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_9

    .line 1613
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v7

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1614
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v8, :cond_8

    .line 1615
    move-object v8, v2

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v10, v2

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v9, v10

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1617
    :cond_8
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)V

    .line 1619
    :cond_9
    move v8, v4

    if-eqz v8, :cond_2

    move-object v8, v7

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v8, :cond_2

    .line 1620
    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1967
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1968
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1805
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 1806
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1809
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1787
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    .line 1788
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1791
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1950
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1951
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 7

    .prologue
    .line 2007
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2008
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 7

    .prologue
    .line 1990
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 1991
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 11

    .prologue
    .line 2039
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2040
    move v6, v2

    move v7, v1

    if-le v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 2041
    move v6, v3

    if-nez v6, :cond_2

    .line 2042
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    .line 2058
    :goto_1
    return-object v0

    .line 2040
    :cond_0
    move v6, v2

    move v7, v1

    if-ge v6, v7, :cond_1

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2044
    :cond_2
    const/4 v6, 0x0

    move v4, v6

    .line 2045
    const/4 v6, 0x0

    move v5, v6

    .line 2046
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2047
    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 2048
    const/16 v6, 0x4104

    move v4, v6

    .line 2050
    const/16 v6, 0x4004

    move v5, v6

    .line 2058
    :goto_2
    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v6, :cond_4

    .line 2059
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v6

    .line 2058
    :goto_3
    move-object v0, v6

    goto :goto_1

    .line 2053
    :cond_3
    const/16 v6, 0x1041

    move v4, v6

    .line 2055
    const/16 v6, 0x1001

    move v5, v6

    goto :goto_2

    .line 2061
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move v7, v1

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v6

    goto :goto_3
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 12

    .prologue
    .line 2017
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2018
    const/4 v7, 0x0

    move v5, v7

    .line 2019
    const/4 v7, 0x0

    move v6, v7

    .line 2020
    move v7, v3

    if-eqz v7, :cond_1

    .line 2021
    const/16 v7, 0x6003

    move v5, v7

    .line 2027
    :goto_0
    move v7, v4

    if-eqz v7, :cond_0

    .line 2028
    const/16 v7, 0x140

    move v6, v7

    .line 2031
    :cond_0
    move-object v7, v0

    iget v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v7, :cond_2

    .line 2032
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move v8, v1

    move v9, v2

    move v10, v5

    move v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v7

    .line 2031
    :goto_1
    move-object v0, v7

    return-object v0

    .line 2024
    :cond_1
    const/16 v7, 0x140

    move v5, v7

    goto :goto_0

    .line 2034
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroidx/recyclerview/widget/ViewBoundsCheck;

    move v8, v1

    move v9, v2

    move v10, v5

    move v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object v7

    goto :goto_1
.end method

.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;
    .locals 25

    .prologue
    .line 1837
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1840
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 1841
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v23

    move/from16 v8, v23

    .line 1842
    const/16 v23, 0x1

    move/from16 v9, v23

    .line 1843
    move/from16 v23, v6

    if-eqz v23, :cond_0

    .line 1844
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v23

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v7, v23

    .line 1845
    const/16 v23, -0x1

    move/from16 v8, v23

    .line 1846
    const/16 v23, -0x1

    move/from16 v9, v23

    .line 1849
    :cond_0
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v23

    move/from16 v10, v23

    .line 1851
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v23

    move/from16 v11, v23

    .line 1852
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v23

    move/from16 v12, v23

    .line 1854
    const/16 v23, 0x0

    move-object/from16 v13, v23

    .line 1855
    const/16 v23, 0x0

    move-object/from16 v14, v23

    .line 1856
    const/16 v23, 0x0

    move-object/from16 v15, v23

    .line 1858
    move/from16 v23, v7

    move/from16 v16, v23

    :goto_0
    move/from16 v23, v16

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 1859
    move-object/from16 v23, v2

    move/from16 v24, v16

    invoke-virtual/range {v23 .. v24}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v17, v23

    .line 1860
    move-object/from16 v23, v2

    move-object/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v23

    move/from16 v18, v23

    .line 1861
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v23, v0

    move-object/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v23

    move/from16 v19, v23

    .line 1862
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object/from16 v23, v0

    move-object/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v23

    move/from16 v20, v23

    .line 1863
    move/from16 v23, v18

    if-ltz v23, :cond_1

    move/from16 v23, v18

    move/from16 v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 1864
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual/range {v23 .. v23}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1865
    move-object/from16 v23, v13

    if-nez v23, :cond_1

    .line 1866
    move-object/from16 v23, v17

    move-object/from16 v13, v23

    .line 1858
    :cond_1
    :goto_1
    move/from16 v23, v16

    move/from16 v24, v9

    add-int v23, v23, v24

    move/from16 v16, v23

    goto :goto_0

    .line 1871
    :cond_2
    move/from16 v23, v20

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_4

    move/from16 v23, v19

    move/from16 v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    const/16 v23, 0x1

    :goto_2
    move/from16 v21, v23

    .line 1872
    move/from16 v23, v19

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    move/from16 v23, v20

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    const/16 v23, 0x1

    :goto_3
    move/from16 v22, v23

    .line 1873
    move/from16 v23, v21

    if-nez v23, :cond_3

    move/from16 v23, v22

    if-eqz v23, :cond_9

    .line 1881
    :cond_3
    move/from16 v23, v5

    if-eqz v23, :cond_7

    .line 1882
    move/from16 v23, v22

    if-eqz v23, :cond_6

    .line 1883
    move-object/from16 v23, v17

    move-object/from16 v14, v23

    goto :goto_1

    .line 1871
    :cond_4
    const/16 v23, 0x0

    goto :goto_2

    .line 1872
    :cond_5
    const/16 v23, 0x0

    goto :goto_3

    .line 1884
    :cond_6
    move-object/from16 v23, v15

    if-nez v23, :cond_1

    .line 1885
    move-object/from16 v23, v17

    move-object/from16 v15, v23

    goto :goto_1

    .line 1888
    :cond_7
    move/from16 v23, v21

    if-eqz v23, :cond_8

    .line 1889
    move-object/from16 v23, v17

    move-object/from16 v14, v23

    goto :goto_1

    .line 1890
    :cond_8
    move-object/from16 v23, v15

    if-nez v23, :cond_1

    .line 1891
    move-object/from16 v23, v17

    move-object/from16 v15, v23

    goto :goto_1

    .line 1896
    :cond_9
    move-object/from16 v23, v17

    move-object/from16 v2, v23

    .line 1905
    :goto_4
    return-object v2

    :cond_a
    move-object/from16 v23, v15

    if-eqz v23, :cond_b

    move-object/from16 v23, v15

    :goto_5
    move-object/from16 v2, v23

    goto :goto_4

    .line 1906
    :cond_b
    move-object/from16 v23, v14

    if-eqz v23, :cond_c

    move-object/from16 v23, v14

    goto :goto_5

    :cond_c
    move-object/from16 v23, v13

    goto :goto_5
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 410
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    move v2, v6

    .line 411
    move v6, v2

    if-nez v6, :cond_0

    .line 412
    const/4 v6, 0x0

    move-object v0, v6

    .line 423
    :goto_0
    return-object v0

    .line 414
    :cond_0
    move-object v6, v0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v3, v6

    .line 415
    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v4, v6

    .line 416
    move v6, v4

    if-ltz v6, :cond_1

    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 417
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 418
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 419
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 423
    :cond_1
    move-object v6, v0

    move v7, v1

    invoke-super {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    move v0, v2

    .line 453
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 2

    .prologue
    .line 1366
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    move v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    move v0, v1

    return v0
.end method

.method public getReverseLayout()Z
    .locals 2

    .prologue
    .line 379
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    move v0, v1

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    move v0, v1

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 3

    .prologue
    .line 1044
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

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

.method public isSmoothScrollbarEnabled()Z
    .locals 2

    .prologue
    .line 1229
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move v0, v1

    return v0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 17

    .prologue
    .line 1631
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v11

    move-object v5, v11

    .line 1632
    move-object v11, v5

    if-nez v11, :cond_0

    .line 1638
    move-object v11, v4

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1700
    :goto_0
    return-void

    .line 1641
    :cond_0
    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v6, v11

    .line 1642
    move-object v11, v3

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v11, :cond_5

    .line 1643
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v3

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_1
    if-ne v11, v12, :cond_4

    .line 1645
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1657
    :goto_2
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1658
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    iput v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1660
    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 1661
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1662
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->getWidth()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 1663
    move v11, v9

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    move v7, v11

    .line 1668
    :goto_3
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_9

    .line 1669
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v10, v11

    .line 1670
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v11, v12

    move v8, v11

    .line 1689
    :goto_4
    move-object v11, v0

    move-object v12, v5

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1696
    move-object v11, v6

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v6

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1697
    :cond_1
    move-object v11, v4

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1699
    :cond_2
    move-object v11, v4

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v12

    iput-boolean v12, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1700
    goto/16 :goto_0

    .line 1643
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1647
    :cond_4
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1650
    :cond_5
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v3

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_5
    if-ne v11, v12, :cond_7

    .line 1652
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1650
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 1654
    :cond_7
    move-object v11, v0

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1665
    :cond_8
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v11

    move v7, v11

    .line 1666
    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    goto :goto_3

    .line 1672
    :cond_9
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v8, v11

    .line 1673
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v11, v12

    move v10, v11

    goto :goto_4

    .line 1676
    :cond_a
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v11

    move v8, v11

    .line 1677
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 1679
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 1680
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v9, v11

    .line 1681
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v11, v12

    move v7, v11

    goto/16 :goto_4

    .line 1683
    :cond_b
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v11

    .line 1684
    move-object v11, v3

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move-object v12, v4

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v11, v12

    move v9, v11

    goto/16 :goto_4
.end method

.method onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0

    .prologue
    .line 747
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 235
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v3, :cond_0

    .line 236
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 237
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 239
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 14

    .prologue
    .line 2068
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2069
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 2070
    const/4 v9, 0x0

    move-object v0, v9

    .line 2108
    :goto_0
    return-object v0

    .line 2073
    :cond_0
    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v9

    move v5, v9

    .line 2074
    move v9, v5

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_1

    .line 2075
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 2077
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2078
    const v9, 0x3eaaaaab

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v6, v9

    .line 2079
    move-object v9, v0

    move v10, v5

    move v11, v6

    const/4 v12, 0x0

    move-object v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2080
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/high16 v10, -0x80000000

    iput v10, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 2081
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 2082
    move-object v9, v0

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v12, v4

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v9

    .line 2089
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 2090
    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart()Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2097
    :goto_1
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 2098
    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 2102
    :goto_2
    move-object v9, v8

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2103
    move-object v9, v7

    if-nez v9, :cond_4

    .line 2104
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 2092
    :cond_2
    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd()Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    goto :goto_1

    .line 2100
    :cond_3
    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 2106
    :cond_4
    move-object v9, v8

    move-object v0, v9

    goto :goto_0

    .line 2108
    :cond_5
    move-object v9, v7

    move-object v0, v9

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 244
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 245
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 246
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    .prologue
    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v10, :cond_0

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 541
    :cond_0
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 542
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 724
    :goto_0
    return-void

    .line 546
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 547
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 550
    :cond_2
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 551
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 553
    move-object v10, v0

    invoke-direct {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 555
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 556
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    if-eqz v10, :cond_3

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v10, :cond_9

    .line 558
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 559
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v11, v12

    iput-boolean v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 561
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 562
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 587
    :cond_4
    :goto_1
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v11, :cond_b

    .line 588
    const/4 v11, 0x1

    :goto_2
    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 589
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 590
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 591
    move-object v10, v0

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 592
    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 593
    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    add-int/2addr v10, v11

    move v4, v10

    .line 594
    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mReusableIntPair:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 595
    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v11

    add-int/2addr v10, v11

    move v5, v10

    .line 596
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v11, -0x80000000

    if-eq v10, v11, :cond_5

    .line 601
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 602
    move-object v10, v6

    if-eqz v10, :cond_5

    .line 605
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_c

    .line 606
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v6

    .line 607
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    move v7, v10

    .line 608
    move v10, v7

    move-object v11, v0

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v10, v11

    move v8, v10

    .line 614
    :goto_3
    move v10, v8

    if-lez v10, :cond_d

    .line 615
    move v10, v4

    move v11, v8

    add-int/2addr v10, v11

    move v4, v10

    .line 624
    :cond_5
    :goto_4
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v10, :cond_f

    .line 625
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    .line 626
    :goto_5
    move v8, v10

    .line 632
    :goto_6
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move v14, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 633
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 634
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v11

    iput-boolean v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 635
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v11

    iput-boolean v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 638
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v11, 0x0

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 639
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v10, :cond_11

    .line 641
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 642
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v4

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 643
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    .line 644
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v10

    .line 645
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v9, v10

    .line 646
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_6

    .line 647
    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v10, v11

    move v5, v10

    .line 650
    :cond_6
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 651
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v5

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 652
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 653
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    .line 654
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v10

    .line 656
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_7

    .line 658
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v4, v10

    .line 659
    move-object v10, v0

    move v11, v9

    move v12, v6

    invoke-direct {v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 660
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v4

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 661
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    .line 662
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v10

    .line 694
    :cond_7
    :goto_7
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v10

    if-lez v10, :cond_8

    .line 698
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v10, v11

    if-eqz v10, :cond_13

    .line 699
    move-object v10, v0

    move v11, v7

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x1

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    move v9, v10

    .line 700
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 701
    move v10, v7

    move v11, v9

    add-int/2addr v10, v11

    move v7, v10

    .line 702
    move-object v10, v0

    move v11, v6

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    move v9, v10

    .line 703
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 704
    move v10, v7

    move v11, v9

    add-int/2addr v10, v11

    move v7, v10

    .line 714
    :cond_8
    :goto_8
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v6

    move v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 715
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-nez v10, :cond_14

    .line 716
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->onLayoutComplete()V

    .line 720
    :goto_9
    move-object v10, v0

    move-object v11, v0

    iget-boolean v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 724
    goto/16 :goto_0

    .line 563
    :cond_9
    move-object v10, v3

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 564
    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v11

    if-ge v10, v11, :cond_a

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v3

    .line 565
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 566
    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    if-gt v10, v11, :cond_4

    .line 578
    :cond_a
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v11, v3

    move-object v12, v0

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 588
    :cond_b
    const/4 v11, -0x1

    goto/16 :goto_2

    .line 610
    :cond_c
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 611
    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    sub-int/2addr v10, v11

    move v7, v10

    .line 612
    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    goto/16 :goto_3

    .line 617
    :cond_d
    move v10, v5

    move v11, v8

    sub-int/2addr v10, v11

    move v5, v10

    goto/16 :goto_4

    .line 626
    :cond_e
    const/4 v10, -0x1

    goto/16 :goto_5

    .line 628
    :cond_f
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_10

    const/4 v10, -0x1

    .line 629
    :goto_a
    move v8, v10

    goto/16 :goto_6

    :cond_10
    const/4 v10, 0x1

    goto :goto_a

    .line 666
    :cond_11
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 667
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v5

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 668
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    .line 669
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v10

    .line 670
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move v9, v10

    .line 671
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_12

    .line 672
    move v10, v4

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v10, v11

    move v4, v10

    .line 675
    :cond_12
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;)V

    .line 676
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v4

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 677
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v11, v12

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 678
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    .line 679
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v6, v10

    .line 681
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v10, :cond_7

    .line 682
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move v5, v10

    .line 684
    move-object v10, v0

    move v11, v9

    move v12, v7

    invoke-direct {v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 685
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v11, v5

    iput v11, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 686
    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    .line 687
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move v7, v10

    goto/16 :goto_7

    .line 706
    :cond_13
    move-object v10, v0

    move v11, v6

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x1

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    move v9, v10

    .line 707
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 708
    move v10, v7

    move v11, v9

    add-int/2addr v10, v11

    move v7, v10

    .line 709
    move-object v10, v0

    move v11, v7

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v10

    move v9, v10

    .line 710
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move v6, v10

    .line 711
    move v10, v7

    move v11, v9

    add-int/2addr v10, v11

    move v7, v10

    goto/16 :goto_8

    .line 718
    :cond_14
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    goto/16 :goto_9
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 729
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 730
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 731
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 732
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 733
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v2, :cond_1

    .line 280
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    .line 281
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 282
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 284
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 291
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .prologue
    .line 252
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v4, :cond_0

    .line 253
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;)V

    move-object v0, v4

    .line 274
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>()V

    move-object v1, v4

    .line 256
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 257
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 258
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v4, v5

    move v2, v4

    .line 259
    move-object v4, v1

    move v5, v2

    iput-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 260
    move v4, v2

    if-eqz v4, :cond_1

    .line 261
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 262
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v7, v3

    .line 263
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 264
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 274
    :goto_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 266
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 267
    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 268
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 269
    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_1

    .line 272
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_1
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 14
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2187
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    const-string v9, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2188
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2189
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2190
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v5, v8

    .line 2191
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move v6, v8

    .line 2192
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    const/4 v8, 0x1

    .line 2193
    :goto_0
    move v7, v8

    .line 2194
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_2

    .line 2195
    move v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 2196
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2197
    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v2

    .line 2198
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v13, v1

    .line 2199
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 2196
    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2214
    :goto_1
    return-void

    .line 2193
    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .line 2201
    :cond_1
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2202
    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v2

    .line 2203
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 2201
    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2206
    :cond_2
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 2207
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2209
    :cond_3
    move-object v8, v0

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v11, v2

    .line 2210
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v12, v1

    .line 2211
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 2209
    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1
.end method

.method resolveIsInfinite()Z
    .locals 2

    .prologue
    .line 1277
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1278
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1277
    :goto_0
    move v0, v1

    return v0

    .line 1278
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 14

    .prologue
    .line 1386
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    if-nez v8, :cond_1

    .line 1387
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    .line 1408
    :goto_0
    return v0

    .line 1389
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1390
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1391
    move v8, v1

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    move v4, v8

    .line 1392
    move v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v5, v8

    .line 1393
    move-object v8, v0

    move v9, v4

    move v10, v5

    const/4 v11, 0x1

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1394
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    iget v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    move-object v9, v0

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move-object v12, v3

    const/4 v13, 0x0

    .line 1395
    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 1396
    move v8, v6

    if-gez v8, :cond_3

    .line 1400
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 1391
    :cond_2
    const/4 v8, -0x1

    goto :goto_1

    .line 1402
    :cond_3
    move v8, v5

    move v9, v6

    if-le v8, v9, :cond_4

    move v8, v4

    move v9, v6

    mul-int/2addr v8, v9

    :goto_2
    move v7, v8

    .line 1403
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move v9, v7

    neg-int v9, v9

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1407
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/LinearLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;

    move v9, v7

    iput v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 1408
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 1402
    :cond_4
    move v8, v1

    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1121
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1122
    const/4 v4, 0x0

    move v0, v4

    .line 1124
    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 1078
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1079
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1080
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v2, :cond_0

    .line 1081
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1083
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 1084
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 5

    .prologue
    .line 1106
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1107
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1108
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 1109
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1111
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 1112
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 1133
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v4, :cond_0

    .line 1134
    const/4 v4, 0x0

    move v0, v4

    .line 1136
    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 4

    .prologue
    .line 1351
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 1352
    return-void
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 344
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid orientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 349
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v2, :cond_2

    .line 350
    :cond_1
    move-object v2, v0

    move-object v3, v0

    move v4, v1

    .line 351
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 352
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    iput-object v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 353
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 354
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 356
    :cond_2
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 230
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 398
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne v2, v3, :cond_0

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 402
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 403
    goto :goto_0
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 4

    .prologue
    .line 1219
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1220
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 314
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 318
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->requestLayout()V

    .line 319
    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 3

    .prologue
    .line 1704
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getHeightMode()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 1705
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getWidthMode()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    move-object v1, v0

    .line 1706
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1704
    :goto_0
    move v0, v1

    return v0

    .line 1706
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 9

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    .line 506
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 507
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 508
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 509
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 3

    .prologue
    .line 2177
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method validateChildOrder()V
    .locals 13

    .prologue
    .line 2136
    move-object v0, p0

    const-string v7, "LinearLayoutManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "validating child count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2137
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 2173
    :goto_0
    return-void

    .line 2140
    :cond_0
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v1, v7

    .line 2141
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v2, v7

    .line 2142
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_5

    .line 2143
    const/4 v7, 0x1

    move v3, v7

    :goto_1
    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 2144
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 2145
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 2146
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 2147
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 2148
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2149
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 2152
    :cond_2
    move v7, v6

    move v8, v2

    if-le v7, v8, :cond_3

    .line 2153
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2154
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "detected invalid location"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2143
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2173
    :cond_4
    goto/16 :goto_0

    .line 2158
    :cond_5
    const/4 v7, 0x1

    move v3, v7

    :goto_3
    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 2159
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 2160
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move v5, v7

    .line 2161
    move-object v7, v0

    iget-object v7, v7, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 2162
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_7

    .line 2163
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2164
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detected invalid position. loc invalid? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 2167
    :cond_7
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_8

    .line 2168
    move-object v7, v0

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->logChildren()V

    .line 2169
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "detected invalid location"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2158
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
