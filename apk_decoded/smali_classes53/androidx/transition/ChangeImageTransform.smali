.class public Landroidx/transition/ChangeImageTransform;
.super Landroidx/transition/Transition;
.source "ChangeImageTransform.java"


# static fields
.field private static final ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "android:changeImageTransform:matrix"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "android:changeImageTransform:bounds"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 55
    new-instance v0, Landroidx/transition/ChangeImageTransform$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 62
    new-instance v0, Landroidx/transition/ChangeImageTransform$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/Matrix;

    const-string v3, "animatedTransform"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 18

    .prologue
    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v11

    .line 84
    move-object v11, v2

    instance-of v11, v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    move-object v3, v11

    .line 88
    move-object v11, v3

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v4, v11

    .line 89
    move-object v11, v4

    if-nez v11, :cond_2

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    move-object v11, v1

    iget-object v11, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object v5, v11

    .line 94
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    move v6, v11

    .line 95
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    move v7, v11

    .line 96
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    move v8, v11

    .line 97
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    move v9, v11

    .line 99
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v11

    .line 100
    move-object v11, v5

    const-string v12, "android:changeImageTransform:bounds"

    move-object v13, v10

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 101
    move-object v11, v5

    const-string v12, "android:changeImageTransform:matrix"

    move-object v13, v3

    invoke-static {v13}, Landroidx/transition/ChangeImageTransform;->copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 102
    goto :goto_0
.end method

.method private static centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 19

    .prologue
    .line 222
    move-object/from16 v1, p0

    move-object v15, v1

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object v2, v15

    .line 223
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    move v3, v15

    .line 224
    move-object v15, v1

    invoke-virtual {v15}, Landroid/widget/ImageView;->getWidth()I

    move-result v15

    move v4, v15

    .line 225
    move v15, v4

    int-to-float v15, v15

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move v5, v15

    .line 227
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    move v6, v15

    .line 228
    move-object v15, v1

    invoke-virtual {v15}, Landroid/widget/ImageView;->getHeight()I

    move-result v15

    move v7, v15

    .line 229
    move v15, v7

    int-to-float v15, v15

    move/from16 v16, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move v8, v15

    .line 231
    move v15, v5

    move/from16 v16, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move v9, v15

    .line 233
    move v15, v3

    int-to-float v15, v15

    move/from16 v16, v9

    mul-float v15, v15, v16

    move v10, v15

    .line 234
    move v15, v6

    int-to-float v15, v15

    move/from16 v16, v9

    mul-float v15, v15, v16

    move v11, v15

    .line 235
    move v15, v4

    int-to-float v15, v15

    move/from16 v16, v10

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move v12, v15

    .line 236
    move v15, v7

    int-to-float v15, v15

    move/from16 v16, v11

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move v13, v15

    .line 238
    new-instance v15, Landroid/graphics/Matrix;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    move-object v14, v15

    .line 239
    move-object v15, v14

    move/from16 v16, v9

    move/from16 v17, v9

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v15

    .line 240
    move-object v15, v14

    move/from16 v16, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v15

    .line 241
    move-object v15, v14

    move-object v1, v15

    return-object v1
.end method

.method private static copyImageMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 6
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 191
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 192
    sget-object v2, Landroidx/transition/ChangeImageTransform$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 198
    new-instance v2, Landroid/graphics/Matrix;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v0, v2

    .line 201
    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    move-object v2, v0

    invoke-static {v2}, Landroidx/transition/ChangeImageTransform;->fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 196
    :pswitch_1
    move-object v2, v0

    invoke-static {v2}, Landroidx/transition/ChangeImageTransform;->centerCropMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 201
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v0, v2

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .locals 12

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    sget-object v5, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    new-instance v6, Landroidx/transition/TransitionUtils$MatrixEvaluator;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroidx/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/Matrix;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v3

    aput-object v10, v8, v9

    invoke-static {v4, v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;
    .locals 10
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget-object v3, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    sget-object v4, Landroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/Matrix;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    sget-object v8, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static fitXYMatrix(Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .locals 8

    .prologue
    .line 209
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v1, v3

    .line 210
    new-instance v3, Landroid/graphics/Matrix;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v3

    .line 211
    move-object v3, v2

    move-object v4, v0

    .line 212
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object v5, v0

    .line 213
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 211
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v3

    .line 214
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeImageTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 112
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeImageTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 107
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v14, v2

    if-eqz v14, :cond_0

    move-object v14, v3

    if-nez v14, :cond_1

    .line 136
    :cond_0
    const/4 v14, 0x0

    move-object v0, v14

    .line 173
    :goto_0
    return-object v0

    .line 138
    :cond_1
    move-object v14, v2

    iget-object v14, v14, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v15, "android:changeImageTransform:bounds"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    move-object v4, v14

    .line 139
    move-object v14, v3

    iget-object v14, v14, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v15, "android:changeImageTransform:bounds"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    move-object v5, v14

    .line 140
    move-object v14, v4

    if-eqz v14, :cond_2

    move-object v14, v5

    if-nez v14, :cond_3

    .line 141
    :cond_2
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_0

    .line 144
    :cond_3
    move-object v14, v2

    iget-object v14, v14, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v15, "android:changeImageTransform:matrix"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Matrix;

    move-object v6, v14

    .line 145
    move-object v14, v3

    iget-object v14, v14, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v15, "android:changeImageTransform:matrix"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Matrix;

    move-object v7, v14

    .line 147
    move-object v14, v6

    if-nez v14, :cond_4

    move-object v14, v7

    if-eqz v14, :cond_5

    :cond_4
    move-object v14, v6

    if-eqz v14, :cond_6

    move-object v14, v6

    move-object v15, v7

    .line 148
    invoke-virtual {v14, v15}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    const/4 v14, 0x1

    :goto_1
    move v8, v14

    .line 150
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move v14, v8

    if-eqz v14, :cond_7

    .line 151
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_0

    .line 148
    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    .line 154
    :cond_7
    move-object v14, v3

    iget-object v14, v14, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v14, Landroid/widget/ImageView;

    move-object v9, v14

    .line 155
    move-object v14, v9

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v10, v14

    .line 156
    move-object v14, v10

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    move v11, v14

    .line 157
    move-object v14, v10

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move v12, v14

    .line 160
    move v14, v11

    if-lez v14, :cond_8

    move v14, v12

    if-gtz v14, :cond_9

    .line 161
    :cond_8
    move-object v14, v0

    move-object v15, v9

    invoke-direct {v14, v15}, Landroidx/transition/ChangeImageTransform;->createNullAnimator(Landroid/widget/ImageView;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move-object v13, v14

    .line 173
    :goto_2
    move-object v14, v13

    move-object v0, v14

    goto/16 :goto_0

    .line 163
    :cond_9
    move-object v14, v6

    if-nez v14, :cond_a

    .line 164
    sget-object v14, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v6, v14

    .line 166
    :cond_a
    move-object v14, v7

    if-nez v14, :cond_b

    .line 167
    sget-object v14, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object v7, v14

    .line 169
    :cond_b
    sget-object v14, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    move-object v15, v9

    move-object/from16 v16, v6

    invoke-virtual/range {v14 .. v16}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    move-object v14, v0

    move-object v15, v9

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v14 .. v17}, Landroidx/transition/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move-object v13, v14

    goto :goto_2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    sget-object v1, Landroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
