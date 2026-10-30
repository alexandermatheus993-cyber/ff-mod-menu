.class Landroidx/work/impl/WorkManagerImpl$1;
.super Ljava/lang/Object;
.source "WorkManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkManagerImpl;->getLastCancelAllTimeMillis()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkManagerImpl;

.field final synthetic val$future:Landroidx/work/impl/utils/futures/SettableFuture;

.field final synthetic val$preferences:Landroidx/work/impl/utils/Preferences;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/utils/Preferences;)V
    .locals 6

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/work/impl/WorkManagerImpl$1;->this$0:Landroidx/work/impl/WorkManagerImpl;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/work/impl/WorkManagerImpl$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/work/impl/WorkManagerImpl$1;->val$preferences:Landroidx/work/impl/utils/Preferences;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 442
    move-object v1, p0

    move-object v3, v1

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/WorkManagerImpl$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/WorkManagerImpl$1;->val$preferences:Landroidx/work/impl/utils/Preferences;

    invoke-virtual {v4}, Landroidx/work/impl/utils/Preferences;->getLastCancelAllTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 446
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 444
    move-object v3, v1

    iget-object v3, v3, Landroidx/work/impl/WorkManagerImpl$1;->val$future:Landroidx/work/impl/utils/futures/SettableFuture;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v3

    goto :goto_0
.end method
