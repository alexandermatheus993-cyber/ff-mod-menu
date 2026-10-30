.class public Landroidx/recyclerview/widget/DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DividerItem"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010214

    aput v3, v1, v2

    sput-object v0, Landroidx/recyclerview/widget/DividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 57
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    .line 67
    move-object v4, v1

    sget-object v5, Landroidx/recyclerview/widget/DividerItemDecoration;->ATTRS:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 68
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 69
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 70
    const-string v4, "DividerItem"

    const-string v5, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 73
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/DividerItemDecoration;->setOrientation(I)V

    .line 75
    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 15

    .prologue
    .line 151
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 155
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 156
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v10

    move v3, v10

    .line 157
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v10

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move v4, v10

    .line 158
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v11

    move v12, v3

    move-object v13, v2

    .line 159
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v13

    move-object v14, v2

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    move v14, v4

    .line 158
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v10

    .line 165
    :goto_0
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v10

    move v5, v10

    .line 166
    const/4 v10, 0x0

    move v6, v10

    :goto_1
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_1

    .line 167
    move-object v10, v2

    move v11, v6

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 168
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v10

    move-object v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 169
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getTranslationX()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    move v8, v10

    .line 170
    move v10, v8

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v10, v11

    move v9, v10

    .line 171
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move v11, v9

    move v12, v3

    move v13, v8

    move v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 161
    :cond_0
    const/4 v10, 0x0

    move v3, v10

    .line 162
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v10

    move v4, v10

    goto :goto_0

    .line 174
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 175
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 16

    .prologue
    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 128
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 129
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v10

    move v3, v10

    .line 130
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v10

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v4, v10

    .line 131
    move-object v10, v1

    move v11, v3

    move-object v12, v2

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v12

    move v13, v4

    move-object v14, v2

    .line 132
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v14

    move-object v15, v2

    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    .line 131
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v10

    .line 138
    :goto_0
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v10

    move v5, v10

    .line 139
    const/4 v10, 0x0

    move v6, v10

    :goto_1
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_1

    .line 140
    move-object v10, v2

    move v11, v6

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 141
    move-object v10, v2

    move-object v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 142
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    move v8, v10

    .line 143
    move v10, v8

    move-object v11, v0

    iget-object v11, v11, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    move v9, v10

    .line 144
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move v11, v3

    move v12, v9

    move v13, v4

    move v14, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 134
    :cond_0
    const/4 v10, 0x0

    move v3, v10

    .line 135
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v10

    move v4, v10

    goto :goto_0

    .line 147
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 148
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 181
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 185
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    :goto_1
    goto :goto_0

    .line 187
    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 117
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 121
    :goto_1
    goto :goto_0

    .line 119
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Drawable cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 101
    return-void
.end method

.method public setOrientation(I)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Invalid orientation. It should be either HORIZONTAL or VERTICAL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    .line 89
    return-void
.end method
