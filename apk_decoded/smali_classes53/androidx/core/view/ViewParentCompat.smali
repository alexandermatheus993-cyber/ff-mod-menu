.class public final Landroidx/core/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewParentCompat"

.field private static sTempNestedScrollConsumed:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTempNestedScrollConsumed()[I
    .locals 3

    .prologue
    .line 498
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    .line 504
    :goto_0
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    return-object v0

    .line 501
    :cond_0
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 502
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 493
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 495
    :cond_0
    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 12

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1

    .line 426
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    :try_start_0
    invoke-interface {v6, v7, v8, v9, v10}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    .line 435
    :goto_0
    return v0

    .line 427
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 428
    const-string v6, "ViewParentCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewParent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not implement interface method onNestedFling"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 435
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 431
    :cond_1
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent;

    if-eqz v6, :cond_0

    .line 432
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent;

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroidx/core/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 10

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 463
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    :try_start_0
    invoke-interface {v5, v6, v7, v8}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 472
    :goto_0
    return v0

    .line 464
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 465
    const-string v5, "ViewParentCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ViewParent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not implement interface method onNestedPreFling"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 472
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 468
    :cond_1
    move-object v5, v0

    instance-of v5, v5, Landroidx/core/view/NestedScrollingParent;

    if-eqz v5, :cond_0

    .line 469
    move-object v5, v0

    check-cast v5, Landroidx/core/view/NestedScrollingParent;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v5, v6, v7, v8}, Landroidx/core/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 11

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 179
    return-void
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 14

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    instance-of v7, v7, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v7, :cond_1

    .line 386
    move-object v7, v0

    check-cast v7, Landroidx/core/view/NestedScrollingParent2;

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    move v12, v5

    invoke-interface/range {v7 .. v12}, Landroidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    move v7, v5

    if-nez v7, :cond_0

    .line 389
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    .line 391
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    :try_start_0
    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 392
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 393
    const-string v7, "ViewParentCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewParent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not implement interface method onNestedPreScroll"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v6

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v7

    .line 395
    goto :goto_0

    .line 396
    :cond_2
    move-object v7, v0

    instance-of v7, v7, Landroidx/core/view/NestedScrollingParent;

    if-eqz v7, :cond_0

    .line 397
    move-object v7, v0

    check-cast v7, Landroidx/core/view/NestedScrollingParent;

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-interface {v7, v8, v9, v10, v11}, Landroidx/core/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    .line 133
    invoke-static {}, Landroidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    move-result-object v13

    .line 132
    invoke-static/range {v6 .. v13}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 134
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 15

    .prologue
    .line 160
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    .line 161
    invoke-static {}, Landroidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    move-result-object v14

    .line 160
    invoke-static/range {v7 .. v14}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 162
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .locals 19
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v0

    instance-of v9, v9, Landroidx/core/view/NestedScrollingParent3;

    if-eqz v9, :cond_1

    .line 330
    move-object v9, v0

    check-cast v9, Landroidx/core/view/NestedScrollingParent3;

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move-object/from16 v16, v7

    invoke-interface/range {v9 .. v16}, Landroidx/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    move-object v9, v7

    const/4 v10, 0x0

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v11, v17

    move/from16 v12, v18

    aget v11, v11, v12

    move v12, v4

    add-int/2addr v11, v12

    aput v11, v9, v10

    .line 337
    move-object v9, v7

    const/4 v10, 0x1

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v11, v17

    move/from16 v12, v18

    aget v11, v11, v12

    move v12, v5

    add-int/2addr v11, v12

    aput v11, v9, v10

    .line 339
    move-object v9, v0

    instance-of v9, v9, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v9, :cond_2

    .line 340
    move-object v9, v0

    check-cast v9, Landroidx/core/view/NestedScrollingParent2;

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-interface/range {v9 .. v15}, Landroidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 342
    :cond_2
    move v9, v6

    if-nez v9, :cond_0

    .line 344
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_3

    .line 346
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    :try_start_0
    invoke-interface/range {v9 .. v14}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_0

    .line 348
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 349
    const-string v9, "ViewParentCompat"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ViewParent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not implement interface method onNestedScroll"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    invoke-static {v9, v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v9

    .line 351
    goto :goto_0

    .line 352
    :cond_3
    move-object v9, v0

    instance-of v9, v9, Landroidx/core/view/NestedScrollingParent;

    if-eqz v9, :cond_0

    .line 353
    move-object v9, v0

    check-cast v9, Landroidx/core/view/NestedScrollingParent;

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    invoke-interface/range {v9 .. v14}, Landroidx/core/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    goto/16 :goto_0
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 9

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 103
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 12

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v6, :cond_1

    .line 250
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent2;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    move v6, v4

    if-nez v6, :cond_0

    .line 254
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 256
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    :try_start_0
    invoke-interface {v6, v7, v8, v9}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    .line 257
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 258
    const-string v6, "ViewParentCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewParent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 260
    goto :goto_0

    .line 261
    :cond_2
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent;

    if-eqz v6, :cond_0

    .line 262
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 12

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v6, :cond_0

    .line 209
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent2;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v6

    move v0, v6

    .line 225
    :goto_0
    return v0

    .line 211
    :cond_0
    move v6, v4

    if-nez v6, :cond_1

    .line 213
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    .line 215
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    :try_start_0
    invoke-interface {v6, v7, v8, v9}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    goto :goto_0

    .line 216
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 217
    const-string v6, "ViewParentCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewParent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not implement interface method onStartNestedScroll"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 225
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 220
    :cond_2
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/view/NestedScrollingParent;

    if-eqz v6, :cond_1

    .line 221
    move-object v6, v0

    check-cast v6, Landroidx/core/view/NestedScrollingParent;

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Landroidx/core/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 115
    return-void
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    instance-of v4, v4, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v4, :cond_1

    .line 284
    move-object v4, v0

    check-cast v4, Landroidx/core/view/NestedScrollingParent2;

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroidx/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    move v4, v2

    if-nez v4, :cond_0

    .line 287
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 289
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-interface {v4, v5}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 290
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 291
    const-string v4, "ViewParentCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewParent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 293
    goto :goto_0

    .line 294
    :cond_2
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/view/NestedScrollingParent;

    if-eqz v4, :cond_0

    .line 295
    move-object v4, v0

    check-cast v4, Landroidx/core/view/NestedScrollingParent;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    move v0, v3

    return v0
.end method
