.class Landroidx/core/location/LocationManagerCompat$1;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locationManager:Landroid/location/LocationManager;

.field final synthetic val$myTransport:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)V
    .locals 5

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/location/LocationManagerCompat$1;->val$locationManager:Landroid/location/LocationManager;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/location/LocationManagerCompat$1;->val$myTransport:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/LocationManagerCompat$1;->val$locationManager:Landroid/location/LocationManager;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/LocationManagerCompat$1;->val$myTransport:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/location/LocationManagerCompat$1;->call()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
