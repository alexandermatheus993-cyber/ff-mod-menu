.class public final Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1358
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .locals 5

    .prologue
    .line 1367
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    rem-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getSpanSize(I)I
    .locals 3

    .prologue
    .line 1362
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method
