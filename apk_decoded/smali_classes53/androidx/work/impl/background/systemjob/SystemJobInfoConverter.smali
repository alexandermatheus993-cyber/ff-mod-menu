.class Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;
.super Ljava/lang/Object;
.source "SystemJobInfoConverter.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x17
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field static final EXTRA_IS_PERIODIC:Ljava/lang/String; = "EXTRA_IS_PERIODIC"

.field static final EXTRA_WORK_SPEC_ID:Ljava/lang/String; = "EXTRA_WORK_SPEC_ID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWorkServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "SystemJobInfoConverter"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 57
    move-object v3, v0

    new-instance v4, Landroid/content/ComponentName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    const-class v7, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, v3, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Landroid/content/ComponentName;

    .line 58
    return-void
.end method

.method private static convertContentUriTrigger(Landroidx/work/ContentUriTriggers$Trigger;)Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/work/ContentUriTriggers$Trigger;->shouldTriggerForDescendants()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 121
    new-instance v2, Landroid/app/job/JobInfo$TriggerContentUri;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/work/ContentUriTriggers$Trigger;->getUri()Landroid/net/Uri;

    move-result-object v4

    move v5, v1

    invoke-direct {v3, v4, v5}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    move-object v0, v2

    return-object v0

    .line 119
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static convertNetworkType(Landroidx/work/NetworkType;)I
    .locals 9

    .prologue
    .line 131
    move-object v0, p0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter$1;->$SwitchMap$androidx$work$NetworkType:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/work/NetworkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 149
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    const-string v3, "API version too low. Cannot convert network type value %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    .line 133
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 135
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 137
    :pswitch_2
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 139
    :pswitch_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 140
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 144
    :pswitch_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 145
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method convert(Landroidx/work/impl/model/WorkSpec;I)Landroid/app/job/JobInfo;
    .locals 23

    .prologue
    .line 70
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    .line 71
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->convertNetworkType(Landroidx/work/NetworkType;)I

    move-result v18

    move/from16 v6, v18

    .line 72
    new-instance v18, Landroid/os/PersistableBundle;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Landroid/os/PersistableBundle;-><init>()V

    move-object/from16 v7, v18

    .line 73
    move-object/from16 v18, v7

    const-string v19, "EXTRA_WORK_SPEC_ID"

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    move-object/from16 v18, v7

    const-string v19, "EXTRA_IS_PERIODIC"

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    new-instance v18, Landroid/app/job/JobInfo$Builder;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    move/from16 v19, v6

    .line 76
    invoke-virtual/range {v18 .. v19}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    move-object/from16 v19, v5

    .line 77
    invoke-virtual/range {v19 .. v19}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    move-object/from16 v19, v5

    .line 78
    invoke-virtual/range {v19 .. v19}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    move-object/from16 v19, v7

    .line 79
    invoke-virtual/range {v18 .. v19}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    move-object/from16 v8, v18

    .line 81
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v18

    if-nez v18, :cond_0

    .line 83
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move-object/from16 v18, v0

    sget-object v19, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x0

    :goto_0
    move/from16 v9, v18

    .line 85
    move-object/from16 v18, v8

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v19, v0

    move/from16 v21, v9

    invoke-virtual/range {v18 .. v21}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    .line 88
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 90
    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    sub-long v18, v18, v20

    const-wide/16 v20, 0x0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 95
    move-object/from16 v18, v8

    move-wide/from16 v19, v13

    invoke-virtual/range {v18 .. v20}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    .line 97
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x18

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 98
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroidx/work/Constraints;->getContentUriTriggers()Landroidx/work/ContentUriTriggers;

    move-result-object v18

    move-object/from16 v15, v18

    .line 99
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Landroidx/work/ContentUriTriggers;->getTriggers()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_1
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/work/ContentUriTriggers$Trigger;

    move-object/from16 v17, v18

    .line 100
    move-object/from16 v18, v8

    move-object/from16 v19, v17

    invoke-static/range {v19 .. v19}, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->convertContentUriTrigger(Landroidx/work/ContentUriTriggers$Trigger;)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    .line 101
    goto :goto_1

    .line 83
    :cond_1
    const/16 v18, 0x1

    goto :goto_0

    .line 102
    :cond_2
    move-object/from16 v18, v8

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroidx/work/Constraints;->getTriggerContentUpdateDelay()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    .line 103
    move-object/from16 v18, v8

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroidx/work/Constraints;->getTriggerMaxContentDelay()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    .line 108
    :cond_3
    move-object/from16 v18, v8

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    .line 109
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x1a

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 110
    move-object/from16 v18, v8

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    .line 111
    move-object/from16 v18, v8

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v18

    .line 113
    :cond_4
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v18

    move-object/from16 v2, v18

    return-object v2
.end method
