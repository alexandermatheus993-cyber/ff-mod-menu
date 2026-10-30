.class public final Landroidx/core/graphics/MatrixKt;
.super Ljava/lang/Object;
.source "Matrix.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\nandroidx/core/graphics/MatrixKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u0014\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u001a\u001a\u0010\u0006\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u001a\u001a\u0010\t\u001a\u00020\u00012\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u001a\u0015\u0010\u000c\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u000e\u001a\u00020\u000f*\u00020\u0001H\u0086\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "rotationMatrix",
        "Landroid/graphics/Matrix;",
        "degrees",
        "",
        "px",
        "py",
        "scaleMatrix",
        "sx",
        "sy",
        "translationMatrix",
        "tx",
        "ty",
        "times",
        "m",
        "values",
        "",
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
.method public static final rotationMatrix(FFF)Landroid/graphics/Matrix;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 53
    move v0, p0

    move v1, p1

    move v2, p2

    new-instance v8, Landroid/graphics/Matrix;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    .line 55
    const/4 v8, 0x0

    move v7, v8

    .line 53
    move-object v8, v6

    move v9, v0

    move v10, v1

    move v11, v2

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static synthetic rotationMatrix$default(FFFILjava/lang/Object;)Landroid/graphics/Matrix;
    .locals 8

    .prologue
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 52
    const/4 v5, 0x0

    move v1, v5

    :cond_0
    move v5, v3

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move v2, v5

    :cond_1
    move v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Landroidx/core/graphics/MatrixKt;->rotationMatrix(FFF)Landroid/graphics/Matrix;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static final scaleMatrix(FF)Landroid/graphics/Matrix;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 46
    move v0, p0

    move v1, p1

    new-instance v7, Landroid/graphics/Matrix;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    move-object v7, v2

    move-object v5, v7

    .line 55
    const/4 v7, 0x0

    move v6, v7

    .line 46
    move-object v7, v5

    move v8, v0

    move v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v7, v2

    move-object v0, v7

    return-object v0
.end method

.method public static synthetic scaleMatrix$default(FFILjava/lang/Object;)Landroid/graphics/Matrix;
    .locals 6

    .prologue
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 45
    const/high16 v4, 0x3f800000    # 1.0f

    move v0, v4

    :cond_0
    move v4, v2

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    move v1, v4

    :cond_1
    move v4, v0

    move v5, v1

    invoke-static {v4, v5}, Landroidx/core/graphics/MatrixKt;->scaleMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static final times(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 12
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
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

    const-string v9, "$this$times"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    const-string v9, "m"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v8, Landroid/graphics/Matrix;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    move-object v6, v8

    .line 55
    const/4 v8, 0x0

    move v7, v8

    .line 27
    move-object v8, v6

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v8

    move-object v8, v3

    move-object v0, v8

    return-object v0
.end method

.method public static final translationMatrix(FF)Landroid/graphics/Matrix;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 39
    move v0, p0

    move v1, p1

    new-instance v7, Landroid/graphics/Matrix;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    move-object v7, v2

    move-object v5, v7

    .line 55
    const/4 v7, 0x0

    move v6, v7

    .line 39
    move-object v7, v5

    move v8, v0

    move v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object v7, v2

    move-object v0, v7

    return-object v0
.end method

.method public static synthetic translationMatrix$default(FFILjava/lang/Object;)Landroid/graphics/Matrix;
    .locals 6

    .prologue
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 38
    const/4 v4, 0x0

    move v0, v4

    :cond_0
    move v4, v2

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    move v1, v4

    :cond_1
    move v4, v0

    move v5, v1

    invoke-static {v4, v5}, Landroidx/core/graphics/MatrixKt;->translationMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static final values(Landroid/graphics/Matrix;)[F
    .locals 9
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    const/4 v7, 0x0

    move v1, v7

    move-object v7, v0

    const-string v8, "$this$values"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const/16 v7, 0x9

    new-array v7, v7, [F

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    move-object v7, v2

    move-object v5, v7

    .line 55
    const/4 v7, 0x0

    move v6, v7

    .line 32
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->getValues([F)V

    move-object v7, v2

    move-object v0, v7

    return-object v0
.end method
