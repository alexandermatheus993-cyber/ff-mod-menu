.class public Landroidx/transition/FragmentTransitionSupport;
.super Landroidx/fragment/app/FragmentTransitionImpl;
.source "FragmentTransitionSupport.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Landroidx/transition/Transition;)Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 129
    invoke-virtual {v1}, Landroidx/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 130
    invoke-virtual {v1}, Landroidx/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 128
    :goto_0
    move v0, v1

    return v0

    .line 130
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-eqz v4, :cond_0

    .line 335
    move-object v4, v1

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 336
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v4

    .line 338
    :cond_0
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    check-cast v8, Landroidx/transition/Transition;

    move-object v3, v8

    .line 105
    move-object v8, v3

    if-nez v8, :cond_0

    .line 125
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v8, v3

    instance-of v8, v8, Landroidx/transition/TransitionSet;

    if-eqz v8, :cond_2

    .line 109
    move-object v8, v3

    check-cast v8, Landroidx/transition/TransitionSet;

    move-object v4, v8

    .line 110
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    move-result v8

    move v5, v8

    .line 111
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 112
    move-object v8, v4

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object v8

    move-object v7, v8

    .line 113
    move-object v8, v0

    move-object v9, v7

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 125
    :cond_1
    goto :goto_0

    .line 115
    :cond_2
    move-object v8, v3

    invoke-static {v8}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 116
    move-object v8, v3

    invoke-virtual {v8}, Landroidx/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 117
    move-object v8, v4

    invoke-static {v8}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 119
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 120
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 121
    move-object v8, v3

    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v8

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    check-cast v4, Landroidx/transition/Transition;

    invoke-static {v3, v4}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 224
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroidx/transition/Transition;

    move v0, v2

    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 54
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 55
    move-object v3, v1

    check-cast v3, Landroidx/transition/Transition;

    invoke-virtual {v3}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v3

    move-object v2, v3

    .line 57
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v9, 0x0

    move-object v4, v9

    .line 196
    move-object v9, v1

    check-cast v9, Landroidx/transition/Transition;

    move-object v5, v9

    .line 197
    move-object v9, v2

    check-cast v9, Landroidx/transition/Transition;

    move-object v6, v9

    .line 198
    move-object v9, v3

    check-cast v9, Landroidx/transition/Transition;

    move-object v7, v9

    .line 199
    move-object v9, v5

    if-eqz v9, :cond_2

    move-object v9, v6

    if-eqz v9, :cond_2

    .line 200
    new-instance v9, Landroidx/transition/TransitionSet;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Landroidx/transition/TransitionSet;-><init>()V

    move-object v10, v5

    .line 201
    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    move-object v10, v6

    .line 202
    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    const/4 v10, 0x1

    .line 203
    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    move-result-object v9

    move-object v4, v9

    .line 209
    :cond_0
    :goto_0
    move-object v9, v7

    if-eqz v9, :cond_4

    .line 210
    new-instance v9, Landroidx/transition/TransitionSet;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Landroidx/transition/TransitionSet;-><init>()V

    move-object v8, v9

    .line 211
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 212
    move-object v9, v8

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    .line 214
    :cond_1
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    .line 215
    move-object v9, v8

    move-object v0, v9

    .line 217
    :goto_1
    return-object v0

    .line 204
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 205
    move-object v9, v5

    move-object v4, v9

    goto :goto_0

    .line 206
    :cond_3
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 207
    move-object v9, v6

    move-object v4, v9

    goto :goto_0

    .line 217
    :cond_4
    move-object v9, v4

    move-object v0, v9

    goto :goto_1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Landroidx/transition/TransitionSet;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/transition/TransitionSet;-><init>()V

    move-object v4, v5

    .line 137
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 138
    move-object v5, v4

    move-object v6, v1

    check-cast v6, Landroidx/transition/Transition;

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 140
    :cond_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 141
    move-object v5, v4

    move-object v6, v2

    check-cast v6, Landroidx/transition/Transition;

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 143
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 144
    move-object v5, v4

    move-object v6, v3

    check-cast v6, Landroidx/transition/Transition;

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 146
    :cond_2
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-eqz v4, :cond_0

    .line 343
    move-object v4, v1

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 344
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v4

    .line 346
    :cond_0
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v9, v1

    check-cast v9, Landroidx/transition/Transition;

    move-object v4, v9

    .line 309
    move-object v9, v4

    instance-of v9, v9, Landroidx/transition/TransitionSet;

    if-eqz v9, :cond_1

    .line 310
    move-object v9, v4

    check-cast v9, Landroidx/transition/TransitionSet;

    move-object v5, v9

    .line 311
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    move-result v9

    move v6, v9

    .line 312
    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 313
    move-object v9, v5

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object v9

    move-object v8, v9

    .line 314
    move-object v9, v0

    move-object v10, v8

    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 312
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-void

    .line 316
    :cond_1
    move-object v9, v4

    invoke-static {v9}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 317
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 318
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    move-object v9, v5

    move-object v10, v2

    .line 319
    invoke-interface {v9, v10}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 321
    move-object v9, v3

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    move v6, v9

    .line 322
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_3

    .line 323
    move-object v9, v4

    move-object v10, v3

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v9

    .line 322
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 321
    :cond_2
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_1

    .line 325
    :cond_3
    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    :goto_3
    move v9, v7

    if-ltz v9, :cond_0

    .line 326
    move-object v9, v4

    move-object v10, v2

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v9

    .line 325
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v1

    check-cast v5, Landroidx/transition/Transition;

    move-object v4, v5

    .line 153
    move-object v5, v4

    new-instance v6, Landroidx/transition/FragmentTransitionSupport$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroidx/transition/FragmentTransitionSupport$2;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v5

    .line 188
    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v1

    check-cast v9, Landroidx/transition/Transition;

    move-object v8, v9

    .line 232
    move-object v9, v8

    new-instance v10, Landroidx/transition/FragmentTransitionSupport$3;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Landroidx/transition/FragmentTransitionSupport$3;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v9

    .line 251
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 10

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-eqz v4, :cond_0

    .line 351
    move-object v4, v1

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 352
    move-object v4, v3

    new-instance v5, Landroidx/transition/FragmentTransitionSupport$6;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/transition/FragmentTransitionSupport$6;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 362
    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 11

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 89
    move-object v5, v1

    check-cast v5, Landroidx/transition/Transition;

    move-object v3, v5

    .line 90
    new-instance v5, Landroid/graphics/Rect;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v5

    .line 91
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/transition/FragmentTransitionSupport;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 93
    move-object v5, v3

    new-instance v6, Landroidx/transition/FragmentTransitionSupport$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/transition/FragmentTransitionSupport$1;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 12
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v6, v2

    check-cast v6, Landroidx/transition/Transition;

    move-object v5, v6

    .line 268
    move-object v6, v3

    new-instance v7, Landroidx/transition/FragmentTransitionSupport$4;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Landroidx/transition/FragmentTransitionSupport$4;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroidx/transition/Transition;)V

    invoke-virtual {v6, v7}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 274
    move-object v6, v5

    new-instance v7, Landroidx/transition/FragmentTransitionSupport$5;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Landroidx/transition/FragmentTransitionSupport$5;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v6

    .line 292
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, v1

    check-cast v9, Landroidx/transition/TransitionSet;

    move-object v4, v9

    .line 74
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 75
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 76
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 77
    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 78
    move-object v9, v3

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 79
    move-object v9, v5

    move-object v10, v8

    invoke-static {v9, v10}, Landroidx/transition/FragmentTransitionSupport;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 77
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    :cond_0
    move-object v9, v5

    move-object v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 82
    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 83
    move-object v9, v0

    move-object v10, v4

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 84
    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v1

    check-cast v5, Landroidx/transition/TransitionSet;

    move-object v4, v5

    .line 298
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 299
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 300
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 301
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 303
    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 63
    const/4 v3, 0x0

    move-object v0, v3

    .line 67
    :goto_0
    return-object v0

    .line 65
    :cond_0
    new-instance v3, Landroidx/transition/TransitionSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/transition/TransitionSet;-><init>()V

    move-object v2, v3

    .line 66
    move-object v3, v2

    move-object v4, v1

    check-cast v4, Landroidx/transition/Transition;

    invoke-virtual {v3, v4}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v3

    .line 67
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
