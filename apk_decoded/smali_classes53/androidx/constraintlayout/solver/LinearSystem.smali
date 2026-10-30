.class public Landroidx/constraintlayout/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/LinearSystem$Row;,
        Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;
    }
.end annotation


# static fields
.field public static ARRAY_ROW_CREATION:J

.field public static final DEBUG:Z

.field private static final DEBUG_CONSTRAINTS:Z

.field public static final FULL_DEBUG:Z

.field public static final MEASURE:Z

.field public static OPTIMIZED_ARRAY_ROW_CREATION:J

.field public static OPTIMIZED_ENGINE:Z

.field private static POOL_SIZE:I

.field public static SIMPLIFY_SYNONYMS:Z

.field public static SKIP_COLUMNS:Z

.field public static USE_BASIC_SYNONYMS:Z

.field public static USE_DEPENDENCY_ORDERING:Z

.field public static USE_SYNONYMS:Z

.field public static sMetrics:Landroidx/constraintlayout/solver/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field public hasSimpleDefinition:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/solver/ArrayRow;

.field private mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->USE_BASIC_SYNONYMS:Z

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->USE_SYNONYMS:Z

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->SKIP_COLUMNS:Z

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    .line 47
    const/16 v0, 0x3e8

    sput v0, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    .line 249
    const-wide/16 v0, 0x0

    sput-wide v0, Landroidx/constraintlayout/solver/LinearSystem;->ARRAY_ROW_CREATION:J

    .line 250
    const-wide/16 v0, 0x0

    sput-wide v0, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->hasSimpleDefinition:Z

    .line 53
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 65
    move-object v1, v0

    const/16 v2, 0x20

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 66
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 67
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    .line 71
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    .line 74
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Z

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 76
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 77
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 78
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 82
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    new-array v2, v2, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 83
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 95
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 96
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 97
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/Cache;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroidx/constraintlayout/solver/Cache;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 98
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/PriorityGoalRow;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/PriorityGoalRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 99
    sget-boolean v1, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v1, :cond_0

    .line 100
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    goto :goto_0
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v4}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v4

    .line 371
    move-object v4, v3

    if-nez v4, :cond_1

    .line 372
    new-instance v4, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    move-object v3, v4

    .line 373
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 378
    :goto_0
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    sget v5, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    if-lt v4, v5, :cond_0

    .line 379
    sget v4, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sput v4, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    .line 380
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    sget v6, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v5, v4, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 382
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    move-object v6, v3

    aput-object v6, v4, v5

    .line 383
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 375
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 376
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addError(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 307
    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 11

    .prologue
    .line 639
    move-object v0, p0

    move-object v1, p1

    sget-boolean v6, Landroidx/constraintlayout/solver/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v6, :cond_2

    move-object v6, v1

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v6, :cond_2

    .line 640
    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    .line 652
    :goto_0
    sget-boolean v6, Landroidx/constraintlayout/solver/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v6, :cond_8

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->hasSimpleDefinition:Z

    if-eqz v6, :cond_8

    .line 654
    const/4 v6, 0x0

    move v2, v6

    :goto_1
    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v6, v7, :cond_7

    .line 655
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v2

    aget-object v6, v6, v7

    if-nez v6, :cond_0

    .line 656
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "WTF"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v2

    aget-object v6, v6, v7

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v2

    aget-object v6, v6, v7

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v6, :cond_6

    .line 659
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v2

    aget-object v6, v6, v7

    move-object v3, v6

    .line 660
    move-object v6, v3

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v7, v0

    move-object v8, v3

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    .line 661
    sget-boolean v6, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v6, :cond_3

    .line 662
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v7, v3

    invoke-interface {v6, v7}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v6

    .line 666
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v2

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 667
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 668
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    :goto_3
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v6, v7, :cond_4

    .line 669
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v9, v5

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 670
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    move v7, v5

    if-ne v6, v7, :cond_1

    .line 671
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 673
    :cond_1
    move v6, v5

    move v4, v6

    .line 668
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 642
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move-object v8, v1

    aput-object v8, v6, v7

    .line 643
    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    iput v7, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 644
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 645
    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/ArrayRow;)V

    goto/16 :goto_0

    .line 664
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v7, v3

    invoke-interface {v6, v7}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 675
    :cond_4
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v6, v7, :cond_5

    .line 676
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v4

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 678
    :cond_5
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 679
    add-int/lit8 v2, v2, -0x1

    .line 654
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 682
    :cond_7
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/constraintlayout/solver/LinearSystem;->hasSimpleDefinition:Z

    .line 684
    :cond_8
    return-void
