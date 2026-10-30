.class Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsStatusTransport"
.end annotation


# instance fields
.field final mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

.field volatile mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 5

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 435
    move-object v3, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "invalid null callback"

    invoke-static {v3, v4}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 436
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    .line 437
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    .line 438
    return-void

    .line 435
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 12
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v5

    .line 453
    move-object v5, v2

    if-nez v5, :cond_0

    .line 513
    :goto_0
    return-void

    .line 459
    :cond_0
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 513
    :cond_1
    :goto_1
    goto :goto_0

    .line 461
    :pswitch_0
    move-object v5, v2

    new-instance v6, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 470
    goto :goto_1

    .line 472
    :pswitch_1
    move-object v5, v2

    new-instance v6, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$2;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 481
    goto :goto_1

    .line 483
    :pswitch_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v5

    move-object v3, v5

    .line 484
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 485
    move-object v5, v3

    invoke-virtual {v5}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v5

    move v4, v5

    .line 486
    move-object v5, v2

    new-instance v6, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$3;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$3;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 495
    goto :goto_1

    .line 498
    :pswitch_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v5

    move-object v3, v5

    .line 499
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 500
    move-object v5, v3

    invoke-static {v5}, Landroidx/core/location/GnssStatusCompat;->wrap(Landroid/location/GpsStatus;)Landroidx/core/location/GnssStatusCompat;

    move-result-object v5

    move-object v4, v5

    .line 501
    move-object v5, v2

    new-instance v6, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move-object v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 442
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 443
    return-void

    .line 441
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 447
    return-void
.end method
