.class public Landroidx/transition/Slide;
.super Landroidx/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Slide$CalculateSlideVertical;,
        Landroidx/transition/Slide$CalculateSlideHorizontal;,
        Landroidx/transition/Slide$CalculateSlide;,
        Landroidx/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

.field private mSlideEdge:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 57
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 94
    new-instance v0, Landroidx/transition/Slide$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$1;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

    .line 101
    new-instance v0, Landroidx/transition/Slide$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$2;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

    .line 116
    new-instance v0, Landroidx/transition/Slide$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$3;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

    .line 123
    new-instance v0, Landroidx/transition/Slide$4;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$4;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

    .line 130
    new-instance v0, Landroidx/transition/Slide$5;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$5;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

    .line 145
    new-instance v0, Landroidx/transition/Slide$6;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/transition/Slide$6;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Visibility;-><init>()V

    .line 59
    move-object v1, v0

    sget-object v2, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    iput-object v2, v1, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 60
    move-object v1, v0

    const/16 v2, 0x50

    iput v2, v1, Landroidx/transition/Slide;->mSlideEdge:I

    .line 157
    move-object v1, v0

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroidx/transition/Slide;->setSlideEdge(I)V

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/Visibility;-><init>()V

    .line 59
    move-object v2, v0

    sget-object v3, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    iput-object v3, v2, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 60
    move-object v2, v0

    const/16 v3, 0x50

    iput v3, v2, Landroidx/transition/Slide;->mSlideEdge:I

    .line 164
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/Slide;->setSlideEdge(I)V

    .line 165
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
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    move-object v5, v0

    sget-object v6, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    iput-object v6, v5, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 60
    move-object v5, v0

    const/16 v6, 0x50

    iput v6, v5, Landroidx/transition/Slide;->mSlideEdge:I

    .line 171
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/transition/Styleable;->SLIDE:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 172
    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "slideEdge"

    const/4 v8, 0x0

    const/16 v9, 0x50

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 174
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/transition/Slide;->setSlideEdge(I)V

    .line 177
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 7

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v4

    .line 181
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 182
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 183
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:slide:screenPosition"

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 184
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
    .line 194
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 195
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Slide;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 196
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 189
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Slide;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 190
    return-void
.end method

.method public getSlideEdge()I
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/transition/Slide;->mSlideEdge:I

    move v0, v1

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 20
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v10, v4

    if-nez v10, :cond_0

    .line 253
    const/4 v10, 0x0

    move-object v0, v10

    .line 260
    :goto_0
    return-object v0

    .line 255
    :cond_0
    move-object v10, v4

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:slide:screenPosition"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    move-object v5, v10

    .line 256
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v10

    move v6, v10

    .line 257
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    move v7, v10

    .line 258
    move-object v10, v0

    iget-object v10, v10, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Landroidx/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v10

    move v8, v10

    .line 259
    move-object v10, v0

    iget-object v10, v10, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Landroidx/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v10

    move v9, v10

    .line 260
    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object v13, v5

    const/4 v14, 0x1

    aget v13, v13, v14

    move v14, v8

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v7

    sget-object v18, Landroidx/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v19, v0

    .line 261
    invoke-static/range {v10 .. v19}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    move-result-object v10

    .line 260
    move-object v0, v10

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 20
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v10, v3

    if-nez v10, :cond_0

    .line 270
    const/4 v10, 0x0

    move-object v0, v10

    .line 277
    :goto_0
    return-object v0

    .line 272
    :cond_0
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v11, "android:slide:screenPosition"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    move-object v5, v10

    .line 273
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v10

    move v6, v10

    .line 274
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    move v7, v10

    .line 275
    move-object v10, v0

    iget-object v10, v10, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Landroidx/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v10

    move v8, v10

    .line 276
    move-object v10, v0

    iget-object v10, v10, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Landroidx/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v10

    move v9, v10

    .line 277
    move-object v10, v2

    move-object v11, v3

    move-object v12, v5

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object v13, v5

    const/4 v14, 0x1

    aget v13, v13, v14

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    sget-object v18, Landroidx/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v19, v0

    .line 278
    invoke-static/range {v10 .. v19}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    move-result-object v10

    .line 277
    move-object v0, v10

    goto :goto_0
.end method

.method public setSlideEdge(I)V
    .locals 7

    .prologue
    .line 207
    move-object v0, p0

    move v1, p1

    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 227
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid slide direction"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :sswitch_0
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateLeft:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 229
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/transition/Slide;->mSlideEdge:I

    .line 230
    new-instance v3, Landroidx/transition/SidePropagation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/transition/SidePropagation;-><init>()V

    move-object v2, v3

    .line 231
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/SidePropagation;->setSide(I)V

    .line 232
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/transition/Slide;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 233
    return-void

    .line 212
    :sswitch_1
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateTop:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 213
    goto :goto_0

    .line 215
    :sswitch_2
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateRight:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 216
    goto :goto_0

    .line 218
    :sswitch_3
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 219
    goto :goto_0

    .line 221
    :sswitch_4
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateStart:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 222
    goto :goto_0

    .line 224
    :sswitch_5
    move-object v3, v0

    sget-object v4, Landroidx/transition/Slide;->sCalculateEnd:Landroidx/transition/Slide$CalculateSlide;

    iput-object v4, v3, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlide;

    .line 225
    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method
