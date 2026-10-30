.class public Landroidx/constraintlayout/core/SolverVariableValues;
.super Ljava/lang/Object;
.source "SolverVariableValues.java"

# interfaces
.implements Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final HASH:Z = true

.field private static epsilon:F


# instance fields
.field private HASH_SIZE:I

.field private final NONE:I

.field private SIZE:I

.field head:I

.field keys:[I

.field protected final mCache:Landroidx/constraintlayout/core/Cache;

.field mCount:I

.field private final mRow:Landroidx/constraintlayout/core/ArrayRow;

.field next:[I

.field nextKeys:[I

.field previous:[I

.field values:[F

.field variables:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x3a83126f    # 0.001f

    sput v0, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->NONE:I

    .line 30
    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    .line 31
    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    .line 33
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    .line 34
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    .line 36
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    .line 37
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    .line 38
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    .line 39
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    .line 40
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 41
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    .line 47
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 49
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/core/SolverVariableValues;->clear()V

    .line 50
    return-void
.end method

.method private addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 8

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->id:I

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr v5, v6

    move v3, v5

    .line 217
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    move v6, v3

    aget v5, v5, v6

    move v4, v5

    .line 218
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 219
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    move v6, v3

    move v7, v2

    aput v7, v5, v6

    .line 232
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v6, v2

    const/4 v7, -0x1

    aput v7, v5, v6

    .line 236
    return-void

    .line 224
    :cond_0
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v6, v4

    aget v5, v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 225
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v6, v4

    aget v5, v5, v6

    move v4, v5

    goto :goto_1

    .line 227
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v6, v4

    move v7, v2

    aput v7, v5, v6

    goto :goto_0
.end method

.method private addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .locals 8

    .prologue
    .line 289
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v5, v1

    move-object v6, v2

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v6, v4, v5

    .line 290
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v5, v1

    move v6, v3

    aput v6, v4, v5

    .line 291
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v5, v1

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 292
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v5, v1

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 293
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 294
    move-object v4, v2

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 295
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 296
    return-void
.end method

.method private displayHash()V
    .locals 9

    .prologue
    .line 239
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    :goto_0
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    if-ge v5, v6, :cond_3

    .line 240
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    move v6, v1

    aget v5, v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hash ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 242
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    move v6, v1

    aget v5, v5, v6

    move v3, v5

    .line 243
    const/4 v5, 0x0

    move v4, v5

    .line 244
    :goto_1
    move v5, v4

    if-nez v5, :cond_1

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v7, v3

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 246
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v6, v3

    aget v5, v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 247
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v6, v3

    aget v5, v5, v6

    move v3, v5

    goto :goto_1

    .line 249
    :cond_0
    const/4 v5, 0x1

    move v4, v5

    goto :goto_1

    .line 252
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_3
    return-void
.end method

.method private findEmptySlot()I
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    if-ge v2, v3, :cond_1

    .line 300
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v3, v1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 301
    move v2, v1

    move v0, v2

    .line 304
    :goto_1
    return v0

    .line 299
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_1
.end method

.method private increaseSize()V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v1, v3

    .line 200
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    .line 201
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    .line 202
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    .line 203
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    .line 204
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    .line 205
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 206
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 207
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v4, v2

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    .line 210
    return-void
.end method

.method private insertVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .locals 9

    .prologue
    .line 308
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/core/SolverVariableValues;->findEmptySlot()I

    move-result v5

    move v4, v5

    .line 309
    move-object v5, v0

    move v6, v4

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroidx/constraintlayout/core/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    .line 310
    move v5, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 311
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v6, v4

    move v7, v1

    aput v7, v5, v6

    .line 312
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v8, v1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 313
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v1

    move v7, v4

    aput v7, v5, v6

    .line 323
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v4

    aget v5, v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 324
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v7, v4

    aget v6, v6, v7

    move v7, v4

    aput v7, v5, v6

    .line 326
    :cond_0
    move-object v5, v0

    move-object v6, v2

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/core/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 327
    return-void

    .line 315
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v6, v4

    const/4 v7, -0x1

    aput v7, v5, v6

    .line 316
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    if-lez v5, :cond_2

    .line 317
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    aput v7, v5, v6

    .line 318
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    goto :goto_0

    .line 320
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v4

    const/4 v7, -0x1

    aput v7, v5, v6

    goto :goto_0
.end method

.method private removeFromHashMap(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 10

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr v6, v7

    move v2, v6

    .line 261
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    move v7, v2

    aget v6, v6, v7

    move v3, v6

    .line 262
    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 286
    :goto_0
    return-void

    .line 268
    :cond_0
    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    move v4, v6

    .line 270
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v7, v3

    aget v6, v6, v7

    move v7, v4

    if-ne v6, v7, :cond_2

    .line 271
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v9, v3

    aget v8, v8, v9

    aput v8, v6, v7

    .line 272
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v7, v3

    const/4 v8, -0x1

    aput v8, v6, v7

    .line 286
    :cond_1
    :goto_1
    goto :goto_0

    .line 274
    :cond_2
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v7, v3

    aget v6, v6, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v8, v3

    aget v7, v7, v8

    aget v6, v6, v7

    move v7, v4

    if-eq v6, v7, :cond_3

    .line 275
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v7, v3

    aget v6, v6, v7

    move v3, v6

    goto :goto_2

    .line 277
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v7, v3

    aget v6, v6, v7

    move v5, v6

    .line 278
    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v7, v5

    aget v6, v6, v7

    move v7, v4

    if-ne v6, v7, :cond_1

    .line 279
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v9, v5

    aget v8, v8, v9

    aput v8, v6, v7

    .line 280
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v7, v5

    const/4 v8, -0x1

    aput v8, v6, v7

    goto :goto_1
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .locals 11

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    sget v6, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    neg-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v2

    sget v6, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 423
    :goto_0
    return-void

    .line 413
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v5

    move v4, v5

    .line 414
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 415
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/core/SolverVariableValues;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 423
    :cond_1
    :goto_1
    goto :goto_0

    .line 417
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v6, v4

    move-object v9, v5

    move v10, v6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    move v8, v10

    aget v7, v7, v8

    move v8, v2

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 418
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v6, v4

    aget v5, v5, v6

    sget v6, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    neg-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v6, v4

    aget v5, v5, v6

    sget v6, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 419
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v6, v4

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 420
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v5

    goto :goto_1
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 180
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v1, v4

    .line 181
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 182
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 183
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 184
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 181
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    if-ge v4, v5, :cond_2

    .line 188
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v5, v2

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 189
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v5, v2

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_2
    const/4 v4, 0x0

    move v2, v4

    :goto_2
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    if-ge v4, v5, :cond_3

    .line 192
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    move v5, v2

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 194
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 195
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    .line 196
    return-void
.end method

.method public contains(Landroidx/constraintlayout/core/SolverVariable;)Z
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public display()V
    .locals 9

    .prologue
    .line 134
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v1, v4

    .line 135
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "{ "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 136
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 137
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 138
    move-object v4, v3

    if-nez v4, :cond_0

    .line 136
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariableValue(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public divideByAmount(F)V
    .locals 11

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v2, v5

    .line 482
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    move v3, v5

    .line 483
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 484
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v6, v3

    move-object v9, v5

    move v10, v6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    move v8, v10

    aget v7, v7, v8

    move v8, v1

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 485
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v3

    aget v5, v5, v6

    move v3, v5

    .line 486
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 490
    :cond_0
    return-void

    .line 483
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public get(Landroidx/constraintlayout/core/SolverVariable;)F
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v3

    move v2, v3

    .line 126
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 127
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v4, v2

    aget v3, v3, v4

    move v0, v3

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getCurrentSize()I
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v0, v1

    return v0
.end method

.method public getVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v2, v5

    .line 60
    move v5, v2

    if-nez v5, :cond_0

    .line 61
    const/4 v5, 0x0

    move-object v0, v5

    .line 73
    :goto_0
    return-object v0

    .line 63
    :cond_0
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    move v3, v5

    .line 64
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 65
    move v5, v4

    move v6, v1

    if-ne v5, v6, :cond_1

    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 66
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v7, v3

    aget v6, v6, v7

    aget-object v5, v5, v6

    move-object v0, v5

    goto :goto_0

    .line 68
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v3

    aget v5, v5, v6

    move v3, v5

    .line 69
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 73
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 64
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getVariableValue(I)F
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v2, v5

    .line 79
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    move v3, v5

    .line 80
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 81
    move v5, v4

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 82
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v6, v3

    aget v5, v5, v6

    move v0, v5

    .line 89
    :goto_1
    return v0

    .line 84
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v3

    aget v5, v5, v6

    move v3, v5

    .line 85
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 89
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 80
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public indexOf(Landroidx/constraintlayout/core/SolverVariable;)I
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 100
    :cond_0
    const/4 v4, -0x1

    move v0, v4

    .line 120
    :goto_0
    return v0

    .line 102
    :cond_1
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    move v2, v4

    .line 103
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->HASH_SIZE:I

    rem-int/2addr v4, v5

    move v3, v4

    .line 104
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->keys:[I

    move v5, v3

    aget v4, v4, v5

    move v3, v4

    .line 105
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 106
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 108
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v5, v3

    aget v4, v4, v5

    move v5, v2

    if-ne v4, v5, :cond_3

    .line 109
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 111
    :cond_3
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v5, v3

    aget v4, v4, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v6, v3

    aget v5, v5, v6

    aget v4, v4, v5

    move v5, v2

    if-eq v4, v5, :cond_4

    .line 112
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v5, v3

    aget v4, v4, v5

    move v3, v4

    goto :goto_1

    .line 114
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v5, v3

    aget v4, v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 115
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 117
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v6, v3

    aget v5, v5, v6

    aget v4, v4, v5

    move v5, v2

    if-ne v4, v5, :cond_6

    .line 118
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->nextKeys:[I

    move v5, v3

    aget v4, v4, v5

    move v0, v4

    goto :goto_0

    .line 120
    :cond_6
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method public invert()V
    .locals 10

    .prologue
    .line 468
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v1, v4

    .line 469
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    move v2, v4

    .line 470
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 471
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v5, v2

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 472
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    .line 473
    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 477
    :cond_0
    return-void

    .line 470
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public put(Landroidx/constraintlayout/core/SolverVariable;F)V
    .locals 12

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v8, v2

    sget v9, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    neg-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    move v8, v2

    sget v9, Landroidx/constraintlayout/core/SolverVariableValues;->epsilon:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 335
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v8

    .line 369
    :goto_0
    return-void

    .line 338
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    if-nez v8, :cond_1

    .line 339
    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v1

    move v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/constraintlayout/core/SolverVariableValues;->addVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    .line 340
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/constraintlayout/core/SolverVariableValues;->addToHashMap(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 341
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    .line 369
    :goto_1
    goto :goto_0

    .line 343
    :cond_1
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v8

    move v3, v8

    .line 344
    move v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 345
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v9, v3

    move v10, v2

    aput v10, v8, v9

    goto :goto_1

    .line 347
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/SolverVariableValues;->SIZE:I

    if-lt v8, v9, :cond_3

    .line 348
    move-object v8, v0

    invoke-direct {v8}, Landroidx/constraintlayout/core/SolverVariableValues;->increaseSize()V

    .line 350
    :cond_3
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v4, v8

    .line 351
    const/4 v8, -0x1

    move v5, v8

    .line 352
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    move v6, v8

    .line 353
    const/4 v8, 0x0

    move v7, v8

    :goto_2
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_6

    .line 354
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v9, v6

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v8, v9, :cond_4

    .line 355
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v9, v6

    move v10, v2

    aput v10, v8, v9

    .line 356
    goto :goto_0

    .line 358
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v9, v6

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ge v8, v9, :cond_5

    .line 359
    move v8, v6

    move v5, v8

    .line 361
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v9, v6

    aget v8, v8, v9

    move v6, v8

    .line 362
    move v8, v6

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 366
    :cond_6
    move-object v8, v0

    move v9, v5

    move-object v10, v1

    move v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroidx/constraintlayout/core/SolverVariableValues;->insertVariable(ILandroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_1

    .line 353
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public remove(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .locals 10

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v5

    move v3, v5

    .line 382
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 383
    const/4 v5, 0x0

    move v0, v5

    .line 402
    :goto_0
    return v0

    .line 385
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/core/SolverVariableValues;->removeFromHashMap(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 386
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v6, v3

    aget v5, v5, v6

    move v4, v5

    .line 387
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    move v6, v3

    if-ne v5, v6, :cond_1

    .line 388
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v7, v3

    aget v6, v6, v7

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    .line 390
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v6, v3

    const/4 v7, -0x1

    aput v7, v5, v6

    .line 391
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v6, v3

    aget v5, v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 392
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v7, v3

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v8, v3

    aget v7, v7, v8

    aput v7, v5, v6

    .line 394
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v6, v3

    aget v5, v5, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 395
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v7, v3

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v8, v3

    aget v7, v7, v8

    aput v7, v5, v6

    .line 397
    :cond_3
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    .line 398
    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 399
    move v5, v2

    if-eqz v5, :cond_4

    .line 400
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 402
    :cond_4
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method public sizeInBytes()I
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 148
    move-object v0, p0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " { "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 149
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->mCount:I

    move v2, v6

    .line 150
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 151
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    move-object v4, v6

    .line 152
    move-object v6, v4

    if-nez v6, :cond_0

    .line 150
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/SolverVariableValues;->getVariableValue(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 156
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/SolverVariableValues;->indexOf(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v6

    move v5, v6

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[p: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 158
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v7, v5

    aget v6, v6, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/SolverVariableValues;->previous:[I

    move v10, v5

    aget v9, v9, v10

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 163
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", n: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 164
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v7, v5

    aget v6, v6, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/SolverVariableValues;->next:[I

    move v10, v5

    aget v9, v9, v10

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 169
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_1

    .line 161
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    goto :goto_2

    .line 167
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    goto :goto_3

    .line 171
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 172
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method

.method public use(Landroidx/constraintlayout/core/ArrayRow;Z)F
    .locals 14

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/SolverVariableValues;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v10

    move v3, v10

    .line 428
    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    move v12, v2

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/core/SolverVariableValues;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v10

    .line 439
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    check-cast v10, Landroidx/constraintlayout/core/SolverVariableValues;

    move-object v4, v10

    .line 440
    move-object v10, v4

    invoke-virtual {v10}, Landroidx/constraintlayout/core/SolverVariableValues;->getCurrentSize()I

    move-result v10

    move v5, v10

    .line 441
    move-object v10, v4

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariableValues;->head:I

    move v6, v10

    .line 453
    const/4 v10, 0x0

    move v6, v10

    .line 454
    const/4 v10, 0x0

    move v7, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_1

    .line 455
    move-object v10, v4

    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v11, v7

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 456
    move-object v10, v4

    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariableValues;->values:[F

    move v11, v7

    aget v10, v10, v11

    move v8, v10

    .line 457
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariableValues;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v10, v10, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v11, v4

    iget-object v11, v11, Landroidx/constraintlayout/core/SolverVariableValues;->variables:[I

    move v12, v7

    aget v11, v11, v12

    aget-object v10, v10, v11

    move-object v9, v10

    .line 458
    move-object v10, v0

    move-object v11, v9

    move v12, v8

    move v13, v3

    mul-float/2addr v12, v13

    move v13, v2

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/core/SolverVariableValues;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 459
    add-int/lit8 v6, v6, 0x1

    .line 454
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 463
    :cond_1
    move v10, v3

    move v0, v10

    return v0
.end method
