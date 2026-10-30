.class public Landroidx/constraintlayout/core/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"

# interfaces
.implements Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field static final NONE:I = -0x1

.field private static epsilon:F


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/core/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field protected final mCache:Landroidx/constraintlayout/core/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/core/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const v0, 0x3a83126f    # 0.001f

    sput v0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 48
    move-object v3, v0

    const/16 v4, 0x8

    iput v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    .line 53
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    .line 56
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 59
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    .line 62
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 78
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 81
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 102
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    .line 103
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 109
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .locals 14

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v9, v2

    sget v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    neg-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    move v9, v2

    sget v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    .line 340
    :goto_0
    return-void

    .line 230
    :cond_0
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 231
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 232
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v11, v2

    aput v11, v9, v10

    .line 233
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move-object v11, v1

    iget v11, v11, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v11, v9, v10

    .line 234
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v11, -0x1

    aput v11, v9, v10

    .line 235
    move-object v9, v1

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 236
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 237
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 238
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v9, :cond_1

    .line 240
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 241
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-lt v9, v10, :cond_1

    .line 242
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 243
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 246
    :cond_1
    goto :goto_0

    .line 248
    :cond_2
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v4, v9

    .line 249
    const/4 v9, -0x1

    move v5, v9

    .line 250
    const/4 v9, 0x0

    move v6, v9

    .line 251
    :goto_1
    move v9, v4

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v9, v10, :cond_a

    .line 252
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v4

    aget v9, v9, v10

    move v7, v9

    .line 253
    move v9, v7

    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v9, v10, :cond_8

    .line 254
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v10, v4

    aget v9, v9, v10

    move v10, v2

    add-float/2addr v9, v10

    move v8, v9

    .line 255
    move v9, v8

    sget v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    neg-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    move v9, v8

    sget v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 256
    const/4 v9, 0x0

    move v8, v9

    .line 258
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v10, v4

    move v11, v8

    aput v11, v9, v10

    .line 260
    move v9, v8

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    .line 261
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    if-ne v9, v10, :cond_7

    .line 262
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v11, v4

    aget v10, v10, v11

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 266
    :goto_2
    move v9, v3

    if-eqz v9, :cond_4

    .line 267
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 269
    :cond_4
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v9, :cond_5

    .line 271
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 273
    :cond_5
    move-object v9, v1

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 274
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 276
    :cond_6
    goto/16 :goto_0

    .line 264
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v12, v4

    aget v11, v11, v12

    aput v11, v9, v10

    goto :goto_2

    .line 278
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v4

    aget v9, v9, v10

    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ge v9, v10, :cond_9

    .line 279
    move v9, v4

    move v5, v9

    .line 281
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v4

    aget v9, v9, v10

    move v4, v9

    add-int/lit8 v6, v6, 0x1

    .line 282
    goto/16 :goto_1

    .line 287
    :cond_a
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 288
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v9, :cond_b

    .line 291
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    aget v9, v9, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_10

    .line 292
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    move v7, v9

    .line 297
    :cond_b
    :goto_3
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-lt v9, v10, :cond_c

    .line 298
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-ge v9, v10, :cond_c

    .line 300
    const/4 v9, 0x0

    move v8, v9

    :goto_4
    move v9, v8

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-ge v9, v10, :cond_c

    .line 301
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v8

    aget v9, v9, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_11

    .line 302
    move v9, v8

    move v7, v9

    .line 309
    :cond_c
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-lt v9, v10, :cond_d

    .line 310
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    move v7, v9

    .line 311
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    .line 312
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 313
    move-object v9, v0

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 314
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    .line 315
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    .line 316
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 320
    :cond_d
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v7

    move-object v11, v1

    iget v11, v11, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v11, v9, v10

    .line 321
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v10, v7

    move v11, v2

    aput v11, v9, v10

    .line 322
    move v9, v5

    const/4 v10, -0x1

    if-eq v9, v10, :cond_12

    .line 323
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v12, v5

    aget v11, v11, v12

    aput v11, v9, v10

    .line 324
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v5

    move v11, v7

    aput v11, v9, v10

    .line 329
    :goto_5
    move-object v9, v1

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 330
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 331
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 332
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v9, :cond_e

    .line 334
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 336
    :cond_e
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-lt v9, v10, :cond_f

    .line 337
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 338
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 340
    :cond_f
    goto/16 :goto_0

    .line 294
    :cond_10
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    move v7, v9

    goto/16 :goto_3

    .line 300
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 326
    :cond_12
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v7

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    aput v11, v9, v10

    .line 327
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    goto :goto_5
.end method

.method public final clear()V
    .locals 7

    .prologue
    .line 409
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v1, v4

    .line 410
    const/4 v4, 0x0

    move v2, v4

    .line 411
    :goto_0
    move v4, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 412
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v6, v1

    aget v5, v5, v6

    aget-object v4, v4, v5

    move-object v3, v4

    .line 413
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 414
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 416
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v1

    aget v4, v4, v5

    move v1, v4

    add-int/lit8 v2, v2, 0x1

    .line 417
    goto :goto_0

    .line 419
    :cond_1
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 420
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 421
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 422
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 423
    return-void
