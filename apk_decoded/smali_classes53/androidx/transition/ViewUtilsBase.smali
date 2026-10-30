.class Landroidx/transition/ViewUtilsBase;
.super Ljava/lang/Object;
.source "ViewUtilsBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsBase"

.field private static final VISIBILITY_MASK:I = 0xc

.field private static sSetFrameFetched:Z

.field private static sSetFrameMethod:Ljava/lang/reflect/Method;

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# instance fields
.field private mMatrixValues:[F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchSetFrame()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi",
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    sget-boolean v2, Landroidx/transition/ViewUtilsBase;->sSetFrameFetched:Z

    if-nez v2, :cond_0

    .line 181
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setFrame"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    .line 183
    sget-object v2, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/transition/ViewUtilsBase;->sSetFrameFetched:Z

    .line 189
    :cond_0
    return-void

    .line 184
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 185
    const-string v2, "ViewUtilsBase"

    const-string v3, "Failed to retrieve setFrame method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 73
    move-object v2, v1

    sget v3, Landroidx/transition/R$id;->save_non_transition_alpha:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    sget v4, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    move-object v2, v3

    .line 56
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 57
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v3, v4

    move v0, v3

    .line 59
    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget v3, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 65
    move-object v2, v1

    sget v3, Landroidx/transition/R$id;->save_non_transition_alpha:I

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 17
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v12, v3

    if-eqz v12, :cond_0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 110
    :cond_0
    move-object v12, v2

    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotX(F)V

    .line 111
    move-object v12, v2

    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotY(F)V

    .line 112
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 113
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 114
    move-object v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    .line 115
    move-object v12, v2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    .line 116
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setRotation(F)V

    .line 139
    :goto_0
    return-void

    .line 118
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Landroidx/transition/ViewUtilsBase;->mMatrixValues:[F

    move-object v4, v12

    .line 119
    move-object v12, v4

    if-nez v12, :cond_2

    .line 120
    move-object v12, v1

    const/16 v13, 0x9

    new-array v13, v13, [F

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v4, v14

    iput-object v13, v12, Landroidx/transition/ViewUtilsBase;->mMatrixValues:[F

    .line 122
    :cond_2
    move-object v12, v3

    move-object v13, v4

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 123
    move-object v12, v4

    const/4 v13, 0x3

    aget v12, v12, v13

    move v5, v12

    .line 124
    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v5

    move v14, v5

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 125
    move-object v13, v4

    const/4 v14, 0x0

    aget v13, v13, v14

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    const/4 v13, -0x1

    :goto_1
    int-to-float v13, v13

    mul-float/2addr v12, v13

    move v6, v12

    .line 126
    move v12, v5

    float-to-double v12, v12

    move v14, v6

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v7, v12

    .line 127
    move-object v12, v4

    const/4 v13, 0x0

    aget v12, v12, v13

    move v13, v6

    div-float/2addr v12, v13

    move v8, v12

    .line 128
    move-object v12, v4

    const/4 v13, 0x4

    aget v12, v12, v13

    move v13, v6

    div-float/2addr v12, v13

    move v9, v12

    .line 129
    move-object v12, v4

    const/4 v13, 0x2

    aget v12, v12, v13

    move v10, v12

    .line 130
    move-object v12, v4

    const/4 v13, 0x5

    aget v12, v12, v13

    move v11, v12

    .line 131
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotX(F)V

    .line 132
    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotY(F)V

    .line 133
    move-object v12, v2

    move v13, v10

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 134
    move-object v12, v2

    move v13, v11

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 135
    move-object v12, v2

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/View;->setRotation(F)V

    .line 136
    move-object v12, v2

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    .line 137
    move-object v12, v2

    move v13, v9

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_0

    .line 125
    :cond_3
    const/4 v13, 0x1

    goto :goto_1
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 14
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    invoke-direct {v7}, Landroidx/transition/ViewUtilsBase;->fetchSetFrame()V

    .line 143
    sget-object v7, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_0

    .line 145
    :try_start_0
    sget-object v7, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    move-object v8, v1

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move v12, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 150
    goto :goto_0

    .line 148
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 149
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    sget v5, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    move-object v3, v4

    .line 47
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 48
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-boolean v4, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    if-nez v4, :cond_0

    .line 157
    :try_start_0
    const-class v4, Landroid/view/View;

    const-string v5, "mViewFlags"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 158
    sget-object v4, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    .line 164
    :cond_0
    sget-object v4, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    .line 166
    :try_start_1
    sget-object v4, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 167
    sget-object v4, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    move-object v5, v1

    move v6, v3

    const/16 v7, -0xd

    and-int/lit8 v6, v6, -0xd

    move v7, v2

    or-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :cond_1
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 160
    const-string v4, "ViewUtilsBase"

    const-string v5, "fetchViewFlagsField: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 168
    :catch_1
    move-exception v4

    move-object v3, v4

    goto :goto_1
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 79
    move-object v5, v3

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 80
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 81
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroidx/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 82
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v5

    .line 84
    :cond_0
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v5

    .line 85
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    move-object v4, v5

    .line 86
    move-object v5, v4

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 89
    :cond_1
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v3, v6

    .line 93
    move-object v6, v3

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 94
    move-object v6, v3

    check-cast v6, Landroid/view/View;

    move-object v4, v6

    .line 95
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 96
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v6

    .line 98
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v6

    .line 99
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object v4, v6

    .line 100
    move-object v6, v4

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    new-instance v6, Landroid/graphics/Matrix;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-object v5, v6

    .line 102
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v6

    .line 106
    :cond_1
    return-void
.end method
