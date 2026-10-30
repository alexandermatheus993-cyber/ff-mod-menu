.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;,
        Landroidx/core/widget/NestedScrollView$SavedState;,
        Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEFAULT_SMOOTH_SCROLL_DURATION:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 176
    new-instance v0, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101017a

    aput v3, v1, v2

    sput-object v0, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 116
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 117
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 124
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 131
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 147
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 157
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 162
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    .line 163
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    .line 200
    move-object v5, v0

    invoke-direct {v5}, Landroidx/core/widget/NestedScrollView;->initScrollView()V

    .line 202
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 205
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 207
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    move-object v5, v0

    new-instance v6, Landroidx/core/view/NestedScrollingParentHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 210
    move-object v5, v0

    new-instance v6, Landroidx/core/view/NestedScrollingChildHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 213
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 215
    move-object v5, v0

    sget-object v6, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 216
    return-void
.end method

.method private abortAnimatedScroll()V
    .locals 3

    .prologue
    .line 1673
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1674
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1675
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    .line 523
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 524
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 525
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v5

    .line 526
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v6, v2

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    move-object v6, v2

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    move v3, v5

    .line 527
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 528
    move v5, v3

    move v6, v4

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 530
    :goto_1
    return v0

    .line 528
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 530
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private static clamp(III)I
    .locals 5

    .prologue
    .line 2048
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    move v3, v0

    if-gez v3, :cond_1

    .line 2064
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 2074
    :goto_0
    return v0

    .line 2066
    :cond_1
    move v3, v1

    move v4, v0

    add-int/2addr v3, v4

    move v4, v2

    if-le v3, v4, :cond_2

    .line 2072
    move v3, v2

    move v4, v1

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 2074
    :cond_2
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 5

    .prologue
    .line 1400
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 1401
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v2, :cond_1

    .line 1402
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 3

    .prologue
    .line 1949
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1951
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1952
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1954
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    .line 1955
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1956
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1958
    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 7

    .prologue
    .line 1984
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1985
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v2, :cond_0

    .line 1986
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 1987
    move-object v2, v0

    new-instance v3, Landroid/widget/EdgeEffect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1988
    move-object v2, v0

    new-instance v3, Landroid/widget/EdgeEffect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1992
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 16

    .prologue
    .line 1146
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v14, v0

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroidx/core/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v14

    move-object v4, v14

    .line 1147
    const/4 v14, 0x0

    move-object v5, v14

    .line 1156
    const/4 v14, 0x0

    move v6, v14

    .line 1158
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v7, v14

    .line 1159
    const/4 v14, 0x0

    move v8, v14

    :goto_0
    move v14, v8

    move v15, v7

    if-ge v14, v15, :cond_8

    .line 1160
    move-object v14, v4

    move v15, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v9, v14

    .line 1161
    move-object v14, v9

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move v10, v14

    .line 1162
    move-object v14, v9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    move v11, v14

    .line 1164
    move v14, v2

    move v15, v11

    if-ge v14, v15, :cond_0

    move v14, v10

    move v15, v3

    if-ge v14, v15, :cond_0

    .line 1170
    move v14, v2

    move v15, v10

    if-ge v14, v15, :cond_1

    move v14, v11

    move v15, v3

    if-ge v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_1
    move v12, v14

    .line 1172
    move-object v14, v5

    if-nez v14, :cond_2

    .line 1174
    move-object v14, v9

    move-object v5, v14

    .line 1175
    move v14, v12

    move v6, v14

    .line 1159
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1170
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 1177
    :cond_2
    move v14, v1

    if-eqz v14, :cond_3

    move v14, v10

    move-object v15, v5

    .line 1178
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v14, v15, :cond_4

    :cond_3
    move v14, v1

    if-nez v14, :cond_5

    move v14, v11

    move-object v15, v5

    .line 1179
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    if-le v14, v15, :cond_5

    :cond_4
    const/4 v14, 0x1

    :goto_3
    move v13, v14

    .line 1181
    move v14, v6

    if-eqz v14, :cond_6

    .line 1182
    move v14, v12

    if-eqz v14, :cond_0

    move v14, v13

    if-eqz v14, :cond_0

    .line 1188
    move-object v14, v9

    move-object v5, v14

    goto :goto_2

    .line 1179
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 1191
    :cond_6
    move v14, v12

    if-eqz v14, :cond_7

    .line 1193
    move-object v14, v9

    move-object v5, v14

    .line 1194
    const/4 v14, 0x1

    move v6, v14

    goto :goto_2

    .line 1195
    :cond_7
    move v14, v13

    if-eqz v14, :cond_0

    .line 1200
    move-object v14, v9

    move-object v5, v14

    goto :goto_2

    .line 1207
    :cond_8
    move-object v14, v5

    move-object v0, v14

    return-object v0
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 8

    .prologue
    .line 1039
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 1040
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v3

    .line 1041
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 1042
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101004d

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1044
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1047
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 1048
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 1047
    invoke-virtual {v4, v5}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, v3, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 1050
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    move v0, v3

    return v0
.end method

