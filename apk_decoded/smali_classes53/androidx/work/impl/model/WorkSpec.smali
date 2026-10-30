.class public Landroidx/work/impl/model/WorkSpec;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            value = {
                "schedule_requested_at"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;,
        Landroidx/work/impl/model/WorkSpec$IdAndState;
    }
.end annotation


# static fields
.field public static final SCHEDULE_NOT_REQUESTED_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field public static final WORK_INFO_MAPPER:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function",
            "<",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public backoffDelayDuration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "backoff_delay_duration"
    .end annotation
.end field

.field public backoffPolicy:Landroidx/work/BackoffPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "backoff_policy"
    .end annotation
.end field

.field public constraints:Landroidx/work/Constraints;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/Embedded;
    .end annotation
.end field

.field public flexDuration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "flex_duration"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field public initialDelay:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "initial_delay"
    .end annotation
.end field

.field public input:Landroidx/work/Data;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "input"
    .end annotation
.end field

.field public inputMergerClassName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "input_merger_class_name"
    .end annotation
.end field

.field public intervalDuration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "interval_duration"
    .end annotation
.end field

.field public minimumRetentionDuration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "minimum_retention_duration"
    .end annotation
.end field

.field public output:Landroidx/work/Data;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "output"
    .end annotation
.end field

.field public periodStartTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "period_start_time"
    .end annotation
.end field

.field public runAttemptCount:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "run_attempt_count"
    .end annotation
.end field

.field public scheduleRequestedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "schedule_requested_at"
    .end annotation
.end field

.field public state:Landroidx/work/WorkInfo$State;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "state"
    .end annotation
.end field

