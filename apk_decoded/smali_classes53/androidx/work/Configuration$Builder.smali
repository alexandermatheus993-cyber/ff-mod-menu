.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mExecutor:Ljava/util/concurrent/Executor;

.field mLoggingLevel:I

.field mMaxJobSchedulerId:I

.field mMaxSchedulerLimit:I

.field mMinJobSchedulerId:I

.field mTaskExecutor:Ljava/util/concurrent/Executor;

.field mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 191
    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    .line 192
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 193
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    .line 194
    move-object v1, v0

    const/16 v2, 0x14

    iput v2, v1, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/work/Configuration;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    new-instance v1, Landroidx/work/Configuration;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 4
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 215
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setJobSchedulerJobIdRange(II)Landroidx/work/Configuration$Builder;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    move v4, v1

    sub-int/2addr v3, v4

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_0

    .line 256
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "WorkManager needs a range of at least 1000 job ids."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 261
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    .line 262
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setMaxSchedulerLimit(I)Landroidx/work/Configuration$Builder;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 290
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "WorkManager needs to be able to schedule at least 20 jobs in JobScheduler."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_0
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x32

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    .line 295
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    .line 310
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTaskExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 4
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 233
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;
    .locals 4
    .param p1    # Landroidx/work/WorkerFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 204
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
