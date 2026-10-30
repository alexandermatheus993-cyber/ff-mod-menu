.class Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
.super Ljava/lang/Object;
.source "WorkTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkTimerRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WrkTimerRunnable"


# instance fields
.field private final mWorkSpecId:Ljava/lang/String;

.field private final mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/WorkTimer;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroidx/work/impl/background/systemalarm/WorkTimer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 133
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    .line 134
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 139
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v1, v6

    monitor-enter v5

    .line 140
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;

    move-object v2, v5

    .line 141
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 143
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    iget-object v5, v5, Landroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;

    move-object v3, v5

    .line 144
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 145
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;->onTimeLimitExceeded(Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    move-object v5, v1

    monitor-exit v5

    .line 152
    return-void

    .line 148
    :cond_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v5

    const-string v6, "WrkTimerRunnable"

    const-string v7, "Timer with %s is already marked as complete."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method
