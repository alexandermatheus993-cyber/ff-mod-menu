.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_MASK:I = 0xf

.field private static final FLAG_MOVED:I = 0xc

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x4

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mDiagonals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;[I[IZ)V"
        }
    .end annotation

    .prologue
    .line 664
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 665
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 666
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 667
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 668
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 669
    move-object v6, v0

    iget-object v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 670
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 671
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 672
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 673
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 674
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->addEdgeDiagonals()V

    .line 675
    move-object v6, v0

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItems()V

    .line 676
    return-void
.end method

.method private addEdgeDiagonals()V
    .locals 10

    .prologue
    .line 683
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    .line 685
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-nez v2, :cond_0

    move-object v2, v1

    iget v2, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-eqz v2, :cond_1

    .line 686
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 689
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 690
    return-void

    .line 683
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    goto :goto_0
.end method

.method private findMatchingAddition(I)V
    .locals 13

    .prologue
    .line 738
    move-object v0, p0

    move v1, p1

    const/4 v9, 0x0

    move v2, v9

    .line 739
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v3, v9

    .line 740
    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_3

    .line 741
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    move v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v5, v9

    .line 742
    :goto_1
    move v9, v2

    move-object v10, v5

    iget v10, v10, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-ge v9, v10, :cond_2

    .line 744
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v10, v2

    aget v9, v9, v10

    if-nez v9, :cond_1

    .line 745
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v9

    move v6, v9

    .line 746
    move v9, v6

    if-eqz v9, :cond_1

    .line 748
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    move v7, v9

    .line 749
    move v9, v7

    if-eqz v9, :cond_0

    const/16 v9, 0x8

    .line 750
    :goto_2
    move v8, v9

    .line 752
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v10, v1

    move v11, v2

    const/4 v12, 0x4

    shl-int/lit8 v11, v11, 0x4

    move v12, v8

    or-int/2addr v11, v12

    aput v11, v9, v10

    .line 753
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v10, v2

    move v11, v1

    const/4 v12, 0x4

    shl-int/lit8 v11, v11, 0x4

    move v12, v8

    or-int/2addr v11, v12

    aput v11, v9, v10

    .line 761
    :goto_3
    return-void

    .line 750
    :cond_0
    const/4 v9, 0x4

    goto :goto_2

    .line 757
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 759
    :cond_2
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endY()I

    move-result v9

    move v2, v9

    .line 740
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 761
    :cond_3
    goto :goto_3
.end method

.method private findMatchingItems()V
    .locals 12

    .prologue
    .line 698
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v8

    :goto_0
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v2, v8

    .line 699
    const/4 v8, 0x0

    move v3, v8

    :goto_1
    move v8, v3

    move-object v9, v2

    iget v9, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v8, v9, :cond_1

    .line 700
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    move v9, v3

    add-int/2addr v8, v9

    move v4, v8

    .line 701
    move-object v8, v2

    iget v8, v8, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    move v9, v3

    add-int/2addr v8, v9

    move v5, v8

    .line 702
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move v9, v4

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v8

    move v6, v8

    .line 703
    move v8, v6

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_2
    move v7, v8

    .line 704
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v9, v4

    move v10, v5

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    move v11, v7

    or-int/2addr v10, v11

    aput v10, v8, v9

    .line 705
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v9, v5

    move v10, v4

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    move v11, v7

    or-int/2addr v10, v11

    aput v10, v8, v9

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 703
    :cond_0
    const/4 v8, 0x2

    goto :goto_2

    .line 707
    :cond_1
    goto :goto_0

    .line 709
    :cond_2
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v8, :cond_3

    .line 712
    move-object v8, v0

    invoke-direct {v8}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMoveMatches()V

    .line 714
    :cond_3
    return-void
.end method

.method private findMoveMatches()V
    .locals 6

    .prologue
    .line 718
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 719
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object v3, v4

    .line 720
    :goto_1
    move v4, v1

    move-object v5, v3

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-ge v4, v5, :cond_1

    .line 721
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v5, v1

    aget v4, v4, v5

    if-nez v4, :cond_0

    .line 723
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingAddition(I)V

    .line 725
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 728
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endX()I

    move-result v4

    move v1, v4

    .line 729
    goto :goto_0

    .line 730
    :cond_2
    return-void
.end method

.method private static getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .prologue
    .line 975
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v6, 0x0

    move-object v3, v6

    .line 976
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .line 977
    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 978
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object v5, v6

    .line 979
    move-object v6, v5

    iget v6, v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    move v7, v1

    if-ne v6, v7, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    move v7, v2

    if-ne v6, v7, :cond_1

    .line 980
    move-object v6, v5

    move-object v3, v6

    .line 981
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 985
    :cond_0
    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 987
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object v5, v6

    .line 988
    move v6, v2

    if-eqz v6, :cond_2

    .line 989
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 993
    :goto_2
    goto :goto_1

    .line 984
    :cond_1
    goto :goto_0

    .line 991
    :cond_2
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_2

    .line 994
    :cond_3
    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 795
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    if-lt v3, v4, :cond_1

    .line 796
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index out of bounds - passed position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new list size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 799
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 800
    move v3, v2

    const/16 v4, 0xf

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_2

    .line 801
    const/4 v3, -0x1

    move v0, v3

    .line 803
    :goto_0
    return v0

    :cond_2
    move v3, v2

    const/4 v4, 0x4

    shr-int/lit8 v3, v3, 0x4

    move v0, v3

    goto :goto_0
.end method

