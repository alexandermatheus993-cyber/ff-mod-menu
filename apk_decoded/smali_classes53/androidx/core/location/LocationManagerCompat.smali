.class public final Landroidx/core/location/LocationManagerCompat;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;,
        Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    }
.end annotation


# static fields
.field private static final PRE_N_LOOPER_TIMEOUT_S:J = 0x4L

.field private static sContextField:Ljava/lang/reflect/Field;

.field private static final sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sGnssStatusListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLocationEnabled(Landroid/location/LocationManager;)Z
    .locals 5
    .param p0    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 71
    move-object v2, v0

    invoke-virtual {v2}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    move v0, v2

    .line 100
    :goto_0
    return v0

    .line 74
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_5

    .line 80
    :try_start_0
    sget-object v2, Landroidx/core/location/LocationManagerCompat;->sContextField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 81
    const-class v2, Landroid/location/LocationManager;

    const-string v3, "mContext"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationManagerCompat;->sContextField:Ljava/lang/reflect/Field;

    .line 83
    :cond_1
    sget-object v2, Landroidx/core/location/LocationManagerCompat;->sContextField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    sget-object v2, Landroidx/core/location/LocationManagerCompat;->sContextField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v1, v2

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_3

    .line 87
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 90
    :cond_3
    move-object v2, v1

    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 94
    :catch_0
    move-exception v2

    :goto_3
    move-object v1, v2

    .line 100
    :cond_5
    move-object v2, v0

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v0

    const-string v3, "gps"

    .line 101
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x1

    .line 100
    :goto_4
    move v0, v2

    goto :goto_0

    .line 101
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 94
    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3
.end method

