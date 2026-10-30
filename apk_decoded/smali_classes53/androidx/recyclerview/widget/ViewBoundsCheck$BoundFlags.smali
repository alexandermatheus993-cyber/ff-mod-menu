.class Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 137
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .locals 6

    .prologue
    .line 148
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    move v4, v1

    or-int/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 149
    return-void
.end method

.method boundsMatch()Z
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    const/4 v2, 0x7

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    const/4 v3, 0x0

    shl-int/lit8 v2, v2, 0x0

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 168
    const/4 v1, 0x0

    move v0, v1

    .line 189
    :goto_0
    return v0

    .line 172
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    const/16 v2, 0x70

    and-int/lit8 v1, v1, 0x70

    if-eqz v1, :cond_1

    .line 173
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    const/4 v3, 0x4

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 174
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 178
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    const/16 v2, 0x700

    and-int/lit16 v1, v1, 0x700

    if-eqz v1, :cond_2

    .line 179
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 180
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 184
    :cond_2
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    const/16 v2, 0x7000

    and-int/lit16 v1, v1, 0x7000

    if-eqz v1, :cond_3

    .line 185
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    const/16 v3, 0xc

    shl-int/lit8 v2, v2, 0xc

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 186
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 189
    :cond_3
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method compare(II)I
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    if-le v3, v4, :cond_0

    .line 157
    const/4 v3, 0x1

    move v0, v3

    .line 162
    :goto_0
    return v0

    .line 159
    :cond_0
    move v3, v1

    move v4, v2

    if-ne v3, v4, :cond_1

    .line 160
    const/4 v3, 0x2

    move v0, v3

    goto :goto_0

    .line 162
    :cond_1
    const/4 v3, 0x4

    move v0, v3

    goto :goto_0
.end method

.method resetFlags()V
    .locals 3

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 153
    return-void
.end method

.method setBounds(IIII)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 142
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 143
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 144
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 145
    return-void
.end method
