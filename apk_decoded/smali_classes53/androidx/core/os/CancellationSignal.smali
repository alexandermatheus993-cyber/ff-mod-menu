.class public final Landroidx/core/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 12

    .prologue
    .line 69
    move-object v0, p0

    move-object v9, v0

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v3, v10

    monitor-enter v9

    .line 70
    move-object v9, v0

    :try_start_0
    iget-boolean v9, v9, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v9, :cond_0

    .line 71
    move-object v9, v3

    monitor-exit v9

    .line 92
    :goto_0
    return-void

    .line 73
    :cond_0
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    .line 74
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 75
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    move-object v1, v9

    .line 76
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    move-object v2, v9

    .line 77
    move-object v9, v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    move-object v9, v1

    if-eqz v9, :cond_1

    .line 81
    move-object v9, v1

    :try_start_1
    invoke-interface {v9}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 83
    :cond_1
    move-object v9, v2

    if-eqz v9, :cond_2

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_2

    .line 84
    move-object v9, v2

    check-cast v9, Landroid/os/CancellationSignal;

    invoke-virtual {v9}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    :cond_2
    move-object v9, v0

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v3, v10

    monitor-enter v9

    .line 88
    move-object v9, v0

    const/4 v10, 0x0

    :try_start_2
    iput-boolean v10, v9, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 89
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 90
    move-object v9, v3

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v9

    move-object v4, v9

    move-object v9, v3

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v4

    throw v9

    .line 90
    :catchall_1
    move-exception v9

    move-object v5, v9

    move-object v9, v3

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v5

    throw v9

    .line 87
    :catchall_2
    move-exception v9

    move-object v6, v9

    move-object v9, v0

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v7, v10

    monitor-enter v9

    .line 88
    move-object v9, v0

    const/4 v10, 0x0

    :try_start_5
    iput-boolean v10, v9, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 89
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 90
    move-object v9, v7

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 91
    move-object v9, v6

    throw v9

    .line 90
    :catchall_3
    move-exception v9

    move-object v8, v9

    move-object v9, v7

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v9, v8

    throw v9
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 139
    const/4 v3, 0x0

    move-object v0, v3

    .line 148
    :goto_0
    return-object v0

    .line 141
    :cond_0
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 142
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 143
    move-object v3, v0

    new-instance v4, Landroid/os/CancellationSignal;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v4, v3, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 144
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v3, :cond_1

    .line 145
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    .line 148
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 149
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

.method public isCanceled()Z
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 47
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    return v0

    .line 48
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

.method public setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V
    .locals 7
    .param p1    # Landroidx/core/os/CancellationSignal$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 112
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Landroidx/core/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 114
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 115
    move-object v4, v2

    monitor-exit v4

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 118
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    if-nez v4, :cond_2

    .line 119
    :cond_1
    move-object v4, v2

    monitor-exit v4

    goto :goto_0

    .line 121
    :cond_2
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    move-object v4, v1

    invoke-interface {v4}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 123
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public throwIfCanceled()V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Landroidx/core/os/OperationCanceledException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v1

    .line 60
    :cond_0
    return-void
.end method