.end method

.method public contains(Landroidx/constraintlayout/core/SolverVariable;)Z
    .locals 6

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 433
    const/4 v4, 0x0

    move v0, v4

    .line 443
    :goto_0
    return v0

    .line 435
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 436
    const/4 v4, 0x0

    move v3, v4

    .line 437
    :goto_1
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_2

    .line 438
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v5, v2

    aget v4, v4, v5

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    .line 439
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 441
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 443
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public display()V
    .locals 9

    .prologue
    .line 614
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    move v1, v4

    .line 615
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "{ "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 616
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 617
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 618
    move-object v4, v3

    if-nez v4, :cond_0

    .line 616
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
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

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariableValue(I)F

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

    .line 623
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public divideByAmount(F)V
    .locals 10

    .prologue
    .line 500
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 501
    const/4 v4, 0x0

    move v3, v4

    .line 502
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_0

    .line 503
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v1

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 504
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    :cond_0
    return-void
.end method

.method public final get(Landroidx/constraintlayout/core/SolverVariable;)F
    .locals 6

    .prologue
    .line 593
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 594
    const/4 v4, 0x0

    move v3, v4

    .line 595
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 596
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v5, v2

    aget v4, v4, v5

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v4, v5, :cond_0

    .line 597
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    aget v4, v4, v5

    move v0, v4

    .line 602
    :goto_1
    return v0

    .line 599
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    .line 600
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 602
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public getCurrentSize()I
    .locals 2

    .prologue
    .line 509
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    move v0, v1

    return v0
.end method

.method public getHead()I
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v0, v1

    return v0
.end method

.method public final getId(I)I
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public final getNextIndice(I)I
    .locals 4

    .prologue
    .line 520
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method getPivotCandidate()Landroidx/constraintlayout/core/SolverVariable;
    .locals 8

    .prologue
    .line 529
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v5, :cond_3

    .line 531
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v1, v5

    .line 532
    const/4 v5, 0x0

    move v2, v5

    .line 533
    const/4 v5, 0x0

    move-object v3, v5

    .line 534
    :goto_0
    move v5, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_2

    .line 535
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v6, v1

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 539
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v7, v1

    aget v6, v6, v7

    aget-object v5, v5, v6

    move-object v4, v5

    .line 540
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    move-object v6, v4

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    if-ge v5, v6, :cond_1

    .line 541
    :cond_0
    move-object v5, v4

    move-object v3, v5

    .line 544
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v6, v1

    aget v5, v5, v6

    move v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_2
    move-object v5, v3

    move-object v0, v5

    .line 548
    :goto_1
    return-object v0

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    move-object v0, v5

    goto :goto_1
.end method

.method public final getValue(I)F
    .locals 4

    .prologue
    .line 516
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public getVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .locals 7

    .prologue
    .line 558
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 559
    const/4 v4, 0x0

    move v3, v4

    .line 560
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 561
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 562
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v6, v2

    aget v5, v5, v6

    aget-object v4, v4, v5

    move-object v0, v4

    .line 566
    :goto_1
    return-object v0

    .line 564
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public getVariableValue(I)F
    .locals 6

    .prologue
    .line 576
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 577
    const/4 v4, 0x0

    move v3, v4

    .line 578
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 579
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 580
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    aget v4, v4, v5

    move v0, v4

    .line 584
    :goto_1
    return v0

    .line 582
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 5

    .prologue
    .line 470
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v1, v3

    .line 471
    const/4 v3, 0x0

    move v2, v3

    .line 472
    :goto_0
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_1

    .line 473
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v4, v1

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 474
    const/4 v3, 0x1

    move v0, v3

    .line 478
    :goto_1
    return v0

    .line 476
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v4, v1

    aget v3, v3, v4

    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public indexOf(Landroidx/constraintlayout/core/SolverVariable;)I
    .locals 6

    .prologue
    .line 448
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 449
    const/4 v4, -0x1

    move v0, v4

    .line 459
    :goto_0
    return v0

    .line 451
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 452
    const/4 v4, 0x0

    move v3, v4

    .line 453
    :goto_1
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_2

    .line 454
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v5, v2

    aget v4, v4, v5

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    .line 455
    move v4, v2

    move v0, v4

    goto :goto_0

    .line 457
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 459
    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method public invert()V
    .locals 9

    .prologue
    .line 485
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v1, v3

    .line 486
    const/4 v3, 0x0

    move v2, v3

    .line 487
    :goto_0
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_0

    .line 488
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v4, v1

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 489
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v4, v1

    aget v3, v3, v4

    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_0
    return-void
.end method

