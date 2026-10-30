.class public final Landroidx/core/database/CursorKt;
.super Ljava/lang/Object;
.source "Cursor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u001a\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0002\u0010\u0007\u001a\u001c\u0010\u0008\u001a\u0004\u0018\u00010\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0002\u0010\n\u001a\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0002\u0010\u000c\u001a\u001c\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0002\u0010\u000f\u001a\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0002\u0010\u0012\u001a\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "getBlobOrNull",
        "",
        "Landroid/database/Cursor;",
        "index",
        "",
        "getDoubleOrNull",
        "",
        "(Landroid/database/Cursor;I)Ljava/lang/Double;",
        "getFloatOrNull",
        "",
        "(Landroid/database/Cursor;I)Ljava/lang/Float;",
        "getIntOrNull",
        "(Landroid/database/Cursor;I)Ljava/lang/Integer;",
        "getLongOrNull",
        "",
        "(Landroid/database/Cursor;I)Ljava/lang/Long;",
        "getShortOrNull",
        "",
        "(Landroid/database/Cursor;I)Ljava/lang/Short;",
        "getStringOrNull",
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
.method public static final getBlobOrNull(Landroid/database/Cursor;I)[B
    .locals 5
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    move-object v3, v0

    const-string v4, "$this$getBlobOrNull"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    goto :goto_0
.end method

.method public static final getDoubleOrNull(Landroid/database/Cursor;I)Ljava/lang/Double;
    .locals 6
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v1, p0

    move v2, p1

    const/4 v4, 0x0

    move v3, v4

    move-object v4, v1

    const-string v5, "$this$getDoubleOrNull"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v1, v4

    return-object v1

    :cond_0
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_0
.end method

.method public static final getFloatOrNull(Landroid/database/Cursor;I)Ljava/lang/Float;
    .locals 5
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    move-object v3, v0

    const-string v4, "$this$getFloatOrNull"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0
.end method

.method public static final getIntOrNull(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 5
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    move-object v3, v0

    const-string v4, "$this$getIntOrNull"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method public static final getLongOrNull(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 6
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v1, p0

    move v2, p1

    const/4 v4, 0x0

    move v3, v4

    move-object v4, v1

    const-string v5, "$this$getLongOrNull"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v1, v4

    return-object v1

    :cond_0
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0
.end method

.method public static final getShortOrNull(Landroid/database/Cursor;I)Ljava/lang/Short;
    .locals 5
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    move-object v3, v0

    const-string v4, "$this$getShortOrNull"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    goto :goto_0
.end method

.method public static final getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    move-object v3, v0

    const-string v4, "$this$getStringOrNull"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