.method private static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .locals 25
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .prologue
    .line 163
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 164
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v6, v19

    monitor-enter v18

    .line 165
    :try_start_0
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v19, v5

    .line 166
    invoke-virtual/range {v18 .. v19}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    move-object/from16 v7, v18

    .line 167
    move-object/from16 v18, v7

    if-nez v18, :cond_0

    .line 168
    new-instance v18, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object/from16 v7, v18

    .line 170
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    invoke-virtual/range {v18 .. v20}, Landroid/location/LocationManager;->registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 171
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    invoke-virtual/range {v18 .. v20}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 172
    const/16 v18, 0x1

    move-object/from16 v19, v6

    monitor-exit v19

    move/from16 v2, v18

    .line 233
    :goto_0
    return v2

    .line 174
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v19, v6

    monitor-exit v19

    move/from16 v2, v18

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v18

    move-object/from16 v8, v18

    move-object/from16 v18, v6

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v8

    throw v18

    .line 177
    :cond_2
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x18

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 178
    move-object/from16 v18, v3

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_1
    invoke-static/range {v18 .. v18}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 179
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v6, v19

    monitor-enter v18

    .line 180
    :try_start_1
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v19, v5

    .line 181
    invoke-virtual/range {v18 .. v19}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    move-object/from16 v7, v18

    .line 182
    move-object/from16 v18, v7

    if-nez v18, :cond_4

    .line 183
    new-instance v18, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object/from16 v7, v18

    .line 187
    :goto_2
    move-object/from16 v18, v7

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->register(Ljava/util/concurrent/Executor;)V

    .line 189
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v3

    invoke-virtual/range {v18 .. v20}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 190
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    invoke-virtual/range {v18 .. v20}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 191
    const/16 v18, 0x1

    move-object/from16 v19, v6

    monitor-exit v19

    move/from16 v2, v18

    goto :goto_0

    .line 178
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 185
    :cond_4
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    goto :goto_2

    .line 195
    :catchall_1
    move-exception v18

    move-object/from16 v9, v18

    move-object/from16 v18, v6

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v9

    throw v18

    .line 193
    :cond_5
    const/16 v18, 0x0

    move-object/from16 v19, v6

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v2, v18

    goto/16 :goto_0

    .line 197
    :cond_6
    move-object/from16 v18, v3

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    :goto_3
    invoke-static/range {v18 .. v18}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 198
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v6, v19

    monitor-enter v18

    .line 199
    :try_start_3
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v19, v5

    .line 200
    invoke-virtual/range {v18 .. v19}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    move-object/from16 v7, v18

    .line 201
    move-object/from16 v18, v7

    if-nez v18, :cond_a

    .line 202
    new-instance v18, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v21}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;-><init>(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object/from16 v7, v18

    .line 206
    :goto_4
    move-object/from16 v18, v7

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->register(Ljava/util/concurrent/Executor;)V

    .line 208
    move-object/from16 v18, v7

    move-object/from16 v8, v18

    .line 209
    new-instance v18, Ljava/util/concurrent/FutureTask;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Landroidx/core/location/LocationManagerCompat$1;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    invoke-direct/range {v21 .. v23}, Landroidx/core/location/LocationManagerCompat$1;-><init>(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)V

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v9, v18

    .line 217
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 218
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 223
    :cond_7
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 225
    :try_start_4
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v19, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 226
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-wide v18

    move-wide/from16 v20, v11

    add-long v18, v18, v20

    move-wide/from16 v13, v18

    .line 229
    :goto_5
    move-object/from16 v18, v9

    move-wide/from16 v19, v11

    :try_start_5
    sget-object v21, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v18 .. v21}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 230
    sget-object v18, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    invoke-virtual/range {v18 .. v20}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v18

    .line 231
    const/16 v18, 0x1

    move/from16 v15, v18

    .line 254
    move/from16 v18, v10

    if-eqz v18, :cond_8

    .line 255
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V

    :cond_8
    move-object/from16 v18, v6

    monitor-exit v18

    .line 231
    move/from16 v18, v15

    move/from16 v2, v18

    goto/16 :goto_0

    .line 197
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 204
    :cond_a
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->unregister()V

    goto/16 :goto_4

    .line 258
    :catchall_2
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v6

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v18, v17

    throw v18

    .line 219
    :cond_b
    move-object/from16 v18, v3

    move-object/from16 v19, v9

    :try_start_7
    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 220
    new-instance v18, Ljava/lang/IllegalStateException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is shutting down"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 233
    :cond_c
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 254
    move/from16 v18, v10

    if-eqz v18, :cond_d

    .line 255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    move-object/from16 v18, v6

    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 233
    move/from16 v18, v15

    move/from16 v2, v18

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v18

    move-object/from16 v15, v18

    .line 237
    const/16 v18, 0x1

    move/from16 v10, v18

    .line 238
    move-wide/from16 v18, v13

    :try_start_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v11, v18

    .line 239
    goto/16 :goto_5

    .line 241
    :catch_1
    move-exception v18

    move-object/from16 v11, v18

    .line 242
    move-object/from16 v18, v11

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 243
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    check-cast v18, Ljava/lang/RuntimeException;

    throw v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 254
    :catchall_3
    move-exception v18

    move-object/from16 v16, v18

    move/from16 v18, v10

    if-eqz v18, :cond_e

    .line 255
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V

    .line 257
    :cond_e
    move-object/from16 v18, v16

    throw v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 244
    :cond_f
    move-object/from16 v18, v11

    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 245
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    check-cast v18, Ljava/lang/Error;

    throw v18

    .line 247
    :cond_10
    new-instance v18, Ljava/lang/IllegalStateException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v11

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 249
    :catch_2
    move-exception v18

    move-object/from16 v11, v18

    .line 250
    new-instance v18, Ljava/lang/IllegalStateException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " appears to be blocked, please run registerGnssStatusCallback() directly on a Looper thread or ensure the main Looper is not blocked by this thread"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v11

    invoke-direct/range {v19 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;Landroid/os/Handler;)Z
    .locals 8
    .param p0    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/location/GnssStatusCompat$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    .line 119
    move-object v3, v0

    new-instance v4, Landroidx/core/os/HandlerExecutor;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/core/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v3

    move v0, v3

    .line 122
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    new-instance v4, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .locals 9
    .param p0    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/location/GnssStatusCompat$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    .line 149
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v4, v5, v6, v7}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v4

    move v0, v4

    .line 155
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v3, v4

    .line 152
    move-object v4, v3

    if-nez v4, :cond_1

    .line 153
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v3, v4

    .line 155
    :cond_1
    move-object v4, v0

    new-instance v5, Landroid/os/Handler;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v6, v1

    move-object v7, v2

    invoke-static {v4, v5, v6, v7}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public static unregisterGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 10
    .param p0    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/location/GnssStatusCompat$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v7, v8, :cond_1

    .line 270
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    move-object v2, v8

    monitor-enter v7

    .line 271
    :try_start_0
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object v8, v1

    .line 272
    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    move-object v3, v7

    .line 273
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 274
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 276
    :cond_0
    move-object v7, v2

    monitor-exit v7

    .line 296
    :goto_0
    return-void

    .line 276
    :catchall_0
    move-exception v7

    move-object v4, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v4

    throw v7

    .line 277
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_3

    .line 278
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    move-object v2, v8

    monitor-enter v7

    .line 279
    :try_start_1
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object v8, v1

    .line 280
    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    move-object v3, v7

    .line 281
    move-object v7, v3

    if-eqz v7, :cond_2

    .line 282
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    .line 283
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 285
    :cond_2
    move-object v7, v2

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v7

    move-object v5, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v5

    throw v7

    .line 287
    :cond_3
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    move-object v2, v8

    monitor-enter v7

    .line 288
    :try_start_2
    sget-object v7, Landroidx/core/location/LocationManagerCompat;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    move-object v8, v1

    .line 289
    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    move-object v3, v7

    .line 290
    move-object v7, v3

    if-eqz v7, :cond_4

    .line 291
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->unregister()V

    .line 292
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 294
    :cond_4
    move-object v7, v2

    monitor-exit v7

    goto :goto_0

    :catchall_2
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v6

    throw v7
.end method
