.class public final Landroidx/core/graphics/PointKt;
.super Ljava/lang/Object;
.source "Point.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\u0086\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0003H\u0086\n\u001a\r\u0010\n\u001a\u00020\u0002*\u00020\u0004H\u0086\u0008\u001a\r\u0010\u000b\u001a\u00020\u0004*\u00020\u0002H\u0086\u0008\u001a\r\u0010\u000c\u001a\u00020\u0002*\u00020\u0002H\u0086\n\u001a\r\u0010\u000c\u001a\u00020\u0004*\u00020\u0004H\u0086\n\u00a8\u0006\r"
    }
    d2 = {
        "component1",
        "",
        "Landroid/graphics/Point;",
        "",
        "Landroid/graphics/PointF;",
        "component2",
        "minus",
        "p",
        "xy",
        "plus",
        "toPoint",
        "toPointF",
        "unaryMinus",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final component1(Landroid/graphics/PointF;)F
    .locals 4
    .param p0    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$component1"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v2, v0

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move v0, v2

    return v0
.end method

.method public static final component1(Landroid/graphics/Point;)I
    .locals 4
    .param p0    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$component1"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v2, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    move v0, v2

    return v0
.end method

.method public static final component2(Landroid/graphics/PointF;)F
    .locals 4
    .param p0    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$component2"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-object v2, v0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move v0, v2

    return v0
.end method

.method public static final component2(Landroid/graphics/Point;)I
    .locals 4
    .param p0    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$component2"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v2, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    move v0, v2

    return v0
.end method

.method public static final minus(Landroid/graphics/Point;I)Landroid/graphics/Point;
    .locals 13
    .param p0    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    const-string v9, "$this$minus"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v8, Landroid/graphics/Point;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 132
    move-object v8, v6

    move v9, v1

    neg-int v9, v9

    move v10, v1

    neg-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->offset(II)V

    .line 133
    nop

    .line 131
    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final minus(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 13
    .param p0    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    const-string v9, "$this$minus"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    const-string v9, "p"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v8, Landroid/graphics/Point;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 112
    move-object v8, v6

    move-object v9, v1

    iget v9, v9, Landroid/graphics/Point;->x:I

    neg-int v9, v9

    move-object v10, v1

    iget v10, v10, Landroid/graphics/Point;->y:I

    neg-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->offset(II)V

    .line 113
    nop

    .line 111
    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final minus(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 13
    .param p0    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    const-string v9, "$this$minus"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v8, Landroid/graphics/PointF;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move-object v11, v0

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 142
    move-object v8, v6

    move v9, v1

    neg-float v9, v9

    move v10, v1

    neg-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->offset(FF)V

    .line 143
    nop

    .line 141
    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final minus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 13
    .param p0    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    const-string v9, "$this$minus"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    const-string v9, "p"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v8, Landroid/graphics/PointF;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move-object v11, v0

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 122
    move-object v8, v6

    move-object v9, v1

    iget v9, v9, Landroid/graphics/PointF;->x:F

    neg-float v9, v9

    move-object v10, v1

    iget v10, v10, Landroid/graphics/PointF;->y:F

    neg-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->offset(FF)V

    .line 123
    nop

    .line 121
    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final plus(Landroid/graphics/Point;I)Landroid/graphics/Point;
    .locals 13
    .param p0    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    const-string v9, "$this$plus"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v8, Landroid/graphics/Point;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 92
    move-object v8, v6

    move v9, v1

    move v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->offset(II)V

    .line 93
    nop

    .line 91
    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final plus(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 13
    .param p0    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    const-string v9, "$this$plus"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    const-string v9, "p"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v8, Landroid/graphics/Point;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 73
    move-object v8, v6

    move-object v9, v1

    iget v9, v9, Landroid/graphics/Point;->x:I

    move-object v10, v1

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->offset(II)V

    .line 74
    nop

    .line 72
    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final plus(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 13
    .param p0    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    const-string v9, "$this$plus"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v8, Landroid/graphics/PointF;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move-object v11, v0

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 102
    move-object v8, v6

    move v9, v1

    move v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->offset(FF)V

    .line 103
    nop

    .line 101
    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final plus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 13
    .param p0    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    const-string v9, "$this$plus"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    const-string v9, "p"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v8, Landroid/graphics/PointF;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget v10, v10, Landroid/graphics/PointF;->x:F

    move-object v11, v0

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 82
    move-object v8, v6

    move-object v9, v1

    iget v9, v9, Landroid/graphics/PointF;->x:F

    move-object v10, v1

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->offset(FF)V

    .line 83
    nop

    .line 81
    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 7
    .param p0    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$toPoint"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v2, Landroid/graphics/Point;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v2

    return-object v0
.end method

.method public static final toPointF(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 6
    .param p0    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$toPointF"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance v2, Landroid/graphics/PointF;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    move-object v0, v2

    return-object v0
.end method

.method public static final unaryMinus(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p0    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$unaryMinus"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v2, Landroid/graphics/Point;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v2

    return-object v0
.end method

.method public static final unaryMinus(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7
    .param p0    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    move-object v2, v0

    const-string v3, "$this$unaryMinus"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v2, Landroid/graphics/PointF;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    move-object v5, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v2

    return-object v0
.end method
