.class Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$status:Landroid/location/GnssStatus;


# direct methods
.method constructor <init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V
    .locals 6

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->this$0:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->val$executor:Ljava/util/concurrent/Executor;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->val$status:Landroid/location/GnssStatus;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->this$0:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->val$executor:Ljava/util/concurrent/Executor;

    if-eq v1, v2, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->this$0:Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$4;->val$status:Landroid/location/GnssStatus;

    invoke-static {v2}, Landroidx/core/location/GnssStatusCompat;->wrap(Landroid/location/GnssStatus;)Landroidx/core/location/GnssStatusCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Landroidx/core/location/GnssStatusCompat;)V

    .line 421
    goto :goto_0
.end method
