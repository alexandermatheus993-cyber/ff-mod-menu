.class Landroidx/constraintlayout/solver/PriorityGoalRow$1;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/solver/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroidx/constraintlayout/solver/SolverVariable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/PriorityGoalRow;)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/PriorityGoalRow$1;->this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)I
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/PriorityGoalRow$1;->compare(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result v3

    move v0, v3

    return v0
.end method
