.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "WorkDatabase_Impl.java"


# instance fields
.field private volatile _dependencyDao:Landroidx/work/impl/model/DependencyDao;

.field private volatile _systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

.field private volatile _workNameDao:Landroidx/work/impl/model/WorkNameDao;

.field private volatile _workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

.field private volatile _workTagDao:Landroidx/work/impl/model/WorkTagDao;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$302(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroidx/work/impl/WorkDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$400(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/work/impl/WorkDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroidx/work/impl/WorkDatabase;->assertNotMainThread()V

    .line 218
    move-object v4, v0

    invoke-super {v4}, Landroidx/work/impl/WorkDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v4

    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    .line 219
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 221
    move v4, v2

    if-nez v4, :cond_0

    .line 222
    move-object v4, v1

    :try_start_0
    const-string v5, "PRAGMA foreign_keys = FALSE"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    :cond_0
    move-object v4, v0

    invoke-super {v4}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 225
    move v4, v2

    if-eqz v4, :cond_1

    .line 226
    move-object v4, v1

    const-string v5, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    :cond_1
    move-object v4, v1

    const-string v5, "DELETE FROM `Dependency`"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    move-object v4, v1

    const-string v5, "DELETE FROM `WorkSpec`"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    move-object v4, v1

    const-string v5, "DELETE FROM `WorkTag`"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    move-object v4, v1

    const-string v5, "DELETE FROM `SystemIdInfo`"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    move-object v4, v1

    const-string v5, "DELETE FROM `WorkName`"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    move-object v4, v0

    invoke-super {v4}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    move-object v4, v0

    invoke-super {v4}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 236
    move v4, v2

    if-nez v4, :cond_2

    .line 237
    move-object v4, v1

    const-string v5, "PRAGMA foreign_keys = TRUE"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    :cond_2
    move-object v4, v1

    const-string v5, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 240
    move-object v4, v1

    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    move-object v4, v1

    const-string v5, "VACUUM"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    :cond_3
    return-void

    .line 219
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    invoke-super {v4}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 236
    move v4, v2

    if-nez v4, :cond_5

    .line 237
    move-object v4, v1

    const-string v5, "PRAGMA foreign_keys = TRUE"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    :cond_5
    move-object v4, v1

    const-string v5, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 240
    move-object v4, v1

    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v4

    if-nez v4, :cond_6

    .line 241
    move-object v4, v1

    const-string v5, "VACUUM"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    :cond_6
    move-object v4, v3

    throw v4
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 13

    .prologue
    .line 210
    move-object v0, p0

    new-instance v3, Ljava/util/HashMap;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v3

    .line 211
    new-instance v3, Ljava/util/HashMap;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    move-object v2, v3

    .line 212
    new-instance v3, Landroidx/room/InvalidationTracker;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string v11, "Dependency"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const-string v11, "WorkSpec"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const-string v11, "WorkTag"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    const-string v11, "SystemIdInfo"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    const-string v11, "WorkName"

    aput-object v11, v9, v10

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 13

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroidx/room/RoomOpenHelper;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v1

    new-instance v8, Landroidx/work/impl/WorkDatabase_Impl$1;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    const/4 v11, 0x6

    invoke-direct {v9, v10, v11}, Landroidx/work/impl/WorkDatabase_Impl$1;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v9, "c84d23ade98552f1cec71088c1f0794c"

    const-string v10, "1db8206f0da6aa81bbdd2d99a82d9e14"

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 200
    move-object v5, v1

    iget-object v5, v5, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v5}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 201
    invoke-virtual {v5, v6}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v5

    move-object v6, v2

    .line 202
    invoke-virtual {v5, v6}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v5

    .line 203
    invoke-virtual {v5}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v5

    move-object v3, v5

    .line 204
    move-object v5, v1

    iget-object v5, v5, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    move-object v6, v3

    invoke-interface {v5, v6}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v5

    move-object v4, v5

    .line 205
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method public dependencyDao()Landroidx/work/impl/model/DependencyDao;
    .locals 8

    .prologue
    .line 262
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    if-eqz v3, :cond_0

    .line 263
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    move-object v0, v3

    .line 269
    :goto_0
    return-object v0

    .line 265
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 266
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    if-nez v3, :cond_1

    .line 267
    move-object v3, v0

    new-instance v4, Landroidx/work/impl/model/DependencyDao_Impl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/work/impl/model/DependencyDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v4, v3, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 269
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;
    .locals 8

    .prologue
    .line 290
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    if-eqz v3, :cond_0

    .line 291
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    move-object v0, v3

    .line 297
    :goto_0
    return-object v0

    .line 293
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 294
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    if-nez v3, :cond_1

    .line 295
    move-object v3, v0

    new-instance v4, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/work/impl/model/SystemIdInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v4, v3, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    .line 297
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public workNameDao()Landroidx/work/impl/model/WorkNameDao;
    .locals 8

    .prologue
    .line 304
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    if-eqz v3, :cond_0

    .line 305
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    move-object v0, v3

    .line 311
    :goto_0
    return-object v0

    .line 307
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 308
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    if-nez v3, :cond_1

    .line 309
    move-object v3, v0

    new-instance v4, Landroidx/work/impl/model/WorkNameDao_Impl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/work/impl/model/WorkNameDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v4, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    .line 311
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public workSpecDao()Landroidx/work/impl/model/WorkSpecDao;
    .locals 8

    .prologue
    .line 248
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    if-eqz v3, :cond_0

    .line 249
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    move-object v0, v3

    .line 255
    :goto_0
    return-object v0

    .line 251
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 252
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    if-nez v3, :cond_1

    .line 253
    move-object v3, v0

    new-instance v4, Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v4, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 255
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public workTagDao()Landroidx/work/impl/model/WorkTagDao;
    .locals 8

    .prologue
    .line 276
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    if-eqz v3, :cond_0

    .line 277
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    move-object v0, v3

    .line 283
    :goto_0
    return-object v0

    .line 279
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 280
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    if-nez v3, :cond_1

    .line 281
    move-object v3, v0

    new-instance v4, Landroidx/work/impl/model/WorkTagDao_Impl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/work/impl/model/WorkTagDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v4, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    .line 283
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
