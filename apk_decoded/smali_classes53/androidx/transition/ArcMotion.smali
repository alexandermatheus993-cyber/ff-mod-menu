.class public Landroidx/transition/ArcMotion;
.super Landroidx/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-wide v0, 0x4041800000000000L    # 35.0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/PathMotion;-><init>()V

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 60
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 61
    move-object v1, v0

    const/high16 v2, 0x428c0000    # 70.0f

    iput v2, v1, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    .line 62
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 64
    move-object v1, v0

    sget v2, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, v1, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 60
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 61
    move-object v8, v0

    const/high16 v9, 0x428c0000    # 70.0f

    iput v9, v8, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    .line 62
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 63
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 64
    move-object v8, v0

    sget v9, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v9, v8, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    .line 73
    move-object v8, v1

    move-object v9, v2

    sget-object v10, Landroidx/transition/Styleable;->ARC_MOTION:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v3, v8

    .line 74
    move-object v8, v2

    check-cast v8, Lorg/xmlpull/v1/XmlPullParser;

    move-object v4, v8

    .line 75
    move-object v8, v3

    move-object v9, v4

    const-string v10, "minimumVerticalAngle"

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    move v5, v8

    .line 78
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Landroidx/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    .line 79
    move-object v8, v3

    move-object v9, v4

    const-string v10, "minimumHorizontalAngle"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    move v6, v8

    .line 82
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    .line 83
    move-object v8, v3

    move-object v9, v4

    const-string v10, "maximumAngle"

    const/4 v11, 0x2

    const/high16 v12, 0x428c0000    # 70.0f

    invoke-static {v8, v9, v10, v11, v12}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    move v7, v8

    .line 85
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Landroidx/transition/ArcMotion;->setMaximumAngle(F)V

    .line 86
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method private static toTangent(F)F
    .locals 6

    .prologue
    .line 178
    move v1, p0

    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 179
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Arc must be between 0 and 90 degrees"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_1
    move v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    return v1
.end method


# virtual methods
.method public getMaximumAngle()F
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    move v0, v1

    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    move v0, v1

    return v0
.end method

