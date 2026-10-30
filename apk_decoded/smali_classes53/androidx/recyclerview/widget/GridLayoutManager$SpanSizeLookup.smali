.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanGroupIndices:Z

.field private mCacheSpanIndices:Z

.field final mSpanGroupIndexCache:Landroid/util/SparseIntArray;

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 844
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 846
    move-object v1, v0

    new-instance v2, Landroid/util/SparseIntArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 847
    move-object v1, v0

    new-instance v2, Landroid/util/SparseIntArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 849
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 850
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    return-void
.end method

.method static findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I
    .locals 8

    .prologue
    .line 1007
    move-object v0, p0

    move v1, p1

    const/4 v6, 0x0

    move v2, v6

    .line 1008
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    .line 1010
    :goto_0
    move v6, v2

    move v7, v3

    if-gt v6, v7, :cond_1

    .line 1013
    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 1014
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    move v5, v6

    .line 1015
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 1016
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v2, v6

    .line 1020
    :goto_1
    goto :goto_0

    .line 1018
    :cond_0
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    goto :goto_1

    .line 1021
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 1022
    move v6, v4

    if-ltz v6, :cond_2

    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1023
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    move v0, v6

    .line 1025
    :goto_2
    return v0

    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_2
.end method


# virtual methods
.method getCachedSpanGroupIndex(II)I
    .locals 8

    .prologue
    .line 940
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    if-nez v5, :cond_0

    .line 941
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    .line 949
    :goto_0
    return v0

    .line 943
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    move v6, v1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    move v3, v5

    .line 944
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 945
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 947
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    move v4, v5

    .line 948
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method getCachedSpanIndex(II)I
    .locals 8

    .prologue
    .line 927
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v5, :cond_0

    .line 928
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v5

    move v0, v5

    .line 936
    :goto_0
    return v0

    .line 930
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    move v3, v5

    .line 931
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 932
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 934
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v5

    move v4, v5

    .line 935
    move-object v5, v0

    iget-object v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method public getSpanGroupIndex(II)I
    .locals 12

    .prologue
    .line 1039
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v9, 0x0

    move v3, v9

    .line 1040
    const/4 v9, 0x0

    move v4, v9

    .line 1041
    const/4 v9, 0x0

    move v5, v9

    .line 1042
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    if-eqz v9, :cond_0

    .line 1044
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    move v10, v1

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I

    move-result v9

    move v6, v9

    .line 1045
    move v9, v6

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 1046
    move-object v9, v0

    iget-object v9, v9, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move v4, v9

    .line 1047
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 1048
    move-object v9, v0

    move v10, v6

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v9

    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v10

    add-int/2addr v9, v10

    move v3, v9

    .line 1049
    move v9, v3

    move v10, v2

    if-ne v9, v10, :cond_0

    .line 1050
    const/4 v9, 0x0

    move v3, v9

    .line 1051
    add-int/lit8 v4, v4, 0x1

    .line 1055
    :cond_0
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v9

    move v6, v9

    .line 1056
    move v9, v5

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v1

    if-ge v9, v10, :cond_3

    .line 1057
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v9

    move v8, v9

    .line 1058
    move v9, v3

    move v10, v8

    add-int/2addr v9, v10

    move v3, v9

    .line 1059
    move v9, v3

    move v10, v2

    if-ne v9, v10, :cond_2

    .line 1060
    const/4 v9, 0x0

    move v3, v9

    .line 1061
    add-int/lit8 v4, v4, 0x1

    .line 1056
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1062
    :cond_2
    move v9, v3

    move v10, v2

    if-le v9, v10, :cond_1

    .line 1064
    move v9, v8

    move v3, v9

    .line 1065
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1068
    :cond_3
    move v9, v3

    move v10, v6

    add-int/2addr v9, v10

    move v10, v2

    if-le v9, v10, :cond_4

    .line 1069
    add-int/lit8 v4, v4, 0x1

    .line 1071
    :cond_4
    move v9, v4

    move v0, v9

    return v0
.end method

.method public getSpanIndex(II)I
    .locals 11

    .prologue
    .line 976
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v3, v8

    .line 977
    move v8, v3

    move v9, v2

    if-ne v8, v9, :cond_0

    .line 978
    const/4 v8, 0x0

    move v0, v8

    .line 1003
    :goto_0
    return v0

    .line 980
    :cond_0
    const/4 v8, 0x0

    move v4, v8

    .line 981
    const/4 v8, 0x0

    move v5, v8

    .line 983
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v8, :cond_1

    .line 984
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v9, v1

    invoke-static {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->findFirstKeyLessThan(Landroid/util/SparseIntArray;I)I

    move-result v8

    move v6, v8

    .line 985
    move v8, v6

    if-ltz v8, :cond_1

    .line 986
    move-object v8, v0

    iget-object v8, v8, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v9

    add-int/2addr v8, v9

    move v4, v8

    .line 987
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 990
    :cond_1
    move v8, v5

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_4

    .line 991
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v7, v8

    .line 992
    move v8, v4

    move v9, v7

    add-int/2addr v8, v9

    move v4, v8

    .line 993
    move v8, v4

    move v9, v2

    if-ne v8, v9, :cond_3

    .line 994
    const/4 v8, 0x0

    move v4, v8

    .line 990
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 995
    :cond_3
    move v8, v4

    move v9, v2

    if-le v8, v9, :cond_2

    .line 997
    move v8, v7

    move v4, v8

    goto :goto_2

    .line 1000
    :cond_4
    move v8, v4

    move v9, v3

    add-int/2addr v8, v9

    move v9, v2

    if-gt v8, v9, :cond_5

    .line 1001
    move v8, v4

    move v0, v8

    goto :goto_0

    .line 1003
    :cond_5
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanGroupIndexCache()V
    .locals 2

    .prologue
    .line 905
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 906
    return-void
.end method

.method public invalidateSpanIndexCache()V
    .locals 2

    .prologue
    .line 897
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 898
    return-void
.end method

.method public isSpanGroupIndexCacheEnabled()Z
    .locals 2

    .prologue
    .line 923
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    move v0, v1

    return v0
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 2

    .prologue
    .line 914
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    move v0, v1

    return v0
.end method

.method public setSpanGroupIndexCacheEnabled(Z)V
    .locals 4

    .prologue
    .line 886
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 887
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 889
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanGroupIndices:Z

    .line 890
    return-void
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 4

    .prologue
    .line 869
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 870
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 872
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 873
    return-void
.end method
