.class Landroidx/work/Worker$1;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/Worker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/Worker;


# direct methods
.method constructor <init>(Landroidx/work/Worker;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/Worker$1;->this$0:Landroidx/work/Worker;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/work/Worker$1;->this$0:Landroidx/work/Worker;

    invoke-virtual {v2}, Landroidx/work/Worker;->doWork()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    move-object v1, v2

    .line 86
    move-object v2, v0

    iget-object v2, v2, Landroidx/work/Worker$1;->this$0:Landroidx/work/Worker;

    iget-object v2, v2, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 91
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 88
    move-object v2, v0

    iget-object v2, v2, Landroidx/work/Worker$1;->this$0:Landroidx/work/Worker;

    iget-object v2, v2, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_0
.end method
