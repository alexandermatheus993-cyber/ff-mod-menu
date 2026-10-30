.class public Landroidx/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final CONSTRUCTORS:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 46
    new-instance v0, Landroidx/collection/ArrayMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v1

    const/4 v10, 0x0

    const-string v11, "class"

    invoke-interface {v9, v10, v11}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 197
    move-object v9, v4

    if-nez v9, :cond_0

    .line 198
    new-instance v9, Landroid/view/InflateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tag must have a \'class\' attribute"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 202
    :cond_0
    :try_start_0
    sget-object v9, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :try_start_1
    sget-object v9, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Constructor;

    move-object v6, v9

    .line 204
    move-object v9, v6

    if-nez v9, :cond_1

    .line 206
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    move-object v10, v2

    .line 207
    invoke-virtual {v9, v10}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    move-object v7, v9

    .line 208
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 209
    move-object v9, v7

    sget-object v10, Landroidx/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object v6, v9

    .line 210
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 211
    sget-object v9, Landroidx/transition/TransitionInflater;->CONSTRUCTORS:Landroidx/collection/ArrayMap;

    move-object v10, v4

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 215
    :cond_1
    move-object v9, v6

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v5

    monitor-exit v10

    move-object v0, v9

    return-object v0

    .line 216
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 218
    new-instance v9, Landroid/view/InflateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not instantiate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v5

    invoke-direct {v10, v11, v12}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v9, 0x0

    move-object v4, v9

    .line 122
    move-object v9, v1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move v6, v9

    .line 124
    move-object v9, v3

    instance-of v9, v9, Landroidx/transition/TransitionSet;

    if-eqz v9, :cond_1

    .line 125
    move-object v9, v3

    check-cast v9, Landroidx/transition/TransitionSet;

    :goto_0
    move-object v7, v9

    .line 127
    :goto_1
    move-object v9, v1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v14, v9

    move v9, v14

    move v10, v14

    move v5, v10

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    move-object v9, v1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move v10, v6

    if-le v9, v10, :cond_18

    :cond_0
    move v9, v5

    const/4 v10, 0x1

    if-eq v9, v10, :cond_18

    .line 130
    move v9, v5

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 131
    goto :goto_1

    .line 125
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 134
    :cond_2
    move-object v9, v1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 135
    const-string v9, "fade"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 136
    new-instance v9, Landroidx/transition/Fade;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    .line 178
    :goto_2
    move-object v9, v4

    if-eqz v9, :cond_4

    .line 179
    move-object v9, v1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v9

    if-nez v9, :cond_3

    .line 180
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Landroidx/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;

    move-result-object v9

    .line 182
    :cond_3
    move-object v9, v7

    if-eqz v9, :cond_17

    .line 183
    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    .line 184
    const/4 v9, 0x0

    move-object v4, v9

    .line 189
    :cond_4
    goto :goto_1

    .line 137
    :cond_5
    const-string v9, "changeBounds"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 138
    new-instance v9, Landroidx/transition/ChangeBounds;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto :goto_2

    .line 139
    :cond_6
    const-string v9, "slide"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 140
    new-instance v9, Landroidx/transition/Slide;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto :goto_2

    .line 141
    :cond_7
    const-string v9, "explode"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 142
    new-instance v9, Landroidx/transition/Explode;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto :goto_2

    .line 143
    :cond_8
    const-string v9, "changeImageTransform"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 144
    new-instance v9, Landroidx/transition/ChangeImageTransform;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto :goto_2

    .line 145
    :cond_9
    const-string v9, "changeTransform"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 146
    new-instance v9, Landroidx/transition/ChangeTransform;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto/16 :goto_2

    .line 147
    :cond_a
    const-string v9, "changeClipBounds"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 148
    new-instance v9, Landroidx/transition/ChangeClipBounds;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto/16 :goto_2

    .line 149
    :cond_b
    const-string v9, "autoTransition"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 150
    new-instance v9, Landroidx/transition/AutoTransition;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto/16 :goto_2

    .line 151
    :cond_c
    const-string v9, "changeScroll"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 152
    new-instance v9, Landroidx/transition/ChangeScroll;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto/16 :goto_2

    .line 153
    :cond_d
    const-string v9, "transitionSet"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 154
    new-instance v9, Landroidx/transition/TransitionSet;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroidx/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v9

    goto/16 :goto_2

    .line 155
    :cond_e
    const-string v9, "transition"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 156
    move-object v9, v0

    move-object v10, v2

    const-class v11, Landroidx/transition/Transition;

    const-string v12, "transition"

    invoke-direct {v9, v10, v11, v12}, Landroidx/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/transition/Transition;

    move-object v4, v9

    goto/16 :goto_2

    .line 157
    :cond_f
    const-string v9, "targets"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 158
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroidx/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)V

    goto/16 :goto_2

    .line 159
    :cond_10
    const-string v9, "arcMotion"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 160
    move-object v9, v3

    if-nez v9, :cond_11

    .line 161
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string v11, "Invalid use of arcMotion element"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 163
    :cond_11
    move-object v9, v3

    new-instance v10, Landroidx/transition/ArcMotion;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Landroidx/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    goto/16 :goto_2

    .line 164
    :cond_12
    const-string v9, "pathMotion"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 165
    move-object v9, v3

    if-nez v9, :cond_13

    .line 166
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string v11, "Invalid use of pathMotion element"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 168
    :cond_13
    move-object v9, v3

    move-object v10, v0

    move-object v11, v2

    const-class v12, Landroidx/transition/PathMotion;

    const-string v13, "pathMotion"

    invoke-direct {v10, v11, v12, v13}, Landroidx/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/transition/PathMotion;

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    goto/16 :goto_2

    .line 170
    :cond_14
    const-string v9, "patternPathMotion"

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 171
    move-object v9, v3

    if-nez v9, :cond_15

    .line 172
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string v11, "Invalid use of patternPathMotion element"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 174
    :cond_15
    move-object v9, v3

    new-instance v10, Landroidx/transition/PatternPathMotion;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Landroidx/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    goto/16 :goto_2

    .line 176
    :cond_16
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown scene name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 185
    :cond_17
    move-object v9, v3

    if-eqz v9, :cond_4

    .line 186
    new-instance v9, Landroid/view/InflateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string v11, "Could not add transition to another transition."

    invoke-direct {v10, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 191
    :cond_18
    move-object v9, v4

    move-object v0, v9

    return-object v0
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroidx/transition/TransitionManager;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v1

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v5, v8

    .line 290
    const/4 v8, 0x0

    move-object v6, v8

    .line 292
    :goto_0
    move-object v8, v1

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v13, v8

    move v8, v13

    move v9, v13

    move v4, v9

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    move-object v8, v1

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v9, v5

    if-le v8, v9, :cond_4

    :cond_0
    move v8, v4

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    .line 295
    move v8, v4

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 296
    goto :goto_0

    .line 299
    :cond_1
    move-object v8, v1

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 300
    move-object v8, v7

    const-string v9, "transitionManager"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 301
    new-instance v8, Landroidx/transition/TransitionManager;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroidx/transition/TransitionManager;-><init>()V

    move-object v6, v8

    .line 307
    :goto_1
    goto :goto_0

    .line 302
    :cond_2
    move-object v8, v7

    const-string v9, "transition"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v6

    if-eqz v8, :cond_3

    .line 303
    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    move-object v11, v3

    move-object v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroidx/transition/TransitionManager;)V

    goto :goto_1

    .line 305
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown scene name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 308
    :cond_4
    move-object v8, v6

    move-object v0, v8

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroidx/transition/TransitionInflater;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    new-instance v1, Landroidx/transition/TransitionInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v12, v1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move v5, v12

    .line 232
    :goto_0
    move-object v12, v1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move/from16 v17, v12

    move/from16 v12, v17

    move/from16 v13, v17

    move v4, v13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    move-object v12, v1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move v13, v5

    if-le v12, v13, :cond_9

    :cond_0
    move v12, v4

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    .line 235
    move v12, v4

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    .line 236
    goto :goto_0

    .line 239
    :cond_1
    move-object v12, v1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 240
    move-object v12, v6

    const-string v13, "target"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 241
    move-object v12, v0

    iget-object v12, v12, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v13, v2

    sget-object v14, Landroidx/transition/Styleable;->TRANSITION_TARGET:[I

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    move-object v7, v12

    .line 242
    move-object v12, v7

    move-object v13, v1

    const-string v14, "targetId"

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move v8, v12

    .line 245
    move v12, v8

    if-eqz v12, :cond_2

    .line 246
    move-object v12, v3

    move v13, v8

    invoke-virtual {v12, v13}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    move-result-object v12

    .line 273
    :goto_1
    move-object v12, v7

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    goto :goto_0

    .line 247
    :cond_2
    move-object v12, v7

    move-object v13, v1

    const-string v14, "excludeId"

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move/from16 v17, v12

    move/from16 v12, v17

    move/from16 v13, v17

    move v8, v13

    if-eqz v12, :cond_3

    .line 249
    move-object v12, v3

    move v13, v8

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroidx/transition/Transition;->excludeTarget(IZ)Landroidx/transition/Transition;

    move-result-object v12

    goto :goto_1

    .line 250
    :cond_3
    move-object v12, v7

    move-object v13, v1

    const-string v14, "targetName"

    const/4 v15, 0x4

    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v9, v13

    if-eqz v12, :cond_4

    .line 252
    move-object v12, v3

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroidx/transition/Transition;->addTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    move-result-object v12

    goto :goto_1

    .line 253
    :cond_4
    move-object v12, v7

    move-object v13, v1

    const-string v14, "excludeName"

    const/4 v15, 0x5

    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v9, v13

    if-eqz v12, :cond_5

    .line 255
    move-object v12, v3

    move-object v13, v9

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;

    move-result-object v12

    goto :goto_1

    .line 257
    :cond_5
    move-object v12, v7

    move-object v13, v1

    const-string v14, "excludeClass"

    const/4 v15, 0x3

    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 260
    move-object v12, v10

    if-eqz v12, :cond_7

    .line 261
    move-object v12, v10

    :try_start_0
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object v11, v12

    .line 262
    move-object v12, v3

    move-object v13, v11

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;

    move-result-object v12

    .line 271
    :cond_6
    :goto_2
    goto :goto_1

    .line 263
    :cond_7
    move-object v12, v7

    move-object v13, v1

    const-string v14, "targetClass"

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v10, v13

    if-eqz v12, :cond_6

    .line 265
    move-object v12, v10

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object v11, v12

    .line 266
    move-object v12, v3

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_2

    .line 268
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 269
    move-object v12, v7

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not create "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v11

    invoke-direct {v13, v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 275
    :cond_8
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown scene name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 278
    :cond_9
    return-void
.end method

.method private loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroidx/transition/TransitionManager;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 316
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v12, v0

    iget-object v12, v12, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    move-object v13, v1

    sget-object v14, Landroidx/transition/Styleable;->TRANSITION_MANAGER:[I

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    move-object v5, v12

    .line 317
    move-object v12, v5

    move-object v13, v2

    const-string v14, "transition"

    const/4 v15, 0x2

    const/16 v16, -0x1

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move v6, v12

    .line 319
    move-object v12, v5

    move-object v13, v2

    const-string v14, "fromScene"

    const/4 v15, 0x0

    const/16 v16, -0x1

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move v7, v12

    .line 321
    move v12, v7

    if-gez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    move-object v8, v12

    .line 323
    move-object v12, v5

    move-object v13, v2

    const-string v14, "toScene"

    const/4 v15, 0x1

    const/16 v16, -0x1

    invoke-static/range {v12 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v12

    move v9, v12

    .line 325
    move v12, v9

    if-gez v12, :cond_1

    const/4 v12, 0x0

    :goto_1
    move-object v10, v12

    .line 327
    move v12, v6

    if-ltz v12, :cond_3

    .line 328
    move-object v12, v0

    move v13, v6

    invoke-virtual {v12, v13}, Landroidx/transition/TransitionInflater;->inflateTransition(I)Landroidx/transition/Transition;

    move-result-object v12

    move-object v11, v12

    .line 329
    move-object v12, v11

    if-eqz v12, :cond_3

    .line 330
    move-object v12, v10

    if-nez v12, :cond_2

    .line 331
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No toScene for transition ID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 321
    :cond_0
    move-object v12, v3

    move v13, v7

    move-object v14, v0

    iget-object v14, v14, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {v12, v13, v14}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object v12

    goto :goto_0

    .line 325
    :cond_1
    move-object v12, v3

    move v13, v9

    move-object v14, v0

    iget-object v14, v14, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {v12, v13, v14}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object v12

    goto :goto_1

    .line 333
    :cond_2
    move-object v12, v8

    if-nez v12, :cond_4

    .line 334
    move-object v12, v4

    move-object v13, v10

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroidx/transition/TransitionManager;->setTransition(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    .line 340
    :cond_3
    :goto_2
    move-object v12, v5

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    return-void

    .line 336
    :cond_4
    move-object v12, v4

    move-object v13, v8

    move-object v14, v10

    move-object v15, v11

    invoke-virtual {v12, v13, v14, v15}, Landroidx/transition/TransitionManager;->setTransition(Landroidx/transition/Scene;Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    goto :goto_2
.end method


# virtual methods
.method public inflateTransition(I)Landroidx/transition/Transition;
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v2, v5

    .line 73
    move-object v5, v0

    move-object v6, v2

    move-object v7, v2

    :try_start_0
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroidx/transition/Transition;)Landroidx/transition/Transition;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 80
    move-object v5, v2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 73
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 74
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 75
    :try_start_1
    new-instance v5, Landroid/view/InflateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 81
    move-object v5, v4

    throw v5

    .line 76
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 77
    :try_start_2
    new-instance v5, Landroid/view/InflateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    .line 78
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroidx/transition/TransitionManager;
    .locals 12

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    move-object v3, v7

    .line 95
    move-object v7, v0

    move-object v8, v3

    move-object v9, v3

    :try_start_0
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Landroidx/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroidx/transition/TransitionManager;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 107
    move-object v7, v3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 95
    move-object v7, v4

    move-object v0, v7

    return-object v0

    .line 96
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 97
    :try_start_1
    new-instance v7, Landroid/view/InflateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 98
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 99
    move-object v7, v5

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 108
    move-object v7, v6

    throw v7

    .line 100
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 101
    :try_start_2
    new-instance v7, Landroid/view/InflateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v3

    .line 102
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    .line 103
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 104
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 105
    move-object v7, v5

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
