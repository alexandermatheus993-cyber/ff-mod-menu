.class public Landroidx/transition/SidePropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/VisibilityPropagation;-><init>()V

    .line 36
    move-object v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, v1, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 37
    move-object v1, v0

    const/16 v2, 0x50

    iput v2, v1, Landroidx/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 15

    .prologue
    .line 125
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v12, v0

    iget v12, v12, Landroidx/transition/SidePropagation;->mSide:I

    const v13, 0x800003

    if-ne v12, v13, :cond_2

    .line 126
    move-object v12, v1

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    :goto_0
    move v11, v12

    .line 128
    move v12, v11

    if-eqz v12, :cond_1

    const/4 v12, 0x5

    :goto_1
    move v10, v12

    .line 136
    :goto_2
    const/4 v12, 0x0

    move v11, v12

    .line 137
    move v12, v10

    sparse-switch v12, :sswitch_data_0

    .line 151
    :goto_3
    move v12, v11

    move v0, v12

    return v0

    .line 126
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 128
    :cond_1
    const/4 v12, 0x3

    goto :goto_1

    .line 129
    :cond_2
    move-object v12, v0

    iget v12, v12, Landroidx/transition/SidePropagation;->mSide:I

    const v13, 0x800005

    if-ne v12, v13, :cond_5

    .line 130
    move-object v12, v1

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_4
    move v11, v12

    .line 132
    move v12, v11

    if-eqz v12, :cond_4

    const/4 v12, 0x3

    :goto_5
    move v10, v12

    .line 133
    goto :goto_2

    .line 130
    :cond_3
    const/4 v12, 0x0

    goto :goto_4

    .line 132
    :cond_4
    const/4 v12, 0x5

    goto :goto_5

    .line 134
    :cond_5
    move-object v12, v0

    iget v12, v12, Landroidx/transition/SidePropagation;->mSide:I

    move v10, v12

    goto :goto_2

    .line 139
    :sswitch_0
    move v12, v8

    move v13, v2

    sub-int/2addr v12, v13

    move v13, v5

    move v14, v3

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    move v11, v12

    .line 140
    goto :goto_3

    .line 142
    :sswitch_1
    move v12, v9

    move v13, v3

    sub-int/2addr v12, v13

    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    move v11, v12

    .line 143
    goto :goto_3

    .line 145
    :sswitch_2
    move v12, v2

    move v13, v6

    sub-int/2addr v12, v13

    move v13, v5

    move v14, v3

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    move v11, v12

    .line 146
    goto :goto_3

    .line 148
    :sswitch_3
    move v12, v3

    move v13, v7

    sub-int/2addr v12, v13

    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    move v11, v12

    goto :goto_3

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/transition/SidePropagation;->mSide:I

    sparse-switch v2, :sswitch_data_0

    .line 162
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    .line 160
    :sswitch_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 34

    .prologue
    .line 76
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v24, v5

    if-nez v24, :cond_0

    move-object/from16 v24, v6

    if-nez v24, :cond_0

    .line 77
    const-wide/16 v24, 0x0

    move-wide/from16 v2, v24

    .line 119
    :goto_0
    return-wide v2

    .line 79
    :cond_0
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 80
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v8, v24

    .line 82
    move-object/from16 v24, v6

    if-eqz v24, :cond_1

    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Landroidx/transition/SidePropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result v24

    if-nez v24, :cond_3

    .line 83
    :cond_1
    move-object/from16 v24, v5

    move-object/from16 v9, v24

    .line 84
    const/16 v24, -0x1

    move/from16 v7, v24

    .line 89
    :goto_1
    move-object/from16 v24, v2

    move-object/from16 v25, v9

    invoke-virtual/range {v24 .. v25}, Landroidx/transition/SidePropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    move-result v24

    move/from16 v10, v24

    .line 90
    move-object/from16 v24, v2

    move-object/from16 v25, v9

    invoke-virtual/range {v24 .. v25}, Landroidx/transition/SidePropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    move-result v24

    move/from16 v11, v24

    .line 92
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move-object/from16 v12, v24

    .line 93
    move-object/from16 v24, v3

    move-object/from16 v25, v12

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 94
    move-object/from16 v24, v12

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v13, v24

    .line 95
    move-object/from16 v24, v12

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v14, v24

    .line 96
    move/from16 v24, v13

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getWidth()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v15, v24

    .line 97
    move/from16 v24, v14

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v16, v24

    .line 101
    move-object/from16 v24, v8

    if-eqz v24, :cond_4

    .line 102
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    move/from16 v17, v24

    .line 103
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    move/from16 v18, v24

    .line 109
    :goto_2
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v17

    move/from16 v29, v18

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    move/from16 v33, v16

    invoke-direct/range {v24 .. v33}, Landroidx/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v19, v24

    .line 111
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-direct/range {v24 .. v25}, Landroidx/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v20, v24

    .line 112
    move/from16 v24, v19

    move/from16 v25, v20

    div-float v24, v24, v25

    move/from16 v21, v24

    .line 114
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 115
    move-wide/from16 v24, v22

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_2

    .line 116
    const-wide/16 v24, 0x12c

    move-wide/from16 v22, v24

    .line 119
    :cond_2
    move-wide/from16 v24, v22

    move/from16 v26, v7

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    move/from16 v25, v0

    div-float v24, v24, v25

    move/from16 v25, v21

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v2, v24

    goto/16 :goto_0

    .line 86
    :cond_3
    move-object/from16 v24, v6

    move-object/from16 v9, v24

    goto/16 :goto_1

    .line 105
    :cond_4
    move/from16 v24, v13

    move/from16 v25, v15

    add-int v24, v24, v25

    const/16 v25, 0x2

    div-int/lit8 v24, v24, 0x2

    move/from16 v17, v24

    .line 106
    move/from16 v24, v14

    move/from16 v25, v16

    add-int v24, v24, v25

    const/16 v25, 0x2

    div-int/lit8 v24, v24, 0x2

    move/from16 v18, v24

    goto/16 :goto_2
.end method

.method public setPropagationSpeed(F)V
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "propagationSpeed may not be 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    .line 71
    return-void
.end method

.method public setSide(I)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/transition/SidePropagation;->mSide:I

    .line 52
    return-void
.end method
