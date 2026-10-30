.class Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;
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


# direct methods
.method constructor <init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V
    .locals 5

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;->this$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;->val$executor:Ljava/util/concurrent/Executor;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;->this$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eq v1, v2, :cond_0

    .line 468
    :goto_0
    return-void

    .line 467
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;->this$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v1}, Landroidx/core/location/GnssStatusCompat$Callback;->onStarted()V

    .line 468
    goto :goto_0
.end method
