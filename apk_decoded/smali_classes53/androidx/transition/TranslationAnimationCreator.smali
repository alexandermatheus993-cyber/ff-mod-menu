.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .locals 28
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTranslationX()F

    move-result v18

    move/from16 v11, v18

    .line 57
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTranslationY()F

    move-result v18

    move/from16 v12, v18

    .line 58
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v18, v0

    sget v19, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v13, v18

    .line 59
    move-object/from16 v18, v13

    if-eqz v18, :cond_0

    .line 60
    move-object/from16 v18, v13

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v19, v3

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v11

    add-float v18, v18, v19

    move/from16 v5, v18

    .line 61
    move-object/from16 v18, v13

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v19, v4

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v12

    add-float v18, v18, v19

    move/from16 v6, v18

    .line 64
    :cond_0
    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v11

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v14, v18

    .line 65
    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v12

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v15, v18

    .line 67
    move-object/from16 v18, v1

    move/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTranslationX(F)V

    .line 68
    move-object/from16 v18, v1

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTranslationY(F)V

    .line 69
    move/from16 v18, v5

    move/from16 v19, v7

    cmpl-float v18, v18, v19

    if-nez v18, :cond_1

    move/from16 v18, v6

    move/from16 v19, v8

    cmpl-float v18, v18, v19

    if-nez v18, :cond_1

    .line 70
    const/16 v18, 0x0

    move-object/from16 v1, v18

    .line 82
    :goto_0
    return-object v1

    .line 72
    :cond_1
    move-object/from16 v18, v1

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const/16 v21, 0x0

    sget-object v22, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    const/16 v25, 0x0

    move/from16 v26, v5

    aput v26, v24, v25

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    const/16 v25, 0x1

    move/from16 v26, v7

    aput v26, v24, v25

    .line 73
    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    const/16 v21, 0x1

    sget-object v22, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    const/16 v25, 0x0

    move/from16 v26, v6

    aput v26, v24, v25

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    const/16 v25, 0x1

    move/from16 v26, v8

    aput v26, v24, v25

    .line 74
    invoke-static/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    aput-object v22, v20, v21

    .line 72
    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    move-object/from16 v16, v18

    .line 76
    new-instance v18, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v21, v0

    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v11

    move/from16 v25, v12

    invoke-direct/range {v19 .. v25}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    move-object/from16 v17, v18

    .line 78
    move-object/from16 v18, v10

    move-object/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v18

    .line 79
    move-object/from16 v18, v16

    move-object/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    move-object/from16 v18, v16

    move-object/from16 v19, v17

    invoke-static/range {v18 .. v19}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 81
    move-object/from16 v18, v16

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    move-object/from16 v18, v16

    move-object/from16 v1, v18

    goto/16 :goto_0
.end method
