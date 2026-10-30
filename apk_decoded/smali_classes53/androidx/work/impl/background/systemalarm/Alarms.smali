.class Landroidx/work/impl/background/systemalarm/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "Alarms"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/work/impl/WorkManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v6

    move-object v3, v6

    .line 88
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v6

    move-object v4, v6

    .line 89
    move-object v6, v4

    move-object v7, v2

    invoke-interface {v6, v7}, Landroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Ljava/lang/String;)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v6

    move-object v5, v6

    .line 90
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 91
    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    iget v8, v8, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {v6, v7, v8}, Landroidx/work/impl/background/systemalarm/Alarms;->cancelExactAlarm(Landroid/content/Context;Ljava/lang/String;I)V

    .line 92
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    const-string v8, "Removing SystemIdInfo for workSpecId (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v2

    aput-object v12, v10, v11

    .line 93
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Throwable;

    .line 92
    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 94
    move-object v6, v4

    move-object v7, v2

    invoke-interface {v6, v7}, Landroidx/work/impl/model/SystemIdInfoDao;->removeSystemIdInfo(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method private static cancelExactAlarm(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v6, v0

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    move-object v3, v6

    .line 104
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v4, v6

    .line 105
    move-object v6, v0

    move v7, v2

    move-object v8, v4

    const/high16 v9, 0x20000000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v5, v6

    .line 107
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    .line 108
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/background/systemalarm/Alarms;->TAG:Ljava/lang/String;

    const-string v8, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v2

    .line 111
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 108
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 112
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static setAlarm(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;J)V
    .locals 17
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/work/impl/WorkManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v11

    move-object v5, v11

    .line 61
    move-object v11, v5

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v11

    move-object v6, v11

    .line 62
    move-object v11, v6

    move-object v12, v2

    invoke-interface {v11, v12}, Landroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Ljava/lang/String;)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v11

    move-object v7, v11

    .line 63
    move-object v11, v7

    if-eqz v11, :cond_0

    .line 64
    move-object v11, v0

    move-object v12, v2

    move-object v13, v7

    iget v13, v13, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {v11, v12, v13}, Landroidx/work/impl/background/systemalarm/Alarms;->cancelExactAlarm(Landroid/content/Context;Ljava/lang/String;I)V

    .line 65
    move-object v11, v0

    move-object v12, v2

    move-object v13, v7

    iget v13, v13, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    move-wide v14, v3

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/work/impl/background/systemalarm/Alarms;->setExactAlarm(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v11, Landroidx/work/impl/utils/IdGenerator;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-direct {v12, v13}, Landroidx/work/impl/utils/IdGenerator;-><init>(Landroid/content/Context;)V

    move-object v8, v11

    .line 68
    move-object v11, v8

    invoke-virtual {v11}, Landroidx/work/impl/utils/IdGenerator;->nextAlarmManagerId()I

    move-result v11

    move v9, v11

    .line 69
    new-instance v11, Landroidx/work/impl/model/SystemIdInfo;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v2

    move v14, v9

    invoke-direct {v12, v13, v14}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;I)V

    move-object v10, v11

    .line 70
    move-object v11, v6

    move-object v12, v10

    invoke-interface {v11, v12}, Landroidx/work/impl/model/SystemIdInfoDao;->insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V

    .line 71
    move-object v11, v0

    move-object v12, v2

    move v13, v9

    move-wide v14, v3

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/work/impl/background/systemalarm/Alarms;->setExactAlarm(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method private static setExactAlarm(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-object v8, v0

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object v5, v8

    .line 123
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v6, v8

    .line 124
    move-object v8, v0

    move v9, v2

    move-object v10, v6

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object v7, v8

    .line 126
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 127
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_1

    .line 128
    move-object v8, v5

    const/4 v9, 0x0

    move-wide v10, v3

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    move-object v8, v5

    const/4 v9, 0x0

    move-wide v10, v3

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
