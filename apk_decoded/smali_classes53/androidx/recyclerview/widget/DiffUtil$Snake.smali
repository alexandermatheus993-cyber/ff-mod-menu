.class Landroidx/recyclerview/widget/DiffUtil$Snake;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Snake"
.end annotation


# instance fields
.field public endX:I

.field public endY:I

.field public reverse:Z

.field public startX:I

.field public startY:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method diagonalSize()I
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method hasAdditionOrRemoval()Z
    .locals 4

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isAddition()Z
    .locals 4

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method toDiagonal()Landroidx/recyclerview/widget/DiffUtil$Diagonal;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/DiffUtil$Snake;->hasAdditionOrRemoval()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    move-object v0, v1

    .line 559
    :goto_0
    return-object v0

    .line 551
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/DiffUtil$Snake;->isAddition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    .line 554
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    .line 559
    :cond_2
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    move-object v0, v1

    goto :goto_0
.end method
