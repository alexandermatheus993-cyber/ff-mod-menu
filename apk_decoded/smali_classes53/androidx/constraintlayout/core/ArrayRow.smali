.class public Landroidx/constraintlayout/core/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroidx/constraintlayout/core/LinearSystem$Row;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FULL_NEW_CHECK:Z


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroidx/constraintlayout/core/SolverVariable;

.field public variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

.field variablesToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 28
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    .line 31
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    .line 53
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 28
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    .line 31
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    .line 53
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 58
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/ArrayLinkedVariables;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/ArrayLinkedVariables;-><init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 60
    return-void
.end method

.method private isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z
    .locals 5

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 14

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const/4 v12, 0x1

    move v3, v12

    .line 611
    const/4 v12, 0x0

    move v4, v12

    .line 612
    const/4 v12, 0x0

    move-object v5, v12

    .line 613
    const/4 v12, 0x0

    move-object v6, v12

    .line 614
    const/4 v12, 0x0

    move v7, v12

    .line 616
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v12

    move v8, v12

    .line 617
    const/4 v12, 0x0

    move v9, v12

    :goto_0
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_5

    .line 618
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v13, v9

    invoke-interface {v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v12

    move v10, v12

    .line 619
    move v12, v10

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 622
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v13, v9

    invoke-interface {v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v12

    move-object v11, v12

    .line 623
    move-object v12, v1

    if-eqz v12, :cond_0

    move-object v12, v1

    move-object v13, v11

    iget v13, v13, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aget-boolean v12, v12, v13

    if-nez v12, :cond_2

    :cond_0
    move-object v12, v11

    move-object v13, v2

    if-eq v12, v13, :cond_2

    .line 624
    move v12, v3

    if-eqz v12, :cond_3

    .line 625
    move-object v12, v11

    iget-object v12, v12, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v13, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-eq v12, v13, :cond_1

    move-object v12, v11

    iget-object v12, v12, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v13, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v12, v13, :cond_2

    .line 627
    :cond_1
    move v12, v10

    move v13, v4

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 628
    move v12, v10

    move v4, v12

    .line 629
    move-object v12, v11

    move-object v5, v12

    .line 617
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 633
    :cond_3
    move-object v12, v11

    iget-object v12, v12, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v13, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v12, v13, :cond_4

    .line 634
    move v12, v10

    move v13, v7

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 635
    move v12, v10

    move v7, v12

    .line 636
    move-object v12, v11

    move-object v6, v12

    goto :goto_1

    .line 638
    :cond_4
    move-object v12, v11

    iget-object v12, v12, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v13, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v12, v13, :cond_2

    .line 639
    move v12, v10

    move v13, v4

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 640
    move v12, v10

    move v4, v12

    .line 641
    move-object v12, v11

    move-object v5, v12

    goto :goto_1

    .line 648
    :cond_5
    move v12, v3

    if-eqz v12, :cond_6

    .line 649
    move-object v12, v5

    move-object v0, v12

    .line 651
    :goto_2
    return-object v0

    :cond_6
    move-object v12, v5

    if-eqz v12, :cond_7

    move-object v12, v5

    :goto_3
    move-object v0, v12

    goto :goto_2

    :cond_7
    move-object v12, v6

    goto :goto_3
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 7

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v1

    move v5, v2

    const-string v6, "ep"

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 350
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v1

    move v5, v2

    const-string v6, "em"

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 351
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public addError(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 6

    .prologue
    .line 690
    move-object v0, p0

    move-object v1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    move v2, v3

    .line 691
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 692
    const/high16 v3, 0x3f800000    # 1.0f

    move v2, v3

    .line 702
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 703
    return-void

    .line 693
    :cond_1
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 694
    const/high16 v3, 0x447a0000    # 1000.0f

    move v2, v3

    goto :goto_0

    .line 695
    :cond_2
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 696
    const v3, 0x49742400    # 1000000.0f

    move v2, v3

    goto :goto_0

    .line 697
    :cond_3
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 698
    const v3, 0x4e6e6b28    # 1.0E9f

    move v2, v3

    goto :goto_0

    .line 699
    :cond_4
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 700
    const v3, 0x5368d4a5    # 1.0E12f

    move v2, v3

    goto :goto_0
.end method

.method addSingleError(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v1

    move v5, v2

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 179
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method chooseSubject(Landroidx/constraintlayout/core/LinearSystem;)Z
    .locals 6

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 432
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/ArrayRow;->chooseSubjectInVariables(Landroidx/constraintlayout/core/LinearSystem;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 433
    move-object v4, v3

    if-nez v4, :cond_1

    .line 435
    const/4 v4, 0x1

    move v2, v4

    .line 439
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v4

    if-nez v4, :cond_0

    .line 440
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 442
    :cond_0
    move v4, v2

    move v0, v4

    return v0

    .line 437
    :cond_1
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    goto :goto_0
.end method

.method chooseSubjectInVariables(Landroidx/constraintlayout/core/LinearSystem;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 15

    .prologue
    .line 457
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v12, 0x0

    move-object v2, v12

    .line 458
    const/4 v12, 0x0

    move-object v3, v12

    .line 459
    const/4 v12, 0x0

    move v4, v12

    .line 460
    const/4 v12, 0x0

    move v5, v12

    .line 461
    const/4 v12, 0x0

    move v6, v12

    .line 462
    const/4 v12, 0x0

    move v7, v12

    .line 464
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v12

    move v8, v12

    .line 465
    const/4 v12, 0x0

    move v9, v12

    :goto_0
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_6

    .line 466
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v13, v9

    invoke-interface {v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v12

    move v10, v12

    .line 467
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v13, v9

    invoke-interface {v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v12

    move-object v11, v12

    .line 468
    move-object v12, v11

    iget-object v12, v12, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v13, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v12, v13, :cond_3

    .line 469
    move-object v12, v3

    if-nez v12, :cond_1

    .line 470
    move-object v12, v11

    move-object v3, v12

    .line 471
    move v12, v10

    move v4, v12

    .line 472
    move-object v12, v0

    move-object v13, v11

    move-object v14, v1

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v12

    move v6, v12

    .line 465
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 473
    :cond_1
    move v12, v4

    move v13, v10

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 474
    move-object v12, v11

    move-object v3, v12

    .line 475
    move v12, v10

    move v4, v12

    .line 476
    move-object v12, v0

    move-object v13, v11

    move-object v14, v1

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v12

    move v6, v12

    goto :goto_1

    .line 477
    :cond_2
    move v12, v6

    if-nez v12, :cond_0

    move-object v12, v0

    move-object v13, v11

    move-object v14, v1

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 478
    move-object v12, v11

    move-object v3, v12

    .line 479
    move v12, v10

    move v4, v12

    .line 480
    const/4 v12, 0x1

    move v6, v12

    goto :goto_1

    .line 482
    :cond_3
    move-object v12, v3

    if-nez v12, :cond_0

    .line 483
    move v12, v10

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 484
    move-object v12, v2

    if-nez v12, :cond_4

    .line 485
    move-object v12, v11

    move-object v2, v12

    .line 486
    move v12, v10

    move v5, v12

    .line 487
    move-object v12, v0

    move-object v13, v11

    move-object v14, v1

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v12

    move v7, v12

    goto :goto_1

    .line 488
    :cond_4
    move v12, v5

    move v13, v10

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    .line 489
    move-object v12, v11

    move-object v2, v12

    .line 490
    move v12, v10

    move v5, v12

    .line 491
    move-object v12, v0

    move-object v13, v11

    move-object v14, v1

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v12

    move v7, v12

    goto :goto_1

    .line 492
    :cond_5
    move v12, v7

    if-nez v12, :cond_0

    move-object v12, v0

    move-object v13, v11

    move-object v14, v1

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 493
    move-object v12, v11

    move-object v2, v12

    .line 494
    move v12, v10

    move v5, v12

    .line 495
    const/4 v12, 0x1

    move v7, v12

    goto :goto_1

    .line 501
    :cond_6
    move-object v12, v3

    if-eqz v12, :cond_7

    .line 502
    move-object v12, v3

    move-object v0, v12

    .line 504
    :goto_2
    return-object v0

    :cond_7
    move-object v12, v2

    move-object v0, v12

    goto :goto_2
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 665
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    .line 666
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 667
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 668
    return-void
.end method

.method createRowCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 13

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v2

    move-object v9, v5

    if-ne v8, v9, :cond_0

    .line 307
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 308
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 309
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v2

    const/high16 v10, -0x40000000    # -2.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 310
    move-object v8, v0

    move-object v0, v8

    .line 345
    :goto_0
    return-object v0

    .line 312
    :cond_0
    move v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 319
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 320
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v2

    const/high16 v10, -0x40800000    # -1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 321
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 322
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 323
    move v8, v3

    if-gtz v8, :cond_1

    move v8, v7

    if-lez v8, :cond_2

    .line 324
    :cond_1
    move-object v8, v0

    move v9, v3

    neg-int v9, v9

    move v10, v7

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v8, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 345
    :cond_2
    :goto_1
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 326
    :cond_3
    move v8, v4

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 328
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v1

    const/high16 v10, -0x40800000    # -1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 329
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 330
    move-object v8, v0

    move v9, v3

    int-to-float v9, v9

    iput v9, v8, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    goto :goto_1

    .line 331
    :cond_4
    move v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    .line 333
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v6

    const/high16 v10, -0x40800000    # -1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 334
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 335
    move-object v8, v0

    move v9, v7

    neg-int v9, v9

    int-to-float v9, v9

    iput v9, v8, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    goto :goto_1

    .line 337
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 338
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v2

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 339
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v4

    mul-float/2addr v10, v11

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 340
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v4

    mul-float/2addr v10, v11

    invoke-interface {v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 341
    move v8, v3

    if-gtz v8, :cond_6

    move v8, v7

    if-lez v8, :cond_2

    .line 342
    :cond_6
    move-object v8, v0

    move v9, v3

    neg-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v4

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    move v10, v7

    int-to-float v10, v10

    move v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v8, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    goto/16 :goto_1
.end method

.method createRowDefinition(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 140
    move-object v3, v1

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 141
    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 142
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 143
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method createRowDimensionPercent(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .locals 7

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v4, v5, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 357
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v5, v2

    move v6, v3

    invoke-interface {v4, v5, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 358
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .locals 9

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 376
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 377
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v3

    move v8, v5

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 378
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v4

    move v8, v5

    neg-float v8, v8

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 379
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public createRowEqualDimension(FFFLandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 21

    .prologue
    .line 276
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v17, v4

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_0

    move/from16 v17, v3

    move/from16 v18, v5

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    .line 280
    :cond_0
    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v13

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 281
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-interface/range {v17 .. v19}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 282
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    const/high16 v19, -0x40800000    # -1.0f

    invoke-interface/range {v17 .. v19}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 283
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-interface/range {v17 .. v19}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 284
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    const/high16 v19, -0x40800000    # -1.0f

    invoke-interface/range {v17 .. v19}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 298
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v2, v17

    return-object v2

    .line 286
    :cond_1
    move/from16 v17, v3

    move/from16 v18, v4

    div-float v17, v17, v18

    move/from16 v14, v17

    .line 287
    move/from16 v17, v5

    move/from16 v18, v4

    div-float v17, v17, v18

    move/from16 v15, v17

    .line 288
    move/from16 v17, v14

    move/from16 v18, v15

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 292
    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v19, v16

    move/from16 v20, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 293
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-interface/range {v17 .. v19}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 294
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    const/high16 v19, -0x40800000    # -1.0f

    invoke-interface/range {v17 .. v19}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 295
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    move/from16 v19, v16

    invoke-interface/range {v17 .. v19}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 296
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move/from16 v19, v16

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto/16 :goto_0
.end method

.method public createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;
    .locals 14

    .prologue
    .line 240
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 241
    move v11, v2

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_0

    move v11, v1

    move v12, v3

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1

    .line 244
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v4

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 245
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 246
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 247
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v6

    const/high16 v13, -0x40800000    # -1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 268
    :goto_0
    move-object v11, v0

    move-object v0, v11

    return-object v0

    .line 249
    :cond_1
    move v11, v1

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    .line 250
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v4

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 251
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0

    .line 252
    :cond_2
    move v11, v3

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    .line 253
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v6

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 254
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v7

    const/high16 v13, -0x40800000    # -1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0

    .line 256
    :cond_3
    move v11, v1

    move v12, v2

    div-float/2addr v11, v12

    move v8, v11

    .line 257
    move v11, v3

    move v12, v2

    div-float/2addr v11, v12

    move v9, v11

    .line 258
    move v11, v8

    move v12, v9

    div-float/2addr v11, v12

    move v10, v11

    .line 262
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v4

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 263
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 264
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v7

    move v13, v10

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 265
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v12, v6

    move v13, v10

    neg-float v13, v13

    invoke-interface {v11, v12, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowEquals(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-gez v3, :cond_0

    .line 148
    move-object v3, v0

    const/4 v4, -0x1

    move v5, v2

    mul-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 149
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 154
    :goto_0
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 151
    :cond_0
    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 152
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowEquals(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 9

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v6, 0x0

    move v4, v6

    .line 159
    move v6, v3

    if-eqz v6, :cond_1

    .line 160
    move v6, v3

    move v5, v6

    .line 161
    move v6, v5

    if-gez v6, :cond_0

    .line 162
    const/4 v6, -0x1

    move v7, v5

    mul-int/2addr v6, v7

    move v5, v6

    .line 163
    const/4 v6, 0x1

    move v4, v6

    .line 165
    :cond_0
    move-object v6, v0

    move v7, v5

    int-to-float v7, v7

    iput v7, v6, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 167
    :cond_1
    move v6, v4

    if-nez v6, :cond_2

    .line 168
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 169
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 174
    :goto_0
    move-object v6, v0

    move-object v0, v6

    return-object v0

    .line 171
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 172
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;
    .locals 7

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v2

    int-to-float v5, v5

    iput v5, v4, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 208
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v4, v5, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 209
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 10

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v7, 0x0

    move v5, v7

    .line 186
    move v7, v4

    if-eqz v7, :cond_1

    .line 187
    move v7, v4

    move v6, v7

    .line 188
    move v7, v6

    if-gez v7, :cond_0

    .line 189
    const/4 v7, -0x1

    move v8, v6

    mul-int/2addr v7, v8

    move v6, v7

    .line 190
    const/4 v7, 0x1

    move v5, v7

    .line 192
    :cond_0
    move-object v7, v0

    move v8, v6

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 194
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 195
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v1

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 196
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 197
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 203
    :goto_0
    move-object v7, v0

    move-object v0, v7

    return-object v0

    .line 199
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 200
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 201
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v3

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 10

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v7, 0x0

    move v5, v7

    .line 215
    move v7, v4

    if-eqz v7, :cond_1

    .line 216
    move v7, v4

    move v6, v7

    .line 217
    move v7, v6

    if-gez v7, :cond_0

    .line 218
    const/4 v7, -0x1

    move v8, v6

    mul-int/2addr v7, v8

    move v6, v7

    .line 219
    const/4 v7, 0x1

    move v5, v7

    .line 221
    :cond_0
    move-object v7, v0

    move v8, v6

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 223
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 224
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v1

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 225
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 226
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v3

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 232
    :goto_0
    move-object v7, v0

    move-object v0, v7

    return-object v0

    .line 228
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 229
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 230
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .locals 9

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v3

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 394
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v4

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 395
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v1

    const/high16 v8, -0x41000000    # -0.5f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 396
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v2

    const/high16 v8, -0x41000000    # -0.5f

    invoke-interface {v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 397
    move-object v6, v0

    move v7, v5

    neg-float v7, v7

    iput v7, v6, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 398
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method ensurePositiveConstant()V
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 417
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    iput v2, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 418
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->invert()V

    .line 420
    :cond_0
    return-void
.end method

.method public getKey()Landroidx/constraintlayout/core/SolverVariable;
    .locals 2

    .prologue
    .line 707
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v0, v1

    return-object v0
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;
    .locals 6

    .prologue
    .line 660
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method hasKeyVariable()Z
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v2, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasVariable(Landroidx/constraintlayout/core/SolverVariable;)Z
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->contains(Landroidx/constraintlayout/core/SolverVariable;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public initFromRow(Landroidx/constraintlayout/core/LinearSystem$Row;)V
    .locals 10

    .prologue
    .line 676
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    instance-of v6, v6, Landroidx/constraintlayout/core/ArrayRow;

    if-eqz v6, :cond_0

    .line 677
    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/core/ArrayRow;

    move-object v2, v6

    .line 678
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 679
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    .line 680
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 681
    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v7, v3

    invoke-interface {v6, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    move-object v4, v6

    .line 682
    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v7, v3

    invoke-interface {v6, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v6

    move v5, v6

    .line 683
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v7, v4

    move v8, v5

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 680
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 686
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pickPivot(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .prologue
    .line 655
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/core/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method pivot(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 6

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v3, :cond_0

    .line 538
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 539
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 540
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 543
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    move v2, v3

    .line 544
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 545
    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    move v5, v2

    div-float/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 549
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v4, v2

    invoke-interface {v3, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->divideByAmount(F)V

    .line 550
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 129
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    .line 130
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 131
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 132
    return-void
.end method

.method sizeInBytes()I
    .locals 4

    .prologue
    .line 402
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 403
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v2, :cond_0

    .line 404
    add-int/lit8 v1, v1, 0x4

    .line 406
    :cond_0
    add-int/lit8 v1, v1, 0x4

    .line 407
    add-int/lit8 v1, v1, 0x4

    .line 409
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->sizeInBytes()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 410
    move v2, v1

    move v0, v2

    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 75
    move-object v0, p0

    const-string v8, ""

    move-object v1, v8

    .line 76
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v8, :cond_1

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 81
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 82
    const/4 v8, 0x0

    move v2, v8

    .line 83
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 85
    const/4 v8, 0x1

    move v2, v8

    .line 87
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v8

    move v3, v8

    .line 88
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_8

    .line 89
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v9, v4

    invoke-interface {v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 90
    move-object v8, v5

    if-nez v8, :cond_2

    .line 88
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    .line 93
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v9, v4

    invoke-interface {v8, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v8

    move v6, v8

    .line 94
    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 95
    goto :goto_2

    .line 97
    :cond_3
    move-object v8, v5

    invoke-virtual {v8}, Landroidx/constraintlayout/core/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 98
    move v8, v2

    if-nez v8, :cond_5

    .line 99
    move v8, v6

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 101
    move v8, v6

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    move v6, v8

    .line 111
    :cond_4
    :goto_3
    move v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_7

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 116
    :goto_4
    const/4 v8, 0x1

    move v2, v8

    goto :goto_2

    .line 104
    :cond_5
    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_3

    .line 107
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 108
    move v8, v6

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    move v6, v8

    goto :goto_3

    .line 114
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_4

    .line 118
    :cond_8
    move v8, v2

    if-nez v8, :cond_9

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 124
    :cond_9
    move-object v8, v1

    move-object v0, v8

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V
    .locals 10

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-nez v5, :cond_0

    .line 589
    :goto_0
    return-void

    .line 578
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v5

    move v4, v5

    .line 579
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    move v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 580
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v6, v2

    move v7, v3

    invoke-interface {v5, v6, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v5

    .line 581
    move v5, v3

    if-eqz v5, :cond_1

    .line 582
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 584
    :cond_1
    sget-boolean v5, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v5, :cond_2

    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 585
    invoke-interface {v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v5

    if-nez v5, :cond_2

    .line 586
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 587
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 589
    :cond_2
    goto :goto_0
.end method

.method public updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V
    .locals 10

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v6, v2

    move v7, v3

    invoke-interface {v5, v6, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->use(Landroidx/constraintlayout/core/ArrayRow;Z)F

    move-result v5

    move v4, v5

    .line 563
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    move v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 564
    move v5, v3

    if-eqz v5, :cond_0

    .line 565
    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 567
    :cond_0
    sget-boolean v5, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 568
    invoke-interface {v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v5

    if-nez v5, :cond_1

    .line 569
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 570
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 572
    :cond_1
    return-void
.end method

.method public updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V
    .locals 10

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-nez v5, :cond_0

    .line 607
    :goto_0
    return-void

    .line 595
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v5

    move v4, v5

    .line 596
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    move v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 597
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v6, v2

    move v7, v3

    invoke-interface {v5, v6, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v5

    .line 598
    move v5, v3

    if-eqz v5, :cond_1

    .line 599
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 601
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    aget-object v6, v6, v7

    move v7, v4

    move v8, v3

    invoke-interface {v5, v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 602
    sget-boolean v5, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v5, :cond_2

    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 603
    invoke-interface {v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v5

    if-nez v5, :cond_2

    .line 604
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 605
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 607
    :cond_2
    goto :goto_0
.end method

.method public updateFromSystem(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 11

    .prologue
    .line 712
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    array-length v7, v7

    if-nez v7, :cond_0

    .line 747
    :goto_0
    return-void

    .line 716
    :cond_0
    const/4 v7, 0x0

    move v2, v7

    .line 717
    :goto_1
    move v7, v2

    if-nez v7, :cond_8

    .line 718
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v7

    move v3, v7

    .line 719
    const/4 v7, 0x0

    move v4, v7

    :goto_2
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_3

    .line 720
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move v8, v4

    invoke-interface {v7, v8}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    move-object v5, v7

    .line 721
    move-object v7, v5

    iget v7, v7, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-nez v7, :cond_1

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v7, :cond_2

    .line 722
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 719
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 725
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 726
    move v7, v4

    if-lez v7, :cond_7

    .line 727
    const/4 v7, 0x0

    move v5, v7

    :goto_3
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_6

    .line 728
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/SolverVariable;

    move-object v6, v7

    .line 729
    move-object v7, v6

    iget-boolean v7, v7, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v7, :cond_4

    .line 730
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    .line 727
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 731
    :cond_4
    move-object v7, v6

    iget-boolean v7, v7, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v7, :cond_5

    .line 732
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    goto :goto_4

    .line 734
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    move-object v10, v6

    iget v10, v10, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/core/ArrayRow;->updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V

    goto :goto_4

    .line 737
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 741
    :goto_5
    goto/16 :goto_1

    .line 739
    :cond_7
    const/4 v7, 0x1

    move v2, v7

    goto :goto_5

    .line 742
    :cond_8
    sget-boolean v7, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 743
    invoke-interface {v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v7

    if-nez v7, :cond_9

    .line 744
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 745
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 747
    :cond_9
    goto/16 :goto_0
.end method
