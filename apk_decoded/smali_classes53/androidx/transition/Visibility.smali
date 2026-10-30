.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$VisibilityInfo;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "android:visibility:visibility"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "android:visibility:parent"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 98
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Landroidx/transition/Visibility;->mMode:I

    .line 101
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
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Landroidx/transition/Visibility;->mMode:I

    .line 107
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 109
    move-object v5, v3

    move-object v6, v2

    check-cast v6, Landroid/content/res/XmlResourceParser;

    const-string v7, "transitionVisibilityMode"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 112
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    move v5, v4

    if-eqz v5, :cond_0

    .line 114
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/transition/Visibility;->setMode(I)V

    .line 116
    :cond_0
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    move v2, v4

    .line 151
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    move v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 152
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:parent"

    move-object v6, v1

    iget-object v6, v6, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 153
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 154
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:screenLocation"

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 8

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroidx/transition/Visibility$VisibilityInfo;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    move-object v3, v4

    .line 196
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 197
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 198
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:visibility:visibility"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 200
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:visibility:parent"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 205
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    move-object v4, v3

    move-object v5, v2

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:visibility:visibility"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 207
    move-object v4, v3

    move-object v5, v2

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:visibility:parent"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 212
    :goto_1
    move-object v4, v1

    if-eqz v4, :cond_7

    move-object v4, v2

    if-eqz v4, :cond_7

    .line 213
    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    move-object v5, v3

    iget v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v4, v5, :cond_2

    move-object v4, v3

    iget-object v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    move-object v5, v3

    iget-object v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v4, v5, :cond_2

    .line 215
    move-object v4, v3

    move-object v0, v4

    .line 243
    :goto_2
    return-object v0

    .line 202
    :cond_0
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 203
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 209
    :cond_1
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 210
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 217
    :cond_2
    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    move-object v5, v3

    iget v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v4, v5, :cond_5

    .line 218
    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v4, :cond_4

    .line 219
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 220
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 243
    :cond_3
    :goto_3
    move-object v4, v3

    move-object v0, v4

    goto :goto_2

    .line 221
    :cond_4
    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v4, :cond_3

    .line 222
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 223
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 227
    :cond_5
    move-object v4, v3

    iget-object v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v4, :cond_6

    .line 228
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 229
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 230
    :cond_6
    move-object v4, v3

    iget-object v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v4, :cond_3

    .line 231
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 232
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 236
    :cond_7
    move-object v4, v1

    if-nez v4, :cond_8

    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v4, :cond_8

    .line 237
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 238
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 239
    :cond_8
    move-object v4, v2

    if-nez v4, :cond_3

    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v4, :cond_3

    .line 240
    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 241
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 166
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 161
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
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
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v5

    move-object v4, v5

    .line 251
    move-object v5, v4

    iget-boolean v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v5, :cond_2

    move-object v5, v4

    iget-object v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 253
    :cond_0
    move-object v5, v4

    iget-boolean v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v5, :cond_1

    .line 254
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    iget v8, v8, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    move-object v9, v3

    move-object v10, v4

    iget v10, v10, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    invoke-virtual/range {v5 .. v10}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v5

    move-object v0, v5

    .line 262
    :goto_0
    return-object v0

    .line 257
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    iget v8, v8, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    move-object v9, v3

    move-object v10, v4

    iget v10, v10, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    invoke-virtual/range {v5 .. v10}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 262
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/transition/Visibility;->mMode:I

    move v0, v1

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    sget-object v1, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 7
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_0

    .line 513
    const/4 v4, 0x0

    move v0, v4

    .line 523
    :goto_0
    return v0

    .line 515
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    .line 516
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:visibility:visibility"

    .line 517
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 520
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 522
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v4

    move-object v3, v4

    .line 523
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v4, :cond_3

    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v4, :cond_2

    move-object v4, v3

    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 185
    const/4 v4, 0x0

    move v0, v4

    .line 190
    :goto_0
    return v0

    .line 187
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, v4

    .line 188
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 190
    move v4, v2

    if-nez v4, :cond_1

    move-object v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, v5

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 15
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v0

    iget v10, v10, Landroidx/transition/Visibility;->mMode:I

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move-object v10, v4

    if-nez v10, :cond_1

    .line 285
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 298
    :goto_0
    return-object v0

    .line 287
    :cond_1
    move-object v10, v2

    if-nez v10, :cond_2

    .line 288
    move-object v10, v4

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    move-object v6, v10

    .line 289
    move-object v10, v0

    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v10

    move-object v7, v10

    .line 291
    move-object v10, v0

    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v10

    move-object v8, v10

    .line 292
    move-object v10, v0

    move-object v11, v7

    move-object v12, v8

    .line 293
    invoke-direct {v10, v11, v12}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v10

    move-object v9, v10

    .line 294
    move-object v10, v9

    iget-boolean v10, v10, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v10, :cond_2

    .line 295
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 298
    :cond_2
    move-object v10, v0

    move-object v11, v1

    move-object v12, v4

    iget-object v12, v12, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v13, v2

    move-object v14, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v10

    move-object v0, v10

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 506
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, v5

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 28
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 343
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/transition/Visibility;->mMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    and-int/lit8 v20, v20, 0x2

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 344
    const/16 v20, 0x0

    move-object/from16 v2, v20

    .line 484
    :goto_0
    return-object v2

    .line 347
    :cond_0
    move-object/from16 v20, v4

    if-nez v20, :cond_1

    .line 349
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto :goto_0

    .line 352
    :cond_1
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 353
    move-object/from16 v20, v6

    if-eqz v20, :cond_5

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v20, v0

    :goto_1
    move-object/from16 v9, v20

    .line 354
    const/16 v20, 0x0

    move-object/from16 v10, v20

    .line 355
    const/16 v20, 0x0

    move-object/from16 v11, v20

    .line 356
    const/16 v20, 0x0

    move/from16 v12, v20

    .line 358
    move-object/from16 v20, v8

    sget v21, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    move-object/from16 v13, v20

    .line 359
    move-object/from16 v20, v13

    if-eqz v20, :cond_6

    .line 363
    move-object/from16 v20, v13

    move-object/from16 v10, v20

    .line 364
    const/16 v20, 0x1

    move/from16 v12, v20

    .line 422
    :cond_2
    :goto_2
    move-object/from16 v20, v10

    if-eqz v20, :cond_f

    .line 423
    move/from16 v20, v12

    if-nez v20, :cond_3

    .line 424
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v20, v0

    const-string v21, "android:visibility:screenLocation"

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [I

    move-object/from16 v14, v20

    .line 425
    move-object/from16 v20, v14

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v15, v20

    .line 426
    move-object/from16 v20, v14

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v16, v20

    .line 427
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v17, v20

    .line 428
    move-object/from16 v20, v3

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 429
    move-object/from16 v20, v10

    move/from16 v21, v15

    move-object/from16 v22, v17

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-int v21, v21, v22

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 430
    move-object/from16 v20, v10

    move/from16 v21, v16

    move-object/from16 v22, v17

    const/16 v23, 0x1

    aget v22, v22, v23

    sub-int v21, v21, v22

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 431
    move-object/from16 v20, v3

    invoke-static/range {v20 .. v20}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-interface/range {v20 .. v21}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 433
    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v10

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    invoke-virtual/range {v20 .. v24}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v14, v20

    .line 434
    move/from16 v20, v12

    if-nez v20, :cond_4

    .line 435
    move-object/from16 v20, v14

    if-nez v20, :cond_e

    .line 436
    move-object/from16 v20, v3

    invoke-static/range {v20 .. v20}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-interface/range {v20 .. v21}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    .line 466
    :cond_4
    :goto_3
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 353
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 366
    :cond_6
    const/16 v20, 0x0

    move/from16 v14, v20

    .line 368
    move-object/from16 v20, v9

    if-eqz v20, :cond_7

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_9

    .line 369
    :cond_7
    move-object/from16 v20, v9

    if-eqz v20, :cond_8

    .line 371
    move-object/from16 v20, v9

    move-object/from16 v10, v20

    .line 389
    :goto_4
    move/from16 v20, v14

    if-eqz v20, :cond_2

    .line 393
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_c

    .line 395
    move-object/from16 v20, v8

    move-object/from16 v10, v20

    goto/16 :goto_2

    .line 373
    :cond_8
    const/16 v20, 0x1

    move/from16 v14, v20

    goto :goto_4

    .line 377
    :cond_9
    move/from16 v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 378
    move-object/from16 v20, v9

    move-object/from16 v11, v20

    goto :goto_4

    .line 381
    :cond_a
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 382
    move-object/from16 v20, v9

    move-object/from16 v11, v20

    goto :goto_4

    .line 384
    :cond_b
    const/16 v20, 0x1

    move/from16 v14, v20

    goto :goto_4

    .line 396
    :cond_c
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/View;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 397
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    move-object/from16 v15, v20

    .line 398
    move-object/from16 v20, v2

    move-object/from16 v21, v15

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v20

    move-object/from16 v16, v20

    .line 399
    move-object/from16 v20, v2

    move-object/from16 v21, v15

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v20

    move-object/from16 v17, v20

    .line 401
    move-object/from16 v20, v2

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    .line 402
    invoke-direct/range {v20 .. v22}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v20

    move-object/from16 v18, v20

    .line 403
    move-object/from16 v20, v18

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 404
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v15

    invoke-static/range {v20 .. v22}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v10, v20

    goto/16 :goto_2

    .line 407
    :cond_d
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getId()I

    move-result v20

    move/from16 v19, v20

    .line 408
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    if-nez v20, :cond_2

    move/from16 v20, v19

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    move-object/from16 v20, v3

    move/from16 v21, v19

    .line 409
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 413
    move-object/from16 v20, v8

    move-object/from16 v10, v20

    goto/16 :goto_2

    .line 438
    :cond_e
    move-object/from16 v20, v8

    sget v21, Landroidx/transition/R$id;->save_overlay_view:I

    move-object/from16 v22, v10

    invoke-virtual/range {v20 .. v22}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 439
    move-object/from16 v20, v10

    move-object/from16 v15, v20

    .line 440
    move-object/from16 v20, v3

    move-object/from16 v16, v20

    .line 441
    move-object/from16 v20, v2

    new-instance v21, Landroidx/transition/Visibility$1;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v23, v2

    move-object/from16 v24, v16

    move-object/from16 v25, v15

    move-object/from16 v26, v8

    invoke-direct/range {v22 .. v26}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual/range {v20 .. v21}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v20

    goto/16 :goto_3

    .line 469
    :cond_f
    move-object/from16 v20, v11

    if-eqz v20, :cond_11

    .line 470
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    move/from16 v14, v20

    .line 471
    move-object/from16 v20, v11

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 472
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v11

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    invoke-virtual/range {v20 .. v24}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v15, v20

    .line 473
    move-object/from16 v20, v15

    if-eqz v20, :cond_10

    .line 474
    new-instance v20, Landroidx/transition/Visibility$DisappearListener;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v22, v11

    move/from16 v23, v7

    const/16 v24, 0x1

    invoke-direct/range {v21 .. v24}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    move-object/from16 v16, v20

    .line 476
    move-object/from16 v20, v15

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    move-object/from16 v20, v15

    move-object/from16 v21, v16

    invoke-static/range {v20 .. v21}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 478
    move-object/from16 v20, v2

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v20

    .line 482
    :goto_5
    move-object/from16 v20, v15

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 480
    :cond_10
    move-object/from16 v20, v11

    move/from16 v21, v14

    invoke-static/range {v20 .. v21}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    goto :goto_5

    .line 484
    :cond_11
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto/16 :goto_0
.end method

.method public setMode(I)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x4

    and-int/lit8 v2, v2, -0x4

    if-eqz v2, :cond_0

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/transition/Visibility;->mMode:I

    .line 130
    return-void
.end method
