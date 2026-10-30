.class public Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;
.super Ljava/lang/Object;
.source "Grouping.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_GROUPING:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ">;",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ")",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;"
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    const/4 v8, -0x1

    move v4, v8

    .line 368
    move v8, v1

    if-nez v8, :cond_8

    .line 369
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    move v4, v8

    .line 377
    :goto_0
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    move-object v8, v3

    if-eqz v8, :cond_0

    move v8, v4

    move-object v9, v3

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    if-eq v8, v9, :cond_a

    .line 382
    :cond_0
    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 383
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-object v6, v8

    .line 384
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v8

    move v9, v4

    if-ne v8, v9, :cond_9

    .line 385
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 389
    move-object v8, v3

    move v9, v1

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 390
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 392
    :cond_1
    move-object v8, v6

    move-object v3, v8

    .line 399
    :cond_2
    move-object v8, v3

    if-nez v8, :cond_5

    .line 400
    move-object v8, v0

    instance-of v8, v8, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    if-eqz v8, :cond_3

    .line 401
    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-object v5, v8

    .line 402
    move-object v8, v5

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->findGroupInDependents(I)I

    move-result v8

    move v4, v8

    .line 403
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 404
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 405
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-object v7, v8

    .line 406
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v8

    move v9, v4

    if-ne v8, v9, :cond_b

    .line 407
    move-object v8, v7

    move-object v3, v8

    .line 413
    :cond_3
    move-object v8, v3

    if-nez v8, :cond_4

    .line 414
    new-instance v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move v10, v1

    invoke-direct {v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;-><init>(I)V

    move-object v3, v8

    .line 419
    :cond_4
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 421
    :cond_5
    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 422
    move-object v8, v0

    instance-of v8, v8, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v8, :cond_6

    .line 423
    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v5, v8

    .line 424
    move-object v8, v5

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->getAnchor()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v9

    if-nez v9, :cond_c

    const/4 v9, 0x1

    :goto_3
    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 426
    :cond_6
    move v8, v1

    if-nez v8, :cond_d

    .line 427
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    .line 431
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 432
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 442
    :goto_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 444
    :cond_7
    move-object v8, v3

    move-object v0, v8

    :goto_5
    return-object v0

    .line 371
    :cond_8
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    move v4, v8

    goto/16 :goto_0

    .line 382
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 396
    :cond_a
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 397
    move-object v8, v3

    move-object v0, v8

    goto :goto_5

    .line 404
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 424
    :cond_c
    const/4 v9, 0x0

    goto :goto_3

    .line 434
    :cond_d
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 438
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 439
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 440
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->findDependents(ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    goto :goto_4
.end method

.method private static findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ">;I)",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;"
        }
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 357
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 358
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-object v4, v5

    .line 359
    move v5, v1

    move-object v6, v4

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    if-ne v5, v6, :cond_0

    .line 360
    move-object v5, v4

    move-object v0, v5

    .line 363
    :goto_1
    return-object v0

    .line 357
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public static simpleSolvingPass(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)Z
    .locals 27

    .prologue
    .line 63
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v5, v21

    .line 65
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v6, v21

    .line 67
    const/16 v21, 0x0

    move-object/from16 v7, v21

    .line 68
    const/16 v21, 0x0

    move-object/from16 v8, v21

    .line 69
    const/16 v21, 0x0

    move-object/from16 v9, v21

    .line 70
    const/16 v21, 0x0

    move-object/from16 v10, v21

    .line 71
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .line 72
    const/16 v21, 0x0

    move-object/from16 v12, v21

    .line 74
    const/16 v21, 0x0

    move/from16 v13, v21

    :goto_0
    move/from16 v21, v13

    move/from16 v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 75
    move-object/from16 v21, v5

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v14, v21

    .line 76
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v22

    move-object/from16 v23, v14

    .line 77
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v24

    .line 76
    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 81
    const/16 v21, 0x0

    move/from16 v3, v21

    .line 352
    :goto_1
    return v3

    .line 83
    :cond_0
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 84
    const/16 v21, 0x0

    move/from16 v3, v21

    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 87
    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 88
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->grouping:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->grouping:J

    .line 90
    :cond_3
    const/16 v21, 0x0

    move/from16 v13, v21

    :goto_2
    move/from16 v21, v13

    move/from16 v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    .line 91
    move-object/from16 v21, v5

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v14, v21

    .line 92
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v22

    move-object/from16 v23, v14

    .line 93
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v24

    .line 92
    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->validInGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 94
    move-object/from16 v21, v14

    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v23, v0

    sget v24, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v21

    .line 96
    :cond_4
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 97
    move-object/from16 v21, v14

    check-cast v21, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object/from16 v15, v21

    .line 98
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v21

    if-nez v21, :cond_6

    .line 99
    move-object/from16 v21, v8

    if-nez v21, :cond_5

    .line 100
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v21

    .line 102
    :cond_5
    move-object/from16 v21, v8

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 104
    :cond_6
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 105
    move-object/from16 v21, v7

    if-nez v21, :cond_7

    .line 106
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v21

    .line 108
    :cond_7
    move-object/from16 v21, v7

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 111
    :cond_8
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 112
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 113
    move-object/from16 v21, v14

    check-cast v21, Landroidx/constraintlayout/solver/widgets/Barrier;

    move-object/from16 v15, v21

    .line 114
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Barrier;->getOrientation()I

    move-result v21

    if-nez v21, :cond_a

    .line 115
    move-object/from16 v21, v9

    if-nez v21, :cond_9

    .line 116
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v21

    .line 118
    :cond_9
    move-object/from16 v21, v9

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 120
    :cond_a
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Barrier;->getOrientation()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 121
    move-object/from16 v21, v10

    if-nez v21, :cond_b

    .line 122
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, v21

    .line 124
    :cond_b
    move-object/from16 v21, v10

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 138
    :cond_c
    :goto_3
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    if-nez v21, :cond_e

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    if-nez v21, :cond_e

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    move/from16 v21, v0

    if-nez v21, :cond_e

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v21, v0

    if-nez v21, :cond_e

    .line 140
    move-object/from16 v21, v11

    if-nez v21, :cond_d

    .line 141
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, v21

    .line 143
    :cond_d
    move-object/from16 v21, v11

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 145
    :cond_e
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    if-nez v21, :cond_10

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    if-nez v21, :cond_10

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    if-nez v21, :cond_10

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    move/from16 v21, v0

    if-nez v21, :cond_10

    move-object/from16 v21, v14

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v21, v0

    if-nez v21, :cond_10

    .line 148
    move-object/from16 v21, v12

    if-nez v21, :cond_f

    .line 149
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v21

    .line 151
    :cond_f
    move-object/from16 v21, v12

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 90
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 127
    :cond_11
    move-object/from16 v21, v14

    check-cast v21, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-object/from16 v15, v21

    .line 128
    move-object/from16 v21, v9

    if-nez v21, :cond_12

    .line 129
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v21

    .line 131
    :cond_12
    move-object/from16 v21, v9

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 132
    move-object/from16 v21, v10

    if-nez v21, :cond_13

    .line 133
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, v21

    .line 135
    :cond_13
    move-object/from16 v21, v10

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    goto/16 :goto_3

    .line 154
    :cond_14
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v21

    .line 157
    move-object/from16 v21, v13

    move-object/from16 v14, v21

    .line 159
    move-object/from16 v21, v7

    if-eqz v21, :cond_15

    .line 160
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v15, v21

    :goto_4
    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object/from16 v16, v21

    .line 161
    move-object/from16 v21, v16

    const/16 v22, 0x0

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 162
    goto :goto_4

    .line 164
    :cond_15
    move-object/from16 v21, v9

    if-eqz v21, :cond_16

    .line 165
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v15, v21

    :goto_5
    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_16

    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-object/from16 v16, v21

    .line 166
    move-object/from16 v21, v16

    const/16 v22, 0x0

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    move-object/from16 v17, v21

    .line 167
    move-object/from16 v21, v16

    move-object/from16 v22, v14

    const/16 v23, 0x0

    move-object/from16 v24, v17

    invoke-virtual/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->addDependents(Ljava/util/ArrayList;ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 168
    move-object/from16 v21, v17

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 169
    goto :goto_5

    .line 172
    :cond_16
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v21

    move-object/from16 v15, v21

    .line 173
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    if-eqz v21, :cond_17

    .line 174
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v16, v21

    :goto_6
    move-object/from16 v21, v16

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    move-object/from16 v21, v16

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v21

    .line 175
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 176
    goto :goto_6

    .line 179
    :cond_17
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v21

    move-object/from16 v16, v21

    .line 180
    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    if-eqz v21, :cond_18

    .line 181
    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v17, v21

    :goto_7
    move-object/from16 v21, v17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    move-object/from16 v21, v17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v18, v21

    .line 182
    move-object/from16 v21, v18

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 183
    goto :goto_7

    .line 186
    :cond_18
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v21

    move-object/from16 v17, v21

    .line 187
    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    if-eqz v21, :cond_19

    .line 188
    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :goto_8
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_19

    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v21

    .line 189
    move-object/from16 v21, v19

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 190
    goto :goto_8

    .line 193
    :cond_19
    move-object/from16 v21, v11

    if-eqz v21, :cond_1a

    .line 194
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :goto_9
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1a

    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v21

    .line 195
    move-object/from16 v21, v19

    const/16 v22, 0x0

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 196
    goto :goto_9

    .line 201
    :cond_1a
    move-object/from16 v21, v13

    move-object/from16 v14, v21

    .line 203
    move-object/from16 v21, v8

    if-eqz v21, :cond_1b

    .line 204
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v15, v21

    :goto_a
    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1b

    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object/from16 v16, v21

    .line 205
    move-object/from16 v21, v16

    const/16 v22, 0x1

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 206
    goto :goto_a

    .line 208
    :cond_1b
    move-object/from16 v21, v10

    if-eqz v21, :cond_1c

    .line 209
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v15, v21

    :goto_b
    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1c

    move-object/from16 v21, v15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-object/from16 v16, v21

    .line 210
    move-object/from16 v21, v16

    const/16 v22, 0x1

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    move-object/from16 v17, v21

    .line 211
    move-object/from16 v21, v16

    move-object/from16 v22, v14

    const/16 v23, 0x1

    move-object/from16 v24, v17

    invoke-virtual/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->addDependents(Ljava/util/ArrayList;ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 212
    move-object/from16 v21, v17

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    .line 213
    goto :goto_b

    .line 216
    :cond_1c
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v21

    move-object/from16 v15, v21

    .line 217
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    if-eqz v21, :cond_1d

    .line 218
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v16, v21

    :goto_c
    move-object/from16 v21, v16

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1d

    move-object/from16 v21, v16

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v21

    .line 219
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 220
    goto :goto_c

    .line 223
    :cond_1d
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v21

    move-object/from16 v16, v21

    .line 224
    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    if-eqz v21, :cond_1e

    .line 225
    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v17, v21

    :goto_d
    move-object/from16 v21, v17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1e

    move-object/from16 v21, v17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v18, v21

    .line 226
    move-object/from16 v21, v18

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 227
    goto :goto_d

    .line 230
    :cond_1e
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v21

    move-object/from16 v17, v21

    .line 231
    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    if-eqz v21, :cond_1f

    .line 232
    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :goto_e
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1f

    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v21

    .line 233
    move-object/from16 v21, v19

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 234
    goto :goto_e

    .line 237
    :cond_1f
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v21

    move-object/from16 v18, v21

    .line 238
    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    if-eqz v21, :cond_20

    .line 239
    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v19, v21

    :goto_f
    move-object/from16 v21, v19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_20

    move-object/from16 v21, v19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v21

    .line 240
    move-object/from16 v21, v20

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 241
    goto :goto_f

    .line 244
    :cond_20
    move-object/from16 v21, v12

    if-eqz v21, :cond_21

    .line 245
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v19, v21

    :goto_10
    move-object/from16 v21, v19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_21

    move-object/from16 v21, v19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v20, v21

    .line 246
    move-object/from16 v21, v20

    const/16 v22, 0x1

    move-object/from16 v23, v14

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findDependents(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    .line 247
    goto :goto_10

    .line 251
    :cond_21
    const/16 v21, 0x0

    move/from16 v14, v21

    :goto_11
    move/from16 v21, v14

    move/from16 v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_23

    .line 252
    move-object/from16 v21, v5

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v15, v21

    .line 253
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->oppositeDimensionsTied()Z

    move-result v21

    if-eqz v21, :cond_22

    .line 254
    move-object/from16 v21, v13

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    move-object/from16 v16, v21

    .line 255
    move-object/from16 v21, v13

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/Grouping;->findGroup(Ljava/util/ArrayList;I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-result-object v21

    move-object/from16 v17, v21

    .line 256
    move-object/from16 v21, v16

    if-eqz v21, :cond_22

    move-object/from16 v21, v17

    if-eqz v21, :cond_22

    .line 260
    move-object/from16 v21, v16

    const/16 v22, 0x0

    move-object/from16 v23, v17

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    .line 261
    move-object/from16 v21, v17

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setOrientation(I)V

    .line 262
    move-object/from16 v21, v13

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v21

    .line 251
    :cond_22
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 270
    :cond_23
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_24

    .line 271
    const/16 v21, 0x0

    move/from16 v3, v21

    goto/16 :goto_1

    .line 294
    :cond_24
    const/16 v21, 0x0

    move-object/from16 v14, v21

    .line 295
    const/16 v21, 0x0

    move-object/from16 v15, v21

    .line 297
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_28

    .line 298
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 299
    const/16 v21, 0x0

    move-object/from16 v17, v21

    .line 300
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :goto_12
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_27

    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-object/from16 v19, v21

    .line 301
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getOrientation()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_25

    .line 302
    goto :goto_12

    .line 304
    :cond_25
    move-object/from16 v21, v19

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    .line 305
    move-object/from16 v21, v19

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getSystem()Landroidx/constraintlayout/solver/LinearSystem;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/solver/LinearSystem;I)I

    move-result v21

    move/from16 v20, v21

    .line 306
    move/from16 v21, v20

    move/from16 v22, v16

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_26

    .line 307
    move-object/from16 v21, v19

    move-object/from16 v17, v21

    .line 308
    move/from16 v21, v20

    move/from16 v16, v21

    .line 313
    :cond_26
    goto :goto_12

    .line 314
    :cond_27
    move-object/from16 v21, v17

    if-eqz v21, :cond_28

    .line 318
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 319
    move-object/from16 v21, v3

    move/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 320
    move-object/from16 v21, v17

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    .line 321
    move-object/from16 v21, v17

    move-object/from16 v14, v21

    .line 325
    :cond_28
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2c

    .line 326
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 327
    const/16 v21, 0x0

    move-object/from16 v17, v21

    .line 328
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :goto_13
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2b

    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    move-object/from16 v19, v21

    .line 329
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getOrientation()I

    move-result v21

    if-nez v21, :cond_29

    .line 330
    goto :goto_13

    .line 332
    :cond_29
    move-object/from16 v21, v19

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    .line 333
    move-object/from16 v21, v19

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getSystem()Landroidx/constraintlayout/solver/LinearSystem;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/solver/LinearSystem;I)I

    move-result v21

    move/from16 v20, v21

    .line 334
    move/from16 v21, v20

    move/from16 v22, v16

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2a

    .line 335
    move-object/from16 v21, v19

    move-object/from16 v17, v21

    .line 336
    move/from16 v21, v20

    move/from16 v16, v21

    .line 341
    :cond_2a
    goto :goto_13

    .line 342
    :cond_2b
    move-object/from16 v21, v17

    if-eqz v21, :cond_2c

    .line 346
    move-object/from16 v21, v3

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 347
    move-object/from16 v21, v3

    move/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 348
    move-object/from16 v21, v17

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->setAuthoritative(Z)V

    .line 349
    move-object/from16 v21, v17

    move-object/from16 v15, v21

    .line 352
    :cond_2c
    move-object/from16 v21, v14

    if-nez v21, :cond_2d

    move-object/from16 v21, v15

    if-eqz v21, :cond_2e

    :cond_2d
    const/16 v21, 0x1

    :goto_14
    move/from16 v3, v21

    goto/16 :goto_1

    :cond_2e
    const/16 v21, 0x0

    goto :goto_14
.end method

.method public static validInGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_0

    move-object v6, v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_0

    move-object v6, v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3

    move-object v6, v0

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_3

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 50
    move-object v6, v3

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_1

    move-object v6, v3

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_1

    move-object v6, v3

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_4

    move-object v6, v1

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_4

    :cond_1
    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 52
    move v6, v4

    if-nez v6, :cond_2

    move v6, v5

    if-eqz v6, :cond_5

    .line 53
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    .line 55
    :goto_2
    return v0

    .line 48
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 50
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 55
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2
.end method
