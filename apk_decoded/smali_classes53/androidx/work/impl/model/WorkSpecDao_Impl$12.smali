.class Landroidx/work/impl/model/WorkSpecDao_Impl$12;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
        "Ljava/util/List",
        "<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 5

    .prologue
    .line 1133
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1133
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->call()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1136
    move-object/from16 v0, p0

    move-object v14, v0

    iget-object v14, v14, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v14}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1138
    move-object v14, v0

    :try_start_0
    iget-object v14, v14, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v14}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    move-object v1, v14

    .line 1140
    move-object v14, v1

    :try_start_1
    const-string v15, "id"

    invoke-static {v14, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move v2, v14

    .line 1141
    move-object v14, v1

    const-string v15, "state"

    invoke-static {v14, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move v3, v14

    .line 1142
    move-object v14, v1

    const-string v15, "output"

    invoke-static {v14, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move v4, v14

    .line 1143
    move-object v14, v1

    const-string v15, "run_attempt_count"

    invoke-static {v14, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move v5, v14

    .line 1144
    new-instance v14, Landroidx/collection/ArrayMap;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v6, v14

    .line 1145
    :cond_0
    :goto_0
    move-object v14, v1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1146
    move-object v14, v1

    move v15, v2

    invoke-interface {v14, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1147
    move-object v14, v1

    move v15, v2

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 1148
    move-object v14, v6

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v8, v14

    .line 1149
    move-object v14, v8

    if-nez v14, :cond_1

    .line 1150
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v14

    .line 1151
    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1153
    :cond_1
    goto :goto_0

    .line 1155
    :cond_2
    move-object v14, v1

    const/4 v15, -0x1

    invoke-interface {v14, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v14

    .line 1156
    move-object v14, v0

    iget-object v14, v14, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-object v15, v6

    invoke-static {v14, v15}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V

    .line 1157
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v14

    .line 1158
    :goto_1
    move-object v14, v1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1160
    const/4 v14, 0x0

    move-object v9, v14

    .line 1161
    move-object v14, v1

    move v15, v2

    invoke-interface {v14, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1162
    move-object v14, v1

    move v15, v2

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 1163
    move-object v14, v6

    move-object v15, v10

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v9, v14

    .line 1165
    :cond_3
    move-object v14, v9

    if-nez v14, :cond_4

    .line 1166
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v14

    .line 1168
    :cond_4
    new-instance v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    move-object v8, v14

    .line 1169
    move-object v14, v8

    move-object v15, v1

    move/from16 v16, v2

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 1171
    move-object v14, v1

    move v15, v3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move v10, v14

    .line 1172
    move-object v14, v8

    move v15, v10

    invoke-static {v15}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v15

    iput-object v15, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 1174
    move-object v14, v1

    move v15, v4

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    move-object v11, v14

    .line 1175
    move-object v14, v8

    move-object v15, v11

    invoke-static {v15}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v15

    iput-object v15, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 1176
    move-object v14, v8

    move-object v15, v1

    move/from16 v16, v5

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1177
    move-object v14, v8

    move-object v15, v9

    iput-object v15, v14, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1178
    move-object v14, v7

    move-object v15, v8

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 1179
    goto :goto_1

    .line 1180
    :cond_5
    move-object v14, v0

    iget-object v14, v14, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v14}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    move-object v14, v7

    move-object v8, v14

    .line 1183
    move-object v14, v1

    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1186
    move-object v14, v0

    iget-object v14, v14, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v14}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1181
    move-object v14, v8

    move-object v0, v14

    return-object v0

    .line 1183
    :catchall_0
    move-exception v14

    move-object v12, v14

    move-object v14, v1

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1184
    move-object v14, v12

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1186
    :catchall_1
    move-exception v14

    move-object v13, v14

    move-object v14, v0

    iget-object v14, v14, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v14}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1187
    move-object v14, v13

    throw v14
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1192
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$12;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1193
    return-void
.end method
