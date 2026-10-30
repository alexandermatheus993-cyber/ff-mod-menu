.class Landroidx/recyclerview/widget/DiffUtil$Range;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 578
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 580
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 581
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 582
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 583
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 584
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 585
    return-void
.end method


# virtual methods
.method newSize()I
    .locals 3

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method oldSize()I
    .locals 3

    .prologue
    .line 588
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method
