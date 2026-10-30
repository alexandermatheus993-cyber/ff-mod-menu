.class public Landroidx/core/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PathParser$PathDataNode;,
        Landroidx/core/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 795
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 796
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    new-instance v4, Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 191
    return-void
.end method

.method public static canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z
    .locals 6
    .param p0    # [Landroidx/core/graphics/PathParser$PathDataNode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Landroidx/core/graphics/PathParser$PathDataNode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 138
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 151
    :goto_0
    return v0

    .line 141
    :cond_1
    move-object v3, v0

    array-length v3, v3

    move-object v4, v1

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 142
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 145
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 146
    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    iget-char v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    if-ne v3, v4, :cond_3

    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v4, v4

    if-eq v3, v4, :cond_4

    .line 148
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 145
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method static copyOfRange([FII)[F
    .locals 13

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v7, v1

    move v8, v2

    if-le v7, v8, :cond_0

    .line 55
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 57
    :cond_0
    move-object v7, v0

    array-length v7, v7

    move v3, v7

    .line 58
    move v7, v1

    if-ltz v7, :cond_1

    move v7, v1

    move v8, v3

    if-le v7, v8, :cond_2

    .line 59
    :cond_1
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v7

    .line 61
    :cond_2
    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    move v4, v7

    .line 62
    move v7, v4

    move v8, v3

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v5, v7

    .line 63
    move v7, v4

    new-array v7, v7, [F

    move-object v6, v7

    .line 64
    move-object v7, v0

    move v8, v1

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 10

    .prologue
    .line 91
    move-object v0, p0

    move-object v6, v0

    if-nez v6, :cond_0

    .line 92
    const/4 v6, 0x0

    move-object v0, v6

    .line 112
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    .line 95
    const/4 v6, 0x1

    move v2, v6

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 98
    :goto_1
    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 99
    move-object v6, v0

    move v7, v2

    invoke-static {v6, v7}, Landroidx/core/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v6

    move v2, v6

    .line 100
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 101
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 102
    move-object v6, v4

    invoke-static {v6}, Landroidx/core/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v6

    move-object v5, v6

    .line 103
    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 106
    :cond_1
    move v6, v2

    move v1, v6

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move v6, v2

    move v7, v1

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 110
    move-object v6, v3

    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    new-array v8, v8, [F

    invoke-static {v6, v7, v8}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 112
    :cond_3
    move-object v6, v3

    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v0, v6

    goto :goto_0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 9

    .prologue
    .line 73
    move-object v0, p0

    new-instance v4, Landroid/graphics/Path;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object v1, v4

    .line 74
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v4

    move-object v2, v4

    .line 75
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 77
    move-object v4, v2

    move-object v5, v1

    :try_start_0
    invoke-static {v4, v5}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    move-object v4, v1

    move-object v0, v4

    .line 83
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 79
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 83
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 10

    .prologue
    .line 120
    move-object v0, p0

    move-object v3, v0

    if-nez v3, :cond_0

    .line 121
    const/4 v3, 0x0

    move-object v0, v3

    .line 127
    :goto_0
    return-object v0

    .line 123
    :cond_0
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v1, v3

    .line 124
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 125
    move-object v3, v1

    move v4, v2

    new-instance v5, Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v2

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(Landroidx/core/graphics/PathParser$PathDataNode;)V

    aput-object v5, v3, v4

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method private static extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V
    .locals 11

    .prologue
    .line 258
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v9, v1

    move v3, v9

    .line 259
    const/4 v9, 0x0

    move v4, v9

    .line 260
    move-object v9, v2

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 261
    const/4 v9, 0x0

    move v5, v9

    .line 262
    const/4 v9, 0x0

    move v6, v9

    .line 263
    :goto_0
    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 264
    move v9, v6

    move v7, v9

    .line 265
    const/4 v9, 0x0

    move v6, v9

    .line 266
    move-object v9, v0

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v8, v9

    .line 267
    move v9, v8

    sparse-switch v9, :sswitch_data_0

    .line 293
    :cond_0
    :goto_1
    move v9, v4

    if-eqz v9, :cond_3

    .line 299
    :cond_1
    move-object v9, v2

    move v10, v3

    iput v10, v9, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 300
    return-void

    .line 270
    :sswitch_0
    const/4 v9, 0x1

    move v4, v9

    .line 271
    goto :goto_1

    .line 274
    :sswitch_1
    move v9, v3

    move v10, v1

    if-eq v9, v10, :cond_0

    move v9, v7

    if-nez v9, :cond_0

    .line 275
    const/4 v9, 0x1

    move v4, v9

    .line 276
    move-object v9, v2

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_1

    .line 280
    :sswitch_2
    move v9, v5

    if-nez v9, :cond_2

    .line 281
    const/4 v9, 0x1

    move v5, v9

    goto :goto_1

    .line 284
    :cond_2
    const/4 v9, 0x1

    move v4, v9

    .line 285
    move-object v9, v2

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 287
    goto :goto_1

    .line 290
    :sswitch_3
    const/4 v9, 0x1

    move v6, v9

    goto :goto_1

    .line 263
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 13

    .prologue
    .line 211
    move-object v0, p0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7a

    if-eq v7, v8, :cond_0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_1

    .line 212
    :cond_0
    const/4 v7, 0x0

    new-array v7, v7, [F

    move-object v0, v7

    .line 242
    :goto_0
    return-object v0

    .line 215
    :cond_1
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-array v7, v7, [F

    move-object v1, v7

    .line 216
    const/4 v7, 0x0

    move v2, v7

    .line 217
    const/4 v7, 0x1

    move v3, v7

    .line 218
    const/4 v7, 0x0

    move v4, v7

    .line 220
    new-instance v7, Landroidx/core/graphics/PathParser$ExtractFloatResult;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroidx/core/graphics/PathParser$ExtractFloatResult;-><init>()V

    move-object v5, v7

    .line 221
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v6, v7

    .line 226
    :goto_1
    move v7, v3

    move v8, v6

    if-ge v7, v8, :cond_4

    .line 227
    move-object v7, v0

    move v8, v3

    move-object v9, v5

    invoke-static {v7, v8, v9}, Landroidx/core/graphics/PathParser;->extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V

    .line 228
    move-object v7, v5

    iget v7, v7, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    move v4, v7

    .line 230
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 231
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    move-object v9, v0

    move v10, v3

    move v11, v4

    .line 232
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 231
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8

    .line 235
    :cond_2
    move-object v7, v5

    iget-boolean v7, v7, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v7, :cond_3

    .line 237
    move v7, v4

    move v3, v7

    goto :goto_1

    .line 239
    :cond_3
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    goto :goto_1

    .line 242
    :cond_4
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v7, v8, v9}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 243
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 244
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in parsing \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static interpolatePathDataNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;F)Z
    .locals 10

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_1

    .line 316
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "The nodes to be interpolated and resulting nodes cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 320
    :cond_1
    move-object v5, v0

    array-length v5, v5

    move-object v6, v1

    array-length v6, v6

    if-ne v5, v6, :cond_2

    move-object v5, v1

    array-length v5, v5

    move-object v6, v2

    array-length v6, v6

    if-eq v5, v6, :cond_3

    .line 321
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "The nodes to be interpolated and resulting nodes must have the same length"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    :cond_3
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 326
    const/4 v5, 0x0

    move v0, v5

    .line 332
    :goto_0
    return v0

    .line 329
    :cond_4
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_5

    .line 330
    move-object v5, v0

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 332
    :cond_5
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    move v1, p1

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 175
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 180
    move v3, v2

    const/16 v4, 0x41

    add-int/lit8 v3, v3, -0x41

    move v4, v2

    const/16 v5, 0x5a

    add-int/lit8 v4, v4, -0x5a

    mul-int/2addr v3, v4

    if-lez v3, :cond_0

    move v3, v2

    const/16 v4, 0x61

    add-int/lit8 v3, v3, -0x61

    move v4, v2

    const/16 v5, 0x7a

    add-int/lit8 v4, v4, -0x7a

    mul-int/2addr v3, v4

    if-gtz v3, :cond_1

    :cond_0
    move v3, v2

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0x45

    if-eq v3, v4, :cond_1

    .line 182
    move v3, v1

    move v0, v3

    .line 186
    :goto_1
    return v0

    .line 184
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    move v3, v1

    move v0, v3

    goto :goto_1
.end method

.method public static updateNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 164
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    iget-char v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v5, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 165
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    iget-object v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 166
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v5, v3

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v7, v3

    aget v6, v6, v7

    aput v6, v4, v5

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method
