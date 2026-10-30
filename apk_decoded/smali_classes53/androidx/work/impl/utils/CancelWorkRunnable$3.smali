.class final Landroidx/work/impl/utils/CancelWorkRunnable$3;
.super Landroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;Z)Landroidx/work/impl/utils/CancelWorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$allowReschedule:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$name:Ljava/lang/String;

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$allowReschedule:Z

    move-object v4, v0

    invoke-direct {v4}, Landroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method runInternal()V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v7}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v7

    move-object v1, v7

    .line 180
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 182
    move-object v7, v1

    :try_start_0
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v7

    move-object v2, v7

    .line 183
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$name:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroidx/work/impl/model/WorkSpecDao;->getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 184
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 185
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/work/impl/utils/CancelWorkRunnable$3;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 186
    goto :goto_0

    .line 187
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 192
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$allowReschedule:Z

    if-eqz v7, :cond_1

    .line 193
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v7, v8}, Landroidx/work/impl/utils/CancelWorkRunnable$3;->reschedulePendingWorkers(Landroidx/work/impl/WorkManagerImpl;)V

    .line 195
    :cond_1
    return-void

    .line 189
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 190
    move-object v7, v6

    throw v7
.end method
