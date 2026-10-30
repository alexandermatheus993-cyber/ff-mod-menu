.class Landroidx/recyclerview/widget/TileList;
.super Ljava/lang/Object;
.source "TileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/TileList$Tile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field private final mTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, v2, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    .line 36
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/recyclerview/widget/TileList;->mTileSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public addOrReplace(Landroidx/recyclerview/widget/TileList$Tile;)Landroidx/recyclerview/widget/TileList$Tile;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;)",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    move v2, v4

    .line 72
    move v4, v2

    if-gez v4, :cond_0

    .line 73
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move-object v5, v1

    iget v5, v5, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    const/4 v4, 0x0

    move-object v0, v4

    .line 81
    :goto_0
    return-object v0

    .line 76
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/TileList$Tile;

    move-object v3, v4

    .line 77
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 78
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;

    move-object v5, v3

    if-ne v4, v5, :cond_1

    .line 79
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/recyclerview/widget/TileList;->mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;

    .line 81
    :cond_1
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 57
    return-void
.end method

.method public getAtIndex(I)Landroidx/recyclerview/widget/TileList$Tile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 65
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 67
    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/TileList$Tile;

    move-object v0, v2

    goto :goto_0
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/TileList$Tile;->containsPosition(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 41
    :cond_0
    move v4, v1

    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/TileList;->mTileSize:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    move v2, v4

    .line 42
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    move v3, v4

    .line 43
    move v4, v3

    if-gez v4, :cond_1

    .line 44
    const/4 v4, 0x0

    move-object v0, v4

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v5, v4, Landroidx/recyclerview/widget/TileList;->mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;

    .line 48
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/TileList;->mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/TileList$Tile;->getByPosition(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public removeAtPos(I)Landroidx/recyclerview/widget/TileList$Tile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/recyclerview/widget/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/TileList$Tile;

    move-object v2, v3

    .line 86
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/TileList;->mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 87
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/recyclerview/widget/TileList;->mLastAccessedTile:Landroidx/recyclerview/widget/TileList$Tile;

    .line 89
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 90
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v0, v1

    return v0
.end method
