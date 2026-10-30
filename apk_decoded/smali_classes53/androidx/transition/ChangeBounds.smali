.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroidx/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "android:changeBounds:bounds"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "android:changeBounds:clip"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "android:changeBounds:parent"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "android:changeBounds:windowX"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "android:changeBounds:windowY"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroidx/transition/ChangeBounds$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/PointF;

    const-string v3, "boundsOrigin"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 87
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/PointF;

    const-string v3, "topLeft"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 100
    new-instance v0, Landroidx/transition/ChangeBounds$3;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 113
    new-instance v0, Landroidx/transition/ChangeBounds$4;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 130
    new-instance v0, Landroidx/transition/ChangeBounds$5;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/PointF;

    const-string v3, "topLeft"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 147
    new-instance v0, Landroidx/transition/ChangeBounds$6;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Landroid/graphics/PointF;

    const-string v3, "position"

    invoke-direct {v1, v2, v3}, Landroidx/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 168
    new-instance v0, Landroidx/transition/RectEvaluator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 164
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 165
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 166
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
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
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 165
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 166
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 178
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 179
    move-object v5, v3

    move-object v6, v2

    check-cast v6, Landroid/content/res/XmlResourceParser;

    const-string v7, "resizeClip"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v5

    move v4, v5

    .line 181
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/transition/ChangeBounds;->setResizeClip(Z)V

    .line 183
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 12

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v3

    .line 222
    move-object v3, v2

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    new-instance v5, Landroid/graphics/Rect;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v2

    .line 224
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 225
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:parent"

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 226
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v3, :cond_1

    .line 227
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 228
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowX"

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 229
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v3, :cond_2

    .line 232
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:clip"

    move-object v5, v2

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 235
    :cond_2
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x1

    move v3, v5

    .line 249
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v5, :cond_0

    .line 250
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v5

    move-object v4, v5

    .line 251
    move-object v5, v4

    if-nez v5, :cond_2

    .line 252
    move-object v5, v1

    move-object v6, v2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 257
    :cond_0
    :goto_1
    move v5, v3

    move v0, v5

    return v0

    .line 252
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 254
    :cond_2
    move-object v5, v2

    move-object v6, v4

    iget-object v6, v6, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_2
    move v3, v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 245
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 240
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 46
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
    .line 264
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v35, v4

    if-eqz v35, :cond_0

    move-object/from16 v35, v5

    if-nez v35, :cond_1

    .line 265
    :cond_0
    const/16 v35, 0x0

    move-object/from16 v2, v35

    .line 458
    :goto_0
    return-object v2

    .line 267
    :cond_1
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    move-object/from16 v6, v35

    .line 268
    move-object/from16 v35, v5

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    move-object/from16 v7, v35

    .line 269
    move-object/from16 v35, v6

    const-string v36, "android:changeBounds:parent"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/ViewGroup;

    move-object/from16 v8, v35

    .line 270
    move-object/from16 v35, v7

    const-string v36, "android:changeBounds:parent"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/ViewGroup;

    move-object/from16 v9, v35

    .line 271
    move-object/from16 v35, v8

    if-eqz v35, :cond_2

    move-object/from16 v35, v9

    if-nez v35, :cond_3

    .line 272
    :cond_2
    const/16 v35, 0x0

    move-object/from16 v2, v35

    goto :goto_0

    .line 274
    :cond_3
    move-object/from16 v35, v5

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v35, v0

    move-object/from16 v10, v35

    .line 275
    move-object/from16 v35, v2

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    invoke-direct/range {v35 .. v37}, Landroidx/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v35

    if-eqz v35, :cond_19

    .line 276
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    const-string v36, "android:changeBounds:bounds"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/graphics/Rect;

    move-object/from16 v11, v35

    .line 277
    move-object/from16 v35, v5

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    const-string v36, "android:changeBounds:bounds"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/graphics/Rect;

    move-object/from16 v12, v35

    .line 278
    move-object/from16 v35, v11

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v13, v35

    .line 279
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v14, v35

    .line 280
    move-object/from16 v35, v11

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v15, v35

    .line 281
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v16, v35

    .line 282
    move-object/from16 v35, v11

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move/from16 v17, v35

    .line 283
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move/from16 v18, v35

    .line 284
    move-object/from16 v35, v11

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    move/from16 v19, v35

    .line 285
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    move/from16 v20, v35

    .line 286
    move/from16 v35, v17

    move/from16 v36, v13

    sub-int v35, v35, v36

    move/from16 v21, v35

    .line 287
    move/from16 v35, v19

    move/from16 v36, v15

    sub-int v35, v35, v36

    move/from16 v22, v35

    .line 288
    move/from16 v35, v18

    move/from16 v36, v14

    sub-int v35, v35, v36

    move/from16 v23, v35

    .line 289
    move/from16 v35, v20

    move/from16 v36, v16

    sub-int v35, v35, v36

    move/from16 v24, v35

    .line 290
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    const-string v36, "android:changeBounds:clip"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/graphics/Rect;

    move-object/from16 v25, v35

    .line 291
    move-object/from16 v35, v5

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    const-string v36, "android:changeBounds:clip"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/graphics/Rect;

    move-object/from16 v26, v35

    .line 292
    const/16 v35, 0x0

    move/from16 v27, v35

    .line 293
    move/from16 v35, v21

    if-eqz v35, :cond_4

    move/from16 v35, v22

    if-nez v35, :cond_5

    :cond_4
    move/from16 v35, v23

    if-eqz v35, :cond_9

    move/from16 v35, v24

    if-eqz v35, :cond_9

    .line 294
    :cond_5
    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    move/from16 v35, v15

    move/from16 v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_7

    :cond_6
    add-int/lit8 v27, v27, 0x1

    .line 295
    :cond_7
    move/from16 v35, v17

    move/from16 v36, v18

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    move/from16 v35, v19

    move/from16 v36, v20

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_9

    :cond_8
    add-int/lit8 v27, v27, 0x1

    .line 297
    :cond_9
    move-object/from16 v35, v25

    if-eqz v35, :cond_a

    move-object/from16 v35, v25

    move-object/from16 v36, v26

    invoke-virtual/range {v35 .. v36}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    :cond_a
    move-object/from16 v35, v25

    if-nez v35, :cond_c

    move-object/from16 v35, v26

    if-eqz v35, :cond_c

    .line 299
    :cond_b
    add-int/lit8 v27, v27, 0x1

    .line 301
    :cond_c
    move/from16 v35, v27

    if-lez v35, :cond_18

    .line 303
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    move/from16 v35, v0

    if-nez v35, :cond_12

    .line 304
    move-object/from16 v35, v10

    move/from16 v36, v13

    move/from16 v37, v15

    move/from16 v38, v17

    move/from16 v39, v19

    invoke-static/range {v35 .. v39}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 306
    move/from16 v35, v27

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_f

    .line 307
    move/from16 v35, v21

    move/from16 v36, v23

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    move/from16 v35, v22

    move/from16 v36, v24

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    .line 308
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v35

    move/from16 v36, v13

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v15

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v38, v14

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v39, v16

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v35

    move-object/from16 v29, v35

    .line 310
    move-object/from16 v35, v10

    sget-object v36, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    move-object/from16 v37, v29

    invoke-static/range {v35 .. v37}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v35

    move-object/from16 v28, v35

    .line 391
    :goto_1
    move-object/from16 v35, v10

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    move-object/from16 v0, v35

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v35, v0

    if-eqz v35, :cond_d

    .line 392
    move-object/from16 v35, v10

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    check-cast v35, Landroid/view/ViewGroup;

    move-object/from16 v29, v35

    .line 393
    move-object/from16 v35, v29

    const/16 v36, 0x1

    invoke-static/range {v35 .. v36}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 394
    new-instance v35, Landroidx/transition/ChangeBounds$9;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    move-object/from16 v37, v2

    move-object/from16 v38, v29

    invoke-direct/range {v36 .. v38}, Landroidx/transition/ChangeBounds$9;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    move-object/from16 v30, v35

    .line 421
    move-object/from16 v35, v2

    move-object/from16 v36, v30

    invoke-virtual/range {v35 .. v36}, Landroidx/transition/ChangeBounds;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v35

    .line 423
    :cond_d
    move-object/from16 v35, v28

    move-object/from16 v2, v35

    goto/16 :goto_0

    .line 313
    :cond_e
    new-instance v35, Landroidx/transition/ChangeBounds$ViewBounds;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    move-object/from16 v37, v10

    invoke-direct/range {v36 .. v37}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    move-object/from16 v29, v35

    .line 314
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v35

    move/from16 v36, v13

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v15

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v38, v14

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v39, v16

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v35

    move-object/from16 v30, v35

    .line 316
    move-object/from16 v35, v29

    sget-object v36, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    move-object/from16 v37, v30

    .line 317
    invoke-static/range {v35 .. v37}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v35

    move-object/from16 v31, v35

    .line 319
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v35

    move/from16 v36, v17

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v19

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v38, v18

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v39, v20

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v35

    move-object/from16 v32, v35

    .line 321
    move-object/from16 v35, v29

    sget-object v36, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    move-object/from16 v37, v32

    invoke-static/range {v35 .. v37}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v35

    move-object/from16 v33, v35

    .line 323
    new-instance v35, Landroid/animation/AnimatorSet;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    invoke-direct/range {v36 .. v36}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v34, v35

    .line 324
    move-object/from16 v35, v34

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v36, v0

    move-object/from16 v45, v36

    move-object/from16 v36, v45

    move-object/from16 v37, v45

    const/16 v38, 0x0

    move-object/from16 v39, v31

    aput-object v39, v37, v38

    move-object/from16 v45, v36

    move-object/from16 v36, v45

    move-object/from16 v37, v45

    const/16 v38, 0x1

    move-object/from16 v39, v33

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v36}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 325
    move-object/from16 v35, v34

    move-object/from16 v28, v35

    .line 326
    move-object/from16 v35, v34

    new-instance v36, Landroidx/transition/ChangeBounds$7;

    move-object/from16 v45, v36

    move-object/from16 v36, v45

    move-object/from16 v37, v45

    move-object/from16 v38, v2

    move-object/from16 v39, v29

    invoke-direct/range {v37 .. v39}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual/range {v35 .. v36}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    goto/16 :goto_1

    .line 333
    :cond_f
    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    move/from16 v35, v15

    move/from16 v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_11

    .line 334
    :cond_10
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v35

    move/from16 v36, v13

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v15

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v38, v14

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v39, v16

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v35

    move-object/from16 v29, v35

    .line 336
    move-object/from16 v35, v10

    sget-object v36, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v37, v29

    invoke-static/range {v35 .. v37}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v35

    move-object/from16 v28, v35

    .line 338
    goto/16 :goto_1

    .line 339
    :cond_11
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v35

    move/from16 v36, v17

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v19

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v38, v18

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v39, v20

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v35

    move-object/from16 v29, v35

    .line 341
    move-object/from16 v35, v10

    sget-object v36, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v37, v29

    invoke-static/range {v35 .. v37}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v35

    move-object/from16 v28, v35

    .line 343
    goto/16 :goto_1

    .line 345
    :cond_12
    move/from16 v35, v21

    move/from16 v36, v23

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v29, v35

    .line 346
    move/from16 v35, v22

    move/from16 v36, v24

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v30, v35

    .line 348
    move-object/from16 v35, v10

    move/from16 v36, v13

    move/from16 v37, v15

    move/from16 v38, v13

    move/from16 v39, v29

    add-int v38, v38, v39

    move/from16 v39, v15

    move/from16 v40, v30

    add-int v39, v39, v40

    invoke-static/range {v35 .. v39}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 351
    const/16 v35, 0x0

    move-object/from16 v31, v35

    .line 352
    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    move/from16 v35, v15

    move/from16 v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_14

    .line 353
    :cond_13
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v35

    move/from16 v36, v13

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v15

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v38, v14

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v39, v16

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v35

    move-object/from16 v32, v35

    .line 355
    move-object/from16 v35, v10

    sget-object v36, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    move-object/from16 v37, v32

    invoke-static/range {v35 .. v37}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v35

    move-object/from16 v31, v35

    .line 358
    :cond_14
    move-object/from16 v35, v26

    move-object/from16 v32, v35

    .line 359
    move-object/from16 v35, v25

    if-nez v35, :cond_15

    .line 360
    new-instance v35, Landroid/graphics/Rect;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v39, v21

    move/from16 v40, v22

    invoke-direct/range {v36 .. v40}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v25, v35

    .line 362
    :cond_15
    move-object/from16 v35, v26

    if-nez v35, :cond_16

    .line 363
    new-instance v35, Landroid/graphics/Rect;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v39, v23

    move/from16 v40, v24

    invoke-direct/range {v36 .. v40}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v26, v35

    .line 365
    :cond_16
    const/16 v35, 0x0

    move-object/from16 v33, v35

    .line 366
    move-object/from16 v35, v25

    move-object/from16 v36, v26

    invoke-virtual/range {v35 .. v36}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_17

    .line 367
    move-object/from16 v35, v10

    move-object/from16 v36, v25

    invoke-static/range {v35 .. v36}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 368
    move-object/from16 v35, v10

    const-string v36, "clipBounds"

    sget-object v37, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v45, v38

    move-object/from16 v38, v45

    move-object/from16 v39, v45

    const/16 v40, 0x0

    move-object/from16 v41, v25

    aput-object v41, v39, v40

    move-object/from16 v45, v38

    move-object/from16 v38, v45

    move-object/from16 v39, v45

    const/16 v40, 0x1

    move-object/from16 v41, v26

    aput-object v41, v39, v40

    invoke-static/range {v35 .. v38}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v35

    move-object/from16 v33, v35

    .line 370
    move-object/from16 v35, v33

    new-instance v36, Landroidx/transition/ChangeBounds$8;

    move-object/from16 v45, v36

    move-object/from16 v36, v45

    move-object/from16 v37, v45

    move-object/from16 v38, v2

    move-object/from16 v39, v10

    move-object/from16 v40, v32

    move/from16 v41, v14

    move/from16 v42, v16

    move/from16 v43, v18

    move/from16 v44, v20

    invoke-direct/range {v37 .. v44}, Landroidx/transition/ChangeBounds$8;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual/range {v35 .. v36}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 388
    :cond_17
    move-object/from16 v35, v31

    move-object/from16 v36, v33

    invoke-static/range {v35 .. v36}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v35

    move-object/from16 v28, v35

    goto/16 :goto_1

    .line 458
    :cond_18
    const/16 v35, 0x0

    move-object/from16 v2, v35

    goto/16 :goto_0

    .line 426
    :cond_19
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    const-string v36, "android:changeBounds:windowX"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move/from16 v11, v35

    .line 427
    move-object/from16 v35, v4

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    const-string v36, "android:changeBounds:windowY"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move/from16 v12, v35

    .line 428
    move-object/from16 v35, v5

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    const-string v36, "android:changeBounds:windowX"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move/from16 v13, v35

    .line 429
    move-object/from16 v35, v5

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v35, v0

    const-string v36, "android:changeBounds:windowY"

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move/from16 v14, v35

    .line 431
    move/from16 v35, v11

    move/from16 v36, v13

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    move/from16 v35, v12

    move/from16 v36, v14

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_18

    .line 432
    :cond_1a
    move-object/from16 v35, v3

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 433
    move-object/from16 v35, v10

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getWidth()I

    move-result v35

    move-object/from16 v36, v10

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v36

    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v35 .. v37}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v35

    move-object/from16 v15, v35

    .line 435
    new-instance v35, Landroid/graphics/Canvas;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    move-object/from16 v37, v15

    invoke-direct/range {v36 .. v37}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v35

    .line 436
    move-object/from16 v35, v10

    move-object/from16 v36, v16

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 437
    new-instance v35, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v45, v35

    move-object/from16 v35, v45

    move-object/from16 v36, v45

    move-object/from16 v37, v15

    invoke-direct/range {v36 .. v37}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v17, v35

    .line 439
    move-object/from16 v35, v10

    invoke-static/range {v35 .. v35}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v35

    move/from16 v18, v35

    .line 440
    move-object/from16 v35, v10

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 441
    move-object/from16 v35, v3

    invoke-static/range {v35 .. v35}, Landroidx/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;

    move-result-object v35

    move-object/from16 v36, v17

    invoke-interface/range {v35 .. v36}, Landroidx/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 442
    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v35

    move/from16 v36, v11

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v37, v37, v38

    sub-int v36, v36, v37

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v37, v12

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v38, v13

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget v39, v39, v40

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v39, v14

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget-object v0, v0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget v40, v40, v41

    sub-int v39, v39, v40

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v35 .. v39}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v35

    move-object/from16 v19, v35

    .line 445
    sget-object v35, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    move-object/from16 v36, v19

    invoke-static/range {v35 .. v36}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v35

    move-object/from16 v20, v35

    .line 447
    move-object/from16 v35, v17

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v36, v0

    move-object/from16 v45, v36

    move-object/from16 v36, v45

    move-object/from16 v37, v45

    const/16 v38, 0x0

    move-object/from16 v39, v20

    aput-object v39, v37, v38

    invoke-static/range {v35 .. v36}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v35

    move-object/from16 v21, v35

    .line 448
    move-object/from16 v35, v21

    new-instance v36, Landroidx/transition/ChangeBounds$10;

    move-object/from16 v45, v36

    move-object/from16 v36, v45

    move-object/from16 v37, v45

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v17

    move-object/from16 v41, v10

    move/from16 v42, v18

    invoke-direct/range {v37 .. v42}, Landroidx/transition/ChangeBounds$10;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual/range {v35 .. v36}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 455
    move-object/from16 v35, v21

    move-object/from16 v2, v35

    goto/16 :goto_0
.end method

.method public getResizeClip()Z
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    move v0, v1

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    sget-object v1, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public setResizeClip(Z)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 206
    return-void
.end method
