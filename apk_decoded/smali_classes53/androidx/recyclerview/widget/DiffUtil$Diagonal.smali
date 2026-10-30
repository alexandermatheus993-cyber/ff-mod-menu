.class Landroidx/recyclerview/widget/DiffUtil$Diagonal;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Diagonal"
.end annotation


# instance fields
.field public final size:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>(III)V
    .locals 6

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 482
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 483
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 484
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 485
    return-void
.end method


# virtual methods
.method endX()I
    .locals 3

    .prologue
    .line 488
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method endY()I
    .locals 3

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method
