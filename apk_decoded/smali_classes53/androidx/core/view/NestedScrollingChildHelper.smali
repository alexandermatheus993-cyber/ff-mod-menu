.class public Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 58
    return-void
.end method

.method private dispatchNestedScrollInternal(IIII[II[I)Z
    .locals 21
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 238
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 239
    move-object v11, v0

    move v12, v6

    invoke-direct {v11, v12}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v11

    move-object v8, v11

    .line 240
    move-object v11, v8

    if-nez v11, :cond_0

    .line 241
    const/4 v11, 0x0

    move v0, v11

    .line 274
    :goto_0
    return v0

    .line 244
    :cond_0
    move v11, v1

    if-nez v11, :cond_1

    move v11, v2

    if-nez v11, :cond_1

    move v11, v3

    if-nez v11, :cond_1

    move v11, v4

    if-eqz v11, :cond_5

    .line 245
    :cond_1
    const/4 v11, 0x0

    move v9, v11

    .line 246
    const/4 v11, 0x0

    move v10, v11

    .line 247
    move-object v11, v5

    if-eqz v11, :cond_2

    .line 248
    move-object v11, v0

    iget-object v11, v11, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 249
    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    move v9, v11

    .line 250
    move-object v11, v5

    const/4 v12, 0x1

    aget v11, v11, v12

    move v10, v11

    .line 253
    :cond_2
    move-object v11, v7

    if-nez v11, :cond_3

    .line 254
    move-object v11, v0

    invoke-direct {v11}, Landroidx/core/view/NestedScrollingChildHelper;->getTempNestedScrollConsumed()[I

    move-result-object v11

    move-object v7, v11

    .line 255
    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 256
    move-object v11, v7

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 259
    :cond_3
    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    invoke-static/range {v11 .. v18}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 262
    move-object v11, v5

    if-eqz v11, :cond_4

    .line 263
    move-object v11, v0

    iget-object v11, v11, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    move-object v11, v5

    const/4 v12, 0x0

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v11, v19

    move/from16 v12, v20

    move-object/from16 v13, v19

    move/from16 v14, v20

    aget v13, v13, v14

    move v14, v9

    sub-int/2addr v13, v14

    aput v13, v11, v12

    .line 265
    move-object v11, v5

    const/4 v12, 0x1

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v11, v19

    move/from16 v12, v20

    move-object/from16 v13, v19

    move/from16 v14, v20

    aget v13, v13, v14

    move v14, v10

    sub-int/2addr v13, v14

    aput v13, v11, v12

    .line 267
    :cond_4
    const/4 v11, 0x1

    move v0, v11

    goto :goto_0

    .line 268
    :cond_5
    move-object v11, v5

    if-eqz v11, :cond_6

    .line 270
    move-object v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 271
    move-object v11, v5

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 274
    :cond_6
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .locals 3

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 410
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 406
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    move-object v0, v2

    goto :goto_0

    .line 408
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    move-object v0, v2

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTempNestedScrollConsumed()[I
    .locals 3

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v1, :cond_0

    .line 426
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 428
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    move-object v0, v1

    return-object v0
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .locals 5

    .prologue
    .line 414
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 416
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 417
    goto :goto_0

    .line 419
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 10

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 349
    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 350
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 351
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v5

    move v0, v5

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 8

    .prologue
    .line 368
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 370
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 371
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v6, v1

    move v7, v2

    invoke-static {v4, v5, v6, v7}, Landroidx/core/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v4

    move v0, v4

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 11
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 288
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 17
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 302
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 303
    move-object v9, v0

    move v10, v5

    invoke-direct {v9, v10}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v9

    move-object v6, v9

    .line 304
    move-object v9, v6

    if-nez v9, :cond_0

    .line 305
    const/4 v9, 0x0

    move v0, v9

    .line 335
    :goto_0
    return v0

    .line 308
    :cond_0
    move v9, v1

    if-nez v9, :cond_1

    move v9, v2

    if-eqz v9, :cond_7

    .line 309
    :cond_1
    const/4 v9, 0x0

    move v7, v9

    .line 310
    const/4 v9, 0x0

    move v8, v9

    .line 311
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 312
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 313
    move-object v9, v4

    const/4 v10, 0x0

    aget v9, v9, v10

    move v7, v9

    .line 314
    move-object v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    move v8, v9

    .line 317
    :cond_2
    move-object v9, v3

    if-nez v9, :cond_3

    .line 318
    move-object v9, v0

    invoke-direct {v9}, Landroidx/core/view/NestedScrollingChildHelper;->getTempNestedScrollConsumed()[I

    move-result-object v9

    move-object v3, v9

    .line 320
    :cond_3
    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 321
    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 322
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v11, v1

    move v12, v2

    move-object v13, v3

    move v14, v5

    invoke-static/range {v9 .. v14}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 324
    move-object v9, v4

    if-eqz v9, :cond_4

    .line 325
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 326
    move-object v9, v4

    const/4 v10, 0x0

    move-object v15, v9

    move/from16 v16, v10

    move-object v9, v15

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    aget v11, v11, v12

    move v12, v7

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 327
    move-object v9, v4

    const/4 v10, 0x1

    move-object v15, v9

    move/from16 v16, v10

    move-object v9, v15

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    aget v11, v11, v12

    move v12, v8

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 329
    :cond_4
    move-object v9, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    if-nez v9, :cond_5

    move-object v9, v3

    const/4 v10, 0x1

    aget v9, v9, v10

    if-eqz v9, :cond_6

    :cond_5
    const/4 v9, 0x1

    :goto_1
    move v0, v9

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 330
    :cond_7
    move-object v9, v4

    if-eqz v9, :cond_8

    .line 331
    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 332
    move-object v9, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 335
    :cond_8
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 16
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move v14, v6

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result v8

    .line 233
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 14
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 204
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 15
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 218
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result v7

    move v0, v7

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    move v0, v1

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 388
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 73
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 74
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 10

    .prologue
    .line 145
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    const/4 v5, 0x1

    move v0, v5

    .line 164
    :goto_0
    return v0

    .line 149
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 151
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v4, v5

    .line 152
    :goto_1
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 153
    move-object v5, v3

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v8, v1

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 155
    move-object v5, v3

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v8, v1

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 156
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 158
    :cond_1
    move-object v5, v3

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_2

    .line 159
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 161
    :cond_2
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    .line 164
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public stopNestedScroll()V
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 176
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 187
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 188
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v5, v1

    invoke-static {v3, v4, v5}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 189
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 191
    :cond_0
    return-void
.end method
