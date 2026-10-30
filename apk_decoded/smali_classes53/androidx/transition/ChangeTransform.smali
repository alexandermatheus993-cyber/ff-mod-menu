.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$GhostListener;,
        Landroidx/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "android:changeTransform:matrix"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "android:changeTransform:transforms"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "android:changeTransform:parentMatrix"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 70
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, [F

    const-string v3, "nonTranslations"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 86
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/PointF;

    const-string v3, "translations"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 104
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 106
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 107
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
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
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 106
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 107
    move-object v4, v0

    new-instance v5, Landroid/graphics/Matrix;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v4, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 116
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 117
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "reparentWithOverlay"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 119
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "reparent"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 121
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 12

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v7

    .line 200
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 224
    :goto_0
    return-void

    .line 203
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:parent"

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 204
    new-instance v7, Landroidx/transition/ChangeTransform$Transforms;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    invoke-direct {v8, v9}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    move-object v3, v7

    .line 205
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:transforms"

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 206
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v4, v7

    .line 207
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 208
    :cond_1
    const/4 v7, 0x0

    move-object v4, v7

    .line 212
    :goto_1
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:matrix"

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 213
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v7, :cond_2

    .line 214
    new-instance v7, Landroid/graphics/Matrix;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v5, v7

    .line 215
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v6, v7

    .line 216
    move-object v7, v6

    move-object v8, v5

    invoke-static {v7, v8}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 217
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v7

    .line 218
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:parentMatrix"

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 219
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:intermediateMatrix"

    move-object v9, v2

    sget v10, Landroidx/transition/R$id;->transition_transform:I

    .line 220
    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    .line 219
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 221
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:intermediateParentMatrix"

    move-object v9, v2

    sget v10, Landroidx/transition/R$id;->parent_matrix:I

    .line 222
    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    .line 221
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 224
    :cond_2
    goto/16 :goto_0

    .line 210
    :cond_3
    new-instance v7, Landroid/graphics/Matrix;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-direct {v8, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v4, v7

    goto :goto_1
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 15

    .prologue
    .line 392
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v4, v10

    .line 394
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:parentMatrix"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    move-object v5, v10

    .line 395
    new-instance v10, Landroid/graphics/Matrix;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-direct {v11, v12}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v6, v10

    .line 396
    move-object v10, v1

    move-object v11, v6

    invoke-static {v10, v11}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 398
    move-object v10, v4

    move-object v11, v1

    move-object v12, v6

    invoke-static {v10, v11, v12}, Landroidx/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;

    move-result-object v10

    move-object v7, v10

    .line 399
    move-object v10, v7

    if-nez v10, :cond_0

    .line 422
    :goto_0
    return-void

    .line 403
    :cond_0
    move-object v10, v7

    move-object v11, v2

    iget-object v11, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v12, "android:changeTransform:parent"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object v12, v2

    iget-object v12, v12, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v10, v11, v12}, Landroidx/transition/GhostView;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 406
    move-object v10, v0

    move-object v8, v10

    .line 407
    :goto_1
    move-object v10, v8

    iget-object v10, v10, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v10, :cond_1

    .line 408
    move-object v10, v8

    iget-object v10, v10, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    move-object v8, v10

    goto :goto_1

    .line 411
    :cond_1
    new-instance v10, Landroidx/transition/ChangeTransform$GhostListener;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostView;)V

    move-object v9, v10

    .line 412
    move-object v10, v8

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v10

    .line 416
    sget-boolean v10, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz v10, :cond_3

    .line 417
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v11, v3

    iget-object v11, v11, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v10, v11, :cond_2

    .line 418
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 420
    :cond_2
    move-object v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 422
    :cond_3
    goto :goto_0
.end method

