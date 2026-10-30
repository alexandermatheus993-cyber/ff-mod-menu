.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .locals 5

    .prologue
    .line 352
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 353
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 354
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 355
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 6

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 358
    move-object v2, v0

    move-object v3, v1

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v3, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 359
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 360
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 29

    .prologue
    .line 398
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    const/16 v17, 0x2

    move/from16 v7, v17

    .line 399
    move-object/from16 v17, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 400
    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 401
    move-object/from16 v17, v3

    const/16 v18, 0x2

    aget v17, v17, v18

    move/from16 v10, v17

    .line 402
    move-object/from16 v17, v3

    const/16 v18, 0x3

    aget v17, v17, v18

    move/from16 v11, v17

    .line 403
    move-object/from16 v17, v3

    const/16 v18, 0x4

    aget v17, v17, v18

    move/from16 v12, v17

    .line 404
    move-object/from16 v17, v3

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v13, v17

    .line 408
    move/from16 v17, v5

    sparse-switch v17, :sswitch_data_0

    .line 451
    :goto_0
    const/16 v17, 0x0

    move/from16 v16, v17

    :goto_1
    move/from16 v17, v16

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 452
    move/from16 v17, v5

    sparse-switch v17, :sswitch_data_1

    .line 635
    :goto_2
    move/from16 v17, v5

    move/from16 v4, v17

    .line 451
    move/from16 v17, v16

    move/from16 v18, v7

    add-int v17, v17, v18

    move/from16 v16, v17

    goto :goto_1

    .line 411
    :sswitch_0
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 415
    move/from16 v17, v12

    move/from16 v8, v17

    .line 416
    move/from16 v17, v13

    move/from16 v9, v17

    .line 417
    move/from16 v17, v12

    move/from16 v10, v17

    .line 418
    move/from16 v17, v13

    move/from16 v11, v17

    .line 419
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->moveTo(FF)V

    .line 420
    goto :goto_0

    .line 427
    :sswitch_1
    const/16 v17, 0x2

    move/from16 v7, v17

    .line 428
    goto :goto_0

    .line 433
    :sswitch_2
    const/16 v17, 0x1

    move/from16 v7, v17

    .line 434
    goto :goto_0

    .line 437
    :sswitch_3
    const/16 v17, 0x6

    move/from16 v7, v17

    .line 438
    goto :goto_0

    .line 443
    :sswitch_4
    const/16 v17, 0x4

    move/from16 v7, v17

    .line 444
    goto :goto_0

    .line 447
    :sswitch_5
    const/16 v17, 0x7

    move/from16 v7, v17

    goto :goto_0

    .line 454
    :sswitch_6
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 455
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 456
    move/from16 v17, v16

    if-lez v17, :cond_0

    .line 460
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_2

    .line 462
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 463
    move/from16 v17, v8

    move/from16 v12, v17

    .line 464
    move/from16 v17, v9

    move/from16 v13, v17

    .line 466
    goto/16 :goto_2

    .line 468
    :sswitch_7
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 469
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 470
    move/from16 v17, v16

    if-lez v17, :cond_1

    .line 474
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2

    .line 476
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->moveTo(FF)V

    .line 477
    move/from16 v17, v8

    move/from16 v12, v17

    .line 478
    move/from16 v17, v9

    move/from16 v13, v17

    .line 480
    goto/16 :goto_2

    .line 482
    :sswitch_8
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 483
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 484
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 485
    goto/16 :goto_2

    .line 487
    :sswitch_9
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 488
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 489
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 490
    goto/16 :goto_2

    .line 492
    :sswitch_a
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 493
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 494
    goto/16 :goto_2

    .line 496
    :sswitch_b
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move/from16 v19, v9

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 498
    goto/16 :goto_2

    .line 500
    :sswitch_c
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x0

    add-int/lit8 v20, v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 501
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 502
    goto/16 :goto_2

    .line 504
    :sswitch_d
    move-object/from16 v17, v2

    move/from16 v18, v8

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x0

    add-int/lit8 v20, v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v9, v17

    .line 506
    goto/16 :goto_2

    .line 508
    :sswitch_e
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x4

    add-int/lit8 v23, v23, 0x4

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x5

    add-int/lit8 v24, v24, 0x5

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 511
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 512
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 513
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x4

    add-int/lit8 v19, v19, 0x4

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 514
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 516
    goto/16 :goto_2

    .line 518
    :sswitch_f
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x4

    add-int/lit8 v23, v23, 0x4

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x5

    add-int/lit8 v24, v24, 0x5

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 520
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x4

    add-int/lit8 v18, v18, 0x4

    aget v17, v17, v18

    move/from16 v8, v17

    .line 521
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    aget v17, v17, v18

    move/from16 v9, v17

    .line 522
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v10, v17

    .line 523
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v11, v17

    .line 524
    goto/16 :goto_2

    .line 526
    :sswitch_10
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 527
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 528
    move/from16 v17, v4

    const/16 v18, 0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x73

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x43

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move/from16 v17, v4

    const/16 v18, 0x53

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 530
    :cond_2
    move/from16 v17, v8

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 531
    move/from16 v17, v9

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 533
    :cond_3
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 537
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 538
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 539
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 540
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 541
    goto/16 :goto_2

    .line 543
    :sswitch_11
    move/from16 v17, v8

    move/from16 v14, v17

    .line 544
    move/from16 v17, v9

    move/from16 v15, v17

    .line 545
    move/from16 v17, v4

    const/16 v18, 0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x73

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x43

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v4

    const/16 v18, 0x53

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 547
    :cond_4
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v8

    mul-float v17, v17, v18

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 548
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v9

    mul-float v17, v17, v18

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 550
    :cond_5
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x3

    add-int/lit8 v24, v24, 0x3

    aget v23, v23, v24

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 552
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v10, v17

    .line 553
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v11, v17

    .line 554
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v8, v17

    .line 555
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v9, v17

    .line 556
    goto/16 :goto_2

    .line 558
    :sswitch_12
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 559
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 560
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 561
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 562
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 563
    goto/16 :goto_2

    .line 565
    :sswitch_13
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v6

    move/from16 v20, v16

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x3

    add-int/lit8 v22, v22, 0x3

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 566
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v10, v17

    .line 567
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v11, v17

    .line 568
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    move/from16 v8, v17

    .line 569
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    aget v17, v17, v18

    move/from16 v9, v17

    .line 570
    goto/16 :goto_2

    .line 572
    :sswitch_14
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 573
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 574
    move/from16 v17, v4

    const/16 v18, 0x71

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x74

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x51

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v17, v4

    const/16 v18, 0x54

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 576
    :cond_6
    move/from16 v17, v8

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 577
    move/from16 v17, v9

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 579
    :cond_7
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 581
    move/from16 v17, v8

    move/from16 v18, v14

    add-float v17, v17, v18

    move/from16 v10, v17

    .line 582
    move/from16 v17, v9

    move/from16 v18, v15

    add-float v17, v17, v18

    move/from16 v11, v17

    .line 583
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x0

    add-int/lit8 v19, v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 584
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 585
    goto/16 :goto_2

    .line 587
    :sswitch_15
    move/from16 v17, v8

    move/from16 v14, v17

    .line 588
    move/from16 v17, v9

    move/from16 v15, v17

    .line 589
    move/from16 v17, v4

    const/16 v18, 0x71

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x74

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x51

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v4

    const/16 v18, 0x54

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 591
    :cond_8
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v8

    mul-float v17, v17, v18

    move/from16 v18, v10

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 592
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v18, v9

    mul-float v17, v17, v18

    move/from16 v18, v11

    sub-float v17, v17, v18

    move/from16 v15, v17

    .line 594
    :cond_9
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x0

    add-int/lit8 v21, v21, 0x0

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 596
    move/from16 v17, v14

    move/from16 v10, v17

    .line 597
    move/from16 v17, v15

    move/from16 v11, v17

    .line 598
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x0

    add-int/lit8 v18, v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 599
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    move/from16 v9, v17

    .line 600
    goto/16 :goto_2

    .line 603
    :sswitch_16
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    aget v20, v20, v21

    move/from16 v21, v8

    add-float v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x6

    add-int/lit8 v22, v22, 0x6

    aget v21, v21, v22

    move/from16 v22, v9

    add-float v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x0

    add-int/lit8 v23, v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move-object/from16 v24, v6

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    aget v24, v24, v25

    move-object/from16 v25, v6

    move/from16 v26, v16

    const/16 v27, 0x3

    add-int/lit8 v26, v26, 0x3

    aget v25, v25, v26

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_a

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v26, v6

    move/from16 v27, v16

    const/16 v28, 0x4

    add-int/lit8 v27, v27, 0x4

    aget v26, v26, v27

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_b

    const/16 v26, 0x1

    :goto_4
    invoke-static/range {v17 .. v26}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 613
    move/from16 v17, v8

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v8, v17

    .line 614
    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v19, v16

    const/16 v20, 0x6

    add-int/lit8 v19, v19, 0x6

    aget v18, v18, v19

    add-float v17, v17, v18

    move/from16 v9, v17

    .line 615
    move/from16 v17, v8

    move/from16 v10, v17

    .line 616
    move/from16 v17, v9

    move/from16 v11, v17

    .line 617
    goto/16 :goto_2

    .line 603
    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    :cond_b
    const/16 v26, 0x0

    goto :goto_4

    .line 619
    :sswitch_17
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v6

    move/from16 v21, v16

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    aget v20, v20, v21

    move-object/from16 v21, v6

    move/from16 v22, v16

    const/16 v23, 0x6

    add-int/lit8 v22, v22, 0x6

    aget v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x0

    add-int/lit8 v23, v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v6

    move/from16 v24, v16

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget v23, v23, v24

    move-object/from16 v24, v6

    move/from16 v25, v16

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    aget v24, v24, v25

    move-object/from16 v25, v6

    move/from16 v26, v16

    const/16 v27, 0x3

    add-int/lit8 v26, v26, 0x3

    aget v25, v25, v26

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_c

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v26, v6

    move/from16 v27, v16

    const/16 v28, 0x4

    add-int/lit8 v27, v27, 0x4

    aget v26, v26, v27

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_d

    const/16 v26, 0x1

    :goto_6
    invoke-static/range {v17 .. v26}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 629
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x5

    add-int/lit8 v18, v18, 0x5

    aget v17, v17, v18

    move/from16 v8, v17

    .line 630
    move-object/from16 v17, v6

    move/from16 v18, v16

    const/16 v19, 0x6

    add-int/lit8 v18, v18, 0x6

    aget v17, v17, v18

    move/from16 v9, v17

    .line 631
    move/from16 v17, v8

    move/from16 v10, v17

    .line 632
    move/from16 v17, v9

    move/from16 v11, v17

    goto/16 :goto_2

    .line 619
    :cond_c
    const/16 v25, 0x0

    goto :goto_5

    :cond_d
    const/16 v26, 0x0

    goto :goto_6

    .line 637
    :cond_e
    move-object/from16 v17, v3

    const/16 v18, 0x0

    move/from16 v19, v8

    aput v19, v17, v18

    .line 638
    move-object/from16 v17, v3

    const/16 v18, 0x1

    move/from16 v19, v9

    aput v19, v17, v18

    .line 639
    move-object/from16 v17, v3

    const/16 v18, 0x2

    move/from16 v19, v10

    aput v19, v17, v18

    .line 640
    move-object/from16 v17, v3

    const/16 v18, 0x3

    move/from16 v19, v11

    aput v19, v17, v18

    .line 641
    move-object/from16 v17, v3

    const/16 v18, 0x4

    move/from16 v19, v12

    aput v19, v17, v18

    .line 642
    move-object/from16 v17, v3

    const/16 v18, 0x5

    move/from16 v19, v13

    aput v19, v17, v18

    .line 643
    return-void

    .line 408
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    .line 452
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 75

    .prologue
    .line 750
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v66, v20

    const-wide/high16 v68, 0x4010000000000000L    # 4.0

    mul-double v66, v66, v68

    const-wide v68, 0x400921fb54442d18L    # Math.PI

    div-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->abs(D)D

    move-result-wide v66

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v66

    move-wide/from16 v0, v66

    double-to-int v0, v0

    move/from16 v66, v0

    move/from16 v22, v66

    .line 752
    move-wide/from16 v66, v18

    move-wide/from16 v23, v66

    .line 753
    move-wide/from16 v66, v16

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->cos(D)D

    move-result-wide v66

    move-wide/from16 v25, v66

    .line 754
    move-wide/from16 v66, v16

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    move-wide/from16 v27, v66

    .line 755
    move-wide/from16 v66, v23

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->cos(D)D

    move-result-wide v66

    move-wide/from16 v29, v66

    .line 756
    move-wide/from16 v66, v23

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    move-wide/from16 v31, v66

    .line 757
    move-wide/from16 v66, v8

    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v68, v25

    mul-double v66, v66, v68

    move-wide/from16 v68, v31

    mul-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v27

    mul-double v68, v68, v70

    move-wide/from16 v70, v29

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v33, v66

    .line 758
    move-wide/from16 v66, v8

    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v68, v27

    mul-double v66, v66, v68

    move-wide/from16 v68, v31

    mul-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v25

    mul-double v68, v68, v70

    move-wide/from16 v70, v29

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v35, v66

    .line 760
    move-wide/from16 v66, v20

    move/from16 v68, v22

    move/from16 v0, v68

    int-to-double v0, v0

    move-wide/from16 v68, v0

    div-double v66, v66, v68

    move-wide/from16 v37, v66

    .line 761
    const/16 v66, 0x0

    move/from16 v39, v66

    :goto_0
    move/from16 v66, v39

    move/from16 v67, v22

    move/from16 v0, v66

    move/from16 v1, v67

    if-ge v0, v1, :cond_0

    .line 762
    move-wide/from16 v66, v23

    move-wide/from16 v68, v37

    add-double v66, v66, v68

    move-wide/from16 v40, v66

    .line 763
    move-wide/from16 v66, v40

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    move-wide/from16 v42, v66

    .line 764
    move-wide/from16 v66, v40

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->cos(D)D

    move-result-wide v66

    move-wide/from16 v44, v66

    .line 765
    move-wide/from16 v66, v4

    move-wide/from16 v68, v8

    move-wide/from16 v70, v25

    mul-double v68, v68, v70

    move-wide/from16 v70, v44

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v27

    mul-double v68, v68, v70

    move-wide/from16 v70, v42

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v46, v66

    .line 766
    move-wide/from16 v66, v6

    move-wide/from16 v68, v8

    move-wide/from16 v70, v27

    mul-double v68, v68, v70

    move-wide/from16 v70, v44

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v25

    mul-double v68, v68, v70

    move-wide/from16 v70, v42

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v48, v66

    .line 767
    move-wide/from16 v66, v8

    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v68, v25

    mul-double v66, v66, v68

    move-wide/from16 v68, v42

    mul-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v27

    mul-double v68, v68, v70

    move-wide/from16 v70, v44

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v50, v66

    .line 768
    move-wide/from16 v66, v8

    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v68, v27

    mul-double v66, v66, v68

    move-wide/from16 v68, v42

    mul-double v66, v66, v68

    move-wide/from16 v68, v10

    move-wide/from16 v70, v25

    mul-double v68, v68, v70

    move-wide/from16 v70, v44

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v52, v66

    .line 769
    move-wide/from16 v66, v40

    move-wide/from16 v68, v23

    sub-double v66, v66, v68

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    div-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->tan(D)D

    move-result-wide v66

    move-wide/from16 v54, v66

    .line 770
    move-wide/from16 v66, v40

    move-wide/from16 v68, v23

    sub-double v66, v66, v68

    .line 771
    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    const-wide/high16 v68, 0x4010000000000000L    # 4.0

    const-wide/high16 v70, 0x4008000000000000L    # 3.0

    move-wide/from16 v72, v54

    mul-double v70, v70, v72

    move-wide/from16 v72, v54

    mul-double v70, v70, v72

    add-double v68, v68, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v68

    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    sub-double v68, v68, v70

    mul-double v66, v66, v68

    const-wide/high16 v68, 0x4008000000000000L    # 3.0

    div-double v66, v66, v68

    move-wide/from16 v56, v66

    .line 772
    move-wide/from16 v66, v12

    move-wide/from16 v68, v56

    move-wide/from16 v70, v33

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v58, v66

    .line 773
    move-wide/from16 v66, v14

    move-wide/from16 v68, v56

    move-wide/from16 v70, v35

    mul-double v68, v68, v70

    add-double v66, v66, v68

    move-wide/from16 v60, v66

    .line 774
    move-wide/from16 v66, v46

    move-wide/from16 v68, v56

    move-wide/from16 v70, v50

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v62, v66

    .line 775
    move-wide/from16 v66, v48

    move-wide/from16 v68, v56

    move-wide/from16 v70, v52

    mul-double v68, v68, v70

    sub-double v66, v66, v68

    move-wide/from16 v64, v66

    .line 778
    move-object/from16 v66, v3

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-virtual/range {v66 .. v68}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 780
    move-object/from16 v66, v3

    move-wide/from16 v67, v58

    move-wide/from16 v0, v67

    double-to-float v0, v0

    move/from16 v67, v0

    move-wide/from16 v68, v60

    move-wide/from16 v0, v68

    double-to-float v0, v0

    move/from16 v68, v0

    move-wide/from16 v69, v62

    move-wide/from16 v0, v69

    double-to-float v0, v0

    move/from16 v69, v0

    move-wide/from16 v70, v64

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v70, v0

    move-wide/from16 v71, v46

    move-wide/from16 v0, v71

    double-to-float v0, v0

    move/from16 v71, v0

    move-wide/from16 v72, v48

    move-wide/from16 v0, v72

    double-to-float v0, v0

    move/from16 v72, v0

    invoke-virtual/range {v66 .. v72}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 786
    move-wide/from16 v66, v40

    move-wide/from16 v23, v66

    .line 787
    move-wide/from16 v66, v46

    move-wide/from16 v12, v66

    .line 788
    move-wide/from16 v66, v48

    move-wide/from16 v14, v66

    .line 789
    move-wide/from16 v66, v50

    move-wide/from16 v33, v66

    .line 790
    move-wide/from16 v66, v52

    move-wide/from16 v35, v66

    .line 761
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 792
    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 76

    .prologue
    .line 657
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v56, v9

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v56

    move-wide/from16 v12, v56

    .line 659
    move-wide/from16 v56, v12

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    move-wide/from16 v14, v56

    .line 660
    move-wide/from16 v56, v12

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sin(D)D

    move-result-wide v56

    move-wide/from16 v16, v56

    .line 663
    move/from16 v56, v3

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move/from16 v58, v4

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v18, v56

    .line 664
    move/from16 v56, v3

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move/from16 v58, v4

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v20, v56

    .line 665
    move/from16 v56, v5

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move/from16 v58, v6

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v22, v56

    .line 666
    move/from16 v56, v5

    move/from16 v0, v56

    neg-float v0, v0

    move/from16 v56, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move/from16 v58, v6

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    move-wide/from16 v24, v56

    .line 669
    move-wide/from16 v56, v18

    move-wide/from16 v58, v22

    sub-double v56, v56, v58

    move-wide/from16 v26, v56

    .line 670
    move-wide/from16 v56, v20

    move-wide/from16 v58, v24

    sub-double v56, v56, v58

    move-wide/from16 v28, v56

    .line 671
    move-wide/from16 v56, v18

    move-wide/from16 v58, v22

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v30, v56

    .line 672
    move-wide/from16 v56, v20

    move-wide/from16 v58, v24

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v32, v56

    .line 674
    move-wide/from16 v56, v26

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    move-wide/from16 v58, v28

    move-wide/from16 v60, v28

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v34, v56

    .line 675
    move-wide/from16 v56, v34

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-nez v56, :cond_0

    .line 676
    const-string v56, "PathParser"

    const-string v57, " Points are coincident"

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 720
    :goto_0
    return-void

    .line 679
    :cond_0
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v58, v34

    div-double v56, v56, v58

    const-wide/high16 v58, 0x3fd0000000000000L    # 0.25

    sub-double v56, v56, v58

    move-wide/from16 v36, v56

    .line 680
    move-wide/from16 v56, v36

    const-wide/16 v58, 0x0

    cmpg-double v56, v56, v58

    if-gez v56, :cond_1

    .line 681
    const-string v56, "PathParser"

    new-instance v57, Ljava/lang/StringBuilder;

    move-object/from16 v75, v57

    move-object/from16 v57, v75

    move-object/from16 v58, v75

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "Points are too far apart "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-wide/from16 v58, v34

    invoke-virtual/range {v57 .. v59}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 682
    move-wide/from16 v56, v34

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    const-wide v58, 0x3ffffff583a53b8eL    # 1.99999

    div-double v56, v56, v58

    move-wide/from16 v0, v56

    double-to-float v0, v0

    move/from16 v56, v0

    move/from16 v38, v56

    .line 683
    move-object/from16 v56, v2

    move/from16 v57, v3

    move/from16 v58, v4

    move/from16 v59, v5

    move/from16 v60, v6

    move/from16 v61, v7

    move/from16 v62, v38

    mul-float v61, v61, v62

    move/from16 v62, v8

    move/from16 v63, v38

    mul-float v62, v62, v63

    move/from16 v63, v9

    move/from16 v64, v10

    move/from16 v65, v11

    invoke-static/range {v56 .. v65}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 685
    goto :goto_0

    .line 687
    :cond_1
    move-wide/from16 v56, v36

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    move-wide/from16 v38, v56

    .line 688
    move-wide/from16 v56, v38

    move-wide/from16 v58, v26

    mul-double v56, v56, v58

    move-wide/from16 v40, v56

    .line 689
    move-wide/from16 v56, v38

    move-wide/from16 v58, v28

    mul-double v56, v56, v58

    move-wide/from16 v42, v56

    .line 692
    move/from16 v56, v10

    move/from16 v57, v11

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_3

    .line 693
    move-wide/from16 v56, v30

    move-wide/from16 v58, v42

    sub-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 694
    move-wide/from16 v56, v32

    move-wide/from16 v58, v40

    add-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 700
    :goto_1
    move-wide/from16 v56, v20

    move-wide/from16 v58, v46

    sub-double v56, v56, v58

    move-wide/from16 v58, v18

    move-wide/from16 v60, v44

    sub-double v58, v58, v60

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    move-wide/from16 v48, v56

    .line 702
    move-wide/from16 v56, v24

    move-wide/from16 v58, v46

    sub-double v56, v56, v58

    move-wide/from16 v58, v22

    move-wide/from16 v60, v44

    sub-double v58, v58, v60

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v56

    move-wide/from16 v50, v56

    .line 704
    move-wide/from16 v56, v50

    move-wide/from16 v58, v48

    sub-double v56, v56, v58

    move-wide/from16 v52, v56

    .line 705
    move/from16 v56, v11

    move-wide/from16 v57, v52

    const-wide/16 v59, 0x0

    cmpl-double v57, v57, v59

    if-ltz v57, :cond_4

    const/16 v57, 0x1

    :goto_2
    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2

    .line 706
    move-wide/from16 v56, v52

    const-wide/16 v58, 0x0

    cmpl-double v56, v56, v58

    if-lez v56, :cond_5

    .line 707
    move-wide/from16 v56, v52

    const-wide v58, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v56, v56, v58

    move-wide/from16 v52, v56

    .line 713
    :cond_2
    :goto_3
    move-wide/from16 v56, v44

    move/from16 v58, v7

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 714
    move-wide/from16 v56, v46

    move/from16 v58, v8

    move/from16 v0, v58

    float-to-double v0, v0

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 715
    move-wide/from16 v56, v44

    move-wide/from16 v54, v56

    .line 716
    move-wide/from16 v56, v44

    move-wide/from16 v58, v14

    mul-double v56, v56, v58

    move-wide/from16 v58, v46

    move-wide/from16 v60, v16

    mul-double v58, v58, v60

    sub-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 717
    move-wide/from16 v56, v54

    move-wide/from16 v58, v16

    mul-double v56, v56, v58

    move-wide/from16 v58, v46

    move-wide/from16 v60, v14

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v46, v56

    .line 719
    move-object/from16 v56, v2

    move-wide/from16 v57, v44

    move-wide/from16 v59, v46

    move/from16 v61, v7

    move/from16 v0, v61

    float-to-double v0, v0

    move-wide/from16 v61, v0

    move/from16 v63, v8

    move/from16 v0, v63

    float-to-double v0, v0

    move-wide/from16 v63, v0

    move/from16 v65, v3

    move/from16 v0, v65

    float-to-double v0, v0

    move-wide/from16 v65, v0

    move/from16 v67, v4

    move/from16 v0, v67

    float-to-double v0, v0

    move-wide/from16 v67, v0

    move-wide/from16 v69, v12

    move-wide/from16 v71, v48

    move-wide/from16 v73, v52

    invoke-static/range {v56 .. v74}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 720
    goto/16 :goto_0

    .line 696
    :cond_3
    move-wide/from16 v56, v30

    move-wide/from16 v58, v42

    add-double v56, v56, v58

    move-wide/from16 v44, v56

    .line 697
    move-wide/from16 v56, v32

    move-wide/from16 v58, v40

    sub-double v56, v56, v58

    move-wide/from16 v46, v56

    goto/16 :goto_1

    .line 705
    :cond_4
    const/16 v57, 0x0

    goto/16 :goto_2

    .line 709
    :cond_5
    move-wide/from16 v56, v52

    const-wide v58, 0x401921fb54442d18L    # 6.283185307179586

    add-double v56, v56, v58

    move-wide/from16 v52, v56

    goto/16 :goto_3
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 11

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x6

    new-array v5, v5, [F

    move-object v2, v5

    .line 370
    const/16 v5, 0x6d

    move v3, v5

    .line 371
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 372
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    move-object v8, v0

    move v9, v4

    aget-object v8, v8, v9

    iget-char v8, v8, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    move-object v9, v0

    move v10, v4

    aget-object v9, v9, v10

    iget-object v9, v9, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 373
    move-object v5, v0

    move v6, v4

    aget-object v5, v5, v6

    iget-char v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    move v3, v5

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .locals 10

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    iget-char v6, v6, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v6, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 389
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v1

    iget-object v6, v6, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 390
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v8, v4

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v3

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    move-object v8, v2

    iget-object v8, v8, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v9, v4

    aget v8, v8, v9

    move v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method
