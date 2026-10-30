.class abstract Landroidx/work/impl/background/systemalarm/ConstraintProxy;
.super Landroid/content/BroadcastReceiver;
.source "ConstraintProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;,
        Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;,
        Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;,
        Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "ConstraintProxy"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static updateAll(Landroid/content/Context;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    const/4 v9, 0x0

    move v2, v9

    .line 72
    const/4 v9, 0x0

    move v3, v9

    .line 73
    const/4 v9, 0x0

    move v4, v9

    .line 74
    const/4 v9, 0x0

    move v5, v9

    .line 76
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v9

    :goto_0
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/work/impl/model/WorkSpec;

    move-object v7, v9

    .line 77
    move-object v9, v7

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move-object v8, v9

    .line 78
    move v9, v2

    move-object v10, v8

    invoke-virtual {v10}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v10

    or-int/2addr v9, v10

    move v2, v9

    .line 79
    move v9, v3

    move-object v10, v8

    invoke-virtual {v10}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v10

    or-int/2addr v9, v10

    move v3, v9

    .line 80
    move v9, v4

    move-object v10, v8

    invoke-virtual {v10}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v10

    or-int/2addr v9, v10

    move v4, v9

    .line 81
    move v9, v5

    move-object v10, v8

    .line 82
    invoke-virtual {v10}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v10

    sget-object v11, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    if-eq v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_1
    or-int/2addr v9, v10

    move v5, v9

    .line 84
    move v9, v2

    if-eqz v9, :cond_2

    move v9, v3

    if-eqz v9, :cond_2

    move v9, v4

    if-eqz v9, :cond_2

    move v9, v5

    if-eqz v9, :cond_2

    .line 90
    :cond_0
    move-object v9, v0

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    .line 91
    invoke-static {v9, v10, v11, v12, v13}, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->newConstraintProxyUpdateIntent(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object v9

    move-object v6, v9

    .line 100
    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void

    .line 82
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 88
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->TAG:Ljava/lang/String;

    const-string v6, "onReceive : %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    move-object v4, v1

    invoke-static {v4}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createConstraintsChangedIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    move-object v3, v4

    .line 37
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    .line 38
    return-void
.end method
