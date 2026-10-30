.class public Landroidx/constraintlayout/core/PriorityGoalRow;
.super Landroidx/constraintlayout/core/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

.field mCache:Landroidx/constraintlayout/core/Cache;

.field private numGoals:I

.field private sortArray:[Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .locals 8

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    .line 29
    move-object v2, v0

    const/16 v3, 0x80

    iput v3, v2, Landroidx/constraintlayout/core/PriorityGoalRow;->TABLE_SIZE:I

    .line 30
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->TABLE_SIZE:I

    new-array v3, v3, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v3, v2, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 31
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->TABLE_SIZE:I

    new-array v3, v3, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v3, v2, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    .line 32
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    .line 33
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/PriorityGoalRow;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    .line 161
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/PriorityGoalRow;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 162
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    return-void
.end method

.method private final addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 10

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 204
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v4, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    .line 205
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v4, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    .line 207
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 208
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    .line 210
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->id:I

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-le v3, v4, :cond_2

    .line 211
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    if-ge v3, v4, :cond_1

    .line 212
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    new-instance v6, Landroidx/constraintlayout/core/PriorityGoalRow$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/core/PriorityGoalRow$1;-><init>(Landroidx/constraintlayout/core/PriorityGoalRow;)V

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 220
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    if-ge v3, v4, :cond_2

    .line 221
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/core/SolverVariable;

    move v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    :cond_2
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    .line 226
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 227
    return-void
.end method

.method private final removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 10

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    if-ge v4, v5, :cond_2

    .line 231
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 232
    move v4, v2

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 233
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_0
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    .line 236
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    .line 240
    :goto_2
    return-void

    .line 230
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_2
    goto :goto_2
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 5

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 197
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->reset()V

    .line 198
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 199
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 200
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    .line 155
    return-void
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;
    .locals 9

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, -0x1

    move v3, v6

    .line 174
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    if-ge v6, v7, :cond_3

    .line 175
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 176
    move-object v6, v2

    move-object v7, v5

    iget v7, v7, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_1

    .line 174
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 180
    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 181
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    move v6, v4

    move v3, v6

    goto :goto_1

    .line 184
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroidx/constraintlayout/core/SolverVariable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    move v6, v4

    move v3, v6

    goto :goto_1

    .line 188
    :cond_3
    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 189
    const/4 v6, 0x0

    move-object v0, v6

    .line 191
    :goto_2
    return-object v0

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v7, v3

    aget-object v6, v6, v7

    move-object v0, v6

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 265
    move-object v0, p0

    const-string v4, ""

    move-object v1, v4

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " goal -> ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 267
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->numGoals:I

    if-ge v4, v5, :cond_0

    .line 268
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/core/SolverVariable;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 269
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V
    .locals 15

    .prologue
    .line 244
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v2

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v4, v10

    .line 245
    move-object v10, v4

    if-nez v10, :cond_0

    .line 261
    :goto_0
    return-void

    .line 249
    :cond_0
    move-object v10, v2

    iget-object v10, v10, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    move-object v5, v10

    .line 250
    move-object v10, v5

    invoke-interface {v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v10

    move v6, v10

    .line 251
    const/4 v10, 0x0

    move v7, v10

    :goto_1
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_2

    .line 252
    move-object v10, v5

    move v11, v7

    invoke-interface {v10, v11}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    move-object v8, v10

    .line 253
    move-object v10, v5

    move v11, v7

    invoke-interface {v10, v11}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v10

    move v9, v10

    .line 254
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 255
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/PriorityGoalRow;->accessor:Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;

    move-object v11, v4

    move v12, v9

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;F)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 256
    move-object v10, v0

    move-object v11, v8

    invoke-direct {v10, v11}, Landroidx/constraintlayout/core/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 258
    :cond_1
    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    move-object v12, v2

    iget v12, v12, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    move v13, v9

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroidx/constraintlayout/core/PriorityGoalRow;->constantValue:F

    .line 251
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 260
    :cond_2
    move-object v10, v0

    move-object v11, v4

    invoke-direct {v10, v11}, Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 261
    goto :goto_0
.end method
