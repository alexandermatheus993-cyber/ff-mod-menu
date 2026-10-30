.class Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->onGpsStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$gnssStatus:Landroidx/core/location/GnssStatusCompat;


# direct methods
.method constructor <init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V
    .locals 6

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->this$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->val$executor:Ljava/util/concurrent/Executor;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->val$gnssStatus:Landroidx/core/location/GnssStatusCompat;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->this$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->val$executor:Ljava/util/concurrent/Executor;

    if-eq v1, v2, :cond_0

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->this$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->val$gnssStatus:Landroidx/core/location/GnssStatusCompat;

    invoke-virtual {v1, v2}, Landroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Landroidx/core/location/GnssStatusCompat;)V

    .line 508
    goto :goto_0
.end method
