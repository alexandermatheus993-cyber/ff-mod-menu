.class final Landroidx/work/impl/utils/CancelWorkRunnable$2;
.super Landroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/CancelWorkRunnable;->forTag(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/utils/CancelWorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$tag:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Landroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method runInternal()V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v7}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v7

    move-object v1, v7

    .line 147
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 149
    move-object v7, v1

    :try_start_0
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v7

    move-object v2, v7

    .line 150
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$tag:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroidx/work/impl/model/WorkSpecDao;->getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 151
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

    .line 152
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/work/impl/utils/CancelWorkRunnable$2;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 153
    goto :goto_0

    .line 154
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 158
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/work/impl/utils/CancelWorkRunnable$2;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v7, v8}, Landroidx/work/impl/utils/CancelWorkRunnable$2;->reschedulePendingWorkers(Landroidx/work/impl/WorkManagerImpl;)V

    .line 159
    return-void

    .line 156
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 157
    move-object v7, v6

    throw v7
.end method
