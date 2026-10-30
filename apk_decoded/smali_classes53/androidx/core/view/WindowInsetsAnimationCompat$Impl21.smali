.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Impl;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 11
    .param p2    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 585
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 586
    return-void
.end method

.method static buildAnimationMask(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;)I
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 643
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 644
    const/4 v4, 0x1

    move v3, v4

    :goto_0
    move v4, v3

    const/16 v5, 0x100

    if-gt v4, v5, :cond_1

    .line 646
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 647
    move v4, v2

    move v5, v3

    or-int/2addr v4, v5

    move v2, v4

    .line 645
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_0

    .line 650
    :cond_1
    move v4, v2

    move v0, v4

    return v0
.end method

.method static computeAnimationBounds(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;I)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 13
    .param p0    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 623
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v7

    move-object v3, v7

    .line 624
    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v7

    move-object v4, v7

    .line 625
    move-object v7, v3

    iget v7, v7, Landroidx/core/graphics/Insets;->left:I

    move-object v8, v4

    iget v8, v8, Landroidx/core/graphics/Insets;->left:I

    .line 626
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object v8, v3

    iget v8, v8, Landroidx/core/graphics/Insets;->top:I

    move-object v9, v4

    iget v9, v9, Landroidx/core/graphics/Insets;->top:I

    .line 627
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroidx/core/graphics/Insets;->right:I

    move-object v10, v4

    iget v10, v10, Landroidx/core/graphics/Insets;->right:I

    .line 628
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object v10, v3

    iget v10, v10, Landroidx/core/graphics/Insets;->bottom:I

    move-object v11, v4

    iget v11, v11, Landroidx/core/graphics/Insets;->bottom:I

    .line 629
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 625
    invoke-static {v7, v8, v9, v10}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v7

    move-object v5, v7

    .line 631
    move-object v7, v3

    iget v7, v7, Landroidx/core/graphics/Insets;->left:I

    move-object v8, v4

    iget v8, v8, Landroidx/core/graphics/Insets;->left:I

    .line 632
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object v8, v3

    iget v8, v8, Landroidx/core/graphics/Insets;->top:I

    move-object v9, v4

    iget v9, v9, Landroidx/core/graphics/Insets;->top:I

    .line 633
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroidx/core/graphics/Insets;->right:I

    move-object v10, v4

    iget v10, v10, Landroidx/core/graphics/Insets;->right:I

    .line 634
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v10, v3

    iget v10, v10, Landroidx/core/graphics/Insets;->bottom:I

    move-object v11, v4

    iget v11, v11, Landroidx/core/graphics/Insets;->bottom:I

    .line 635
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 631
    invoke-static {v7, v8, v9, v10}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v7

    move-object v6, v7

    .line 637
    new-instance v7, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V

    move-object v0, v7

    return-object v0
.end method

.method private static createProxyListener(Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)Landroid/view/View$OnApplyWindowInsetsListener;
    .locals 5
    .param p0    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 616
    move-object v0, p0

    new-instance v1, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    move-object v0, v1

    return-object v0
.end method

.method static interpolateInsets(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;FI)Landroidx/core/view/WindowInsetsCompat;
    .locals 21

    .prologue
    .line 656
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    new-instance v11, Landroidx/core/view/WindowInsetsCompat$Builder;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v2

    invoke-direct {v12, v13}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    move-object v6, v11

    .line 657
    const/4 v11, 0x1

    move v7, v11

    :goto_0
    move v11, v7

    const/16 v12, 0x100

    if-gt v11, v12, :cond_1

    .line 659
    move v11, v5

    move v12, v7

    and-int/2addr v11, v12

    if-nez v11, :cond_0

    .line 658
    :goto_1
    move v11, v7

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v7, v11

    goto :goto_0

    .line 662
    :cond_0
    move-object v11, v2

    move v12, v5

    move v13, v7

    and-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v11

    move-object v8, v11

    .line 663
    move-object v11, v3

    move v12, v5

    move v13, v7

    and-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v11

    move-object v9, v11

    .line 664
    move-object v11, v8

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    move-object v14, v8

    iget v14, v14, Landroidx/core/graphics/Insets;->left:I

    move-object v15, v9

    iget v15, v15, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v4

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    float-to-double v14, v14

    add-double/2addr v12, v14

    double-to-int v12, v12

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    move-object v15, v8

    iget v15, v15, Landroidx/core/graphics/Insets;->top:I

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v4

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    float-to-double v15, v15

    add-double/2addr v13, v15

    double-to-int v13, v13

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    move/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v4

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-int v14, v14

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    move/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v19, v4

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v15, v15, v17

    double-to-int v15, v15

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v11

    move-object v10, v11

    .line 672
    move-object v11, v6

    move v12, v5

    move v13, v7

    and-int/2addr v12, v13

    move-object v13, v10

    invoke-virtual {v11, v12, v13}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v11

    goto/16 :goto_1

    .line 676
    :cond_1
    move-object v11, v6

    invoke-virtual {v11}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v11

    move-object v2, v11

    return-object v2
.end method

.method static setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_on_apply_window_listener:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 592
    move-object v4, v1

    if-nez v4, :cond_1

    .line 593
    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 594
    move-object v4, v2

    if-nez v4, :cond_0

    .line 597
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->createProxyListener(Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)Landroid/view/View$OnApplyWindowInsetsListener;

    move-result-object v4

    move-object v3, v4

    .line 601
    move-object v4, v0

    sget v5, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 607
    move-object v4, v2

    if-nez v4, :cond_0

    .line 608
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method