.method private inChild(II)Z
    .locals 8

    .prologue
    .line 675
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 676
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    move v3, v5

    .line 677
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 678
    move v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_0

    move v5, v2

    move-object v6, v4

    .line 679
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    move v5, v1

    move-object v6, v4

    .line 680
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lt v5, v6, :cond_0

    move v5, v1

    move-object v6, v4

    .line 681
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    .line 678
    :goto_0
    move v0, v5

    .line 683
    :goto_1
    return v0

    .line 681
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 683
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private initOrResetVelocityTracker()V
    .locals 3

    .prologue
    .line 687
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 688
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 7

    .prologue
    .line 460
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/widget/OverScroller;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 461
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 462
    move-object v2, v0

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 463
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 464
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 465
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v2, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    .line 466
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, v2, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    .line 467
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, v2, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    .line 468
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 3

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 696
    move-object v1, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 698
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1379
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 1921
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1922
    const/4 v3, 0x1

    move v0, v3

    .line 1926
    :goto_0
    return v0

    .line 1925
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 1926
    move-object v3, v2

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 7

    .prologue
    .line 1387
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1388
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1390
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-lt v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move v5, v2

    sub-int/2addr v4, v5

    move-object v5, v0

    .line 1391
    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    move v6, v3

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_0

    const/4 v4, 0x1

    .line 1390
    :goto_0
    move v0, v4

    return v0

    .line 1391
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private onNestedScrollInternal(II[I)V
    .locals 17
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 315
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v4, v7

    .line 316
    move-object v7, v0

    const/4 v8, 0x0

    move v9, v1

    invoke-virtual {v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 317
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 319
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 320
    move-object v7, v3

    const/4 v8, 0x1

    move-object v15, v7

    move/from16 v16, v8

    move-object v7, v15

    move/from16 v8, v16

    move-object v9, v15

    move/from16 v10, v16

    aget v9, v9, v10

    move v10, v5

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 322
    :cond_0
    move v7, v1

    move v8, v5

    sub-int/2addr v7, v8

    move v6, v7

    .line 324
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v8, 0x0

    move v9, v5

    const/4 v10, 0x0

    move v11, v6

    const/4 v12, 0x0

    move v13, v2

    move-object v14, v3

    invoke-virtual/range {v7 .. v14}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 325
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 994
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move v2, v5

    .line 995
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v3, v5

    .line 996
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 1000
    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1001
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 1002
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 1003
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 1004
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 1007
    :cond_0
    return-void

    .line 1000
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 3

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 702
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 703
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 705
    :cond_0
    return-void
.end method

.method private runAnimatedScroll(Z)V
    .locals 5

    .prologue
    .line 1663
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 1664
    move-object v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v2

    .line 1668
    :goto_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    iput v3, v2, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1669
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1670
    return-void

    .line 1666
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 15

    .prologue
    .line 1293
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v11, 0x1

    move v4, v11

    .line 1295
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v11

    move v5, v11

    .line 1296
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v11

    move v6, v11

    .line 1297
    move v11, v6

    move v12, v5

    add-int/2addr v11, v12

    move v7, v11

    .line 1298
    move v11, v1

    const/16 v12, 0x21

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_0
    move v8, v11

    .line 1300
    move-object v11, v0

    move v12, v8

    move v13, v2

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Landroidx/core/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v11

    move-object v9, v11

    .line 1301
    move-object v11, v9

    if-nez v11, :cond_0

    .line 1302
    move-object v11, v0

    move-object v9, v11

    .line 1305
    :cond_0
    move v11, v2

    move v12, v6

    if-lt v11, v12, :cond_3

    move v11, v3

    move v12, v7

    if-gt v11, v12, :cond_3

    .line 1306
    const/4 v11, 0x0

    move v4, v11

    .line 1312
    :goto_1
    move-object v11, v9

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    if-eq v11, v12, :cond_1

    move-object v11, v9

    move v12, v1

    invoke-virtual {v11, v12}, Landroid/view/View;->requestFocus(I)Z

    move-result v11

    .line 1314
    :cond_1
    move v11, v4

    move v0, v11

    return v0

    .line 1298
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 1308
    :cond_3
    move v11, v8

    if-eqz v11, :cond_4

    move v11, v2

    move v12, v6

    sub-int/2addr v11, v12

    :goto_2
    move v10, v11

    .line 1309
    move-object v11, v0

    move v12, v10

    invoke-direct {v11, v12}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1308
    :cond_4
    move v11, v3

    move v12, v7

    sub-int/2addr v11, v12

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1683
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1686
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1688
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    move v2, v3

    .line 1690
    move v3, v2

    if-eqz v3, :cond_0

    .line 1691
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1693
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 8

    .prologue
    .line 1704
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v5

    move v3, v5

    .line 1705
    move v5, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1706
    move v5, v4

    if-eqz v5, :cond_0

    .line 1707
    move v5, v2

    if-eqz v5, :cond_2

    .line 1708
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1713
    :cond_0
    :goto_1
    move v5, v4

    move v0, v5

    return v0

    .line 1705
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1710
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private smoothScrollBy(IIIZ)V
    .locals 22

    .prologue
    .line 1439
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 1461
    :goto_0
    return-void

    .line 1443
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v8, v16

    .line 1444
    move-wide/from16 v16, v8

    const-wide/16 v18, 0xfa

    cmp-long v16, v16, v18

    if-lez v16, :cond_1

    .line 1445
    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v10, v16

    .line 1446
    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v11, v16

    .line 1447
    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v12, v16

    .line 1448
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 1449
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v16

    move/from16 v14, v16

    .line 1450
    const/16 v16, 0x0

    move/from16 v17, v12

    move/from16 v18, v13

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v15, v16

    .line 1451
    const/16 v16, 0x0

    move/from16 v17, v14

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v18, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v17, v14

    sub-int v16, v16, v17

    move/from16 v5, v16

    .line 1452
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v17

    move/from16 v18, v14

    const/16 v19, 0x0

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1453
    move-object/from16 v16, v3

    move/from16 v17, v7

    invoke-direct/range {v16 .. v17}, Landroidx/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    .line 1460
    :goto_1
    move-object/from16 v16, v3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    .line 1461
    goto/16 :goto_0

    .line 1455
    :cond_1
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v16

    if-nez v16, :cond_2

    .line 1456
    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 1458
    :cond_2
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-virtual/range {v16 .. v18}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 472
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 473
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "ScrollView can host only one direct child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 477
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 482
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ScrollView can host only one direct child"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 485
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 486
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .prologue
    .line 499
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 500
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "ScrollView can host only one direct child"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 503
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 504
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 491
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ScrollView can host only one direct child"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 14

    .prologue
    .line 1325
    move-object v0, p0

    move v1, p1

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v10

    move-object v2, v10

    .line 1326
    move-object v10, v2

    move-object v11, v0

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    move-object v2, v10

    .line 1328
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v10

    move-object v11, v0

    move-object v12, v2

    move v13, v1

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    move-object v3, v10

    .line 1330
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v10

    move v4, v10

    .line 1332
    move-object v10, v3

    if-eqz v10, :cond_2

    move-object v10, v0

    move-object v11, v3

    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v13

    invoke-direct {v10, v11, v12, v13}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1333
    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1334
    move-object v10, v0

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1335
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v10

    move v5, v10

    .line 1336
    move-object v10, v0

    move v11, v5

    invoke-direct {v10, v11}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1337
    move-object v10, v3

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    .line 1359
    :goto_0
    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v0

    move-object v11, v2

    .line 1360
    invoke-direct {v10, v11}, Landroidx/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1366
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v10

    move v5, v10

    .line 1367
    move-object v10, v0

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1368
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->requestFocus()Z

    move-result v10

    .line 1369
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1371
    :cond_1
    const/4 v10, 0x1

    move v0, v10

    :goto_1
    return v0

    .line 1340
    :cond_2
    move v10, v4

    move v5, v10

    .line 1342
    move v10, v1

    const/16 v11, 0x21

    if-ne v10, v11, :cond_4

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v11, v5

    if-ge v10, v11, :cond_4

    .line 1343
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v5, v10

    .line 1353
    :cond_3
    :goto_2
    move v10, v5

    if-nez v10, :cond_5

    .line 1354
    const/4 v10, 0x0

    move v0, v10

    goto :goto_1

    .line 1344
    :cond_4
    move v10, v1

    const/16 v11, 0x82

    if-ne v10, v11, :cond_3

    .line 1345
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_3

    .line 1346
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 1347
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v7, v10

    .line 1348
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    move-object v11, v7

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    move v8, v10

    .line 1349
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move v9, v10

    .line 1350
    move v10, v8

    move v11, v9

    sub-int/2addr v10, v11

    move v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v5, v10

    goto :goto_2

    .line 1356
    :cond_5
    move-object v10, v0

    move v11, v1

    const/16 v12, 0x82

    if-ne v11, v12, :cond_6

    move v11, v5

    :goto_3
    invoke-direct {v10, v11}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    goto/16 :goto_0

    :cond_6
    move v11, v5

    neg-int v11, v11

    goto :goto_3
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1569
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1562
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1555
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public computeScroll()V
    .locals 16

    .prologue
    .line 1605
    move-object/from16 v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1660
    :goto_0
    return-void

    .line 1609
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v6

    .line 1610
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    move v1, v6

    .line 1611
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    sub-int/2addr v6, v7

    move v2, v6

    .line 1612
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1615
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 1616
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    .line 1618
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    move v2, v6

    .line 1620
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    move v3, v6

    .line 1622
    move v6, v2

    if-eqz v6, :cond_1

    .line 1624
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    move v4, v6

    .line 1625
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v9

    move v10, v4

    const/4 v11, 0x0

    move v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v6 .. v15}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v6

    .line 1626
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    move v7, v4

    sub-int/2addr v6, v7

    move v5, v6

    .line 1627
    move v6, v2

    move v7, v5

    sub-int/2addr v6, v7

    move v2, v6

    .line 1630
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 1631
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v5

    const/4 v9, 0x0

    move v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    invoke-virtual/range {v6 .. v13}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 1633
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    move v2, v6

    .line 1636
    :cond_1
    move v6, v2

    if-eqz v6, :cond_4

    .line 1637
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v6

    move v4, v6

    .line 1638
    move v6, v4

    if-eqz v6, :cond_2

    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    move v6, v3

    if-lez v6, :cond_5

    :cond_2
    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 1640
    move v6, v5

    if-eqz v6, :cond_3

    .line 1641
    move-object v6, v0

    invoke-direct {v6}, Landroidx/core/widget/NestedScrollView;->ensureGlows()V

    .line 1642
    move v6, v2

    if-gez v6, :cond_6

    .line 1643
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1644
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1652
    :cond_3
    :goto_2
    move-object v6, v0

    invoke-direct {v6}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 1655
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1656
    move-object v6, v0

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1660
    :goto_3
    goto/16 :goto_0

    .line 1638
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1647
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1648
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .line 1658
    :cond_7
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    goto :goto_3
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 15

    .prologue
    .line 1725
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    move v0, v12

    .line 1786
    :goto_0
    return v0

    .line 1727
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v12

    move v2, v12

    .line 1728
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v12

    move v3, v12

    .line 1729
    move v12, v3

    move v13, v2

    add-int/2addr v12, v13

    move v4, v12

    .line 1730
    move v12, v4

    move v5, v12

    .line 1732
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v12

    move v6, v12

    .line 1737
    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-lez v12, :cond_1

    .line 1738
    move v12, v3

    move v13, v6

    add-int/2addr v12, v13

    move v3, v12

    .line 1744
    :cond_1
    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1745
    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v12

    .line 1746
    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move-object v13, v7

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_2

    .line 1747
    move v12, v4

    move v13, v6

    sub-int/2addr v12, v13

    move v4, v12

    .line 1750
    :cond_2
    const/4 v12, 0x0

    move v9, v12

    .line 1752
    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move v13, v4

    if-le v12, v13, :cond_5

    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v3

    if-le v12, v13, :cond_5

    .line 1757
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    move v13, v2

    if-le v12, v13, :cond_4

    .line 1759
    move v12, v9

    move-object v13, v1

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v14, v3

    sub-int/2addr v13, v14

    add-int/2addr v12, v13

    move v9, v12

    .line 1766
    :goto_1
    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object v13, v8

    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    move v10, v12

    .line 1767
    move v12, v10

    move v13, v5

    sub-int/2addr v12, v13

    move v11, v12

    .line 1768
    move v12, v9

    move v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v9, v12

    .line 1786
    :cond_3
    :goto_2
    move v12, v9

    move v0, v12

    goto :goto_0

    .line 1762
    :cond_4
    move v12, v9

    move-object v13, v1

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move v14, v4

    sub-int/2addr v13, v14

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 1770
    :cond_5
    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v3

    if-ge v12, v13, :cond_3

    move-object v12, v1

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move v13, v4

    if-ge v12, v13, :cond_3

    .line 1775
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    move v13, v2

    if-le v12, v13, :cond_6

    .line 1777
    move v12, v9

    move v13, v4

    move-object v14, v1

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    .line 1784
    :goto_3
    move v12, v9

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v13

    neg-int v13, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v9, v12

    goto :goto_2

    .line 1780
    :cond_6
    move v12, v9

    move v13, v3

    move-object v14, v1

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    goto :goto_3
.end method

.method public computeVerticalScrollExtent()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1548
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1541
    move-object v0, p0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 11
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1517
    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v8

    move v1, v8

    .line 1518
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    move v2, v8

    .line 1519
    move v8, v1

    if-nez v8, :cond_0

    .line 1520
    move v8, v2

    move v0, v8

    .line 1534
    :goto_0
    return v0

    .line 1523
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 1524
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, v8

    .line 1525
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    move v5, v8

    .line 1526
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    move v6, v8

    .line 1527
    const/4 v8, 0x0

    move v9, v5

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v7, v8

    .line 1528
    move v8, v6

    if-gez v8, :cond_2

    .line 1529
    move v8, v5

    move v9, v6

    sub-int/2addr v8, v9

    move v5, v8

    .line 1534
    :cond_1
    :goto_1
    move v8, v5

    move v0, v8

    goto :goto_0

    .line 1530
    :cond_2
    move v8, v6

    move v9, v7

    if-le v8, v9, :cond_1

    .line 1531
    move v8, v5

    move v9, v6

    move v10, v7

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 621
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 298
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 6

    .prologue
    .line 303
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 11

    .prologue
    .line 293
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 12

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v7, v1

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 16
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move v14, v6

    move-object v15, v7

    invoke-virtual/range {v8 .. v15}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 225
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 12

    .prologue
    .line 287
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 14

    .prologue
    .line 247
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v7

    move v0, v7

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 1998
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1999
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_9

    .line 2000
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    move v2, v8

    .line 2001
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2002
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move v3, v8

    .line 2003
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v8

    move v4, v8

    .line 2004
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    move v5, v8

    .line 2005
    const/4 v8, 0x0

    move v6, v8

    .line 2006
    const/4 v8, 0x0

    move v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v7, v8

    .line 2007
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2008
    :cond_0
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v4, v8

    .line 2009
    move v8, v6

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 2011
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2012
    move v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v5, v8

    .line 2013
    move v8, v7

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 2015
    :cond_2
    move-object v8, v1

    move v9, v6

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2016
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move v9, v4

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2017
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2018
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2020
    :cond_3
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2022
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_9

    .line 2023
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move v3, v8

    .line 2024
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v8

    move v4, v8

    .line 2025
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    move v5, v8

    .line 2026
    const/4 v8, 0x0

    move v6, v8

    .line 2027
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    move v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v9, v5

    add-int/2addr v8, v9

    move v7, v8

    .line 2028
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2029
    :cond_5
    move v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v4, v8

    .line 2030
    move v8, v6

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 2032
    :cond_6
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2033
    move v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v5, v8

    .line 2034
    move v8, v7

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    move v7, v8

    .line 2036
    :cond_7
    move-object v8, v1

    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v7

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2037
    move-object v8, v1

    const/high16 v9, 0x43340000    # 180.0f

    move v10, v4

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2038
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move v9, v4

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2039
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2040
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2042
    :cond_8
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2045
    :cond_9
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 635
    move-object v4, v0

    invoke-direct {v4}, Landroidx/core/widget/NestedScrollView;->canScroll()Z

    move-result v4

    if-nez v4, :cond_3

    .line 636
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 637
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 638
    move-object v4, v2

    move-object v5, v0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    move-object v2, v4

    .line 639
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    const/16 v7, 0x82

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 641
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_1

    move-object v4, v3

    const/16 v5, 0x82

    .line 643
    invoke-virtual {v4, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 641
    :goto_0
    move v0, v4

    .line 671
    :goto_1
    return v0

    .line 643
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 645
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 648
    :cond_3
    const/4 v4, 0x0

    move v2, v4

    .line 649
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 650
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 671
    :cond_4
    :goto_2
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 652
    :sswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 653
    move-object v4, v0

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v4

    move v2, v4

    goto :goto_2

    .line 655
    :cond_5
    move-object v4, v0

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v4

    move v2, v4

    .line 657
    goto :goto_2

    .line 659
    :sswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 660
    move-object v4, v0

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v4

    move v2, v4

    goto :goto_2

    .line 662
    :cond_6
    move-object v4, v0

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v4

    move v2, v4

    .line 664
    goto :goto_2

    .line 666
    :sswitch_2
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x21

    :goto_3
    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    move-result v4

    goto :goto_2

    :cond_7
    const/16 v5, 0x82

    goto :goto_3

    .line 650
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13

    .prologue
    .line 1937
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1939
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1944
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    .line 1946
    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 11

    .prologue
    .line 1261
    move-object v0, p0

    move v1, p1

    move v7, v1

    const/16 v8, 0x82

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v2, v7

    .line 1262
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v7

    move v3, v7

    .line 1264
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1265
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move v8, v3

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1267
    move v7, v2

    if-eqz v7, :cond_0

    .line 1268
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v7

    move v4, v7

    .line 1269
    move v7, v4

    if-lez v7, :cond_0

    .line 1270
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 1271
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    move-object v6, v7

    .line 1272
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1273
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move v9, v3

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1277
    :cond_0
    move-object v7, v0

    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v7

    move v0, v7

    return v0

    .line 1261
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    .line 435
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 436
    const/4 v6, 0x0

    move v0, v6

    .line 448
    :goto_0
    return v0

    .line 439
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    .line 440
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v6

    .line 441
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v6

    move v3, v6

    .line 442
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    move v4, v6

    .line 443
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v7, v2

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    move v7, v4

    sub-int/2addr v6, v7

    move v5, v6

    .line 444
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 445
    move v6, v5

    int-to-float v6, v6

    move v7, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 448
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    move v0, v6

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 456
    move-object v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getScrollRange()I
    .locals 9

    .prologue
    .line 1118
    move-object v0, p0

    const/4 v6, 0x0

    move v1, v6

    .line 1119
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1120
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v2, v6

    .line 1121
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    move-object v3, v6

    .line 1122
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v7, v3

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    move-object v7, v3

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    move v4, v6

    .line 1123
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    move v5, v6

    .line 1124
    const/4 v6, 0x0

    move v7, v4

    move v8, v5

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v1, v6

    .line 1126
    :cond_0
    move v6, v1

    move v0, v6

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 420
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 421
    const/4 v3, 0x0

    move v0, v3

    .line 430
    :goto_0
    return v0

    .line 424
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    move v1, v3

    .line 425
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    move v2, v3

    .line 426
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 427
    move v3, v2

    int-to-float v3, v3

    move v4, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 430
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    move v0, v3

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isFillViewport()Z
    .locals 2

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    move v0, v1

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 2

    .prologue
    .line 563
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    move v0, v1

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 10

    .prologue
    .line 1575
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v4, v7

    .line 1580
    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v8

    move-object v9, v0

    .line 1581
    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v4

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1580
    invoke-static {v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v7

    move v5, v7

    .line 1583
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v6, v7

    .line 1585
    move-object v7, v1

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1586
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 1591
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v6, v9

    .line 1593
    move v9, v2

    move-object v10, v0

    .line 1594
    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move-object v11, v6

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1593
    invoke-static {v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v9

    move v7, v9

    .line 1596
    move-object v9, v6

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v10, v6

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v8, v9

    .line 1599
    move-object v9, v1

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1600
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1892
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1894
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1895
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 1011
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 1012
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1035
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    .line 1014
    :pswitch_0
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v7, :cond_0

    .line 1015
    move-object v7, v1

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    move v2, v7

    .line 1016
    move v7, v2

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 1017
    move v7, v2

    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move v3, v7

    .line 1018
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    move v4, v7

    .line 1019
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v5, v7

    .line 1020
    move v7, v5

    move v8, v3

    sub-int/2addr v7, v8

    move v6, v7

    .line 1021
    move v7, v6

    if-gez v7, :cond_2

    .line 1022
    const/4 v7, 0x0

    move v6, v7

    .line 1026
    :cond_1
    :goto_1
    move v7, v6

    move v8, v5

    if-eq v7, v8, :cond_0

    .line 1027
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v8

    move v9, v6

    invoke-super {v7, v8, v9}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1028
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 1023
    :cond_2
    move v7, v6

    move v8, v4

    if-le v7, v8, :cond_1

    .line 1024
    move v7, v4

    move v6, v7

    goto :goto_1

    .line 1012
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    .prologue
    .line 728
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    move v2, v8

    .line 729
    move v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v8, :cond_0

    .line 730
    const/4 v8, 0x1

    move v0, v8

    .line 823
    :goto_0
    return v0

    .line 733
    :cond_0
    move v8, v2

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    .line 823
    :cond_1
    :goto_1
    :pswitch_0
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    move v0, v8

    goto :goto_0

    .line 744
    :pswitch_1
    move-object v8, v0

    iget v8, v8, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move v3, v8

    .line 745
    move v8, v3

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 747
    goto :goto_1

    .line 750
    :cond_2
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    move v4, v8

    .line 751
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 752
    const-string v8, "NestedScrollView"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid pointerId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in onInterceptTouchEvent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 754
    goto :goto_1

    .line 757
    :cond_3
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    move v5, v8

    .line 758
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v6, v8

    .line 759
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v8, v9, :cond_1

    move-object v8, v0

    .line 760
    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v8

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 761
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 762
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 763
    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 764
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 765
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 766
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    move-object v7, v8

    .line 767
    move-object v8, v7

    if-eqz v8, :cond_4

    .line 768
    move-object v8, v7

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 770
    :cond_4
    goto/16 :goto_1

    .line 775
    :pswitch_2
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    move v3, v8

    .line 776
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move v10, v3

    invoke-direct {v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->inChild(II)Z

    move-result v8

    if-nez v8, :cond_5

    .line 777
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 778
    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 779
    goto/16 :goto_1

    .line 786
    :cond_5
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 787
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 789
    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 790
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 797
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v8

    .line 798
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v9}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 799
    move-object v8, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v8

    .line 800
    goto/16 :goto_1

    .line 798
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 806
    :pswitch_3
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 807
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 808
    move-object v8, v0

    invoke-direct {v8}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 809
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 810
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 812
    :cond_7
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 813
    goto/16 :goto_1

    .line 815
    :pswitch_4
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 1854
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    invoke-super/range {v10 .. v15}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1855
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1857
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    move-object v11, v0

    invoke-static {v10, v11}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1858
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {v10, v11}, Landroidx/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1860
    :cond_0
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1862
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez v10, :cond_3

    .line 1864
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    if-eqz v10, :cond_1

    .line 1865
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    iget v12, v12, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1866
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    .line 1871
    :cond_1
    const/4 v10, 0x0

    move v6, v10

    .line 1872
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_2

    .line 1873
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1874
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v10

    .line 1875
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move-object v11, v8

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    move-object v11, v8

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    move v6, v10

    .line 1877
    :cond_2
    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move v7, v10

    .line 1878
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    move v8, v10

    .line 1879
    move v10, v8

    move v11, v7

    move v12, v6

    invoke-static {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result v10

    move v9, v10

    .line 1880
    move v10, v9

    move v11, v8

    if-eq v10, v11, :cond_3

    .line 1881
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v11

    move v12, v9

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1886
    :cond_3
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1887
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1888
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 585
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v10, v0

    move v11, v1

    move v12, v2

    invoke-super {v10, v11, v12}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 587
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    if-nez v10, :cond_0

    .line 616
    :goto_0
    return-void

    .line 591
    :cond_0
    move v10, v2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    move v3, v10

    .line 592
    move v10, v3

    if-nez v10, :cond_1

    .line 593
    goto :goto_0

    .line 596
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_2

    .line 597
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 598
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v5, v10

    .line 600
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move v6, v10

    .line 601
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v10

    move-object v11, v0

    .line 602
    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    .line 603
    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v5

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    move-object v11, v5

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    move v7, v10

    .line 607
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_2

    .line 608
    move v10, v1

    move-object v11, v0

    .line 609
    invoke-virtual {v11}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    move-object v12, v5

    iget v12, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    move-object v12, v5

    iget v12, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    move-object v12, v5

    iget v12, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 608
    invoke-static {v10, v11, v12}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v10

    move v8, v10

    .line 611
    move v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    .line 612
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v9, v10

    .line 613
    move-object v10, v4

    move v11, v8

    move v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->measure(II)V

    .line 616
    :cond_2
    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v4

    if-nez v5, :cond_0

    .line 394
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    move-result v5

    .line 395
    move-object v5, v0

    move v6, v3

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 396
    const/4 v5, 0x1

    move v0, v5

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 388
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move v7, v2

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v6

    .line 358
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    move v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    .line 383
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 351
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move v8, v5

    move v9, v6

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    .line 352
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move v9, v5

    move v10, v6

    move-object v11, v7

    invoke-direct {v8, v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    .line 312
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 372
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 339
    move-object v5, v0

    const/4 v6, 0x2

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v5

    .line 340
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 8

    .prologue
    .line 1056
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1057
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    .line 1814
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1815
    const/16 v4, 0x82

    move v1, v4

    .line 1820
    :cond_0
    :goto_0
    move-object v4, v2

    if-nez v4, :cond_2

    .line 1821
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v0

    const/4 v6, 0x0

    move v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1822
    :goto_1
    move-object v3, v4

    .line 1825
    move-object v4, v3

    if-nez v4, :cond_3

    .line 1826
    const/4 v4, 0x0

    move v0, v4

    .line 1833
    :goto_2
    return v0

    .line 1816
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1817
    const/16 v4, 0x21

    move v1, v4

    goto :goto_0

    .line 1822
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    move v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1829
    :cond_3
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1830
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2

    .line 1833
    :cond_4
    move-object v4, v3

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 2079
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroidx/core/widget/NestedScrollView$SavedState;

    if-nez v3, :cond_0

    .line 2080
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2088
    :goto_0
    return-void

    .line 2084
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/core/widget/NestedScrollView$SavedState;

    move-object v2, v3

    .line 2085
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2086
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    .line 2087
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 2088
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 2092
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 2093
    new-instance v3, Landroidx/core/widget/NestedScrollView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 2094
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    iput v4, v3, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 2095
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 11

    .prologue
    .line 576
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 578
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v5, :cond_0

    .line 579
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface/range {v5 .. v10}, Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V

    .line 581
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 12

    .prologue
    .line 1899
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-super {v7, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1901
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 1902
    const/4 v7, 0x0

    move-object v8, v5

    if-eq v7, v8, :cond_0

    move-object v7, v0

    move-object v8, v5

    if-ne v7, v8, :cond_1

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1909
    :cond_1
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1910
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1911
    move-object v7, v0

    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1912
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v7

    move v6, v7

    .line 1913
    move-object v7, v0

    move v8, v6

    invoke-direct {v7, v8}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1915
    :cond_2
    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 365
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    .line 377
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 345
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 346
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28

    .prologue
    .line 828
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 830
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    move/from16 v4, v16

    .line 832
    move/from16 v16, v4

    if-nez v16, :cond_0

    .line 833
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 836
    :cond_0
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v5, v16

    .line 837
    move-object/from16 v16, v5

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 839
    move/from16 v16, v4

    packed-switch v16, :pswitch_data_0

    .line 985
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 986
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 988
    :cond_2
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 990
    const/16 v16, 0x1

    move/from16 v2, v16

    :goto_1
    return v2

    .line 841
    :pswitch_1
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v16

    if-nez v16, :cond_3

    .line 842
    const/16 v16, 0x0

    move/from16 v2, v16

    goto :goto_1

    .line 844
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v26, v16

    move/from16 v27, v17

    move/from16 v16, v27

    move-object/from16 v17, v26

    move/from16 v18, v27

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v16, :cond_4

    .line 845
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v6, v16

    .line 846
    move-object/from16 v16, v6

    if-eqz v16, :cond_4

    .line 847
    move-object/from16 v16, v6

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 855
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v16

    if-nez v16, :cond_5

    .line 856
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 860
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 861
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 862
    move-object/from16 v16, v2

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v16

    .line 863
    goto/16 :goto_0

    .line 844
    :cond_6
    const/16 v17, 0x0

    goto :goto_2

    .line 866
    :pswitch_2
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    move/from16 v6, v16

    .line 867
    move/from16 v16, v6

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 868
    const-string v16, "NestedScrollView"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid pointerId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " in onTouchEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 869
    goto/16 :goto_0

    .line 872
    :cond_7
    move-object/from16 v16, v3

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v7, v16

    .line 873
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    move/from16 v16, v0

    move/from16 v17, v7

    sub-int v16, v16, v17

    move/from16 v8, v16

    .line 874
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 875
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v9, v16

    .line 876
    move-object/from16 v16, v9

    if-eqz v16, :cond_8

    .line 877
    move-object/from16 v16, v9

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 879
    :cond_8
    move-object/from16 v16, v2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 880
    move/from16 v16, v8

    if-lez v16, :cond_10

    .line 881
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v8, v16

    .line 886
    :cond_9
    :goto_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 888
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 890
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v8, v16

    .line 891
    move-object/from16 v16, v2

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 895
    :cond_a
    move-object/from16 v16, v2

    move/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 897
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v16

    move/from16 v9, v16

    .line 898
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v16

    move/from16 v10, v16

    .line 899
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v16

    move/from16 v11, v16

    .line 900
    move/from16 v16, v11

    if-eqz v16, :cond_b

    move/from16 v16, v11

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    move/from16 v16, v10

    if-lez v16, :cond_11

    :cond_b
    const/16 v16, 0x1

    :goto_4
    move/from16 v12, v16

    .line 905
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v18, v8

    const/16 v19, 0x0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v22, v10

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v16 .. v25}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v16, v2

    const/16 v17, 0x0

    .line 906
    invoke-virtual/range {v16 .. v17}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v16

    if-nez v16, :cond_c

    .line 908
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->clear()V

    .line 911
    :cond_c
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v16

    move/from16 v17, v9

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 912
    move/from16 v16, v8

    move/from16 v17, v13

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 914
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    .line 916
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v18, v13

    const/16 v19, 0x0

    move/from16 v20, v14

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v23, v0

    invoke-virtual/range {v16 .. v23}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 919
    move-object/from16 v16, v2

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 920
    move-object/from16 v16, v2

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 922
    move/from16 v16, v12

    if-eqz v16, :cond_f

    .line 923
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v8, v16

    .line 924
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->ensureGlows()V

    .line 925
    move/from16 v16, v9

    move/from16 v17, v8

    add-int v16, v16, v17

    move/from16 v15, v16

    .line 926
    move/from16 v16, v15

    if-gez v16, :cond_12

    .line 927
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    move/from16 v17, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v18, v3

    move/from16 v19, v6

    .line 928
    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    .line 927
    invoke-static/range {v16 .. v18}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 929
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v16

    if-nez v16, :cond_d

    .line 930
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 940
    :cond_d
    :goto_5
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    .line 941
    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v16

    if-eqz v16, :cond_e

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v16

    if-nez v16, :cond_f

    .line 942
    :cond_e
    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 945
    :cond_f
    goto/16 :goto_0

    .line 883
    :cond_10
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v8, v16

    goto/16 :goto_3

    .line 900
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 932
    :cond_12
    move/from16 v16, v15

    move/from16 v17, v10

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_d

    .line 933
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    move/from16 v17, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v19, v3

    move/from16 v20, v6

    .line 934
    invoke-virtual/range {v19 .. v20}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move-object/from16 v20, v2

    .line 935
    invoke-virtual/range {v20 .. v20}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    sub-float v18, v18, v19

    .line 933
    invoke-static/range {v16 .. v18}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 936
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v16

    if-nez v16, :cond_d

    .line 937
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_5

    .line 948
    :pswitch_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 949
    move-object/from16 v16, v9

    const/16 v17, 0x3e8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 950
    move-object/from16 v16, v9

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v10, v16

    .line 951
    move/from16 v16, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_14

    .line 952
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v18, v10

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v16

    if-nez v16, :cond_13

    .line 953
    move-object/from16 v16, v2

    const/16 v17, 0x0

    move/from16 v18, v10

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    move-result v16

    .line 954
    move-object/from16 v16, v2

    move/from16 v17, v10

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 960
    :cond_13
    :goto_6
    move-object/from16 v16, v2

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 961
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->endDrag()V

    .line 962
    goto/16 :goto_0

    .line 956
    :cond_14
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v17

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v2

    .line 957
    invoke-virtual/range {v22 .. v22}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v22

    .line 956
    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 958
    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_6

    .line 964
    :pswitch_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_15

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v16

    if-lez v16, :cond_15

    .line 965
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v17

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v2

    .line 966
    invoke-virtual/range {v22 .. v22}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v22

    .line 965
    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 967
    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 970
    :cond_15
    move-object/from16 v16, v2

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 971
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroidx/core/widget/NestedScrollView;->endDrag()V

    .line 972
    goto/16 :goto_0

    .line 974
    :pswitch_5
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    move/from16 v11, v16

    .line 975
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    .line 976
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    .line 977
    goto/16 :goto_0

    .line 980
    :pswitch_6
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 981
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 839
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 32

    .prologue
    .line 1064
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v25

    move/from16 v12, v25

    .line 1065
    move-object/from16 v25, v2

    .line 1066
    invoke-virtual/range {v25 .. v25}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v25

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    const/16 v25, 0x1

    :goto_0
    move/from16 v13, v25

    .line 1067
    move-object/from16 v25, v2

    .line 1068
    invoke-virtual/range {v25 .. v25}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v25

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    const/16 v25, 0x1

    :goto_1
    move/from16 v14, v25

    .line 1069
    move/from16 v25, v12

    if-eqz v25, :cond_0

    move/from16 v25, v12

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    move/from16 v25, v13

    if-eqz v25, :cond_a

    :cond_0
    const/16 v25, 0x1

    :goto_2
    move/from16 v15, v25

    .line 1071
    move/from16 v25, v12

    if-eqz v25, :cond_1

    move/from16 v25, v12

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    move/from16 v25, v14

    if-eqz v25, :cond_b

    :cond_1
    const/16 v25, 0x1

    :goto_3
    move/from16 v16, v25

    .line 1074
    move/from16 v25, v5

    move/from16 v26, v3

    add-int v25, v25, v26

    move/from16 v17, v25

    .line 1075
    move/from16 v25, v15

    if-nez v25, :cond_2

    .line 1076
    const/16 v25, 0x0

    move/from16 v9, v25

    .line 1079
    :cond_2
    move/from16 v25, v6

    move/from16 v26, v4

    add-int v25, v25, v26

    move/from16 v18, v25

    .line 1080
    move/from16 v25, v16

    if-nez v25, :cond_3

    .line 1081
    const/16 v25, 0x0

    move/from16 v10, v25

    .line 1085
    :cond_3
    move/from16 v25, v9

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v19, v25

    .line 1086
    move/from16 v25, v9

    move/from16 v26, v7

    add-int v25, v25, v26

    move/from16 v20, v25

    .line 1087
    move/from16 v25, v10

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v21, v25

    .line 1088
    move/from16 v25, v10

    move/from16 v26, v8

    add-int v25, v25, v26

    move/from16 v22, v25

    .line 1090
    const/16 v25, 0x0

    move/from16 v23, v25

    .line 1091
    move/from16 v25, v17

    move/from16 v26, v20

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 1092
    move/from16 v25, v20

    move/from16 v17, v25

    .line 1093
    const/16 v25, 0x1

    move/from16 v23, v25

    .line 1099
    :cond_4
    :goto_4
    const/16 v25, 0x0

    move/from16 v24, v25

    .line 1100
    move/from16 v25, v18

    move/from16 v26, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    .line 1101
    move/from16 v25, v22

    move/from16 v18, v25

    .line 1102
    const/16 v25, 0x1

    move/from16 v24, v25

    .line 1108
    :cond_5
    :goto_5
    move/from16 v25, v24

    if-eqz v25, :cond_6

    move-object/from16 v25, v2

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v25

    if-nez v25, :cond_6

    .line 1109
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v25, v0

    move/from16 v26, v17

    move/from16 v27, v18

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v31

    invoke-virtual/range {v25 .. v31}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v25

    .line 1112
    :cond_6
    move-object/from16 v25, v2

    move/from16 v26, v17

    move/from16 v27, v18

    move/from16 v28, v23

    move/from16 v29, v24

    invoke-virtual/range {v25 .. v29}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 1114
    move/from16 v25, v23

    if-nez v25, :cond_7

    move/from16 v25, v24

    if-eqz v25, :cond_e

    :cond_7
    const/16 v25, 0x1

    :goto_6
    move/from16 v2, v25

    return v2

    .line 1066
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1068
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 1069
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 1071
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 1094
    :cond_c
    move/from16 v25, v17

    move/from16 v26, v19

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 1095
    move/from16 v25, v19

    move/from16 v17, v25

    .line 1096
    const/16 v25, 0x1

    move/from16 v23, v25

    goto :goto_4

    .line 1103
    :cond_d
    move/from16 v25, v18

    move/from16 v26, v21

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 1104
    move/from16 v25, v21

    move/from16 v18, v25

    .line 1105
    const/16 v25, 0x1

    move/from16 v24, v25

    goto :goto_5

    .line 1114
    :cond_e
    const/16 v25, 0x0

    goto :goto_6
.end method

.method public pageScroll(I)Z
    .locals 12

    .prologue
    .line 1223
    move-object v0, p0

    move v1, p1

    move v8, v1

    const/16 v9, 0x82

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v2, v8

    .line 1224
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v8

    move v3, v8

    .line 1226
    move v8, v2

    if-eqz v8, :cond_2

    .line 1227
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v9

    move v10, v3

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1228
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v8

    move v4, v8

    .line 1229
    move v8, v4

    if-lez v8, :cond_0

    .line 1230
    move-object v8, v0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1231
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v6, v8

    .line 1232
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 1233
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move v9, v3

    add-int/2addr v8, v9

    move v9, v7

    if-le v8, v9, :cond_0

    .line 1234
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move v9, v7

    move v10, v3

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1243
    :cond_0
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move v10, v3

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1245
    move-object v8, v0

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move-object v11, v0

    iget-object v11, v11, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v8

    move v0, v8

    return v0

    .line 1223
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1238
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v9

    move v10, v3

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1239
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_0

    .line 1240
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1791
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v3, :cond_0

    .line 1792
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1797
    :goto_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1798
    return-void

    .line 1795
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 8

    .prologue
    .line 1840
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v1

    .line 1841
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1840
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1843
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/core/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 709
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 710
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 712
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 713
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 1848
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1849
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1850
    return-void
.end method

.method public scrollTo(II)V
    .locals 12

    .prologue
    .line 1968
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    .line 1969
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v3, v9

    .line 1970
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, v9

    .line 1971
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move v5, v9

    .line 1972
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    move v6, v9

    .line 1973
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move v7, v9

    .line 1974
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    move-object v10, v4

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    move v8, v9

    .line 1975
    move v9, v1

    move v10, v5

    move v11, v6

    invoke-static {v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result v9

    move v1, v9

    .line 1976
    move v9, v2

    move v10, v7

    move v11, v8

    invoke-static {v9, v10, v11}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    move-result v9

    move v2, v9

    .line 1977
    move v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v10

    if-ne v9, v10, :cond_0

    move v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1978
    :cond_0
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1981
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 4

    .prologue
    .line 553
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    if-eq v2, v3, :cond_0

    .line 554
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    .line 555
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 557
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 262
    return-void
.end method

.method public setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .locals 4
    .param p1    # Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    .line 517
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 571
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 572
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 415
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 8

    .prologue
    .line 1416
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/16 v6, 0xfa

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    .line 1417
    return-void
.end method

.method public final smoothScrollBy(III)V
    .locals 9

    .prologue
    .line 1427
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    .line 1428
    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 8

    .prologue
    .line 1470
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/16 v6, 0xfa

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    .line 1471
    return-void
.end method

.method public final smoothScrollTo(III)V
    .locals 9

    .prologue
    .line 1481
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    .line 1482
    return-void
.end method

.method smoothScrollTo(IIIZ)V
    .locals 10

    .prologue
    .line 1506
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    .line 1507
    return-void
.end method

.method smoothScrollTo(IIZ)V
    .locals 9

    .prologue
    .line 1493
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    const/16 v7, 0xfa

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    .line 1494
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public stopNestedScroll()V
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 277
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 237
    return-void
.end method
