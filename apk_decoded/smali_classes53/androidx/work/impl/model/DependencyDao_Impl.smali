.class public final Landroidx/work/impl/model/DependencyDao_Impl;
.super Ljava/lang/Object;
.source "DependencyDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/DependencyDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfDependency:Landroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 8

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/DependencyDao_Impl$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/DependencyDao_Impl$1;-><init>(Landroidx/work/impl/model/DependencyDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/DependencyDao_Impl;->__insertionAdapterOfDependency:Landroidx/room/EntityInsertionAdapter;

    .line 43
    return-void
.end method


# virtual methods
.method public getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    const-string v9, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    move-object v2, v9

    .line 114
    const-string v9, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v9

    move-object v3, v9

    .line 115
    const/4 v9, 0x1

    move v4, v9

    .line 116
    move-object v9, v1

    if-nez v9, :cond_0

    .line 117
    move-object v9, v3

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 121
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 122
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    move-object v5, v9

    .line 124
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v9

    .line 125
    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 127
    move-object v9, v5

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 128
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 129
    goto :goto_1

    .line 119
    :cond_0
    move-object v9, v3

    move v10, v4

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    move-object v9, v6

    move-object v7, v9

    .line 132
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 133
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 130
    move-object v9, v7

    move-object v0, v9

    return-object v0

    .line 132
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 133
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 134
    move-object v9, v8

    throw v9
.end method

.method public getPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    const-string v9, "SELECT prerequisite_id FROM dependency WHERE work_spec_id=?"

    move-object v2, v9

    .line 88
    const-string v9, "SELECT prerequisite_id FROM dependency WHERE work_spec_id=?"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v9

    move-object v3, v9

    .line 89
    const/4 v9, 0x1

    move v4, v9

    .line 90
    move-object v9, v1

    if-nez v9, :cond_0

    .line 91
    move-object v9, v3

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 95
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 96
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    move-object v5, v9

    .line 98
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v9

    .line 99
    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 101
    move-object v9, v5

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 102
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 103
    goto :goto_1

    .line 93
    :cond_0
    move-object v9, v3

    move v10, v4

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    move-object v9, v6

    move-object v7, v9

    .line 106
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 107
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 104
    move-object v9, v7

    move-object v0, v9

    return-object v0

    .line 106
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 107
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 108
    move-object v9, v8

    throw v9
.end method

.method public hasCompletedAllPrerequisites(Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    const-string v9, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    move-object v2, v9

    .line 60
    const-string v9, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v9

    move-object v3, v9

    .line 61
    const/4 v9, 0x1

    move v4, v9

    .line 62
    move-object v9, v1

    if-nez v9, :cond_0

    .line 63
    move-object v9, v3

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 67
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 68
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    move-object v5, v9

    .line 71
    move-object v9, v5

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 73
    move-object v9, v5

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    move v7, v9

    .line 74
    move v9, v7

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 78
    :goto_2
    move v9, v6

    move v7, v9

    .line 80
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 81
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 78
    move v9, v7

    move v0, v9

    return v0

    .line 65
    :cond_0
    move-object v9, v3

    move v10, v4

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 76
    :cond_2
    const/4 v9, 0x0

    move v6, v9

    goto :goto_2

    .line 80
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 81
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 82
    move-object v9, v8

    throw v9
.end method

.method public hasDependents(Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    const-string v9, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object v2, v9

    .line 140
    const-string v9, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v9

    move-object v3, v9

    .line 141
    const/4 v9, 0x1

    move v4, v9

    .line 142
    move-object v9, v1

    if-nez v9, :cond_0

    .line 143
    move-object v9, v3

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 147
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 148
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    move-object v5, v9

    .line 151
    move-object v9, v5

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 153
    move-object v9, v5

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    move v7, v9

    .line 154
    move v9, v7

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 158
    :goto_2
    move v9, v6

    move v7, v9

    .line 160
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 161
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 158
    move v9, v7

    move v0, v9

    return v0

    .line 145
    :cond_0
    move-object v9, v3

    move v10, v4

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 156
    :cond_2
    const/4 v9, 0x0

    move v6, v9

    goto :goto_2

    .line 160
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 161
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 162
    move-object v9, v8

    throw v9
.end method

.method public insertDependency(Landroidx/work/impl/model/Dependency;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 48
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 50
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/model/DependencyDao_Impl;->__insertionAdapterOfDependency:Landroidx/room/EntityInsertionAdapter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 51
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    move-object v3, v2

    throw v3
.end method