.end method

.method private addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V
    .locals 7

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 311
    return-void
.end method

.method private computeValues()V
    .locals 5

    .prologue
    .line 1036
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_0

    .line 1037
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 1038
    move-object v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 1036
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    return-void
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 9

    .prologue
    .line 1430
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v5

    move-object v4, v5

    .line 1431
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11

    .prologue
    .line 328
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_0

    .line 329
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->variables:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->variables:J

    .line 331
    :cond_0
    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v5, v6, :cond_1

    .line 332
    move-object v5, v1

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 334
    :cond_1
    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object v4, v5

    .line 335
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 336
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 337
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 338
    move-object v5, v4

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 339
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 340
    move-object v5, v1

    new-instance v6, Ljava/util/HashMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 342
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 343
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v7, v4

    aput-object v7, v5, v6

    .line 344
    move-object v5, v4

    move-object v1, v5

    return-object v1
.end method

.method private displayRows()V
    .locals 7

    .prologue
    .line 1048
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 1049
    const-string v3, ""

    move-object v1, v3

    .line 1050
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_0

    .line 1051
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1052
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1054
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1055
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method private displaySolverVariables()V
    .locals 5

    .prologue
    .line 1145
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Rows ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1155
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method private enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 866
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    const/16 v21, 0x0

    move/from16 v5, v21

    .line 878
    const/16 v21, 0x0

    move/from16 v7, v21

    .line 879
    const/16 v21, 0x0

    move/from16 v8, v21

    :goto_0
    move/from16 v21, v8

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 880
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v21, v0

    move/from16 v22, v8

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move-object/from16 v9, v21

    .line 881
    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v21, v0

    sget-object v22, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 879
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 884
    :cond_1
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v21, v0

    move/from16 v22, v8

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_0

    .line 885
    const/16 v21, 0x1

    move/from16 v7, v21

    .line 891
    :cond_2
    move/from16 v21, v7

    if-eqz v21, :cond_17

    .line 899
    const/16 v21, 0x0

    move/from16 v6, v21

    .line 900
    const/16 v21, 0x0

    move/from16 v5, v21

    .line 901
    :goto_1
    move/from16 v21, v6

    if-nez v21, :cond_17

    .line 902
    sget-object v21, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v21, :cond_3

    .line 903
    sget-object v21, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    .line 905
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 909
    const v21, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v8, v21

    .line 910
    const/16 v21, 0x0

    move/from16 v9, v21

    .line 911
    const/16 v21, -0x1

    move/from16 v10, v21

    .line 912
    const/16 v21, -0x1

    move/from16 v11, v21

    .line 914
    const/16 v21, 0x0

    move/from16 v12, v21

    :goto_2
    move/from16 v21, v12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 915
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v21, v0

    move/from16 v22, v12

    aget-object v21, v21, v22

    move-object/from16 v13, v21

    .line 916
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 917
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v21, v0

    sget-object v22, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 914
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 922
    :cond_5
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 923
    goto :goto_3

    .line 925
    :cond_6
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_4

    .line 930
    sget-boolean v21, Landroidx/constraintlayout/solver/LinearSystem;->SKIP_COLUMNS:Z

    if-eqz v21, :cond_d

    .line 931
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v21

    move/from16 v15, v21

    .line 932
    const/16 v21, 0x0

    move/from16 v16, v21

    :goto_4
    move/from16 v21, v16

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 933
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    move-object/from16 v21, v0

    move/from16 v22, v16

    invoke-interface/range {v21 .. v22}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v21

    move-object/from16 v17, v21

    .line 934
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    move-object/from16 v21, v0

    move-object/from16 v22, v17

    invoke-interface/range {v21 .. v22}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v21

    move/from16 v18, v21

    .line 935
    move/from16 v21, v18

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_8

    .line 932
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 941
    :cond_8
    const/16 v21, 0x0

    move/from16 v19, v21

    :goto_5
    move/from16 v21, v19

    const/16 v22, 0x9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 942
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move-object/from16 v21, v0

    move/from16 v22, v19

    aget v21, v21, v22

    move/from16 v22, v18

    div-float v21, v21, v22

    move/from16 v20, v21

    .line 943
    move/from16 v21, v20

    move/from16 v22, v8

    cmpg-float v21, v21, v22

    if-gez v21, :cond_9

    move/from16 v21, v19

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    :cond_9
    move/from16 v21, v19

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    .line 944
    :cond_a
    move/from16 v21, v20

    move/from16 v8, v21

    .line 945
    move/from16 v21, v12

    move/from16 v10, v21

    .line 946
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    move/from16 v21, v0

    move/from16 v11, v21

    .line 947
    move/from16 v21, v19

    move/from16 v9, v21

    .line 941
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 951
    :cond_c
    goto/16 :goto_3

    .line 952
    :cond_d
    const/16 v21, 0x1

    move/from16 v15, v21

    :goto_6
    move/from16 v21, v15

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 953
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move/from16 v22, v15

    aget-object v21, v21, v22

    move-object/from16 v16, v21

    .line 954
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    move-object/from16 v21, v0

    move-object/from16 v22, v16

    invoke-interface/range {v21 .. v22}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v21

    move/from16 v17, v21

    .line 955
    move/from16 v21, v17

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_f

    .line 952
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 961
    :cond_f
    const/16 v21, 0x0

    move/from16 v18, v21

    :goto_7
    move/from16 v21, v18

    const/16 v22, 0x9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 962
    move-object/from16 v21, v16

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move-object/from16 v21, v0

    move/from16 v22, v18

    aget v21, v21, v22

    move/from16 v22, v17

    div-float v21, v21, v22

    move/from16 v19, v21

    .line 963
    move/from16 v21, v19

    move/from16 v22, v8

    cmpg-float v21, v21, v22

    if-gez v21, :cond_10

    move/from16 v21, v18

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    :cond_10
    move/from16 v21, v18

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    .line 964
    :cond_11
    move/from16 v21, v19

    move/from16 v8, v21

    .line 965
    move/from16 v21, v12

    move/from16 v10, v21

    .line 966
    move/from16 v21, v15

    move/from16 v11, v21

    .line 967
    move/from16 v21, v18

    move/from16 v9, v21

    .line 961
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 975
    :cond_13
    move/from16 v21, v10

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 977
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v21, v0

    move/from16 v22, v10

    aget-object v21, v21, v22

    move-object/from16 v12, v21

    .line 982
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 983
    sget-object v21, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v21, :cond_14

    .line 984
    sget-object v21, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 986
    :cond_14
    move-object/from16 v21, v12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v22, v0

    move/from16 v23, v11

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 987
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move/from16 v22, v10

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 988
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v12

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 997
    :goto_8
    move/from16 v21, v5

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    move/from16 v22, v0

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_15

    .line 999
    const/16 v21, 0x1

    move/from16 v6, v21

    .line 1001
    :cond_15
    goto/16 :goto_1

    .line 995
    :cond_16
    const/16 v21, 0x1

    move/from16 v6, v21

    goto :goto_8

    .line 1032
    :cond_17
    move/from16 v21, v5

    move/from16 v3, v21

    return v3
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1159
    move-object v0, p0

    move v1, p1

    move v4, v1

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    move v2, v4

    .line 1160
    move v4, v2

    if-lez v4, :cond_0

    .line 1161
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Mb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1167
    :goto_0
    return-object v0

    .line 1163
    :cond_0
    move v4, v1

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    move v3, v4

    .line 1164
    move v4, v3

    if-lez v4, :cond_1

    .line 1165
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1167
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1175
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1176
    const-string v2, "LOW"

    move-object v0, v2

    .line 1196
    :goto_0
    return-object v0

    .line 1178
    :cond_0
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1179
    const-string v2, "MEDIUM"

    move-object v0, v2

    goto :goto_0

    .line 1181
    :cond_1
    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1182
    const-string v2, "HIGH"

    move-object v0, v2

    goto :goto_0

    .line 1184
    :cond_2
    move v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1185
    const-string v2, "HIGHEST"

    move-object v0, v2

    goto :goto_0

    .line 1187
    :cond_3
    move v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 1188
    const-string v2, "EQUALITY"

    move-object v0, v2

    goto :goto_0

    .line 1190
    :cond_4
    move v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 1191
    const-string v2, "FIXED"

    move-object v0, v2

    goto :goto_0

    .line 1193
    :cond_5
    move v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 1194
    const-string v2, "BARRIER"

    move-object v0, v2

    goto :goto_0

    .line 1196
    :cond_6
    const-string v2, "NONE"

    move-object v0, v2

    goto :goto_0
