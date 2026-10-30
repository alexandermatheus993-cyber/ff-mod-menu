.class Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManagerCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreRGnssStatusTransport"
.end annotation


# instance fields
.field final mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

.field volatile mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/location/GnssStatus$Callback;-><init>()V

    .line 339
    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "invalid null callback"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 340
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    .line 341
    return-void

    .line 339
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 10

    .prologue
    .line 391
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v3

    .line 392
    move-object v3, v2

    if-nez v3, :cond_0

    .line 405
    :goto_0
    return-void

    .line 396
    :cond_0
    move-object v3, v2

    new-instance v4, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$3;-><init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 405
    goto :goto_0
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 10

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v3

    .line 410
    move-object v3, v2

    if-nez v3, :cond_0

    .line 423
    :goto_0
    return-void

    .line 414
    :cond_0
    move-object v3, v2

    new-instance v4, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;-><init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 423
    goto :goto_0
.end method

.method public onStarted()V
    .locals 8

    .prologue
    .line 355
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v1, v2

    .line 356
    move-object v2, v1

    if-nez v2, :cond_0

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_0
    move-object v2, v1

    new-instance v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$1;-><init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 369
    goto :goto_0
.end method

.method public onStopped()V
    .locals 8

    .prologue
    .line 373
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v1, v2

    .line 374
    move-object v2, v1

    if-nez v2, :cond_0

    .line 387
    :goto_0
    return-void

    .line 378
    :cond_0
    move-object v2, v1

    new-instance v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$2;-><init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 387
    goto :goto_0
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 345
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 346
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 347
    return-void

    .line 344
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 345
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 351
    return-void
.end method