.method public final put(Landroidx/constraintlayout/core/SolverVariable;F)V
    .locals 13

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 119
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v8

    .line 214
    :goto_0
    return-void

    .line 123
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 124
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 125
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v10, v2

    aput v10, v8, v9

    .line 126
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v10, v8, v9

    .line 127
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 128
    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 129
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 130
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 131
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v8, :cond_1

    .line 133
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 134
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_1

    .line 135
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 136
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 139
    :cond_1
    goto :goto_0

    .line 141
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v3, v8

    .line 142
    const/4 v8, -0x1

    move v4, v8

    .line 143
    const/4 v8, 0x0

    move v5, v8

    .line 144
    :goto_1
    move v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v8, v9, :cond_5

    .line 145
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v3

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v8, v9, :cond_3

    .line 146
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v3

    move v10, v2

    aput v10, v8, v9

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v3

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ge v8, v9, :cond_4

    .line 150
    move v8, v3

    move v4, v8

    .line 152
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v3

    aget v8, v8, v9

    move v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 158
    :cond_5
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v8

    .line 159
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_6

    .line 162
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    aget v8, v8, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    .line 163
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    move v6, v8

    .line 168
    :cond_6
    :goto_2
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_7

    .line 169
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-ge v8, v9, :cond_7

    .line 171
    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-ge v8, v9, :cond_7

    .line 172
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v7

    aget v8, v8, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    .line 173
    move v8, v7

    move v6, v8

    .line 180
    :cond_7
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_8

    .line 181
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    move v6, v8

    .line 182
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    .line 183
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 184
    move-object v8, v0

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 185
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v9

    iput-object v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    .line 186
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    .line 187
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 191
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v6

    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v10, v8, v9

    .line 192
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v6

    move v10, v2

    aput v10, v8, v9

    .line 193
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    .line 194
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v11, v4

    aget v10, v10, v11

    aput v10, v8, v9

    .line 195
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v4

    move v10, v6

    aput v10, v8, v9

    .line 200
    :goto_4
    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 201
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 202
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 203
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v8, :cond_9

    .line 205
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 207
    :cond_9
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_a

    .line 208
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 210
    :cond_a
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_b

    .line 211
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 212
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 214
    :cond_b
    goto/16 :goto_0

    .line 165
    :cond_c
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    move v6, v8

    goto/16 :goto_2

    .line 171
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 197
    :cond_e
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    aput v10, v8, v9

    .line 198
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    goto :goto_4
.end method

.method public final remove(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .locals 12

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 370
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    .line 372
    :cond_0
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 373
    const/4 v7, 0x0

    move v0, v7

    .line 402
    :goto_0
    return v0

    .line 375
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v3, v7

    .line 376
    const/4 v7, -0x1

    move v4, v7

    .line 377
    const/4 v7, 0x0

    move v5, v7

    .line 378
    :goto_1
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v8, :cond_6

    .line 379
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v8, v3

    aget v7, v7, v8

    move v6, v7

    .line 380
    move v7, v6

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v7, v8, :cond_5

    .line 381
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    if-ne v7, v8, :cond_4

    .line 382
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v3

    aget v8, v8, v9

    iput v8, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 387
    :goto_2
    move v7, v2

    if-eqz v7, :cond_2

    .line 388
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 390
    :cond_2
    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 391
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 392
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v8, v3

    const/4 v9, -0x1

    aput v9, v7, v8

    .line 393
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v7, :cond_3

    .line 395
    move-object v7, v0

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 397
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v8, v3

    aget v7, v7, v8

    move v0, v7

    goto :goto_0

    .line 384
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v3

    aget v9, v9, v10

    aput v9, v7, v8

    goto :goto_2

    .line 399
    :cond_5
    move v7, v3

    move v4, v7

    .line 400
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v8, v3

    aget v7, v7, v8

    move v3, v7

    add-int/lit8 v5, v5, 0x1

    .line 401
    goto :goto_1

    .line 402
    :cond_6
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method public sizeInBytes()I
    .locals 6

    .prologue
    .line 607
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 608
    move v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v4, v4

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .line 609
    add-int/lit8 v1, v1, 0x24

    .line 610
    move v2, v1

    move v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 633
    move-object v0, p0

    const-string v4, ""

    move-object v1, v4

    .line 634
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 635
    const/4 v4, 0x0

    move v3, v4

    .line 636
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_0

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    move v6, v2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    move v7, v2

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 640
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public use(Landroidx/constraintlayout/core/ArrayRow;Z)F
    .locals 13

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v9

    move v3, v9

    .line 350
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v9

    .line 351
    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v9

    .line 352
    move-object v9, v4

    invoke-interface {v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v9

    move v5, v9

    .line 353
    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 354
    move-object v9, v4

    move v10, v6

    invoke-interface {v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 355
    move-object v9, v4

    move-object v10, v7

    invoke-interface {v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v9

    move v8, v9

    .line 356
    move-object v9, v0

    move-object v10, v7

    move v11, v8

    move v12, v3

    mul-float/2addr v11, v12

    move v12, v2

    invoke-virtual {v9, v10, v11, v12}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 353
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 358
    :cond_0
    move v9, v3

    move v0, v9

    return v0
.end method