.end method

.method public static getMetrics()Landroidx/constraintlayout/solver/Metrics;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-object v0
.end method

.method private increaseTableSize()V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 141
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 142
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v2, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 143
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Z

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 144
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 145
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 146
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    .line 148
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    .line 149
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    .line 151
    :cond_0
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I
    .locals 19

    .prologue
    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v13, :cond_0

    .line 717
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget-wide v14, v14, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v13, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    .line 719
    :cond_0
    const/4 v13, 0x0

    move v3, v13

    .line 720
    const/4 v13, 0x0

    move v4, v13

    .line 721
    const/4 v13, 0x0

    move v5, v13

    :goto_0
    move v13, v5

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v13, v14, :cond_3

    .line 722
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move v14, v5

    const/4 v15, 0x0

    aput-boolean v15, v13, v14

    .line 721
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 814
    :cond_1
    move v13, v7

    const/4 v14, -0x1

    if-le v13, v14, :cond_3

    .line 819
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v14, v7

    aget-object v13, v13, v14

    move-object v8, v13

    .line 820
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v14, -0x1

    iput v14, v13, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 821
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v13, :cond_2

    .line 822
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget-wide v14, v14, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v13, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 824
    :cond_2
    move-object v13, v8

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 825
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move v14, v7

    iput v14, v13, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 826
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v14, v0

    move-object v15, v8

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 733
    :cond_3
    :goto_1
    move v13, v3

    if-nez v13, :cond_d

    .line 734
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v13, :cond_4

    .line 735
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget-wide v14, v14, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v13, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    .line 737
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 742
    move v13, v4

    const/4 v14, 0x2

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    mul-int/2addr v14, v15

    if-lt v13, v14, :cond_5

    .line 746
    move v13, v4

    move v0, v13

    .line 857
    :goto_2
    return v0

    .line 749
    :cond_5
    move-object v13, v1

    invoke-interface {v13}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 750
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object v14, v1

    invoke-interface {v14}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    iget v14, v14, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 752
    :cond_6
    move-object v13, v1

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {v13, v14, v15}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    move-object v5, v13

    .line 757
    move-object v13, v5

    if-eqz v13, :cond_8

    .line 758
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object v14, v5

    iget v14, v14, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_7

    .line 762
    move v13, v4

    move v0, v13

    goto :goto_2

    .line 764
    :cond_7
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object v14, v5

    iget v14, v14, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 768
    :cond_8
    move-object v13, v5

    if-eqz v13, :cond_c

    .line 782
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    move v6, v13

    .line 783
    const/4 v13, -0x1

    move v7, v13

    .line 785
    const/4 v13, 0x0

    move v8, v13

    :goto_3
    move v13, v8

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v13, v14, :cond_1

    .line 786
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v14, v8

    aget-object v13, v13, v14

    move-object v9, v13

    .line 787
    move-object v13, v9

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v10, v13

    .line 788
    move-object v13, v10

    iget-object v13, v13, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v14, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v13, v14, :cond_a

    .line 785
    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 792
    :cond_a
    move-object v13, v9

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v13, :cond_b

    .line 793
    goto :goto_4

    .line 796
    :cond_b
    move-object v13, v9

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/ArrayRow;->hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 802
    move-object v13, v9

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    move-object v14, v5

    invoke-interface {v13, v14}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v13

    move v11, v13

    .line 803
    move v13, v11

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    .line 804
    move-object v13, v9

    iget v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    neg-float v13, v13

    move v14, v11

    div-float/2addr v13, v14

    move v12, v13

    .line 805
    move v13, v12

    move v14, v6

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    .line 806
    move v13, v12

    move v6, v13

    .line 807
    move v13, v8

    move v7, v13

    goto :goto_4

    .line 854
    :cond_c
    const/4 v13, 0x1

    move v3, v13

    goto/16 :goto_1

    .line 857
    :cond_d
    move v13, v4

    move v0, v13

    goto/16 :goto_2
