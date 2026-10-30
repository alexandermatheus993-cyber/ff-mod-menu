.class Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field row:Landroidx/constraintlayout/solver/PriorityGoalRow;

.field final synthetic this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

.field variable:Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/PriorityGoalRow;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->row:Landroidx/constraintlayout/solver/PriorityGoalRow;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 11

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    const/16 v5, 0x9

    if-ge v4, v5, :cond_1

    .line 82
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v5, v2

    move-object v9, v4

    move v10, v5

    move-object v4, v9

    move v5, v10

    move-object v6, v9

    move v7, v10

    aget v6, v6, v7

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v8, v2

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 83
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 84
    move v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 85
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v5, v2

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 81
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z
    .locals 13

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    if-eqz v6, :cond_3

    .line 49
    const/4 v6, 0x1

    move v3, v6

    .line 50
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    const/16 v7, 0x9

    if-ge v6, v7, :cond_1

    .line 51
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v7, v4

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v10, v4

    aget v9, v9, v10

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 52
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 53
    move v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x38d1b717    # 1.0E-4f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 54
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v7, v4

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 50
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    goto :goto_1

    .line 59
    :cond_1
    move v6, v3

    if-eqz v6, :cond_2

    .line 60
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-static {v6, v7}, Landroidx/constraintlayout/solver/PriorityGoalRow;->access$000(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 77
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    :goto_2
    return v0

    .line 63
    :cond_3
    const/4 v6, 0x0

    move v3, v6

    :goto_3
    move v6, v3

    const/16 v7, 0x9

    if-ge v6, v7, :cond_6

    .line 64
    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v7, v3

    aget v6, v6, v7

    move v4, v6

    .line 65
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 66
    move v6, v2

    move v7, v4

    mul-float/2addr v6, v7

    move v5, v6

    .line 67
    move v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x38d1b717    # 1.0E-4f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 68
    const/4 v6, 0x0

    move v5, v6

    .line 70
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v7, v3

    move v8, v5

    aput v8, v6, v7

    .line 63
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 72
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v7, v3

    const/4 v8, 0x0

    aput v8, v6, v7

    goto :goto_4

    .line 75
    :cond_6
    const/4 v6, 0x1

    move v0, v6

    goto :goto_2
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v2, v3

    .line 131
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public init(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 45
    return-void
.end method

.method public final isNegative()Z
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    const/16 v3, 0x8

    move v1, v3

    :goto_0
    move v3, v1

    if-ltz v3, :cond_2

    .line 92
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 93
    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 94
    const/4 v3, 0x0

    move v0, v3

    .line 100
    :goto_1
    return v0

    .line 96
    :cond_0
    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 97
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 91
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 100
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public final isNull()Z
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 121
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v3, v1

    aget v2, v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x0

    move v0, v2

    .line 125
    :goto_1
    return v0

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method

.method public final isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    const/16 v5, 0x8

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_2

    .line 105
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v6, v2

    aget v5, v5, v6

    move v3, v5

    .line 106
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v6, v2

    aget v5, v5, v6

    move v4, v5

    .line 107
    move v5, v4

    move v6, v3

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 104
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 110
    :cond_0
    move v5, v4

    move v6, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 111
    const/4 v5, 0x1

    move v0, v5

    .line 116
    :goto_1
    return v0

    .line 113
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 116
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    const-string v3, "[ "

    move-object v1, v3

    .line 140
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v3, :cond_0

    .line 141
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    move v5, v2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 146
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method
