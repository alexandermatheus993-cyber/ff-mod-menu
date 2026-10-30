.class public abstract Landroidx/work/impl/utils/futures/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper;,
        Landroidx/work/impl/utils/futures/AbstractFuture$SafeAtomicHelper;,
        Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;,
        Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;,
        Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;,
        Landroidx/work/impl/utils/futures/AbstractFuture$Failure;,
        Landroidx/work/impl/utils/futures/AbstractFuture$Listener;,
        Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field volatile listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 70
    const-string v3, "guava.concurrent.generate_cancellation_cause"

    const-string v4, "false"

    .line 72
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Landroidx/work/impl/utils/futures/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 75
    const-class v3, Landroidx/work/impl/utils/futures/AbstractFuture;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sput-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 86
    const/4 v3, 0x0

    move-object v1, v3

    .line 91
    :try_start_0
    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$SafeAtomicHelper;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const-class v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const-class v6, Ljava/lang/Thread;

    const-string v7, "thread"

    .line 93
    invoke-static {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v6, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const-class v7, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const-string v8, "next"

    .line 94
    invoke-static {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v7, Landroidx/work/impl/utils/futures/AbstractFuture;

    const-class v8, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    const-string v9, "waiters"

    .line 95
    invoke-static {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v8, Landroidx/work/impl/utils/futures/AbstractFuture;

    const-class v9, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    const-string v10, "listeners"

    .line 96
    invoke-static {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v9, Landroidx/work/impl/utils/futures/AbstractFuture;

    const-class v10, Ljava/lang/Object;

    const-string v11, "value"

    .line 97
    invoke-static {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Landroidx/work/impl/utils/futures/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 107
    :goto_0
    move-object v3, v0

    sput-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    .line 112
    const-class v3, Ljava/util/concurrent/locks/LockSupport;

    move-object v2, v3

    .line 116
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 117
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "SafeAtomicHelper is broken!"

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    :cond_0
    new-instance v3, Ljava/lang/Object;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void

    .line 98
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 103
    move-object v3, v2

    move-object v1, v3

    .line 104
    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Landroidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 320
    return-void
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    .line 1021
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 1022
    move-object v3, v1

    const-string v4, "SUCCESS, result=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 1030
    :goto_0
    return-void

    .line 1023
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1024
    move-object v3, v1

    const-string v4, "FAILURE, cause=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1029
    goto :goto_0

    .line 1025
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1026
    move-object v3, v1

    const-string v4, "CANCELLED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1029
    goto :goto_0

    .line 1027
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 1028
    move-object v3, v1

    const-string v4, "UNKNOWN, cause=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " thrown from get()]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1184
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/util/concurrent/CancellationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1185
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 1186
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1192
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 1193
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1195
    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method private clearListeners(Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Landroidx/work/impl/utils/futures/AbstractFuture$Listener;
    .locals 9

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture;->listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    move-object v2, v5

    .line 959
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v6, v0

    move-object v7, v2

    sget-object v8, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casListeners(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 960
    move-object v5, v1

    move-object v3, v5

    .line 961
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 962
    move-object v5, v2

    move-object v4, v5

    .line 963
    move-object v5, v2

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    move-object v2, v5

    .line 964
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 965
    move-object v5, v4

    move-object v3, v5

    .line 966
    goto :goto_0

    .line 967
    :cond_1
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method static complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/AbstractFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 866
    move-object v0, p0

    const/4 v6, 0x0

    move-object v1, v6

    .line 869
    :goto_0
    move-object v6, v0

    invoke-direct {v6}, Landroidx/work/impl/utils/futures/AbstractFuture;->releaseWaiters()V

    .line 875
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/work/impl/utils/futures/AbstractFuture;->afterDone()V

    .line 877
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/work/impl/utils/futures/AbstractFuture;->clearListeners(Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    move-result-object v6

    move-object v1, v6

    .line 878
    const/4 v6, 0x0

    move-object v0, v6

    .line 879
    :goto_1
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 880
    move-object v6, v1

    move-object v2, v6

    .line 881
    move-object v6, v1

    iget-object v6, v6, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    move-object v1, v6

    .line 882
    move-object v6, v2

    iget-object v6, v6, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    move-object v3, v6

    .line 883
    move-object v6, v3

    instance-of v6, v6, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-eqz v6, :cond_1

    .line 884
    move-object v6, v3

    check-cast v6, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    move-object v4, v6

    .line 891
    move-object v6, v4

    iget-object v6, v6, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->owner:Landroidx/work/impl/utils/futures/AbstractFuture;

    move-object v0, v6

    .line 892
    move-object v6, v0

    iget-object v6, v6, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v7, v4

    if-ne v6, v7, :cond_0

    .line 893
    move-object v6, v4

    iget-object v6, v6, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v6}, Landroidx/work/impl/utils/futures/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 894
    sget-object v6, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v7, v0

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 895
    goto :goto_0

    .line 902
    :cond_0
    :goto_2
    goto :goto_1

    .line 900
    :cond_1
    move-object v6, v3

    move-object v7, v2

    iget-object v7, v7, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v6, v7}, Landroidx/work/impl/utils/futures/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    .line 905
    :cond_2
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 8

    .prologue
    .line 1051
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    :try_start_0
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1056
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuntimeException while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with executor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 513
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v3, :cond_0

    .line 514
    const-string v3, "Task was cancelled."

    move-object v4, v1

    check-cast v4, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    iget-object v4, v4, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-static {v3, v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    throw v3

    .line 515
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    if-eqz v3, :cond_1

    .line 516
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 517
    :cond_1
    move-object v3, v1

    sget-object v4, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    .line 518
    const/4 v3, 0x0

    move-object v0, v3

    .line 522
    :goto_0
    return-object v0

    .line 521
    :cond_2
    move-object v3, v1

    move-object v2, v3

    .line 522
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 798
    move-object v0, p0

    move-object v3, v0

    instance-of v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture;

    if-eqz v3, :cond_2

    .line 804
    move-object v3, v0

    check-cast v3, Landroidx/work/impl/utils/futures/AbstractFuture;

    iget-object v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v1, v3

    .line 805
    move-object v3, v1

    instance-of v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v3, :cond_0

    .line 809
    move-object v3, v1

    check-cast v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    move-object v2, v3

    .line 810
    move-object v3, v2

    iget-boolean v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v3, :cond_0

    .line 811
    move-object v3, v2

    iget-object v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v2

    iget-object v6, v6, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    :goto_0
    move-object v1, v3

    .line 815
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .line 839
    :goto_1
    return-object v0

    .line 811
    :cond_1
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    goto :goto_0

    .line 817
    :cond_2
    move-object v3, v0

    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v3

    move v1, v3

    .line 819
    sget-boolean v3, Landroidx/work/impl/utils/futures/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move v4, v1

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 820
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    move-object v0, v3

    goto :goto_1

    .line 819
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 824
    :cond_4
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 825
    move-object v3, v2

    if-nez v3, :cond_5

    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_3
    move-object v0, v3

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto :goto_3

    .line 826
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 827
    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1

    .line 828
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 829
    move v3, v1

    if-nez v3, :cond_6

    .line 830
    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1

    .line 837
    :cond_6
    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1

    .line 838
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 839
    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 847
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 851
    :goto_0
    move-object v4, v0

    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 857
    move v4, v1

    if-eqz v4, :cond_0

    .line 858
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 851
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 852
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 853
    const/4 v4, 0x1

    move v1, v4

    .line 854
    goto :goto_0

    .line 857
    :catchall_0
    move-exception v4

    move-object v3, v4

    move v4, v1

    if-eqz v4, :cond_1

    .line 858
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 860
    :cond_1
    move-object v4, v3

    throw v4
.end method

.method private releaseWaiters()V
    .locals 7

    .prologue
    .line 937
    move-object v0, p0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object v1, v3

    .line 938
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v4, v0

    move-object v5, v1

    sget-object v6, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 939
    move-object v3, v1

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 941
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->unpark()V

    .line 940
    move-object v3, v2

    iget-object v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object v2, v3

    goto :goto_0

    .line 943
    :cond_1
    return-void
.end method

.method private removeWaiter(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V
    .locals 9

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 177
    :goto_0
    const/4 v5, 0x0

    move-object v2, v5

    .line 178
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object v3, v5

    .line 179
    move-object v5, v3

    sget-object v6, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-ne v5, v6, :cond_0

    .line 200
    :goto_1
    return-void

    .line 183
    :cond_0
    :goto_2
    move-object v5, v3

    if-eqz v5, :cond_4

    .line 184
    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object v4, v5

    .line 185
    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v5, :cond_2

    .line 186
    move-object v5, v3

    move-object v2, v5

    .line 196
    :cond_1
    move-object v5, v4

    move-object v3, v5

    goto :goto_2

    .line 187
    :cond_2
    move-object v5, v2

    if-eqz v5, :cond_3

    .line 188
    move-object v5, v2

    move-object v6, v4

    iput-object v6, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 189
    move-object v5, v2

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v5, :cond_1

    .line 191
    goto :goto_0

    .line 193
    :cond_3
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    goto :goto_0

    .line 200
    :cond_4
    goto :goto_1
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1039
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    .line 1040
    const-string v2, "this future"

    move-object v0, v2

    .line 1042
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 10

    .prologue
    .line 651
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-static {v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 652
    move-object v5, v2

    invoke-static {v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 653
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture;->listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    move-object v3, v5

    .line 654
    move-object v5, v3

    sget-object v6, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    if-eq v5, v6, :cond_2

    .line 655
    new-instance v5, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object v4, v5

    .line 657
    :cond_0
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->next:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 658
    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casListeners(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;Landroidx/work/impl/utils/futures/AbstractFuture$Listener;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 667
    :goto_0
    return-void

    .line 661
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture;->listeners:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    move-object v3, v5

    .line 662
    move-object v5, v3

    sget-object v6, Landroidx/work/impl/utils/futures/AbstractFuture$Listener;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Listener;

    if-ne v5, v6, :cond_0

    .line 666
    :cond_2
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/work/impl/utils/futures/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 667
    goto :goto_0
.end method

.method protected afterDone()V
    .locals 0

    .prologue
    .line 920
    return-void
.end method

.method public final cancel(Z)Z
    .locals 15

    .prologue
    .line 553
    move-object v0, p0

    move/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v2, v8

    .line 554
    const/4 v8, 0x0

    move v3, v8

    .line 555
    move-object v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    move-object v9, v2

    instance-of v9, v9, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    or-int/2addr v8, v9

    if-eqz v8, :cond_6

    .line 558
    sget-boolean v8, Landroidx/work/impl/utils/futures/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v8, :cond_3

    new-instance v8, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v1

    new-instance v11, Ljava/util/concurrent/CancellationException;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string v13, "Future.cancel() was called."

    invoke-direct {v12, v13}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10, v11}, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    :goto_1
    move-object v4, v8

    .line 566
    move-object v8, v0

    move-object v5, v8

    .line 568
    :cond_0
    :goto_2
    sget-object v8, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v9, v5

    move-object v10, v2

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 569
    const/4 v8, 0x1

    move v3, v8

    .line 572
    move v8, v1

    if-eqz v8, :cond_1

    .line 573
    move-object v8, v5

    invoke-virtual {v8}, Landroidx/work/impl/utils/futures/AbstractFuture;->interruptTask()V

    .line 575
    :cond_1
    move-object v8, v5

    invoke-static {v8}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 576
    move-object v8, v2

    instance-of v8, v8, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-eqz v8, :cond_6

    .line 580
    move-object v8, v2

    check-cast v8, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    iget-object v8, v8, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v6, v8

    .line 581
    move-object v8, v6

    instance-of v8, v8, Landroidx/work/impl/utils/futures/AbstractFuture;

    if-eqz v8, :cond_7

    .line 591
    move-object v8, v6

    check-cast v8, Landroidx/work/impl/utils/futures/AbstractFuture;

    move-object v7, v8

    .line 592
    move-object v8, v7

    iget-object v8, v8, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v2, v8

    .line 593
    move-object v8, v2

    if-nez v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    move-object v9, v2

    instance-of v9, v9, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    or-int/2addr v8, v9

    if-eqz v8, :cond_6

    .line 594
    move-object v8, v7

    move-object v5, v8

    .line 595
    goto :goto_2

    .line 555
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 558
    :cond_3
    move v8, v1

    if-eqz v8, :cond_4

    sget-object v8, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    goto :goto_1

    :cond_4
    sget-object v8, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    goto :goto_1

    .line 593
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 615
    :cond_6
    :goto_4
    move v8, v3

    move v0, v8

    return v0

    .line 599
    :cond_7
    move-object v8, v6

    move v9, v1

    invoke-interface {v8, v9}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    move-result v8

    goto :goto_4

    .line 605
    :cond_8
    move-object v8, v5

    iget-object v8, v8, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v2, v8

    .line 606
    move-object v8, v2

    instance-of v8, v8, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-nez v8, :cond_0

    .line 611
    goto :goto_4
.end method

.method public final get()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    new-instance v4, Ljava/lang/InterruptedException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 473
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v1, v4

    .line 474
    move-object v4, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object v5, v1

    instance-of v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 475
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 506
    :goto_2
    return-object v0

    .line 474
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 477
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object v2, v4

    .line 478
    move-object v4, v2

    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-eq v4, v5, :cond_a

    .line 479
    new-instance v4, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;-><init>()V

    move-object v3, v4

    .line 481
    :cond_4
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->setNext(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 482
    sget-object v4, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 485
    :cond_5
    move-object v4, v0

    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 489
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->removeWaiter(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 490
    new-instance v4, Ljava/lang/InterruptedException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 495
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v1, v4

    .line 496
    move-object v4, v1

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    move-object v5, v1

    instance-of v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_4
    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 497
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_2

    .line 496
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    .line 501
    :cond_9
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object v2, v4

    .line 502
    move-object v4, v2

    sget-object v5, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-ne v4, v5, :cond_4

    .line 506
    :cond_a
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 360
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v24, v6

    move-wide/from16 v25, v4

    invoke-virtual/range {v24 .. v26}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v24

    move-wide/from16 v7, v24

    .line 361
    move-wide/from16 v24, v7

    move-wide/from16 v9, v24

    .line 362
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 363
    new-instance v24, Ljava/lang/InterruptedException;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/InterruptedException;-><init>()V

    throw v24

    .line 365
    :cond_0
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v11, v24

    .line 366
    move-object/from16 v24, v11

    if-eqz v24, :cond_1

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v25, v11

    move-object/from16 v0, v25

    instance-of v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    move/from16 v25, v0

    if-nez v25, :cond_2

    const/16 v25, 0x1

    :goto_1
    and-int v24, v24, v25

    if-eqz v24, :cond_3

    .line 367
    move-object/from16 v24, v3

    move-object/from16 v25, v11

    invoke-direct/range {v24 .. v25}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v3, v24

    .line 417
    :goto_2
    return-object v3

    .line 366
    :cond_1
    const/16 v24, 0x0

    goto :goto_0

    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 370
    :cond_3
    move-wide/from16 v24, v9

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    move-wide/from16 v26, v9

    add-long v24, v24, v26

    :goto_3
    move-wide/from16 v12, v24

    .line 372
    move-wide/from16 v24, v9

    const-wide/16 v26, 0x3e8

    cmp-long v24, v24, v26

    if-ltz v24, :cond_b

    .line 373
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object/from16 v24, v0

    move-object/from16 v14, v24

    .line 374
    move-object/from16 v24, v14

    sget-object v25, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 375
    new-instance v24, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;-><init>()V

    move-object/from16 v15, v24

    .line 377
    :cond_4
    move-object/from16 v24, v15

    move-object/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->setNext(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 378
    sget-object v24, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object/from16 v25, v3

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    invoke-virtual/range {v24 .. v27}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casWaiters(Landroidx/work/impl/utils/futures/AbstractFuture;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 380
    :cond_5
    move-object/from16 v24, v3

    move-wide/from16 v25, v9

    invoke-static/range {v24 .. v26}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 383
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 384
    move-object/from16 v24, v3

    move-object/from16 v25, v15

    invoke-direct/range {v24 .. v25}, Landroidx/work/impl/utils/futures/AbstractFuture;->removeWaiter(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 385
    new-instance v24, Ljava/lang/InterruptedException;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/InterruptedException;-><init>()V

    throw v24

    .line 370
    :cond_6
    const-wide/16 v24, 0x0

    goto :goto_3

    .line 390
    :cond_7
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v11, v24

    .line 391
    move-object/from16 v24, v11

    if-eqz v24, :cond_8

    const/16 v24, 0x1

    :goto_4
    move-object/from16 v25, v11

    move-object/from16 v0, v25

    instance-of v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    move/from16 v25, v0

    if-nez v25, :cond_9

    const/16 v25, 0x1

    :goto_5
    and-int v24, v24, v25

    if-eqz v24, :cond_a

    .line 392
    move-object/from16 v24, v3

    move-object/from16 v25, v11

    invoke-direct/range {v24 .. v25}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v3, v24

    goto/16 :goto_2

    .line 391
    :cond_8
    const/16 v24, 0x0

    goto :goto_4

    :cond_9
    const/16 v25, 0x0

    goto :goto_5

    .line 396
    :cond_a
    move-wide/from16 v24, v12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v9, v24

    .line 397
    move-wide/from16 v24, v9

    const-wide/16 v26, 0x3e8

    cmp-long v24, v24, v26

    if-gez v24, :cond_5

    .line 400
    move-object/from16 v24, v3

    move-object/from16 v25, v15

    invoke-direct/range {v24 .. v25}, Landroidx/work/impl/utils/futures/AbstractFuture;->removeWaiter(Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V

    .line 414
    :cond_b
    :goto_6
    move-wide/from16 v24, v9

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_12

    .line 415
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v11, v24

    .line 416
    move-object/from16 v24, v11

    if-eqz v24, :cond_e

    const/16 v24, 0x1

    :goto_7
    move-object/from16 v25, v11

    move-object/from16 v0, v25

    instance-of v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    move/from16 v25, v0

    if-nez v25, :cond_f

    const/16 v25, 0x1

    :goto_8
    and-int v24, v24, v25

    if-eqz v24, :cond_10

    .line 417
    move-object/from16 v24, v3

    move-object/from16 v25, v11

    invoke-direct/range {v24 .. v25}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v3, v24

    goto/16 :goto_2

    .line 405
    :cond_c
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->waiters:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object/from16 v24, v0

    move-object/from16 v14, v24

    .line 406
    move-object/from16 v24, v14

    sget-object v25, Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;->TOMBSTONE:Landroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 410
    :cond_d
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroidx/work/impl/utils/futures/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v3, v24

    goto/16 :goto_2

    .line 416
    :cond_e
    const/16 v24, 0x0

    goto :goto_7

    :cond_f
    const/16 v25, 0x0

    goto :goto_8

    .line 419
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 420
    new-instance v24, Ljava/lang/InterruptedException;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/InterruptedException;-><init>()V

    throw v24

    .line 422
    :cond_11
    move-wide/from16 v24, v12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v9, v24

    goto :goto_6

    .line 425
    :cond_12
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/utils/futures/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v14, v24

    .line 426
    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v15, v24

    .line 427
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Waited "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-wide/from16 v25, v4

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 430
    move-wide/from16 v24, v9

    const-wide/16 v26, 0x3e8

    add-long v24, v24, v26

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_17

    .line 432
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " (plus "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 433
    move-wide/from16 v24, v9

    move-wide/from16 v0, v24

    neg-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v17, v24

    .line 434
    move-object/from16 v24, v6

    move-wide/from16 v25, v17

    sget-object v27, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v24 .. v27}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v24

    move-wide/from16 v19, v24

    .line 435
    move-wide/from16 v24, v17

    move-object/from16 v26, v6

    move-wide/from16 v27, v19

    invoke-virtual/range {v26 .. v28}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v26

    sub-long v24, v24, v26

    move-wide/from16 v21, v24

    .line 436
    move-wide/from16 v24, v19

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_13

    move-wide/from16 v24, v21

    const-wide/16 v26, 0x3e8

    cmp-long v24, v24, v26

    if-lez v24, :cond_18

    :cond_13
    const/16 v24, 0x1

    :goto_9
    move/from16 v23, v24

    .line 438
    move-wide/from16 v24, v19

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_15

    .line 439
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-wide/from16 v25, v19

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 440
    move/from16 v24, v23

    if-eqz v24, :cond_14

    .line 441
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 443
    :cond_14
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 445
    :cond_15
    move/from16 v24, v23

    if-eqz v24, :cond_16

    .line 446
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-wide/from16 v25, v21

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " nanoseconds "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 449
    :cond_16
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "delay)"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v24

    .line 454
    :cond_17
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/utils/futures/AbstractFuture;->isDone()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 455
    new-instance v24, Ljava/util/concurrent/TimeoutException;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v29, v26

    move-object/from16 v26, v29

    move-object/from16 v27, v29

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " but future completed as timeout expired"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 436
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_9

    .line 457
    :cond_19
    new-instance v24, Ljava/util/concurrent/TimeoutException;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v29, v26

    move-object/from16 v26, v29

    move-object/from16 v27, v29

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v14

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v24
.end method

.method protected interruptTask()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public final isCancelled()Z
    .locals 3

    .prologue
    .line 534
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v1, v2

    .line 535
    move-object v2, v1

    instance-of v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    move v0, v2

    return v0
.end method

.method public final isDone()Z
    .locals 4

    .prologue
    .line 528
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v1, v2

    .line 529
    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v3, v1

    instance-of v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    and-int/2addr v2, v3

    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 4
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 928
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 929
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->wasInterrupted()Z

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v2

    .line 931
    :cond_0
    return-void

    .line 928
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1008
    move-object v1, p0

    move-object v3, v1

    iget-object v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v2, v3

    .line 1009
    move-object v3, v2

    instance-of v3, v3, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    if-eqz v3, :cond_0

    .line 1010
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFuture=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    iget-object v5, v5, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1016
    :goto_0
    return-object v1

    .line 1011
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_1

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remaining delay=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/ScheduledFuture;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1013
    invoke-interface {v4, v5}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1012
    move-object v1, v3

    goto :goto_0

    .line 1016
    :cond_1
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;

    :goto_0
    move-object v2, v3

    .line 684
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 685
    move-object v3, v0

    invoke-static {v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 686
    const/4 v3, 0x1

    move v0, v3

    .line 688
    :goto_1
    return v0

    .line 683
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 688
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 8

    .prologue
    .line 708
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-static {v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 709
    sget-object v3, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 710
    move-object v3, v0

    invoke-static {v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 711
    const/4 v3, 0x1

    move v0, v3

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 744
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-static {v7}, Landroidx/work/impl/utils/futures/AbstractFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 745
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v2, v7

    .line 746
    move-object v7, v2

    if-nez v7, :cond_3

    .line 747
    move-object v7, v1

    invoke-interface {v7}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 748
    move-object v7, v1

    invoke-static {v7}, Landroidx/work/impl/utils/futures/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 749
    sget-object v7, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 750
    move-object v7, v0

    invoke-static {v7}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    .line 751
    const/4 v7, 0x1

    move v0, v7

    .line 787
    :goto_0
    return v0

    .line 753
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 755
    :cond_1
    new-instance v7, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Landroidx/work/impl/utils/futures/AbstractFuture$SetFuture;-><init>(Landroidx/work/impl/utils/futures/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    move-object v3, v7

    .line 756
    sget-object v7, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 761
    move-object v7, v1

    move-object v8, v3

    :try_start_0
    sget-object v9, Landroidx/work/impl/utils/futures/DirectExecutor;->INSTANCE:Landroidx/work/impl/utils/futures/DirectExecutor;

    invoke-interface {v7, v8, v9}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_1
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 762
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 769
    :try_start_1
    new-instance v7, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-direct {v8, v9}, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v7

    .line 775
    :goto_2
    sget-object v7, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;

    move-object v8, v0

    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Landroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    move v6, v7

    goto :goto_1

    .line 770
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 771
    sget-object v7, Landroidx/work/impl/utils/futures/AbstractFuture$Failure;->FALLBACK_INSTANCE:Landroidx/work/impl/utils/futures/AbstractFuture$Failure;

    move-object v5, v7

    goto :goto_2

    .line 779
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v2, v7

    .line 783
    :cond_3
    move-object v7, v2

    instance-of v7, v7, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v7, :cond_4

    .line 785
    move-object v7, v1

    move-object v8, v2

    check-cast v8, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    iget-boolean v8, v8, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {v7, v8}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    move-result v7

    .line 787
    :cond_4
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 973
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-super {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v1, v4

    .line 974
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 975
    move-object v4, v1

    const-string v5, "CANCELLED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 997
    :goto_0
    move-object v4, v1

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 976
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 977
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 981
    :cond_1
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->pendingToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 989
    :goto_1
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 990
    move-object v4, v1

    const-string v5, "PENDING, info=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 982
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 985
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown from implementation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 991
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 992
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/futures/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 994
    :cond_3
    move-object v4, v1

    const-string v5, "PENDING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method protected final wasInterrupted()Z
    .locals 3

    .prologue
    .line 640
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    move-object v1, v2

    .line 641
    move-object v2, v1

    instance-of v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    iget-boolean v2, v2, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
