.class Landroidx/recyclerview/widget/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;,
        Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 15

    .prologue
    .line 141
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    invoke-direct {v9}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 104
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 105
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 112
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 113
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 114
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 115
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 117
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    .line 118
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    .line 119
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    .line 120
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 121
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 123
    move-object v9, v0

    new-instance v10, Landroidx/recyclerview/widget/FastScroller$1;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/FastScroller$1;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 129
    move-object v9, v0

    new-instance v10, Landroidx/recyclerview/widget/FastScroller$2;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 142
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    move-object v9, v0

    move v10, v6

    move-object v11, v2

    invoke-virtual {v11}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 147
    move-object v9, v0

    move v10, v6

    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    .line 148
    move-object v9, v0

    move v10, v6

    move-object v11, v4

    .line 149
    invoke-virtual {v11}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 150
    move-object v9, v0

    move v10, v6

    move-object v11, v5

    .line 151
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 152
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 153
    move-object v9, v0

    move v10, v8

    iput v10, v9, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    .line 154
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 155
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v10, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/FastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 161
    return-void

    .line 119
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .locals 3

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 259
    return-void
.end method

.method private destroyCallbacks()V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 184
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 185
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 186
    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 187
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move v2, v5

    .line 318
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 319
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move v4, v5

    .line 320
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 321
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 322
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    move-object v5, v1

    move v6, v4

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    move-object v5, v1

    move v6, v4

    neg-int v6, v6

    int-to-float v6, v6

    move v7, v3

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move v2, v5

    .line 293
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 294
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move v4, v5

    .line 295
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 296
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 297
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    move-object v5, v0

    invoke-direct {v5}, Landroidx/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v6, v6

    move v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 302
    move-object v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 303
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    move-object v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 305
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int v6, v6

    int-to-float v6, v6

    move v7, v4

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_0
    move-object v5, v1

    move v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    move-object v5, v1

    move v6, v3

    neg-int v6, v6

    int-to-float v6, v6

    move v7, v4

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private getHorizontalRange()[I
    .locals 5

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    aput v3, v1, v2

    .line 543
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 544
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    move-object v0, v1

    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 5

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    aput v3, v1, v2

    .line 534
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 535
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    move-object v0, v1

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 11

    .prologue
    .line 461
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v4

    move-object v2, v4

    .line 462
    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v1, v4

    .line 463
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v4, v4

    move v5, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 475
    :goto_0
    return-void

    .line 467
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    move v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 468
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 469
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 467
    invoke-direct/range {v4 .. v10}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v4

    move v3, v4

    .line 470
    move v4, v3

    if-eqz v4, :cond_1

    .line 471
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 474
    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 475
    goto :goto_0
.end method

.method private isLayoutRTL()Z
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

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

.method private resetHideDelay(I)V
    .locals 6

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 263
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 264
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 15

    .prologue
    .line 479
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v12, v3

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    move v7, v12

    .line 480
    move v12, v7

    if-nez v12, :cond_0

    .line 481
    const/4 v12, 0x0

    move v0, v12

    .line 490
    :goto_0
    return v0

    .line 483
    :cond_0
    move v12, v2

    move v13, v1

    sub-float/2addr v12, v13

    move v13, v7

    int-to-float v13, v13

    div-float/2addr v12, v13

    move v8, v12

    .line 484
    move v12, v4

    move v13, v6

    sub-int/2addr v12, v13

    move v9, v12

    .line 485
    move v12, v8

    move v13, v9

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move v10, v12

    .line 486
    move v12, v5

    move v13, v10

    add-int/2addr v12, v13

    move v11, v12

    .line 487
    move v12, v11

    move v13, v9

    if-ge v12, v13, :cond_1

    move v12, v11

    if-ltz v12, :cond_1

    .line 488
    move v12, v10

    move v0, v12

    goto :goto_0

    .line 490
    :cond_1
    const/4 v12, 0x0

    move v0, v12

    goto :goto_0
.end method

.method private setupCallbacks()V
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 179
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 180
    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 11

    .prologue
    .line 446
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/FastScroller;->getVerticalRange()[I

    move-result-object v4

    move-object v2, v4

    .line 447
    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v1, v4

    .line 448
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v4, v4

    move v5, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 458
    :goto_0
    return-void

    .line 451
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    move v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 452
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 453
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 451
    invoke-direct/range {v4 .. v10}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v4

    move v3, v4

    .line 454
    move v4, v3

    if-eqz v4, :cond_1

    .line 455
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 457
    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 458
    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 168
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/FastScroller;->destroyCallbacks()V

    .line 170
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 172
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/FastScroller;->setupCallbacks()V

    .line 174
    :cond_2
    goto :goto_0
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v0, v1

    return-object v0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 526
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v0, v1

    return-object v0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method hide(I)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 244
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    iget v3, v3, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    packed-switch v3, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 246
    :pswitch_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 249
    :pswitch_1
    move-object v3, v1

    const/4 v4, 0x3

    iput v4, v3, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 250
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 251
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 252
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDragging()Z
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    :cond_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/FastScroller;->mState:I

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

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 269
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 270
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 271
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    iput v5, v4, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 276
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 288
    :goto_0
    return-void

    .line 280
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    if-eqz v4, :cond_3

    .line 281
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v4, :cond_2

    .line 282
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 284
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v4, :cond_3

    .line 285
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    .line 288
    :cond_3
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 382
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v6

    move v4, v6

    .line 383
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v6

    move v5, v6

    .line 384
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    if-nez v6, :cond_0

    move v6, v5

    if-eqz v6, :cond_3

    .line 386
    :cond_0
    move v6, v5

    if-eqz v6, :cond_2

    .line 387
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 388
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v6, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 394
    :cond_1
    :goto_0
    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 395
    const/4 v6, 0x1

    move v3, v6

    .line 404
    :goto_1
    move v6, v3

    move v0, v6

    return v0

    .line 389
    :cond_2
    move v6, v4

    if-eqz v6, :cond_1

    .line 390
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 391
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v6, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    goto :goto_0

    .line 397
    :cond_3
    const/4 v6, 0x0

    move v3, v6

    goto :goto_1

    .line 399
    :cond_4
    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 400
    const/4 v6, 0x1

    move v3, v6

    goto :goto_1

    .line 402
    :cond_5
    const/4 v6, 0x0

    move v3, v6

    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-nez v5, :cond_0

    .line 440
    :goto_0
    return-void

    .line 413
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 414
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v5

    move v3, v5

    .line 415
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v5

    move v4, v5

    .line 416
    move v5, v3

    if-nez v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_3

    .line 417
    :cond_1
    move v5, v4

    if-eqz v5, :cond_4

    .line 418
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 419
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 424
    :cond_2
    :goto_1
    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 440
    :cond_3
    :goto_2
    goto :goto_0

    .line 420
    :cond_4
    move v5, v3

    if-eqz v5, :cond_2

    .line 421
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 422
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    goto :goto_1

    .line 426
    :cond_5
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 427
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 428
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 429
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 430
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    goto :goto_2

    .line 431
    :cond_6
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 432
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 433
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 434
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/FastScroller;->horizontalScrollTo(F)V

    .line 436
    :cond_7
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 437
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/FastScroller;->verticalScrollTo(F)V

    goto :goto_2
.end method

.method requestRedraw()V
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 192
    return-void
.end method

.method setState(I)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 196
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    move-result v2

    .line 197
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 200
    :cond_0
    move v2, v1

    if-nez v2, :cond_2

    .line 201
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    .line 206
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 207
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    move-result v2

    .line 208
    move-object v2, v0

    const/16 v3, 0x4b0

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    .line 212
    :cond_1
    :goto_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 213
    return-void

    .line 203
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/FastScroller;->show()V

    goto :goto_0

    .line 209
    :cond_3
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 210
    move-object v2, v0

    const/16 v3, 0x5dc

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    goto :goto_1
.end method

.method public show()V
    .locals 7

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :pswitch_2
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 234
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 235
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 236
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 237
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateScrollPosition(II)V
    .locals 12

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v8

    move v3, v8

    .line 340
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move v4, v8

    .line 341
    move-object v8, v0

    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    if-lez v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 344
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    move v5, v8

    .line 345
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move v6, v8

    .line 346
    move-object v8, v0

    move v9, v5

    move v10, v6

    sub-int/2addr v9, v10

    if-lez v9, :cond_2

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v10, v0

    iget v10, v10, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 349
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v8, :cond_3

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v8, :cond_3

    .line 350
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz v8, :cond_0

    .line 351
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 375
    :cond_0
    :goto_2
    return-void

    .line 341
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 346
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 356
    :cond_3
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v8, :cond_4

    .line 357
    move v8, v2

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 358
    move-object v8, v0

    move v9, v4

    int-to-float v9, v9

    move v10, v7

    mul-float/2addr v9, v10

    move v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 360
    move-object v8, v0

    move v9, v4

    move v10, v4

    move v11, v4

    mul-int/2addr v10, v11

    move v11, v3

    div-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 364
    :cond_4
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v8, :cond_5

    .line 365
    move v8, v1

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 366
    move-object v8, v0

    move v9, v6

    int-to-float v9, v9

    move v10, v7

    mul-float/2addr v9, v10

    move v10, v5

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 368
    move-object v8, v0

    move v9, v6

    move v10, v6

    move v11, v6

    mul-int/2addr v10, v11

    move v11, v5

    div-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 372
    :cond_5
    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz v8, :cond_6

    move-object v8, v0

    iget v8, v8, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 373
    :cond_6
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 375
    :cond_7
    goto :goto_2
.end method
