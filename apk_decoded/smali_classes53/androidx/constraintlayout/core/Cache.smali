.class public Landroidx/constraintlayout/core/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/core/Pools$Pool",
            "<",
            "Landroidx/constraintlayout/core/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/core/Pools$Pool",
            "<",
            "Landroidx/constraintlayout/core/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/core/Pools$Pool",
            "<",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/Pools$SimplePool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    iput-object v2, v1, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 23
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/Pools$SimplePool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    iput-object v2, v1, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 24
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/Pools$SimplePool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    iput-object v2, v1, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    .line 25
    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v2, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    return-void
.end method
