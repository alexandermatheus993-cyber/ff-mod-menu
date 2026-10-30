.class public final Landroidx/work/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Data$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/work/Data;

.field public static final MAX_DATA_BYTES:I = 0x2800

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "Data"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Landroidx/work/Data$Builder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    sput-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroidx/work/Data;)V
    .locals 7
    .param p1    # Landroidx/work/Data;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    iget-object v5, v5, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v2, Landroidx/work/Data;->mValues:Ljava/util/Map;

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v2, Landroidx/work/Data;->mValues:Ljava/util/Map;

    .line 74
    return-void
.end method

.method static convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;
    .locals 7
    .param p0    # [Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Boolean;

    move-object v1, v3

    .line 454
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 455
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget-boolean v5, v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method static convertPrimitiveByteArray([B)[Ljava/lang/Byte;
    .locals 7
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Byte;

    move-object v1, v3

    .line 462
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 463
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget-byte v5, v5, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method static convertPrimitiveDoubleArray([D)[Ljava/lang/Double;
    .locals 8
    .param p0    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 497
    move-object v1, p0

    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Double;

    move-object v2, v4

    .line 498
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 499
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    :cond_0
    move-object v4, v2

    move-object v1, v4

    return-object v1
.end method

.method static convertPrimitiveFloatArray([F)[Ljava/lang/Float;
    .locals 7
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 488
    move-object v0, p0

    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Float;

    move-object v1, v3

    .line 489
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 490
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method static convertPrimitiveIntArray([I)[Ljava/lang/Integer;
    .locals 7
    .param p0    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Integer;

    move-object v1, v3

    .line 471
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 472
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method static convertPrimitiveLongArray([J)[Ljava/lang/Long;
    .locals 8
    .param p0    # [J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 479
    move-object v1, p0

    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Long;

    move-object v2, v4

    .line 480
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 481
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    :cond_0
    move-object v4, v2

    move-object v1, v4

    return-object v1
.end method

.method public static fromByteArray([B)Landroidx/work/Data;
    .locals 11
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    move-object v7, v0

    array-length v7, v7

    const/16 v8, 0x2800

    if-le v7, v8, :cond_0

    .line 403
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 407
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v1, v7

    .line 408
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v7

    .line 409
    const/4 v7, 0x0

    move-object v3, v7

    .line 411
    :try_start_0
    new-instance v7, Ljava/io/ObjectInputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v7

    .line 412
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    move v4, v7

    :goto_0
    move v7, v4

    if-lez v7, :cond_1

    .line 413
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 412
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 418
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    .line 420
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 426
    :cond_2
    :goto_1
    move-object v7, v2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 431
    :goto_2
    new-instance v7, Landroidx/work/Data;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/work/Data;-><init>(Ljava/util/Map;)V

    move-object v0, v7

    return-object v0

    .line 421
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 422
    sget-object v7, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v8, "Error in Data#fromByteArray: "

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto :goto_1

    .line 427
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 428
    sget-object v7, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v8, "Error in Data#fromByteArray: "

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 430
    goto :goto_2

    .line 415
    :catch_2
    move-exception v7

    :goto_3
    move-object v4, v7

    .line 416
    :try_start_3
    sget-object v7, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v8, "Error in Data#fromByteArray: "

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    .line 418
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 420
    move-object v7, v3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 426
    :cond_3
    :goto_4
    move-object v7, v2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 429
    goto :goto_2

    .line 421
    :catch_3
    move-exception v7

    move-object v4, v7

    .line 422
    sget-object v7, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v8, "Error in Data#fromByteArray: "

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto :goto_4

    .line 427
    :catch_4
    move-exception v7

    move-object v4, v7

    .line 428
    sget-object v7, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v8, "Error in Data#fromByteArray: "

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 430
    goto :goto_2

    .line 418
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    if-eqz v7, :cond_4

    .line 420
    move-object v7, v3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 426
    :cond_4
    :goto_5
    move-object v7, v2

    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 430
    :goto_6
    move-object v7, v5

    throw v7

    .line 421
    :catch_5
    move-exception v7

    move-object v6, v7

    .line 422
    sget-object v7, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v8, "Error in Data#fromByteArray: "

    move-object v9, v6

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto :goto_5

    .line 427
    :catch_6
    move-exception v7

    move-object v6, v7

    .line 428
    sget-object v7, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v8, "Error in Data#fromByteArray: "

    move-object v9, v6

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    goto :goto_6

    .line 415
    :catch_7
    move-exception v7

    goto :goto_3
.end method

.method public static toByteArray(Landroidx/work/Data;)[B
    .locals 12
    .param p0    # Landroidx/work/Data;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v8

    .line 355
    const/4 v8, 0x0

    move-object v2, v8

    .line 357
    :try_start_0
    new-instance v8, Ljava/io/ObjectOutputStream;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v8

    .line 358
    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/work/Data;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 359
    move-object v8, v0

    iget-object v8, v8, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 360
    move-object v8, v2

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 361
    move-object v8, v2

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    goto :goto_0

    .line 367
    :cond_0
    move-object v8, v2

    if-eqz v8, :cond_1

    .line 371
    move-object v8, v2

    :try_start_1
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    :cond_1
    :goto_1
    move-object v8, v1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    :goto_2
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    const/16 v9, 0x2800

    if-le v8, v9, :cond_4

    .line 384
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 372
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 373
    sget-object v8, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v9, "Error in Data#toByteArray: "

    move-object v10, v3

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_1

    .line 378
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 379
    sget-object v8, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v9, "Error in Data#toByteArray: "

    move-object v10, v3

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 381
    goto :goto_2

    .line 363
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 364
    :try_start_3
    sget-object v8, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v9, "Error in Data#toByteArray: "

    move-object v10, v3

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 365
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    move-object v4, v8

    .line 367
    move-object v8, v2

    if-eqz v8, :cond_2

    .line 371
    move-object v8, v2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 377
    :cond_2
    :goto_3
    move-object v8, v1

    :try_start_5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 365
    :goto_4
    move-object v8, v4

    move-object v0, v8

    .line 388
    :goto_5
    return-object v0

    .line 372
    :catch_3
    move-exception v8

    move-object v5, v8

    .line 373
    sget-object v8, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v9, "Error in Data#toByteArray: "

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_3

    .line 378
    :catch_4
    move-exception v8

    move-object v5, v8

    .line 379
    sget-object v8, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v9, "Error in Data#toByteArray: "

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_4

    .line 367
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v2

    if-eqz v8, :cond_3

    .line 371
    move-object v8, v2

    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 377
    :cond_3
    :goto_6
    move-object v8, v1

    :try_start_7
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 381
    :goto_7
    move-object v8, v6

    throw v8

    .line 372
    :catch_5
    move-exception v8

    move-object v7, v8

    .line 373
    sget-object v8, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v9, "Error in Data#toByteArray: "

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_6

    .line 378
    :catch_6
    move-exception v8

    move-object v7, v8

    .line 379
    sget-object v8, Landroidx/work/Data;->TAG:Ljava/lang/String;

    const-string v9, "Error in Data#toByteArray: "

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_7

    .line 388
    :cond_4
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    move-object v0, v8

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 437
    const/4 v3, 0x1

    move v0, v3

    .line 443
    :goto_0
    return v0

    .line 439
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 440
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 442
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/work/Data;

    move-object v2, v3

    .line 443
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 85
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 86
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v0, v4

    .line 88
    :goto_0
    return v0

    :cond_0
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 100
    move-object v6, v2

    instance-of v6, v6, [Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 101
    move-object v6, v2

    check-cast v6, [Ljava/lang/Boolean;

    check-cast v6, [Ljava/lang/Boolean;

    move-object v3, v6

    .line 102
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [Z

    move-object v4, v6

    .line 103
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 104
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    aput-boolean v8, v6, v7

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .line 108
    :goto_1
    return-object v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 121
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Byte;

    if-eqz v4, :cond_0

    .line 122
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    move v0, v4

    .line 124
    :goto_0
    return v0

    :cond_0
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 136
    move-object v6, v2

    instance-of v6, v6, [Ljava/lang/Byte;

    if-eqz v6, :cond_1

    .line 137
    move-object v6, v2

    check-cast v6, [Ljava/lang/Byte;

    check-cast v6, [Ljava/lang/Byte;

    move-object v3, v6

    .line 138
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [B

    move-object v4, v6

    .line 139
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 140
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .line 144
    :goto_1
    return-object v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 265
    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Double;

    if-eqz v5, :cond_0

    .line 266
    move-object v5, v4

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-wide v0, v5

    .line 268
    :goto_0
    return-wide v0

    :cond_0
    move-wide v5, v2

    move-wide v0, v5

    goto :goto_0
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 280
    move-object v6, v2

    instance-of v6, v6, [Ljava/lang/Double;

    if-eqz v6, :cond_1

    .line 281
    move-object v6, v2

    check-cast v6, [Ljava/lang/Double;

    check-cast v6, [Ljava/lang/Double;

    move-object v3, v6

    .line 282
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [D

    move-object v4, v6

    .line 283
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 284
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 286
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .line 288
    :goto_1
    return-object v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 229
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_0

    .line 230
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v0, v4

    .line 232
    :goto_0
    return v0

    :cond_0
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 244
    move-object v6, v2

    instance-of v6, v6, [Ljava/lang/Float;

    if-eqz v6, :cond_1

    .line 245
    move-object v6, v2

    check-cast v6, [Ljava/lang/Float;

    check-cast v6, [Ljava/lang/Float;

    move-object v3, v6

    .line 246
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [F

    move-object v4, v6

    .line 247
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 248
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v6, v7

    .line 247
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 250
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .line 252
    :goto_1
    return-object v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 157
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 158
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    .line 160
    :goto_0
    return v0

    :cond_0
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 172
    move-object v6, v2

    instance-of v6, v6, [Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 173
    move-object v6, v2

    check-cast v6, [Ljava/lang/Integer;

    check-cast v6, [Ljava/lang/Integer;

    move-object v3, v6

    .line 174
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [I

    move-object v4, v6

    .line 175
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 176
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    .line 175
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 178
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .line 180
    :goto_1
    return-object v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public getKeyValueMap()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 193
    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 194
    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v0, v5

    .line 196
    :goto_0
    return-wide v0

    :cond_0
    move-wide v5, v2

    move-wide v0, v5

    goto :goto_0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 208
    move-object v6, v2

    instance-of v6, v6, [Ljava/lang/Long;

    if-eqz v6, :cond_1

    .line 209
    move-object v6, v2

    check-cast v6, [Ljava/lang/Long;

    check-cast v6, [Ljava/lang/Long;

    move-object v3, v6

    .line 210
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [J

    move-object v4, v6

    .line 211
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 212
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 211
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .line 216
    :goto_1
    return-object v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 300
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 301
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/Data;->mValues:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 315
    move-object v3, v2

    instance-of v3, v3, [Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 316
    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 448
    move-object v0, p0

    const/16 v1, 0x1f

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public size()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    move v0, v1

    return v0
.end method
