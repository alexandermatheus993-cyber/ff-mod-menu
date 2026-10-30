.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Provider;,
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final MIN_SCHEDULER_LIMIT:I = 0x14


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mLoggingLevel:I

.field private final mMaxJobSchedulerId:I

.field private final mMaxSchedulerLimit:I

.field private final mMinJobSchedulerId:I

.field private final mTaskExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mWorkerFactory:Landroidx/work/WorkerFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 4
    .param p1    # Landroidx/work/Configuration$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v2, v1

    iget-object v2, v2, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    .line 61
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 66
    :goto_0
    move-object v2, v1

    iget-object v2, v2, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    .line 70
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 75
    :goto_1
    move-object v2, v1

    iget-object v2, v2, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    if-nez v2, :cond_2

    .line 76
    move-object v2, v0

    invoke-static {}, Landroidx/work/WorkerFactory;->getDefaultWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v3

    iput-object v3, v2, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 81
    :goto_2
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    iput v3, v2, Landroidx/work/Configuration;->mLoggingLevel:I

    .line 82
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    iput v3, v2, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    .line 83
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    iput v3, v2, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    .line 84
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    iput v3, v2, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    .line 85
    return-void

    .line 63
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v3, v2, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 72
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    iput-object v3, v2, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 78
    :cond_2
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    iput-object v3, v2, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    goto :goto_2
.end method

.method private createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    const/4 v1, 0x2

    .line 179
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 177
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v0, v1

    return-object v0
.end method

.method public getMaxJobSchedulerId()I
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    move v0, v1

    return v0
.end method

.method public getMaxSchedulerLimit()I
    .locals 3
    .annotation build Landroidx/annotation/IntRange;
        from = 0x14L
        to = 0x32L
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    .line 170
    move-object v1, v0

    iget v1, v1, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    .line 172
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    move v0, v1

    goto :goto_0
.end method

.method public getMinJobSchedulerId()I
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    move v0, v1

    return v0
.end method

.method public getMinimumLoggingLevel()I
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/work/Configuration;->mLoggingLevel:I

    move v0, v1

    return v0
.end method

.method public getTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    move-object v0, v1

    return-object v0
.end method

.method public getWorkerFactory()Landroidx/work/WorkerFactory;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    move-object v0, v1

    return-object v0
.end method
