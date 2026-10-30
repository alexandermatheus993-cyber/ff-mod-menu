.class public Landroidx/work/impl/utils/SerialExecutor;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/SerialExecutor$Task;
    }
.end annotation


# instance fields
.field private volatile mActive:Ljava/lang/Runnable;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;

.field private final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroidx/work/impl/utils/SerialExecutor$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/impl/utils/SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 36
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayDeque;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v2, Landroidx/work/impl/utils/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 37
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroidx/work/impl/utils/SerialExecutor;->mLock:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 10
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/SerialExecutor;->mLock:Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    monitor-enter v4

    .line 43
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/work/impl/utils/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v5, Landroidx/work/impl/utils/SerialExecutor$Task;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroidx/work/impl/utils/SerialExecutor$Task;-><init>(Landroidx/work/impl/utils/SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 44
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v4, :cond_0

    .line 45
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/work/impl/utils/SerialExecutor;->scheduleNext()V

    .line 47
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method scheduleNext()V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/utils/SerialExecutor;->mLock:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 53
    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/work/impl/utils/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Landroidx/work/impl/utils/SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 54
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/utils/SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