.end method

.method private releaseRows()V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    sget-boolean v3, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v3, :cond_2

    .line 158
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 159
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 160
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 161
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v4, v2

    invoke-interface {v3, v4}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v3

    .line 163
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    return-void

    .line 166
    :cond_2
    const/4 v3, 0x0

    move v1, v3

    :goto_1
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 167
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 168
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 169
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v4, v2

    invoke-interface {v3, v4}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v3

    .line 171
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 24

    .prologue
    .line 1445
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v8, v18

    .line 1446
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v9, v18

    .line 1447
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v10, v18

    .line 1448
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v11, v18

    .line 1450
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v12, v18

    .line 1451
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v13, v18

    .line 1452
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v14, v18

    .line 1453
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v15, v18

    .line 1455
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v18

    move-object/from16 v16, v18

    .line 1456
    move/from16 v18, v6

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 1457
    move-object/from16 v18, v16

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    move/from16 v23, v17

    invoke-virtual/range {v18 .. v23}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v18

    .line 1458
    move-object/from16 v18, v3

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1459
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v18

    move-object/from16 v16, v18

    .line 1460
    move/from16 v18, v6

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 1461
    move-object/from16 v18, v16

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    move/from16 v23, v17

    invoke-virtual/range {v18 .. v23}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v18

    .line 1462
    move-object/from16 v18, v3

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1463
    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 18

    .prologue
    .line 1288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    move-object v9, v10

    .line 1289
    move-object v10, v9

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v10 .. v17}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 1290
    move v10, v8

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 1291
    move-object v10, v9

    move-object v11, v0

    move v12, v8

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 1293
    :cond_0
    move-object v10, v0

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1294
    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 13

    .prologue
    .line 553
    move-object v1, p0

    move-object v2, p1

    move-object v7, v2

    if-nez v7, :cond_0

    .line 636
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-object v7, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v7, :cond_1

    .line 557
    sget-object v7, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    .line 558
    move-object v7, v2

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v7, :cond_1

    .line 559
    sget-object v7, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    .line 562
    :cond_1
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    if-ge v7, v8, :cond_2

    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v7, v8, :cond_3

    .line 563
    :cond_2
    move-object v7, v1

    invoke-direct {v7}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 570
    :cond_3
    const/4 v7, 0x0

    move v3, v7

    .line 571
    move-object v7, v2

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v7, :cond_a

    .line 573
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->updateFromSystem(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 575
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/ArrayRow;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 576
    goto :goto_0

    .line 580
    :cond_4
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/ArrayRow;->ensurePositiveConstant()V

    .line 587
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 589
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v4, v7

    .line 590
    move-object v7, v2

    move-object v8, v4

    iput-object v8, v7, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 591
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move v5, v7

    .line 592
    move-object v7, v1

    move-object v8, v2

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 593
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_8

    .line 594
    const/4 v7, 0x1

    move v3, v7

    .line 595
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 596
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    move-result v7

    .line 597
    move-object v7, v4

    iget v7, v7, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 601
    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v8, v4

    if-ne v7, v8, :cond_6

    .line 603
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 604
    move-object v7, v6

    if-eqz v7, :cond_6

    .line 605
    sget-object v7, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v7, :cond_5

    .line 606
    sget-object v7, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 608
    :cond_5
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 611
    :cond_6
    move-object v7, v2

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v7, :cond_7

    .line 612
    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 614
    :cond_7
    sget-boolean v7, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v7, :cond_9

    .line 615
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v7

    .line 619
    :goto_1
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 624
    :cond_8
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/ArrayRow;->hasKeyVariable()Z

    move-result v7

    if-nez v7, :cond_a

    .line 630
    goto/16 :goto_0

    .line 617
    :cond_9
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 633
    :cond_a
    move v7, v3

    if-nez v7, :cond_b

    .line 634
    move-object v7, v1

    move-object v8, v2

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 636
    :cond_b
    goto/16 :goto_0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 10

    .prologue
    .line 1336
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    sget-boolean v6, Landroidx/constraintlayout/solver/LinearSystem;->USE_BASIC_SYNONYMS:Z

    if-eqz v6, :cond_0

    move v6, v4

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    move-object v6, v2

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 1340
    move-object v6, v1

    move-object v7, v0

    move-object v8, v2

    iget v8, v8, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    move v9, v3

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    .line 1341
    const/4 v6, 0x0

    move-object v0, v6

    .line 1368
    :goto_0
    return-object v0

    .line 1362
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v5, v6

    .line 1363
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1364
    move v6, v4

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 1365
    move-object v6, v5

    move-object v7, v0

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1367
    :cond_1
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1368
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 10

    .prologue
    .line 1377
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-boolean v6, Landroidx/constraintlayout/solver/LinearSystem;->USE_BASIC_SYNONYMS:Z

    if-eqz v6, :cond_2

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 1381
    move-object v6, v1

    move-object v7, v0

    move v8, v2

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    .line 1382
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_1

    .line 1383
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 1384
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->isSynonym:Z

    if-eqz v6, :cond_0

    move-object v6, v4

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->synonym:I

    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_0

    .line 1385
    move-object v6, v4

    move-object v7, v0

    move v8, v2

    int-to-float v8, v8

    move-object v9, v4

    iget v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->synonymDelta:F

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    .line 1382
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1413
    :cond_1
    :goto_1
    return-void

    .line 1393
    :cond_2
    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    move v3, v6

    .line 1394
    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 1395
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 1396
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v6, :cond_3

    .line 1397
    move-object v6, v4

    move v7, v2

    int-to-float v7, v7

    iput v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 1413
    :goto_2
    goto :goto_1

    .line 1399
    :cond_3
    move-object v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v6

    if-nez v6, :cond_4

    .line 1400
    move-object v6, v4

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 1401
    move-object v6, v4

    move v7, v2

    int-to-float v7, v7

    iput v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_2

    .line 1403
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v5, v6

    .line 1404
    move-object v6, v5

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1405
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_2

    .line 1409
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v4, v6

    .line 1410
    move-object v6, v4

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1411
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_2
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .locals 12

    .prologue
    .line 1229
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object v5, v7

    .line 1230
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 1231
    move-object v7, v6

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1232
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v6

    move v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 1233
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1234
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 13

    .prologue
    .line 1214
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    move-object v5, v8

    .line 1215
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 1216
    move-object v8, v6

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1217
    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1218
    move v8, v4

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 1219
    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    move-object v9, v6

    invoke-interface {v8, v9}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v8

    move v7, v8

    .line 1220
    move-object v8, v0

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1222
    :cond_0
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1223
    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .locals 12

    .prologue
    .line 1262
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object v5, v7

    .line 1263
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 1264
    move-object v7, v6

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1265
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v6

    move v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 1266
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1267
    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 13

    .prologue
    .line 1247
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    move-object v5, v8

    .line 1248
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 1249
    move-object v8, v6

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1250
    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1251
    move v8, v4

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 1252
    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    move-object v9, v6

    invoke-interface {v8, v9}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v8

    move v7, v8

    .line 1253
    move-object v8, v0

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1255
    :cond_0
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1256
    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .locals 14

    .prologue
    .line 1300
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    move-object v7, v8

    .line 1301
    move-object v8, v7

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1302
    move v8, v6

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 1303
    move-object v8, v7

    move-object v9, v0

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1305
    :cond_0
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1306
    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V
    .locals 9

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v6, 0x0

    move-object v4, v6

    .line 323
    move-object v6, v0

    move v7, v3

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    move-object v5, v6

    .line 324
    move-object v6, v1

    move-object v7, v5

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 325
    return-void
.end method

.method public addSynonym(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 9

    .prologue
    .line 1309
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move v4, v3

    if-nez v4, :cond_2

    .line 1313
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->isSynonym:Z

    if-eqz v4, :cond_0

    .line 1314
    move v4, v3

    int-to-float v4, v4

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->synonymDelta:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v3, v4

    .line 1315
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->synonym:I

    aget-object v4, v4, v5

    move-object v2, v4

    .line 1317
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->isSynonym:Z

    if-eqz v4, :cond_1

    .line 1318
    move v4, v3

    int-to-float v4, v4

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->synonymDelta:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    move v3, v4

    .line 1319
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->synonym:I

    aget-object v4, v4, v5

    move-object v1, v4

    .line 1326
    :goto_0
    return-void

    .line 1321
    :cond_1
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/SolverVariable;->setSynonym(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    .line 1324
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/16 v8, 0x8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v4

    goto :goto_0
.end method

.method final cleanupRows()V
    .locals 10

    .prologue
    .line 523
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 524
    :goto_0
    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v4, v5, :cond_4

    .line 525
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v1

    aget-object v4, v4, v5

    move-object v2, v4

    .line 526
    move-object v4, v2

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v4

    if-nez v4, :cond_0

    .line 527
    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 529
    :cond_0
    move-object v4, v2

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v4, :cond_2

    .line 530
    move-object v4, v2

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 531
    move-object v4, v2

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 532
    move v4, v1

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 533
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 535
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 536
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 537
    add-int/lit8 v1, v1, -0x1

    .line 538
    sget-boolean v4, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v4, :cond_3

    .line 539
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v5, v2

    invoke-interface {v4, v5}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v4

    .line 544
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 545
    goto :goto_0

    .line 541
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v5, v2

    invoke-interface {v4, v5}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    .line 546
    :cond_4
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11

    .prologue
    .line 348
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_0

    .line 349
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->errors:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->errors:J

    .line 351
    :cond_0
    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v5, v6, :cond_1

    .line 352
    move-object v5, v1

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 354
    :cond_1
    move-object v5, v1

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object v4, v5

    .line 355
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 356
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 357
    move-object v5, v4

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 358
    move-object v5, v4

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 359
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v7, v4

    aput-object v7, v5, v6

    .line 360
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    move-object v6, v4

    invoke-interface {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem$Row;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 361
    move-object v5, v4

    move-object v1, v5

    return-object v1
.end method

.method public createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 9

    .prologue
    .line 291
    move-object v1, p0

    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_0

    .line 292
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    .line 294
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v3, v4, :cond_1

    .line 295
    move-object v3, v1

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 297
    :cond_1
    move-object v3, v1

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 298
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 299
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 300
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 301
    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v5, v2

    aput-object v5, v3, v4

    .line 302
    move-object v3, v2

    move-object v1, v3

    return-object v1
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 7

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 221
    const/4 v3, 0x0

    move-object v0, v3

    .line 246
    :goto_0
    return-object v0

    .line 223
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v3, v4, :cond_1

    .line 224
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 226
    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    .line 227
    move-object v3, v1

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_5

    .line 228
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 229
    move-object v3, v2

    if-nez v3, :cond_2

    .line 230
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 231
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 233
    :cond_2
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    if-gt v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-object v3, v3, v4

    if-nez v3, :cond_5

    .line 236
    :cond_3
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 237
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 239
    :cond_4
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 240
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 241
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 242
    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 243
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v5, v2

    aput-object v5, v3, v4

    .line 246
    :cond_5
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public createRow()Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    .prologue
    .line 254
    move-object v0, p0

    sget-boolean v2, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v2, :cond_1

    .line 255
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v1, v2

    .line 256
    move-object v2, v1

    if-nez v2, :cond_0

    .line 257
    new-instance v2, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    move-object v1, v2

    .line 258
    sget-wide v2, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    .line 271
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/solver/SolverVariable;->increaseErrorId()V

    .line 272
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 260
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    goto :goto_0

    .line 263
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v1, v2

    .line 264
    move-object v2, v1

    if-nez v2, :cond_2

    .line 265
    new-instance v2, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    move-object v1, v2

    .line 266
    sget-wide v2, Landroidx/constraintlayout/solver/LinearSystem;->ARRAY_ROW_CREATION:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Landroidx/constraintlayout/solver/LinearSystem;->ARRAY_ROW_CREATION:J

    goto :goto_0

    .line 268
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    goto :goto_0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 9

    .prologue
    .line 276
    move-object v1, p0

    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_0

    .line 277
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    .line 279
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v3, v4, :cond_1

    .line 280
    move-object v3, v1

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 282
    :cond_1
    move-object v3, v1

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 283
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 284
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 285
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 286
    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v5, v2

    aput-object v5, v3, v4

    .line 287
    move-object v3, v2

    move-object v1, v3

    return-object v1
.end method

.method public displayReadableRows()V
    .locals 9

    .prologue
    .line 1059
    move-object v0, p0

    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 1060
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " num vars "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1061
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_1

    .line 1062
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 1063
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-eqz v5, :cond_0

    .line 1064
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " $["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1061
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1067
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1068
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_3

    .line 1069
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 1070
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->isSynonym:Z

    if-eqz v5, :cond_2

    .line 1071
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v3

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->synonym:I

    aget-object v5, v5, v6

    move-object v4, v5

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ~["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->synonymDelta:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1068
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1075
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n #  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1076
    const/4 v5, 0x0

    move v2, v5

    :goto_2
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v5, v6, :cond_4

    .line 1077
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1078
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n #  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1076
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1080
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    if-eqz v5, :cond_5

    .line 1081
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Goal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1083
    :cond_5
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method displaySystemInformations()V
    .locals 11

    .prologue
    .line 1120
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 1121
    const/4 v5, 0x0

    move v2, v5

    .line 1122
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v5, v6, :cond_1

    .line 1123
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 1124
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v6

    add-int/2addr v5, v6

    move v2, v5

    .line 1122
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1127
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .line 1128
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v5, v6, :cond_3

    .line 1129
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    .line 1130
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v6

    add-int/2addr v5, v6

    move v3, v5

    .line 1128
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1134
    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Linear System -> Table size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/2addr v8, v9

    .line 1135
    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") -- row sizes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v2

    .line 1136
    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", actual size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v3

    .line 1137
    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rows: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cols: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " occupied cells, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v1

    .line 1140
    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1134
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 7

    .prologue
    .line 1088
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 1089
    const-string v3, ""

    move-object v1, v3

    .line 1090
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 1091
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v3, v4, :cond_0

    .line 1092
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1093
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1090
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1096
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1097
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sput-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    .line 108
    return-void
.end method

.method public getCache()Landroidx/constraintlayout/solver/Cache;
    .locals 2

    .prologue
    .line 1171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object v0, v1

    return-object v0
.end method

.method getGoal()Landroidx/constraintlayout/solver/LinearSystem$Row;
    .locals 2

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    move-object v0, v1

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 6

    .prologue
    .line 1102
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 1103
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 1104
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 1105
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 1103
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    move v3, v1

    move v0, v3

    return v0
.end method

.method public getNumEquations()I
    .locals 2

    .prologue
    .line 1112
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move v0, v1

    return v0
.end method

.method public getNumVariables()I
    .locals 2

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move v0, v1

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v4

    .line 415
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 416
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 417
    move-object v4, v3

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v0, v4

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method getRow(I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 6

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    sget-object v5, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 402
    move-object v3, v2

    if-nez v3, :cond_0

    .line 403
    const/4 v3, 0x0

    move v0, v3

    .line 405
    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    move v0, v3

    goto :goto_0
.end method

.method getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 8

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 431
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 433
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v4

    .line 434
    move-object v4, v3

    if-nez v4, :cond_1

    .line 435
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 437
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public minimize()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 448
    move-object v1, p0

    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_0

    .line 449
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    .line 451
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v5}, Landroidx/constraintlayout/solver/LinearSystem$Row;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 455
    move-object v5, v1

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    .line 487
    :goto_0
    return-void

    .line 461
    :cond_1
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    if-nez v5, :cond_2

    move-object v5, v1

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    if-eqz v5, :cond_8

    .line 462
    :cond_2
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_3

    .line 463
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    .line 465
    :cond_3
    const/4 v5, 0x1

    move v2, v5

    .line 466
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v5, v6, :cond_4

    .line 467
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 468
    move-object v5, v4

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_5

    .line 469
    const/4 v5, 0x0

    move v2, v5

    .line 473
    :cond_4
    move v5, v2

    if-nez v5, :cond_6

    .line 474
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 487
    :goto_2
    goto :goto_0

    .line 466
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 476
    :cond_6
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_7

    .line 477
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    .line 479
    :cond_7
    move-object v5, v1

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    goto :goto_2

    .line 482
    :cond_8
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    goto :goto_2
.end method

.method minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 494
    move-object v1, p0

    move-object v2, p1

    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_0

    .line 495
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    .line 496
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    .line 497
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    .line 509
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I

    move-result v3

    .line 514
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    move-result v3

    .line 519
    move-object v3, v1

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    .line 520
    return-void
.end method

.method public removeRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 10

    .prologue
    .line 687
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v4, :cond_4

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v4, :cond_4

    .line 688
    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 689
    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 690
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v4

    .line 691
    move-object v4, v3

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_0

    .line 692
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 694
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    :cond_1
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 698
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-nez v4, :cond_3

    .line 699
    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->setFinalValue(Landroidx/constraintlayout/solver/LinearSystem;F)V

    .line 701
    :cond_3
    sget-boolean v4, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v4, :cond_5

    .line 702
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v4

    .line 707
    :cond_4
    :goto_1
    return-void

    .line 704
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method

.method public reset()V
    .locals 9

    .prologue
    .line 185
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 186
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 187
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 188
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 192
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 194
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 196
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 198
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 199
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v3}, Landroidx/constraintlayout/solver/LinearSystem$Row;->clear()V

    .line 200
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 201
    const/4 v3, 0x0

    move v1, v3

    :goto_1
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_4

    .line 202
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    .line 203
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    .line 201
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_4
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 207
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 208
    sget-boolean v3, Landroidx/constraintlayout/solver/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v3, :cond_5

    .line 209
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 213
    :goto_2
    return-void

    .line 211
    :cond_5
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v5, v6}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    goto :goto_2
.end method