.method private createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 27

    .prologue
    .line 290
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "android:changeTransform:matrix"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Matrix;

    move-object/from16 v5, v18

    .line 291
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "android:changeTransform:matrix"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Matrix;

    move-object/from16 v6, v18

    .line 293
    move-object/from16 v18, v5

    if-nez v18, :cond_0

    .line 294
    sget-object v18, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object/from16 v5, v18

    .line 297
    :cond_0
    move-object/from16 v18, v6

    if-nez v18, :cond_1

    .line 298
    sget-object v18, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    move-object/from16 v6, v18

    .line 301
    :cond_1
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 302
    const/16 v18, 0x0

    move-object/from16 v1, v18

    .line 374
    :goto_0
    return-object v1

    .line 305
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "android:changeTransform:transforms"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/transition/ChangeTransform$Transforms;

    move-object/from16 v7, v18

    .line 308
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v8, v18

    .line 309
    move-object/from16 v18, v8

    invoke-static/range {v18 .. v18}, Landroidx/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 311
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 312
    move-object/from16 v18, v5

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->getValues([F)V

    .line 313
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 314
    move-object/from16 v18, v6

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->getValues([F)V

    .line 315
    new-instance v18, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v21}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    move-object/from16 v11, v18

    .line 318
    sget-object v18, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v19, Landroidx/transition/FloatArrayEvaluator;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [[F

    move-object/from16 v20, v0

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const/16 v22, 0x0

    move-object/from16 v23, v9

    aput-object v23, v21, v22

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const/16 v22, 0x1

    move-object/from16 v23, v10

    aput-object v23, v21, v22

    invoke-static/range {v18 .. v20}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    move-object/from16 v12, v18

    .line 321
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/transition/ChangeTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v18

    move-object/from16 v19, v9

    const/16 v20, 0x2

    aget v19, v19, v20

    move-object/from16 v20, v9

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v21, v10

    const/16 v22, 0x2

    aget v21, v21, v22

    move-object/from16 v22, v10

    const/16 v23, 0x5

    aget v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v18

    move-object/from16 v13, v18

    .line 324
    sget-object v18, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    move-object/from16 v19, v13

    invoke-static/range {v18 .. v19}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    move-object/from16 v14, v18

    .line 326
    move-object/from16 v18, v11

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x0

    move-object/from16 v22, v12

    aput-object v22, v20, v21

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x1

    move-object/from16 v22, v14

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    move-object/from16 v15, v18

    .line 329
    move-object/from16 v18, v6

    move-object/from16 v16, v18

    .line 331
    new-instance v18, Landroidx/transition/ChangeTransform$3;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v1

    move/from16 v21, v4

    move-object/from16 v22, v16

    move-object/from16 v23, v8

    move-object/from16 v24, v7

    move-object/from16 v25, v11

    invoke-direct/range {v19 .. v25}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    move-object/from16 v17, v18

    .line 372
    move-object/from16 v18, v15

    move-object/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 373
    move-object/from16 v18, v15

    move-object/from16 v19, v17

    invoke-static/range {v18 .. v19}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 374
    move-object/from16 v18, v15

    move-object/from16 v1, v18

    goto/16 :goto_0
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 8

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    .line 379
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 380
    :cond_0
    move-object v5, v1

    move-object v6, v2

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 387
    :cond_1
    :goto_1
    move v5, v3

    move v0, v5

    return v0

    .line 380
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 382
    :cond_3
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v5

    move-object v4, v5

    .line 383
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 384
    move-object v5, v2

    move-object v6, v4

    iget-object v6, v6, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_2
    move v3, v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static setIdentityTransforms(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 445
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 446
    return-void
.end method

.method private setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 11

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:parentMatrix"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    move-object v3, v7

    .line 426
    move-object v7, v2

    iget-object v7, v7, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v8, Landroidx/transition/R$id;->parent_matrix:I

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 428
    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    move-object v4, v7

    .line 429
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 430
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 432
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:matrix"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    move-object v5, v7

    .line 433
    move-object v7, v5

    if-nez v7, :cond_0

    .line 434
    new-instance v7, Landroid/graphics/Matrix;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v5, v7

    .line 435
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:matrix"

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 438
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeTransform:parentMatrix"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    move-object v6, v7

    .line 439
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 440
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v7

    .line 441
    return-void
.end method

.method static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 11

    .prologue
    .line 452
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 453
    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 454
    move-object v9, v0

    move v10, v3

    invoke-static {v9, v10}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 455
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    .line 456
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    .line 457
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotationX(F)V

    .line 458
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotationY(F)V

    .line 459
    move-object v9, v0

    move v10, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotation(F)V

    .line 460
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 241
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 229
    sget-boolean v2, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v2, :cond_0

    .line 233
    move-object v2, v1

    iget-object v2, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 236
    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 14
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
    .line 248
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v10, v2

    if-eqz v10, :cond_0

    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:parent"

    .line 249
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:parent"

    .line 250
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 251
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 285
    :goto_0
    return-object v0

    .line 254
    :cond_1
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:parent"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object v4, v10

    .line 255
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:parent"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object v5, v10

    .line 256
    move-object v10, v0

    iget-boolean v10, v10, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v10, :cond_6

    move-object v10, v0

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    move v6, v10

    .line 258
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:intermediateMatrix"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    move-object v7, v10

    .line 259
    move-object v10, v7

    if-eqz v10, :cond_2

    .line 260
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:matrix"

    move-object v12, v7

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 263
    :cond_2
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:intermediateParentMatrix"

    .line 264
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    move-object v8, v10

    .line 265
    move-object v10, v8

    if-eqz v10, :cond_3

    .line 266
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:changeTransform:parentMatrix"

    move-object v12, v8

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 270
    :cond_3
    move v10, v6

    if-eqz v10, :cond_4

    .line 271
    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeTransform;->setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    .line 275
    :cond_4
    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    move v13, v6

    invoke-direct {v10, v11, v12, v13}, Landroidx/transition/ChangeTransform;->createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object v9, v10

    .line 278
    move v10, v6

    if-eqz v10, :cond_7

    move-object v10, v9

    if-eqz v10, :cond_7

    move-object v10, v0

    iget-boolean v10, v10, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v10, :cond_7

    .line 279
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroidx/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    .line 285
    :cond_5
    :goto_2
    move-object v10, v9

    move-object v0, v10

    goto/16 :goto_0

    .line 256
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 280
    :cond_7
    sget-boolean v10, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v10, :cond_5

    .line 282
    move-object v10, v4

    move-object v11, v2

    iget-object v11, v11, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_2
.end method

.method public getReparent()Z
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/transition/ChangeTransform;->mReparent:Z

    move v0, v1

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    move v0, v1

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    sget-object v1, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 190
    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 165
    return-void
.end method