.method public convertOldPositionToNew(I)I
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 773
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    if-lt v3, v4, :cond_1

    .line 774
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index out of bounds - passed position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", old list size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 777
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 778
    move v3, v2

    const/16 v4, 0xf

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_2

    .line 779
    const/4 v3, -0x1

    move v0, v3

    .line 781
    :goto_0
    return v0

    :cond_2
    move v3, v2

    const/4 v4, 0x4

    shr-int/lit8 v3, v3, 0x4

    move v0, v3

    goto :goto_0
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 25
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 855
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    instance-of v0, v0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 856
    move-object/from16 v18, v3

    check-cast v18, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move-object/from16 v4, v18

    .line 868
    :goto_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    move/from16 v18, v0

    move/from16 v5, v18

    .line 870
    new-instance v18, Ljava/util/ArrayDeque;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayDeque;-><init>()V

    move-object/from16 v6, v18

    .line 872
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    move/from16 v18, v0

    move/from16 v7, v18

    .line 873
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    move/from16 v18, v0

    move/from16 v8, v18

    .line 877
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v9, v18

    :goto_1
    move/from16 v18, v9

    if-ltz v18, :cond_b

    .line 878
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    move-object/from16 v18, v0

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-object/from16 v10, v18

    .line 879
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endX()I

    move-result v18

    move/from16 v11, v18

    .line 880
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endY()I

    move-result v18

    move/from16 v12, v18

    .line 884
    :goto_2
    move/from16 v18, v7

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 885
    add-int/lit8 v7, v7, -0x1

    .line 887
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object/from16 v18, v0

    move/from16 v19, v7

    aget v18, v18, v19

    move/from16 v13, v18

    .line 888
    move/from16 v18, v13

    const/16 v19, 0xc

    and-int/lit8 v18, v18, 0xc

    if-eqz v18, :cond_3

    .line 889
    move/from16 v18, v13

    const/16 v19, 0x4

    shr-int/lit8 v18, v18, 0x4

    move/from16 v14, v18

    .line 891
    move-object/from16 v18, v6

    move/from16 v19, v14

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v18

    move-object/from16 v15, v18

    .line 893
    move-object/from16 v18, v15

    if-eqz v18, :cond_2

    .line 895
    move/from16 v18, v5

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 896
    move-object/from16 v18, v4

    move/from16 v19, v7

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 897
    move/from16 v18, v13

    const/16 v19, 0x4

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_0

    .line 898
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v18, v0

    move/from16 v19, v7

    move/from16 v20, v14

    invoke-virtual/range {v18 .. v20}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 899
    move-object/from16 v18, v4

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    move-object/from16 v21, v17

    invoke-virtual/range {v18 .. v21}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 914
    :cond_0
    :goto_3
    goto :goto_2

    .line 858
    :cond_1
    new-instance v18, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    move-object/from16 v4, v18

    .line 862
    move-object/from16 v18, v4

    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 903
    :cond_2
    move-object/from16 v18, v6

    new-instance v19, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v23, v7

    sub-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x1

    invoke-direct/range {v20 .. v23}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface/range {v18 .. v19}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v18

    goto :goto_3

    .line 911
    :cond_3
    move-object/from16 v18, v4

    move/from16 v19, v7

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    .line 912
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 915
    :cond_4
    :goto_4
    move/from16 v18, v8

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 916
    add-int/lit8 v8, v8, -0x1

    .line 918
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    move-object/from16 v18, v0

    move/from16 v19, v8

    aget v18, v18, v19

    move/from16 v13, v18

    .line 919
    move/from16 v18, v13

    const/16 v19, 0xc

    and-int/lit8 v18, v18, 0xc

    if-eqz v18, :cond_7

    .line 922
    move/from16 v18, v13

    const/16 v19, 0x4

    shr-int/lit8 v18, v18, 0x4

    move/from16 v14, v18

    .line 924
    move-object/from16 v18, v6

    move/from16 v19, v14

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v18

    move-object/from16 v15, v18

    .line 927
    move-object/from16 v18, v15

    if-nez v18, :cond_6

    .line 929
    move-object/from16 v18, v6

    new-instance v19, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move/from16 v21, v8

    move/from16 v22, v5

    move/from16 v23, v7

    sub-int v22, v22, v23

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface/range {v18 .. v19}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 950
    :cond_5
    :goto_5
    goto :goto_4

    .line 938
    :cond_6
    move/from16 v18, v5

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v16, v18

    .line 939
    move-object/from16 v18, v4

    move/from16 v19, v16

    move/from16 v20, v7

    invoke-virtual/range {v18 .. v20}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 940
    move/from16 v18, v13

    const/16 v19, 0x4

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_5

    .line 941
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v8

    invoke-virtual/range {v18 .. v20}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 942
    move-object/from16 v18, v4

    move/from16 v19, v7

    const/16 v20, 0x1

    move-object/from16 v21, v17

    invoke-virtual/range {v18 .. v21}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_5

    .line 947
    :cond_7
    move-object/from16 v18, v4

    move/from16 v19, v7

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    .line 948
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 952
    :cond_8
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    move/from16 v18, v0

    move/from16 v7, v18

    .line 953
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    move/from16 v18, v0

    move/from16 v8, v18

    .line 954
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_6
    move/from16 v18, v13

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 956
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move-object/from16 v18, v0

    move/from16 v19, v7

    aget v18, v18, v19

    const/16 v19, 0xf

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 957
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    move-object/from16 v18, v0

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v18 .. v20}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    .line 958
    move-object/from16 v18, v4

    move/from16 v19, v7

    const/16 v20, 0x1

    move-object/from16 v21, v14

    invoke-virtual/range {v18 .. v21}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 960
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 961
    add-int/lit8 v8, v8, 0x1

    .line 954
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 964
    :cond_a
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    move/from16 v18, v0

    move/from16 v7, v18

    .line 965
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    move/from16 v18, v0

    move/from16 v8, v18

    .line 877
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    .line 967
    :cond_b
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 968
    return-void
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 840
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 841
    return-void
.end method
