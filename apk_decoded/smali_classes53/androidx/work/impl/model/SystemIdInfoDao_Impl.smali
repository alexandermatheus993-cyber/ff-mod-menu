.class public final Landroidx/work/impl/model/SystemIdInfoDao_Impl;
.super Ljava/lang/Object;
.source "SystemIdInfoDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/SystemIdInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfSystemIdInfo:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 8

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 25
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;-><init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertionAdapterOfSystemIdInfo:Landroidx/room/EntityInsertionAdapter;

    .line 41
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/SystemIdInfoDao_Impl$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$2;-><init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

    .line 48
    return-void
.end method


# virtual methods
.method public getSystemIdInfo(Ljava/lang/String;)Landroidx/work/impl/model/SystemIdInfo;
    .locals 17

    .prologue
    .line 84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v12, "SELECT * FROM SystemIdInfo WHERE work_spec_id=?"

    move-object v2, v12

    .line 85
    const-string v12, "SELECT * FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v12

    move-object v3, v12

    .line 86
    const/4 v12, 0x1

    move v4, v12

    .line 87
    move-object v12, v1

    if-nez v12, :cond_0

    .line 88
    move-object v12, v3

    move v13, v4

    invoke-virtual {v12, v13}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 92
    :goto_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v12}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 93
    move-object v12, v0

    iget-object v12, v12, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v13, v3

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v12

    move-object v5, v12

    .line 95
    move-object v12, v5

    :try_start_0
    const-string v13, "work_spec_id"

    invoke-static {v12, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move v6, v12

    .line 96
    move-object v12, v5

    const-string v13, "system_id"

    invoke-static {v12, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move v7, v12

    .line 98
    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 100
    move-object v12, v5

    move v13, v6

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 102
    move-object v12, v5

    move v13, v7

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move v10, v12

    .line 103
    new-instance v12, Landroidx/work/impl/model/SystemIdInfo;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v9

    move v15, v10

    invoke-direct {v13, v14, v15}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v12

    .line 107
    :goto_1
    move-object v12, v8

    move-object v9, v12

    .line 109
    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 110
    move-object v12, v3

    invoke-virtual {v12}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 107
    move-object v12, v9

    move-object v0, v12

    return-object v0

    .line 90
    :cond_0
    move-object v12, v3

    move v13, v4

    move-object v14, v1

    invoke-virtual {v12, v13, v14}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    const/4 v12, 0x0

    move-object v8, v12

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 110
    move-object v12, v3

    invoke-virtual {v12}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 111
    move-object v12, v11

    throw v12
.end method

.method public insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 53
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 55
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertionAdapterOfSystemIdInfo:Landroidx/room/EntityInsertionAdapter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 56
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 60
    return-void

    .line 58
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 59
    move-object v3, v2

    throw v3
.end method

.method public removeSystemIdInfo(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 65
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v5}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v5

    move-object v2, v5

    .line 66
    const/4 v5, 0x1

    move v3, v5

    .line 67
    move-object v5, v1

    if-nez v5, :cond_0

    .line 68
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 72
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 74
    move-object v5, v2

    :try_start_0
    invoke-interface {v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v5

    .line 75
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 78
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 80
    return-void

    .line 70
    :cond_0
    move-object v5, v2

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 78
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/SharedSQLiteStatement;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 79
    move-object v5, v4

    throw v5
.end method
