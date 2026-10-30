.class Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CenteredArray"
.end annotation


# instance fields
.field private final mData:[I

.field private final mMid:I


# direct methods
.method constructor <init>(I)V
    .locals 5

    .prologue
    .line 1037
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1038
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    .line 1039
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    array-length v3, v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    .line 1040
    return-void
.end method


# virtual methods
.method backingData()[I
    .locals 2

    .prologue
    .line 1047
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    move-object v0, v1

    return-object v0
.end method

.method public fill(I)V
    .locals 4

    .prologue
    .line 1055
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    move v3, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1056
    return-void
.end method

.method get(I)I
    .locals 5

    .prologue
    .line 1043
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method set(II)V
    .locals 6

    .prologue
    .line 1051
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr v4, v5

    move v5, v2

    aput v5, v3, v4

    .line 1052
    return-void
.end method