.field public workerClassName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "worker_class_name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string v0, "WorkSpec"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 435
    new-instance v0, Landroidx/work/impl/model/WorkSpec$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/work/impl/model/WorkSpec$1;-><init>()V

    sput-object v0, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/arch/core/util/Function;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/model/WorkSpec;)V
    .locals 8
    .param p1    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v3, v1

    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 75
    move-object v3, v1

    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 79
    move-object v3, v1

    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 92
    move-object v3, v1

    sget-object v4, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 100
    move-object v3, v1

    sget-object v4, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 104
    move-object v3, v1

    const-wide/16 v4, 0x7530

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 125
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 134
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 135
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 136
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 137
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 138
    move-object v3, v1

    new-instance v4, Landroidx/work/Data;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-direct {v5, v6}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 139
    move-object v3, v1

    new-instance v4, Landroidx/work/Data;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-direct {v5, v6}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 140
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 141
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 142
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 143
    move-object v3, v1

    new-instance v4, Landroidx/work/Constraints;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-direct {v5, v6}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints;)V

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 144
    move-object v3, v1

    move-object v4, v2

    iget v4, v4, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iput v4, v3, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 145
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 146
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 147
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 148
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 149
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v3, v0

    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 75
    move-object v3, v0

    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 79
    move-object v3, v0

    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 92
    move-object v3, v0

    sget-object v4, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 100
    move-object v3, v0

    sget-object v4, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 104
    move-object v3, v0

    const-wide/16 v4, 0x7530

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 125
    move-object v3, v0

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 129
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 130
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public calculateNextRunTime()J
    .locals 14

    .prologue
    .line 246
    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 247
    move-object v8, v0

    iget-object v8, v8, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    sget-object v9, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v1, v8

    .line 248
    move v8, v1

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-object v10, v0

    iget v10, v10, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    .line 249
    :goto_1
    move-wide v2, v8

    .line 250
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/32 v10, 0x112a880

    move-wide v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    move-wide v0, v8

    .line 280
    :goto_2
    return-wide v0

    .line 247
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 248
    :cond_1
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    long-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    .line 249
    invoke-static {v8, v9}, Ljava/lang/Math;->scalb(FI)F

    move-result v8

    float-to-long v8, v8

    goto :goto_1

    .line 251
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v1, v8

    .line 253
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    move-wide v8, v1

    move-object v10, v0

    iget-wide v10, v10, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    add-long/2addr v8, v10

    :goto_3
    move-wide v3, v8

    .line 254
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move-object v10, v0

    iget-wide v10, v10, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_4
    move v5, v8

    .line 255
    move v8, v5

    if-eqz v8, :cond_6

    .line 265
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    const-wide/16 v8, -0x1

    move-object v10, v0

    iget-wide v10, v10, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    mul-long/2addr v8, v10

    :goto_5
    move-wide v6, v8

    .line 266
    move-wide v8, v3

    move-object v10, v0

    iget-wide v10, v10, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    add-long/2addr v8, v10

    move-wide v10, v6

    add-long/2addr v8, v10

    move-wide v0, v8

    goto :goto_2

    .line 253
    :cond_3
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    goto :goto_3

    .line 254
    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 265
    :cond_5
    const-wide/16 v8, 0x0

    goto :goto_5

    .line 273
    :cond_6
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    const-wide/16 v8, 0x0

    :goto_6
    move-wide v6, v8

    .line 274
    move-wide v8, v3

    move-wide v10, v6

    add-long/2addr v8, v10

    move-wide v0, v8

    goto :goto_2

    .line 273
    :cond_7
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    goto :goto_6

    .line 279
    :cond_8
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :goto_7
    move-wide v1, v8

    .line 280
    move-wide v8, v1

    move-object v10, v0

    iget-wide v10, v10, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    add-long/2addr v8, v10

    move-wide v0, v8

    goto/16 :goto_2

    .line 279
    :cond_9
    move-object v8, v0

    iget-wide v8, v8, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 293
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 317
    :goto_0
    return v1

    .line 294
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 296
    :cond_2
    move-object v4, v2

    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    move-object v3, v4

    .line 298
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 299
    :cond_3
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 300
    :cond_4
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 301
    :cond_5
    move-object v4, v1

    iget v4, v4, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move-object v5, v3

    iget v5, v5, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-eq v4, v5, :cond_6

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 302
    :cond_6
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 303
    :cond_7
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 304
    :cond_8
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 305
    :cond_9
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 306
    :cond_a
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 307
    :cond_b
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-eq v4, v5, :cond_c

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 308
    :cond_c
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 309
    :cond_d
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 312
    :cond_e
    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 309
    :cond_f
    move-object v4, v3

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 314
    :cond_10
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v4, v5}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 315
    :cond_11
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v4, v5}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 316
    :cond_12
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v4, v5}, Landroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 317
    :cond_13
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    if-ne v4, v5, :cond_14

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto/16 :goto_0

    :cond_14
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasConstraints()Z
    .locals 3

    .prologue
    .line 288
    move-object v0, p0

    sget-object v1, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1, v2}, Landroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 322
    move-object v1, p0

    move-object v3, v1

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move v2, v3

    .line 323
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v4}, Landroidx/work/WorkInfo$State;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 324
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 325
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    move v2, v3

    .line 326
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v4}, Landroidx/work/Data;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 327
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v4}, Landroidx/work/Data;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 328
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 329
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 330
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 331
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v4}, Landroidx/work/Constraints;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 332
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    add-int/2addr v3, v4

    move v2, v3

    .line 333
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    invoke-virtual {v4}, Landroidx/work/BackoffPolicy;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 334
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 335
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 336
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 337
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 338
    move v3, v2

    move v1, v3

    return v1

    .line 325
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public isBackedOff()Z
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPeriodic()Z
    .locals 6

    .prologue
    .line 169
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBackoffDelayDuration(J)V
    .locals 9

    .prologue
    .line 156
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, v2

    const-wide/32 v6, 0x112a880

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 157
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v6, "Backoff delay duration exceeds maximum value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 158
    const-wide/32 v4, 0x112a880

    move-wide v2, v4

    .line 160
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 161
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v6, "Backoff delay duration less than minimum value"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 162
    const-wide/16 v4, 0x2710

    move-wide v2, v4

    .line 164
    :cond_1
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 165
    return-void
.end method

.method public setPeriodic(J)V
    .locals 13

    .prologue
    .line 182
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, v2

    const-wide/32 v6, 0xdbba0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 183
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v6, "Interval duration lesser than minimum allowed value; Changed to %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-wide/32 v10, 0xdbba0

    .line 185
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 183
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 186
    const-wide/32 v4, 0xdbba0

    move-wide v2, v4

    .line 188
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    .line 189
    return-void
.end method

.method public setPeriodic(JJ)V
    .locals 15

    .prologue
    .line 198
    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide v6, v2

    const-wide/32 v8, 0xdbba0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 199
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v8, "Interval duration lesser than minimum allowed value; Changed to %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    const-wide/32 v12, 0xdbba0

    .line 201
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 199
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 202
    const-wide/32 v6, 0xdbba0

    move-wide v2, v6

    .line 204
    :cond_0
    move-wide v6, v4

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 205
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v8, "Flex duration lesser than minimum allowed value; Changed to %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    const-wide/32 v12, 0x493e0

    .line 207
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 206
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Throwable;

    .line 205
    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 208
    const-wide/32 v6, 0x493e0

    move-wide v4, v6

    .line 210
    :cond_1
    move-wide v6, v4

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 211
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v8, "Flex duration greater than interval duration; Changed to %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-wide v12, v2

    .line 213
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 212
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Throwable;

    .line 211
    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 214
    move-wide v6, v2

    move-wide v4, v6

    .line 216
    :cond_2
    move-object v6, v1

    move-wide v7, v2

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 217
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{WorkSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