.method public getMinimumVerticalAngle()F
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    move v0, v1

    return v0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 36
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 203
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    new-instance v28, Landroid/graphics/Path;

    move-object/from16 v35, v28

    move-object/from16 v28, v35

    move-object/from16 v29, v35

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v8, v28

    .line 204
    move-object/from16 v28, v8

    move/from16 v29, v4

    move/from16 v30, v5

    invoke-virtual/range {v28 .. v30}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    move/from16 v28, v6

    move/from16 v29, v4

    sub-float v28, v28, v29

    move/from16 v11, v28

    .line 209
    move/from16 v28, v7

    move/from16 v29, v5

    sub-float v28, v28, v29

    move/from16 v12, v28

    .line 212
    move/from16 v28, v11

    move/from16 v29, v11

    mul-float v28, v28, v29

    move/from16 v29, v12

    move/from16 v30, v12

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v13, v28

    .line 215
    move/from16 v28, v4

    move/from16 v29, v6

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v14, v28

    .line 216
    move/from16 v28, v5

    move/from16 v29, v7

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v15, v28

    .line 219
    move/from16 v28, v13

    const/high16 v29, 0x3e800000    # 0.25f

    mul-float v28, v28, v29

    move/from16 v16, v28

    .line 223
    move/from16 v28, v5

    move/from16 v29, v7

    cmpl-float v28, v28, v29

    if-lez v28, :cond_2

    const/16 v28, 0x1

    :goto_0
    move/from16 v18, v28

    .line 225
    move/from16 v28, v11

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move/from16 v29, v12

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v29

    cmpg-float v28, v28, v29

    if-gez v28, :cond_4

    .line 231
    move/from16 v28, v13

    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v30, v12

    mul-float v29, v29, v30

    div-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move/from16 v19, v28

    .line 232
    move/from16 v28, v18

    if-eqz v28, :cond_3

    .line 233
    move/from16 v28, v7

    move/from16 v29, v19

    add-float v28, v28, v29

    move/from16 v10, v28

    .line 234
    move/from16 v28, v6

    move/from16 v9, v28

    .line 240
    :goto_1
    move/from16 v28, v16

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v17, v28

    .line 256
    :goto_2
    move/from16 v28, v14

    move/from16 v29, v9

    sub-float v28, v28, v29

    move/from16 v19, v28

    .line 257
    move/from16 v28, v15

    move/from16 v29, v10

    sub-float v28, v28, v29

    move/from16 v20, v28

    .line 258
    move/from16 v28, v19

    move/from16 v29, v19

    mul-float v28, v28, v29

    move/from16 v29, v20

    move/from16 v30, v20

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v21, v28

    .line 260
    move/from16 v28, v16

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v22, v28

    .line 262
    const/16 v28, 0x0

    move/from16 v23, v28

    .line 263
    move/from16 v28, v21

    move/from16 v29, v17

    cmpg-float v28, v28, v29

    if-gez v28, :cond_6

    .line 264
    move/from16 v28, v17

    move/from16 v23, v28

    .line 268
    :cond_0
    :goto_3
    move/from16 v28, v23

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_1

    .line 269
    move/from16 v28, v23

    move/from16 v29, v21

    div-float v28, v28, v29

    move/from16 v24, v28

    .line 270
    move/from16 v28, v24

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v25, v28

    .line 271
    move/from16 v28, v14

    move/from16 v29, v25

    move/from16 v30, v9

    move/from16 v31, v14

    sub-float v30, v30, v31

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v9, v28

    .line 272
    move/from16 v28, v15

    move/from16 v29, v25

    move/from16 v30, v10

    move/from16 v31, v15

    sub-float v30, v30, v31

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v10, v28

    .line 274
    :cond_1
    move/from16 v28, v4

    move/from16 v29, v9

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v24, v28

    .line 275
    move/from16 v28, v5

    move/from16 v29, v10

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v25, v28

    .line 276
    move/from16 v28, v9

    move/from16 v29, v6

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v26, v28

    .line 277
    move/from16 v28, v10

    move/from16 v29, v7

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v27, v28

    .line 278
    move-object/from16 v28, v8

    move/from16 v29, v24

    move/from16 v30, v25

    move/from16 v31, v26

    move/from16 v32, v27

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-virtual/range {v28 .. v34}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 279
    move-object/from16 v28, v8

    move-object/from16 v3, v28

    return-object v3

    .line 223
    :cond_2
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 236
    :cond_3
    move/from16 v28, v5

    move/from16 v29, v19

    add-float v28, v28, v29

    move/from16 v10, v28

    .line 237
    move/from16 v28, v4

    move/from16 v9, v28

    goto/16 :goto_1

    .line 244
    :cond_4
    move/from16 v28, v13

    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v30, v11

    mul-float v29, v29, v30

    div-float v28, v28, v29

    move/from16 v19, v28

    .line 245
    move/from16 v28, v18

    if-eqz v28, :cond_5

    .line 246
    move/from16 v28, v4

    move/from16 v29, v19

    add-float v28, v28, v29

    move/from16 v9, v28

    .line 247
    move/from16 v28, v5

    move/from16 v10, v28

    .line 253
    :goto_4
    move/from16 v28, v16

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v17, v28

    goto/16 :goto_2

    .line 249
    :cond_5
    move/from16 v28, v6

    move/from16 v29, v19

    sub-float v28, v28, v29

    move/from16 v9, v28

    .line 250
    move/from16 v28, v7

    move/from16 v10, v28

    goto :goto_4

    .line 265
    :cond_6
    move/from16 v28, v21

    move/from16 v29, v22

    cmpl-float v28, v28, v29

    if-lez v28, :cond_0

    .line 266
    move/from16 v28, v22

    move/from16 v23, v28

    goto/16 :goto_3
.end method

.method public setMaximumAngle(F)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    .line 161
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroidx/transition/ArcMotion;->toTangent(F)F

    move-result v3

    iput v3, v2, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    .line 162
    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 102
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroidx/transition/ArcMotion;->toTangent(F)F

    move-result v3

    iput v3, v2, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 103
    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 132
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroidx/transition/ArcMotion;->toTangent(F)F

    move-result v3

    iput v3, v2, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 133
    return-void
.end method
