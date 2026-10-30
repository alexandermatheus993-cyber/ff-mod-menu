.class Landroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter",
        "<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V
    .locals 20

    .prologue
    .line 61
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 62
    move-object/from16 v16, v3

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 67
    :goto_0
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v16

    move/from16 v5, v16

    .line 68
    move-object/from16 v16, v3

    const/16 v17, 0x2

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 69
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 70
    move-object/from16 v16, v3

    const/16 v17, 0x3

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 74
    :goto_1
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 75
    move-object/from16 v16, v3

    const/16 v17, 0x4

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 80
    :goto_2
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroidx/work/Data;->toByteArray(Landroidx/work/Data;)[B

    move-result-object v16

    move-object/from16 v6, v16

    .line 81
    move-object/from16 v16, v6

    if-nez v16, :cond_3

    .line 82
    move-object/from16 v16, v3

    const/16 v17, 0x5

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 87
    :goto_3
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroidx/work/Data;->toByteArray(Landroidx/work/Data;)[B

    move-result-object v16

    move-object/from16 v7, v16

    .line 88
    move-object/from16 v16, v7

    if-nez v16, :cond_4

    .line 89
    move-object/from16 v16, v3

    const/16 v17, 0x6

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 93
    :goto_4
    move-object/from16 v16, v3

    const/16 v17, 0x7

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 94
    move-object/from16 v16, v3

    const/16 v17, 0x8

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 95
    move-object/from16 v16, v3

    const/16 v17, 0x9

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 96
    move-object/from16 v16, v3

    const/16 v17, 0xa

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 98
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I

    move-result v16

    move/from16 v8, v16

    .line 99
    move-object/from16 v16, v3

    const/16 v17, 0xb

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 100
    move-object/from16 v16, v3

    const/16 v17, 0xc

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 101
    move-object/from16 v16, v3

    const/16 v17, 0xd

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 102
    move-object/from16 v16, v3

    const/16 v17, 0xe

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 103
    move-object/from16 v16, v3

    const/16 v17, 0xf

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 104
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 105
    move-object/from16 v16, v9

    if-eqz v16, :cond_a

    .line 107
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(Landroidx/work/NetworkType;)I

    move-result v16

    move/from16 v10, v16

    .line 108
    move-object/from16 v16, v3

    const/16 v17, 0x10

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 110
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x1

    :goto_5
    move/from16 v11, v16

    .line 111
    move-object/from16 v16, v3

    const/16 v17, 0x11

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 113
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x1

    :goto_6
    move/from16 v12, v16

    .line 114
    move-object/from16 v16, v3

    const/16 v17, 0x12

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 116
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x1

    :goto_7
    move/from16 v13, v16

    .line 117
    move-object/from16 v16, v3

    const/16 v17, 0x13

    move/from16 v18, v13

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 119
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    :goto_8
    move/from16 v14, v16

    .line 120
    move-object/from16 v16, v3

    const/16 v17, 0x14

    move/from16 v18, v14

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 121
    move-object/from16 v16, v3

    const/16 v17, 0x15

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Landroidx/work/Constraints;->getTriggerContentUpdateDelay()J

    move-result-wide v18

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 122
    move-object/from16 v16, v3

    const/16 v17, 0x16

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Landroidx/work/Constraints;->getTriggerMaxContentDelay()J

    move-result-wide v18

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 124
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroidx/work/Constraints;->getContentUriTriggers()Landroidx/work/ContentUriTriggers;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->contentUriTriggersToByteArray(Landroidx/work/ContentUriTriggers;)[B

    move-result-object v16

    move-object/from16 v15, v16

    .line 125
    move-object/from16 v16, v15

    if-nez v16, :cond_9

    .line 126
    move-object/from16 v16, v3

    const/16 v17, 0x17

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 140
    :goto_9
    return-void

    .line 64
    :cond_0
    move-object/from16 v16, v3

    const/16 v17, 0x1

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_1
    move-object/from16 v16, v3

    const/16 v17, 0x3

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 77
    :cond_2
    move-object/from16 v16, v3

    const/16 v17, 0x4

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 84
    :cond_3
    move-object/from16 v16, v3

    const/16 v17, 0x5

    move-object/from16 v18, v6

    invoke-interface/range {v16 .. v18}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    goto/16 :goto_3

    .line 91
    :cond_4
    move-object/from16 v16, v3

    const/16 v17, 0x6

    move-object/from16 v18, v7

    invoke-interface/range {v16 .. v18}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    goto/16 :goto_4

    .line 110
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 113
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 116
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 119
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 128
    :cond_9
    move-object/from16 v16, v3

    const/16 v17, 0x17

    move-object/from16 v18, v15

    invoke-interface/range {v16 .. v18}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    goto :goto_9

    .line 131
    :cond_a
    move-object/from16 v16, v3

    const/16 v17, 0x10

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 132
    move-object/from16 v16, v3

    const/16 v17, 0x11

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 133
    move-object/from16 v16, v3

    const/16 v17, 0x12

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 134
    move-object/from16 v16, v3

    const/16 v17, 0x13

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 135
    move-object/from16 v16, v3

    const/16 v17, 0x14

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 136
    move-object/from16 v16, v3

    const/16 v17, 0x15

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 137
    move-object/from16 v16, v3

    const/16 v17, 0x16

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 138
    move-object/from16 v16, v3

    const/16 v17, 0x17

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto/16 :goto_9
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v3, v4, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    const-string v1, "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    move-object v0, v1

    return-object v0
.end method
