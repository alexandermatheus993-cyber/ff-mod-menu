.class public final Landroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/WorkSpecDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 53
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    .line 142
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 149
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    .line 156
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$4;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;

    .line 163
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$5;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 170
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$6;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 177
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$7;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$7;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    .line 184
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$8;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$8;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    .line 191
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$9;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$9;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    .line 198
    return-void
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1656
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v4, v17

    .line 1657
    move-object/from16 v17, v4

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1718
    :goto_0
    return-void

    .line 1661
    :cond_0
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/collection/ArrayMap;->size()I

    move-result v17

    const/16 v18, 0x3e7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 1662
    new-instance v17, Landroidx/collection/ArrayMap;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x3e7

    invoke-direct/range {v18 .. v19}, Landroidx/collection/ArrayMap;-><init>(I)V

    move-object/from16 v5, v17

    .line 1663
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 1664
    const/16 v17, 0x0

    move/from16 v7, v17

    .line 1665
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroidx/collection/ArrayMap;->size()I

    move-result v17

    move/from16 v8, v17

    .line 1666
    :cond_1
    :goto_1
    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1667
    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1668
    add-int/lit8 v6, v6, 0x1

    .line 1669
    add-int/lit8 v7, v7, 0x1

    .line 1670
    move/from16 v17, v7

    const/16 v18, 0x3e7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1671
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 1672
    new-instance v17, Landroidx/collection/ArrayMap;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x3e7

    invoke-direct/range {v18 .. v19}, Landroidx/collection/ArrayMap;-><init>(I)V

    move-object/from16 v5, v17

    .line 1673
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_1

    .line 1676
    :cond_2
    move/from16 v17, v7

    if-lez v17, :cond_3

    .line 1677
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 1679
    :cond_3
    goto/16 :goto_0

    .line 1681
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v5, v17

    .line 1682
    move-object/from16 v17, v5

    const-string v18, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1683
    move-object/from16 v17, v4

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v17

    move/from16 v6, v17

    .line 1684
    move-object/from16 v17, v5

    move/from16 v18, v6

    invoke-static/range {v17 .. v18}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1685
    move-object/from16 v17, v5

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1686
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v7, v17

    .line 1687
    const/16 v17, 0x0

    move/from16 v18, v6

    add-int v17, v17, v18

    move/from16 v8, v17

    .line 1688
    move-object/from16 v17, v7

    move/from16 v18, v8

    invoke-static/range {v17 .. v18}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v17

    move-object/from16 v9, v17

    .line 1689
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 1690
    move-object/from16 v17, v4

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v11, v17

    :goto_2
    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v12, v17

    .line 1691
    move-object/from16 v17, v12

    if-nez v17, :cond_5

    .line 1692
    move-object/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 1696
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 1697
    goto :goto_2

    .line 1694
    :cond_5
    move-object/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 1698
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v17

    move-object/from16 v11, v17

    .line 1700
    move-object/from16 v17, v11

    :try_start_0
    const-string v18, "work_spec_id"

    invoke-static/range {v17 .. v18}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    move/from16 v12, v17

    .line 1701
    move/from16 v17, v12

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1716
    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1702
    goto/16 :goto_0

    .line 1704
    :cond_7
    :goto_4
    move-object/from16 v17, v11

    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1705
    move-object/from16 v17, v11

    move/from16 v18, v12

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_7

    .line 1706
    move-object/from16 v17, v11

    move/from16 v18, v12

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 1707
    move-object/from16 v17, v3

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v14, v17

    .line 1708
    move-object/from16 v17, v14

    if-eqz v17, :cond_8

    .line 1710
    move-object/from16 v17, v11

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    .line 1711
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    .line 1713
    :cond_8
    goto :goto_4

    .line 1716
    :cond_9
    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1718
    goto/16 :goto_0

    .line 1716
    :catchall_0
    move-exception v17

    move-object/from16 v16, v17

    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1717
    move-object/from16 v17, v16

    throw v17
.end method

.method static synthetic access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 215
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v5}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v5

    move-object v2, v5

    .line 216
    const/4 v5, 0x1

    move v3, v5

    .line 217
    move-object v5, v1

    if-nez v5, :cond_0

    .line 218
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 222
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 224
    move-object v5, v2

    :try_start_0
    invoke-interface {v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v5

    .line 225
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 228
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 230
    return-void

    .line 220
    :cond_0
    move-object v5, v2

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 228
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 229
    move-object v5, v4

    throw v5
.end method

.method public getAllUnfinishedWork()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1279
    move-object v0, p0

    const-string v7, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    move-object v1, v7

    .line 1280
    const-string v7, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v7

    move-object v2, v7

    .line 1281
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1282
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v7

    move-object v3, v7

    .line 1284
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    .line 1285
    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1287
    move-object v7, v3

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1288
    move-object v7, v4

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1289
    goto :goto_0

    .line 1290
    :cond_0
    move-object v7, v4

    move-object v5, v7

    .line 1292
    move-object v7, v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1293
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1290
    move-object v7, v5

    move-object v0, v7

    return-object v0

    .line 1292
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1293
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1294
    move-object v7, v6

    throw v7
.end method

.method public getAllWorkSpecIds()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    move-object v0, p0

    const-string v7, "SELECT id FROM workspec"

    move-object v1, v7

    .line 648
    const-string v7, "SELECT id FROM workspec"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v7

    move-object v2, v7

    .line 649
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 650
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v7

    move-object v3, v7

    .line 652
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    .line 653
    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 655
    move-object v7, v3

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 656
    move-object v7, v4

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 657
    goto :goto_0

    .line 658
    :cond_0
    move-object v7, v4

    move-object v5, v7

    .line 660
    move-object v7, v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 661
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 658
    move-object v7, v5

    move-object v0, v7

    return-object v0

    .line 660
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 661
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 662
    move-object v7, v6

    throw v7
.end method

.method public getEligibleWorkForScheduling(I)Ljava/util/List;
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1299
    move-object/from16 v4, p0

    move/from16 v5, p1

    const-string v59, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    move-object/from16 v6, v59

    .line 1300
    const-string v59, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/16 v60, 0x1

    invoke-static/range {v59 .. v60}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v59

    move-object/from16 v7, v59

    .line 1301
    const/16 v59, 0x1

    move/from16 v8, v59

    .line 1302
    move-object/from16 v59, v7

    move/from16 v60, v8

    move/from16 v61, v5

    move/from16 v0, v61

    int-to-long v0, v0

    move-wide/from16 v61, v0

    invoke-virtual/range {v59 .. v62}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1303
    move-object/from16 v59, v4

    move-object/from16 v0, v59

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1304
    move-object/from16 v59, v4

    move-object/from16 v0, v59

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v59, v0

    move-object/from16 v60, v7

    const/16 v61, 0x0

    invoke-static/range {v59 .. v61}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v59

    move-object/from16 v9, v59

    .line 1306
    move-object/from16 v59, v9

    :try_start_0
    const-string v60, "id"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v10, v59

    .line 1307
    move-object/from16 v59, v9

    const-string v60, "state"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v11, v59

    .line 1308
    move-object/from16 v59, v9

    const-string v60, "worker_class_name"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v12, v59

    .line 1309
    move-object/from16 v59, v9

    const-string v60, "input_merger_class_name"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v13, v59

    .line 1310
    move-object/from16 v59, v9

    const-string v60, "input"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v14, v59

    .line 1311
    move-object/from16 v59, v9

    const-string v60, "output"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v15, v59

    .line 1312
    move-object/from16 v59, v9

    const-string v60, "initial_delay"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v16, v59

    .line 1313
    move-object/from16 v59, v9

    const-string v60, "interval_duration"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v17, v59

    .line 1314
    move-object/from16 v59, v9

    const-string v60, "flex_duration"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v18, v59

    .line 1315
    move-object/from16 v59, v9

    const-string v60, "run_attempt_count"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v19, v59

    .line 1316
    move-object/from16 v59, v9

    const-string v60, "backoff_policy"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v20, v59

    .line 1317
    move-object/from16 v59, v9

    const-string v60, "backoff_delay_duration"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v21, v59

    .line 1318
    move-object/from16 v59, v9

    const-string v60, "period_start_time"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v22, v59

    .line 1319
    move-object/from16 v59, v9

    const-string v60, "minimum_retention_duration"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v23, v59

    .line 1320
    move-object/from16 v59, v9

    const-string v60, "schedule_requested_at"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v24, v59

    .line 1321
    move-object/from16 v59, v9

    const-string v60, "required_network_type"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v25, v59

    .line 1322
    move-object/from16 v59, v9

    const-string v60, "requires_charging"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v26, v59

    .line 1323
    move-object/from16 v59, v9

    const-string v60, "requires_device_idle"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v27, v59

    .line 1324
    move-object/from16 v59, v9

    const-string v60, "requires_battery_not_low"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v28, v59

    .line 1325
    move-object/from16 v59, v9

    const-string v60, "requires_storage_not_low"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v29, v59

    .line 1326
    move-object/from16 v59, v9

    const-string v60, "trigger_content_update_delay"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v30, v59

    .line 1327
    move-object/from16 v59, v9

    const-string v60, "trigger_max_content_delay"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v31, v59

    .line 1328
    move-object/from16 v59, v9

    const-string v60, "content_uri_triggers"

    invoke-static/range {v59 .. v60}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v59

    move/from16 v32, v59

    .line 1329
    new-instance v59, Ljava/util/ArrayList;

    move-object/from16 v63, v59

    move-object/from16 v59, v63

    move-object/from16 v60, v63

    move-object/from16 v61, v9

    invoke-interface/range {v61 .. v61}, Landroid/database/Cursor;->getCount()I

    move-result v61

    invoke-direct/range {v60 .. v61}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v33, v59

    .line 1330
    :goto_0
    move-object/from16 v59, v9

    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->moveToNext()Z

    move-result v59

    if-eqz v59, :cond_4

    .line 1333
    move-object/from16 v59, v9

    move/from16 v60, v10

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v35, v59

    .line 1335
    move-object/from16 v59, v9

    move/from16 v60, v12

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v36, v59

    .line 1337
    new-instance v59, Landroidx/work/Constraints;

    move-object/from16 v63, v59

    move-object/from16 v59, v63

    move-object/from16 v60, v63

    invoke-direct/range {v60 .. v60}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v37, v59

    .line 1340
    move-object/from16 v59, v9

    move/from16 v60, v25

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v39, v59

    .line 1341
    move/from16 v59, v39

    invoke-static/range {v59 .. v59}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v59

    move-object/from16 v38, v59

    .line 1342
    move-object/from16 v59, v37

    move-object/from16 v60, v38

    invoke-virtual/range {v59 .. v60}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 1345
    move-object/from16 v59, v9

    move/from16 v60, v26

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v41, v59

    .line 1346
    move/from16 v59, v41

    if-eqz v59, :cond_0

    const/16 v59, 0x1

    :goto_1
    move/from16 v40, v59

    .line 1347
    move-object/from16 v59, v37

    move/from16 v60, v40

    invoke-virtual/range {v59 .. v60}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1350
    move-object/from16 v59, v9

    move/from16 v60, v27

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v43, v59

    .line 1351
    move/from16 v59, v43

    if-eqz v59, :cond_1

    const/16 v59, 0x1

    :goto_2
    move/from16 v42, v59

    .line 1352
    move-object/from16 v59, v37

    move/from16 v60, v42

    invoke-virtual/range {v59 .. v60}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1355
    move-object/from16 v59, v9

    move/from16 v60, v28

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v45, v59

    .line 1356
    move/from16 v59, v45

    if-eqz v59, :cond_2

    const/16 v59, 0x1

    :goto_3
    move/from16 v44, v59

    .line 1357
    move-object/from16 v59, v37

    move/from16 v60, v44

    invoke-virtual/range {v59 .. v60}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1360
    move-object/from16 v59, v9

    move/from16 v60, v29

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v47, v59

    .line 1361
    move/from16 v59, v47

    if-eqz v59, :cond_3

    const/16 v59, 0x1

    :goto_4
    move/from16 v46, v59

    .line 1362
    move-object/from16 v59, v37

    move/from16 v60, v46

    invoke-virtual/range {v59 .. v60}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1364
    move-object/from16 v59, v9

    move/from16 v60, v30

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v59

    move-wide/from16 v48, v59

    .line 1365
    move-object/from16 v59, v37

    move-wide/from16 v60, v48

    invoke-virtual/range {v59 .. v61}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1367
    move-object/from16 v59, v9

    move/from16 v60, v31

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v59

    move-wide/from16 v50, v59

    .line 1368
    move-object/from16 v59, v37

    move-wide/from16 v60, v50

    invoke-virtual/range {v59 .. v61}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1371
    move-object/from16 v59, v9

    move/from16 v60, v32

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v59

    move-object/from16 v53, v59

    .line 1372
    move-object/from16 v59, v53

    invoke-static/range {v59 .. v59}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v59

    move-object/from16 v52, v59

    .line 1373
    move-object/from16 v59, v37

    move-object/from16 v60, v52

    invoke-virtual/range {v59 .. v60}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 1374
    new-instance v59, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v63, v59

    move-object/from16 v59, v63

    move-object/from16 v60, v63

    move-object/from16 v61, v35

    move-object/from16 v62, v36

    invoke-direct/range {v60 .. v62}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v34, v59

    .line 1376
    move-object/from16 v59, v9

    move/from16 v60, v11

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v54, v59

    .line 1377
    move-object/from16 v59, v34

    move/from16 v60, v54

    invoke-static/range {v60 .. v60}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 1378
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v13

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1380
    move-object/from16 v59, v9

    move/from16 v60, v14

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v59

    move-object/from16 v55, v59

    .line 1381
    move-object/from16 v59, v34

    move-object/from16 v60, v55

    invoke-static/range {v60 .. v60}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 1383
    move-object/from16 v59, v9

    move/from16 v60, v15

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v59

    move-object/from16 v56, v59

    .line 1384
    move-object/from16 v59, v34

    move-object/from16 v60, v56

    invoke-static/range {v60 .. v60}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 1385
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v16

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move-wide/from16 v0, v60

    move-object/from16 v2, v59

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1386
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v17

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move-wide/from16 v0, v60

    move-object/from16 v2, v59

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1387
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v18

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move-wide/from16 v0, v60

    move-object/from16 v2, v59

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1388
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v19

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    move/from16 v0, v60

    move-object/from16 v1, v59

    iput v0, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1390
    move-object/from16 v59, v9

    move/from16 v60, v20

    invoke-interface/range {v59 .. v60}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v57, v59

    .line 1391
    move-object/from16 v59, v34

    move/from16 v60, v57

    invoke-static/range {v60 .. v60}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 1392
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v21

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move-wide/from16 v0, v60

    move-object/from16 v2, v59

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1393
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v22

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move-wide/from16 v0, v60

    move-object/from16 v2, v59

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1394
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v23

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move-wide/from16 v0, v60

    move-object/from16 v2, v59

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1395
    move-object/from16 v59, v34

    move-object/from16 v60, v9

    move/from16 v61, v24

    invoke-interface/range {v60 .. v61}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    move-wide/from16 v0, v60

    move-object/from16 v2, v59

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1396
    move-object/from16 v59, v34

    move-object/from16 v60, v37

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1397
    move-object/from16 v59, v33

    move-object/from16 v60, v34

    invoke-interface/range {v59 .. v60}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v59

    .line 1398
    goto/16 :goto_0

    .line 1346
    :cond_0
    const/16 v59, 0x0

    goto/16 :goto_1

    .line 1351
    :cond_1
    const/16 v59, 0x0

    goto/16 :goto_2

    .line 1356
    :cond_2
    const/16 v59, 0x0

    goto/16 :goto_3

    .line 1361
    :cond_3
    const/16 v59, 0x0

    goto/16 :goto_4

    .line 1399
    :cond_4
    move-object/from16 v59, v33

    move-object/from16 v34, v59

    .line 1401
    move-object/from16 v59, v9

    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->close()V

    .line 1402
    move-object/from16 v59, v7

    invoke-virtual/range {v59 .. v59}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1399
    move-object/from16 v59, v34

    move-object/from16 v4, v59

    return-object v4

    .line 1401
    :catchall_0
    move-exception v59

    move-object/from16 v58, v59

    move-object/from16 v59, v9

    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->close()V

    .line 1402
    move-object/from16 v59, v7

    invoke-virtual/range {v59 .. v59}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1403
    move-object/from16 v59, v58

    throw v59
.end method

.method public getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/work/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    move-object v0, p0

    move-object v1, p1

    const-string v10, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    move-object v2, v10

    .line 1200
    const-string v10, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v10

    move-object v3, v10

    .line 1201
    const/4 v10, 0x1

    move v4, v10

    .line 1202
    move-object v10, v1

    if-nez v10, :cond_0

    .line 1203
    move-object v10, v3

    move v11, v4

    invoke-virtual {v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 1207
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1208
    move-object v10, v0

    iget-object v10, v10, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v11, v3

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v10

    move-object v5, v10

    .line 1210
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v10

    .line 1211
    :goto_1
    move-object v10, v5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1214
    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    move-object v8, v10

    .line 1215
    move-object v10, v8

    invoke-static {v10}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v10

    move-object v7, v10

    .line 1216
    move-object v10, v6

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 1217
    goto :goto_1

    .line 1205
    :cond_0
    move-object v10, v3

    move v11, v4

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 1218
    :cond_1
    move-object v10, v6

    move-object v7, v10

    .line 1220
    move-object v10, v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1221
    move-object v10, v3

    invoke-virtual {v10}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1218
    move-object v10, v7

    move-object v0, v10

    return-object v0

    .line 1220
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1221
    move-object v10, v3

    invoke-virtual {v10}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1222
    move-object v10, v9

    throw v10
.end method

.method public getRunningWork()Ljava/util/List;
    .locals 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1515
    move-object/from16 v4, p0

    const-string v57, "SELECT * FROM workspec WHERE state=1"

    move-object/from16 v5, v57

    .line 1516
    const-string v57, "SELECT * FROM workspec WHERE state=1"

    const/16 v58, 0x0

    invoke-static/range {v57 .. v58}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v57

    move-object/from16 v6, v57

    .line 1517
    move-object/from16 v57, v4

    move-object/from16 v0, v57

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1518
    move-object/from16 v57, v4

    move-object/from16 v0, v57

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v57, v0

    move-object/from16 v58, v6

    const/16 v59, 0x0

    invoke-static/range {v57 .. v59}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v57

    move-object/from16 v7, v57

    .line 1520
    move-object/from16 v57, v7

    :try_start_0
    const-string v58, "id"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v8, v57

    .line 1521
    move-object/from16 v57, v7

    const-string v58, "state"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v9, v57

    .line 1522
    move-object/from16 v57, v7

    const-string v58, "worker_class_name"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v10, v57

    .line 1523
    move-object/from16 v57, v7

    const-string v58, "input_merger_class_name"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v11, v57

    .line 1524
    move-object/from16 v57, v7

    const-string v58, "input"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v12, v57

    .line 1525
    move-object/from16 v57, v7

    const-string v58, "output"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v13, v57

    .line 1526
    move-object/from16 v57, v7

    const-string v58, "initial_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v14, v57

    .line 1527
    move-object/from16 v57, v7

    const-string v58, "interval_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v15, v57

    .line 1528
    move-object/from16 v57, v7

    const-string v58, "flex_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v16, v57

    .line 1529
    move-object/from16 v57, v7

    const-string v58, "run_attempt_count"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v17, v57

    .line 1530
    move-object/from16 v57, v7

    const-string v58, "backoff_policy"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v18, v57

    .line 1531
    move-object/from16 v57, v7

    const-string v58, "backoff_delay_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v19, v57

    .line 1532
    move-object/from16 v57, v7

    const-string v58, "period_start_time"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v20, v57

    .line 1533
    move-object/from16 v57, v7

    const-string v58, "minimum_retention_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v21, v57

    .line 1534
    move-object/from16 v57, v7

    const-string v58, "schedule_requested_at"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v22, v57

    .line 1535
    move-object/from16 v57, v7

    const-string v58, "required_network_type"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v23, v57

    .line 1536
    move-object/from16 v57, v7

    const-string v58, "requires_charging"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v24, v57

    .line 1537
    move-object/from16 v57, v7

    const-string v58, "requires_device_idle"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v25, v57

    .line 1538
    move-object/from16 v57, v7

    const-string v58, "requires_battery_not_low"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v26, v57

    .line 1539
    move-object/from16 v57, v7

    const-string v58, "requires_storage_not_low"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v27, v57

    .line 1540
    move-object/from16 v57, v7

    const-string v58, "trigger_content_update_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v28, v57

    .line 1541
    move-object/from16 v57, v7

    const-string v58, "trigger_max_content_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v29, v57

    .line 1542
    move-object/from16 v57, v7

    const-string v58, "content_uri_triggers"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v30, v57

    .line 1543
    new-instance v57, Ljava/util/ArrayList;

    move-object/from16 v61, v57

    move-object/from16 v57, v61

    move-object/from16 v58, v61

    move-object/from16 v59, v7

    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->getCount()I

    move-result v59

    invoke-direct/range {v58 .. v59}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v31, v57

    .line 1544
    :goto_0
    move-object/from16 v57, v7

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->moveToNext()Z

    move-result v57

    if-eqz v57, :cond_4

    .line 1547
    move-object/from16 v57, v7

    move/from16 v58, v8

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v33, v57

    .line 1549
    move-object/from16 v57, v7

    move/from16 v58, v10

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v34, v57

    .line 1551
    new-instance v57, Landroidx/work/Constraints;

    move-object/from16 v61, v57

    move-object/from16 v57, v61

    move-object/from16 v58, v61

    invoke-direct/range {v58 .. v58}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v35, v57

    .line 1554
    move-object/from16 v57, v7

    move/from16 v58, v23

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v37, v57

    .line 1555
    move/from16 v57, v37

    invoke-static/range {v57 .. v57}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v57

    move-object/from16 v36, v57

    .line 1556
    move-object/from16 v57, v35

    move-object/from16 v58, v36

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 1559
    move-object/from16 v57, v7

    move/from16 v58, v24

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v39, v57

    .line 1560
    move/from16 v57, v39

    if-eqz v57, :cond_0

    const/16 v57, 0x1

    :goto_1
    move/from16 v38, v57

    .line 1561
    move-object/from16 v57, v35

    move/from16 v58, v38

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1564
    move-object/from16 v57, v7

    move/from16 v58, v25

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v41, v57

    .line 1565
    move/from16 v57, v41

    if-eqz v57, :cond_1

    const/16 v57, 0x1

    :goto_2
    move/from16 v40, v57

    .line 1566
    move-object/from16 v57, v35

    move/from16 v58, v40

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1569
    move-object/from16 v57, v7

    move/from16 v58, v26

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v43, v57

    .line 1570
    move/from16 v57, v43

    if-eqz v57, :cond_2

    const/16 v57, 0x1

    :goto_3
    move/from16 v42, v57

    .line 1571
    move-object/from16 v57, v35

    move/from16 v58, v42

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1574
    move-object/from16 v57, v7

    move/from16 v58, v27

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v45, v57

    .line 1575
    move/from16 v57, v45

    if-eqz v57, :cond_3

    const/16 v57, 0x1

    :goto_4
    move/from16 v44, v57

    .line 1576
    move-object/from16 v57, v35

    move/from16 v58, v44

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1578
    move-object/from16 v57, v7

    move/from16 v58, v28

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move-wide/from16 v46, v57

    .line 1579
    move-object/from16 v57, v35

    move-wide/from16 v58, v46

    invoke-virtual/range {v57 .. v59}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1581
    move-object/from16 v57, v7

    move/from16 v58, v29

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move-wide/from16 v48, v57

    .line 1582
    move-object/from16 v57, v35

    move-wide/from16 v58, v48

    invoke-virtual/range {v57 .. v59}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1585
    move-object/from16 v57, v7

    move/from16 v58, v30

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v51, v57

    .line 1586
    move-object/from16 v57, v51

    invoke-static/range {v57 .. v57}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v57

    move-object/from16 v50, v57

    .line 1587
    move-object/from16 v57, v35

    move-object/from16 v58, v50

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 1588
    new-instance v57, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v61, v57

    move-object/from16 v57, v61

    move-object/from16 v58, v61

    move-object/from16 v59, v33

    move-object/from16 v60, v34

    invoke-direct/range {v58 .. v60}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v32, v57

    .line 1590
    move-object/from16 v57, v7

    move/from16 v58, v9

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v52, v57

    .line 1591
    move-object/from16 v57, v32

    move/from16 v58, v52

    invoke-static/range {v58 .. v58}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 1592
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v11

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1594
    move-object/from16 v57, v7

    move/from16 v58, v12

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v53, v57

    .line 1595
    move-object/from16 v57, v32

    move-object/from16 v58, v53

    invoke-static/range {v58 .. v58}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 1597
    move-object/from16 v57, v7

    move/from16 v58, v13

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v54, v57

    .line 1598
    move-object/from16 v57, v32

    move-object/from16 v58, v54

    invoke-static/range {v58 .. v58}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 1599
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v14

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1600
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v15

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1601
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v16

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1602
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v17

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1604
    move-object/from16 v57, v7

    move/from16 v58, v18

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v55, v57

    .line 1605
    move-object/from16 v57, v32

    move/from16 v58, v55

    invoke-static/range {v58 .. v58}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 1606
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v19

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1607
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v20

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1608
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v21

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1609
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v22

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1610
    move-object/from16 v57, v32

    move-object/from16 v58, v35

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1611
    move-object/from16 v57, v31

    move-object/from16 v58, v32

    invoke-interface/range {v57 .. v58}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v57

    .line 1612
    goto/16 :goto_0

    .line 1560
    :cond_0
    const/16 v57, 0x0

    goto/16 :goto_1

    .line 1565
    :cond_1
    const/16 v57, 0x0

    goto/16 :goto_2

    .line 1570
    :cond_2
    const/16 v57, 0x0

    goto/16 :goto_3

    .line 1575
    :cond_3
    const/16 v57, 0x0

    goto/16 :goto_4

    .line 1613
    :cond_4
    move-object/from16 v57, v31

    move-object/from16 v32, v57

    .line 1615
    move-object/from16 v57, v7

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->close()V

    .line 1616
    move-object/from16 v57, v6

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1613
    move-object/from16 v57, v32

    move-object/from16 v4, v57

    return-object v4

    .line 1615
    :catchall_0
    move-exception v57

    move-object/from16 v56, v57

    move-object/from16 v57, v7

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->close()V

    .line 1616
    move-object/from16 v57, v6

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1617
    move-object/from16 v57, v56

    throw v57
.end method

.method public getScheduledWork()Ljava/util/List;
    .locals 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    move-object/from16 v4, p0

    const-string v57, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    move-object/from16 v5, v57

    .line 1409
    const-string v57, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/16 v58, 0x0

    invoke-static/range {v57 .. v58}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v57

    move-object/from16 v6, v57

    .line 1410
    move-object/from16 v57, v4

    move-object/from16 v0, v57

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1411
    move-object/from16 v57, v4

    move-object/from16 v0, v57

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v57, v0

    move-object/from16 v58, v6

    const/16 v59, 0x0

    invoke-static/range {v57 .. v59}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v57

    move-object/from16 v7, v57

    .line 1413
    move-object/from16 v57, v7

    :try_start_0
    const-string v58, "id"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v8, v57

    .line 1414
    move-object/from16 v57, v7

    const-string v58, "state"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v9, v57

    .line 1415
    move-object/from16 v57, v7

    const-string v58, "worker_class_name"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v10, v57

    .line 1416
    move-object/from16 v57, v7

    const-string v58, "input_merger_class_name"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v11, v57

    .line 1417
    move-object/from16 v57, v7

    const-string v58, "input"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v12, v57

    .line 1418
    move-object/from16 v57, v7

    const-string v58, "output"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v13, v57

    .line 1419
    move-object/from16 v57, v7

    const-string v58, "initial_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v14, v57

    .line 1420
    move-object/from16 v57, v7

    const-string v58, "interval_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v15, v57

    .line 1421
    move-object/from16 v57, v7

    const-string v58, "flex_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v16, v57

    .line 1422
    move-object/from16 v57, v7

    const-string v58, "run_attempt_count"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v17, v57

    .line 1423
    move-object/from16 v57, v7

    const-string v58, "backoff_policy"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v18, v57

    .line 1424
    move-object/from16 v57, v7

    const-string v58, "backoff_delay_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v19, v57

    .line 1425
    move-object/from16 v57, v7

    const-string v58, "period_start_time"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v20, v57

    .line 1426
    move-object/from16 v57, v7

    const-string v58, "minimum_retention_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v21, v57

    .line 1427
    move-object/from16 v57, v7

    const-string v58, "schedule_requested_at"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v22, v57

    .line 1428
    move-object/from16 v57, v7

    const-string v58, "required_network_type"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v23, v57

    .line 1429
    move-object/from16 v57, v7

    const-string v58, "requires_charging"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v24, v57

    .line 1430
    move-object/from16 v57, v7

    const-string v58, "requires_device_idle"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v25, v57

    .line 1431
    move-object/from16 v57, v7

    const-string v58, "requires_battery_not_low"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v26, v57

    .line 1432
    move-object/from16 v57, v7

    const-string v58, "requires_storage_not_low"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v27, v57

    .line 1433
    move-object/from16 v57, v7

    const-string v58, "trigger_content_update_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v28, v57

    .line 1434
    move-object/from16 v57, v7

    const-string v58, "trigger_max_content_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v29, v57

    .line 1435
    move-object/from16 v57, v7

    const-string v58, "content_uri_triggers"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v30, v57

    .line 1436
    new-instance v57, Ljava/util/ArrayList;

    move-object/from16 v61, v57

    move-object/from16 v57, v61

    move-object/from16 v58, v61

    move-object/from16 v59, v7

    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->getCount()I

    move-result v59

    invoke-direct/range {v58 .. v59}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v31, v57

    .line 1437
    :goto_0
    move-object/from16 v57, v7

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->moveToNext()Z

    move-result v57

    if-eqz v57, :cond_4

    .line 1440
    move-object/from16 v57, v7

    move/from16 v58, v8

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v33, v57

    .line 1442
    move-object/from16 v57, v7

    move/from16 v58, v10

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v34, v57

    .line 1444
    new-instance v57, Landroidx/work/Constraints;

    move-object/from16 v61, v57

    move-object/from16 v57, v61

    move-object/from16 v58, v61

    invoke-direct/range {v58 .. v58}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v35, v57

    .line 1447
    move-object/from16 v57, v7

    move/from16 v58, v23

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v37, v57

    .line 1448
    move/from16 v57, v37

    invoke-static/range {v57 .. v57}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v57

    move-object/from16 v36, v57

    .line 1449
    move-object/from16 v57, v35

    move-object/from16 v58, v36

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 1452
    move-object/from16 v57, v7

    move/from16 v58, v24

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v39, v57

    .line 1453
    move/from16 v57, v39

    if-eqz v57, :cond_0

    const/16 v57, 0x1

    :goto_1
    move/from16 v38, v57

    .line 1454
    move-object/from16 v57, v35

    move/from16 v58, v38

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 1457
    move-object/from16 v57, v7

    move/from16 v58, v25

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v41, v57

    .line 1458
    move/from16 v57, v41

    if-eqz v57, :cond_1

    const/16 v57, 0x1

    :goto_2
    move/from16 v40, v57

    .line 1459
    move-object/from16 v57, v35

    move/from16 v58, v40

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 1462
    move-object/from16 v57, v7

    move/from16 v58, v26

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v43, v57

    .line 1463
    move/from16 v57, v43

    if-eqz v57, :cond_2

    const/16 v57, 0x1

    :goto_3
    move/from16 v42, v57

    .line 1464
    move-object/from16 v57, v35

    move/from16 v58, v42

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 1467
    move-object/from16 v57, v7

    move/from16 v58, v27

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v45, v57

    .line 1468
    move/from16 v57, v45

    if-eqz v57, :cond_3

    const/16 v57, 0x1

    :goto_4
    move/from16 v44, v57

    .line 1469
    move-object/from16 v57, v35

    move/from16 v58, v44

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 1471
    move-object/from16 v57, v7

    move/from16 v58, v28

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move-wide/from16 v46, v57

    .line 1472
    move-object/from16 v57, v35

    move-wide/from16 v58, v46

    invoke-virtual/range {v57 .. v59}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 1474
    move-object/from16 v57, v7

    move/from16 v58, v29

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move-wide/from16 v48, v57

    .line 1475
    move-object/from16 v57, v35

    move-wide/from16 v58, v48

    invoke-virtual/range {v57 .. v59}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 1478
    move-object/from16 v57, v7

    move/from16 v58, v30

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v51, v57

    .line 1479
    move-object/from16 v57, v51

    invoke-static/range {v57 .. v57}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v57

    move-object/from16 v50, v57

    .line 1480
    move-object/from16 v57, v35

    move-object/from16 v58, v50

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 1481
    new-instance v57, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v61, v57

    move-object/from16 v57, v61

    move-object/from16 v58, v61

    move-object/from16 v59, v33

    move-object/from16 v60, v34

    invoke-direct/range {v58 .. v60}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v32, v57

    .line 1483
    move-object/from16 v57, v7

    move/from16 v58, v9

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v52, v57

    .line 1484
    move-object/from16 v57, v32

    move/from16 v58, v52

    invoke-static/range {v58 .. v58}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 1485
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v11

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1487
    move-object/from16 v57, v7

    move/from16 v58, v12

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v53, v57

    .line 1488
    move-object/from16 v57, v32

    move-object/from16 v58, v53

    invoke-static/range {v58 .. v58}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 1490
    move-object/from16 v57, v7

    move/from16 v58, v13

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v54, v57

    .line 1491
    move-object/from16 v57, v32

    move-object/from16 v58, v54

    invoke-static/range {v58 .. v58}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 1492
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v14

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1493
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v15

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1494
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v16

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1495
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v17

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1497
    move-object/from16 v57, v7

    move/from16 v58, v18

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v55, v57

    .line 1498
    move-object/from16 v57, v32

    move/from16 v58, v55

    invoke-static/range {v58 .. v58}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 1499
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v19

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1500
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v20

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 1501
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v21

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1502
    move-object/from16 v57, v32

    move-object/from16 v58, v7

    move/from16 v59, v22

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1503
    move-object/from16 v57, v32

    move-object/from16 v58, v35

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1504
    move-object/from16 v57, v31

    move-object/from16 v58, v32

    invoke-interface/range {v57 .. v58}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v57

    .line 1505
    goto/16 :goto_0

    .line 1453
    :cond_0
    const/16 v57, 0x0

    goto/16 :goto_1

    .line 1458
    :cond_1
    const/16 v57, 0x0

    goto/16 :goto_2

    .line 1463
    :cond_2
    const/16 v57, 0x0

    goto/16 :goto_3

    .line 1468
    :cond_3
    const/16 v57, 0x0

    goto/16 :goto_4

    .line 1506
    :cond_4
    move-object/from16 v57, v31

    move-object/from16 v32, v57

    .line 1508
    move-object/from16 v57, v7

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->close()V

    .line 1509
    move-object/from16 v57, v6

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1506
    move-object/from16 v57, v32

    move-object/from16 v4, v57

    return-object v4

    .line 1508
    :catchall_0
    move-exception v57

    move-object/from16 v56, v57

    move-object/from16 v57, v7

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->close()V

    .line 1509
    move-object/from16 v57, v6

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1510
    move-object/from16 v57, v56

    throw v57
.end method

.method public getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 12

    .prologue
    .line 667
    move-object v0, p0

    move-object v1, p1

    const-string v9, "SELECT state FROM workspec WHERE id=?"

    move-object v2, v9

    .line 668
    const-string v9, "SELECT state FROM workspec WHERE id=?"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v9

    move-object v3, v9

    .line 669
    const/4 v9, 0x1

    move v4, v9

    .line 670
    move-object v9, v1

    if-nez v9, :cond_0

    .line 671
    move-object v9, v3

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 675
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 676
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    move-object v5, v9

    .line 679
    move-object v9, v5

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 681
    move-object v9, v5

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v7, v9

    .line 682
    move v9, v7

    invoke-static {v9}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    move-object v6, v9

    .line 686
    :goto_1
    move-object v9, v6

    move-object v7, v9

    .line 688
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 689
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 686
    move-object v9, v7

    move-object v0, v9

    return-object v0

    .line 673
    :cond_0
    move-object v9, v3

    move v10, v4

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_1
    const/4 v9, 0x0

    move-object v6, v9

    goto :goto_1

    .line 688
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 689
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 690
    move-object v9, v8

    throw v9
.end method

.method public getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
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
    .line 1253
    move-object v0, p0

    move-object v1, p1

    const-string v9, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    move-object v2, v9

    .line 1254
    const-string v9, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v9

    move-object v3, v9

    .line 1255
    const/4 v9, 0x1

    move v4, v9

    .line 1256
    move-object v9, v1

    if-nez v9, :cond_0

    .line 1257
    move-object v9, v3

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 1261
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1262
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    move-object v5, v9

    .line 1264
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

    .line 1265
    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1267
    move-object v9, v5

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 1268
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1269
    goto :goto_1

    .line 1259
    :cond_0
    move-object v9, v3

    move v10, v4

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 1270
    :cond_1
    move-object v9, v6

    move-object v7, v9

    .line 1272
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1273
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1270
    move-object v9, v7

    move-object v0, v9

    return-object v0

    .line 1272
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1273
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1274
    move-object v9, v8

    throw v9
.end method

.method public getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
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
    .line 1227
    move-object v0, p0

    move-object v1, p1

    const-string v9, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    move-object v2, v9

    .line 1228
    const-string v9, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v9

    move-object v3, v9

    .line 1229
    const/4 v9, 0x1

    move v4, v9

    .line 1230
    move-object v9, v1

    if-nez v9, :cond_0

    .line 1231
    move-object v9, v3

    move v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 1235
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1236
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v10, v3

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v9

    move-object v5, v9

    .line 1238
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

    .line 1239
    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1241
    move-object v9, v5

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 1242
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1243
    goto :goto_1

    .line 1233
    :cond_0
    move-object v9, v3

    move v10, v4

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 1244
    :cond_1
    move-object v9, v6

    move-object v7, v9

    .line 1246
    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1247
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1244
    move-object v9, v7

    move-object v0, v9

    return-object v0

    .line 1246
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1247
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1248
    move-object v9, v8

    throw v9
.end method

.method public getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 62

    .prologue
    .line 378
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    const-string v57, "SELECT * FROM workspec WHERE id=?"

    move-object/from16 v5, v57

    .line 379
    const-string v57, "SELECT * FROM workspec WHERE id=?"

    const/16 v58, 0x1

    invoke-static/range {v57 .. v58}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v57

    move-object/from16 v6, v57

    .line 380
    const/16 v57, 0x1

    move/from16 v7, v57

    .line 381
    move-object/from16 v57, v4

    if-nez v57, :cond_0

    .line 382
    move-object/from16 v57, v6

    move/from16 v58, v7

    invoke-virtual/range {v57 .. v58}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 386
    :goto_0
    move-object/from16 v57, v3

    move-object/from16 v0, v57

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 387
    move-object/from16 v57, v3

    move-object/from16 v0, v57

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v57, v0

    move-object/from16 v58, v6

    const/16 v59, 0x0

    invoke-static/range {v57 .. v59}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v57

    move-object/from16 v8, v57

    .line 389
    move-object/from16 v57, v8

    :try_start_0
    const-string v58, "id"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v9, v57

    .line 390
    move-object/from16 v57, v8

    const-string v58, "state"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v10, v57

    .line 391
    move-object/from16 v57, v8

    const-string v58, "worker_class_name"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v11, v57

    .line 392
    move-object/from16 v57, v8

    const-string v58, "input_merger_class_name"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v12, v57

    .line 393
    move-object/from16 v57, v8

    const-string v58, "input"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v13, v57

    .line 394
    move-object/from16 v57, v8

    const-string v58, "output"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v14, v57

    .line 395
    move-object/from16 v57, v8

    const-string v58, "initial_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v15, v57

    .line 396
    move-object/from16 v57, v8

    const-string v58, "interval_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v16, v57

    .line 397
    move-object/from16 v57, v8

    const-string v58, "flex_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v17, v57

    .line 398
    move-object/from16 v57, v8

    const-string v58, "run_attempt_count"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v18, v57

    .line 399
    move-object/from16 v57, v8

    const-string v58, "backoff_policy"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v19, v57

    .line 400
    move-object/from16 v57, v8

    const-string v58, "backoff_delay_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v20, v57

    .line 401
    move-object/from16 v57, v8

    const-string v58, "period_start_time"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v21, v57

    .line 402
    move-object/from16 v57, v8

    const-string v58, "minimum_retention_duration"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v22, v57

    .line 403
    move-object/from16 v57, v8

    const-string v58, "schedule_requested_at"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v23, v57

    .line 404
    move-object/from16 v57, v8

    const-string v58, "required_network_type"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v24, v57

    .line 405
    move-object/from16 v57, v8

    const-string v58, "requires_charging"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v25, v57

    .line 406
    move-object/from16 v57, v8

    const-string v58, "requires_device_idle"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v26, v57

    .line 407
    move-object/from16 v57, v8

    const-string v58, "requires_battery_not_low"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v27, v57

    .line 408
    move-object/from16 v57, v8

    const-string v58, "requires_storage_not_low"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v28, v57

    .line 409
    move-object/from16 v57, v8

    const-string v58, "trigger_content_update_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v29, v57

    .line 410
    move-object/from16 v57, v8

    const-string v58, "trigger_max_content_delay"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v30, v57

    .line 411
    move-object/from16 v57, v8

    const-string v58, "content_uri_triggers"

    invoke-static/range {v57 .. v58}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v57

    move/from16 v31, v57

    .line 413
    move-object/from16 v57, v8

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v57

    if-eqz v57, :cond_5

    .line 415
    move-object/from16 v57, v8

    move/from16 v58, v9

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v33, v57

    .line 417
    move-object/from16 v57, v8

    move/from16 v58, v11

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    move-object/from16 v34, v57

    .line 419
    new-instance v57, Landroidx/work/Constraints;

    move-object/from16 v61, v57

    move-object/from16 v57, v61

    move-object/from16 v58, v61

    invoke-direct/range {v58 .. v58}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v35, v57

    .line 422
    move-object/from16 v57, v8

    move/from16 v58, v24

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v37, v57

    .line 423
    move/from16 v57, v37

    invoke-static/range {v57 .. v57}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v57

    move-object/from16 v36, v57

    .line 424
    move-object/from16 v57, v35

    move-object/from16 v58, v36

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 427
    move-object/from16 v57, v8

    move/from16 v58, v25

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v39, v57

    .line 428
    move/from16 v57, v39

    if-eqz v57, :cond_1

    const/16 v57, 0x1

    :goto_1
    move/from16 v38, v57

    .line 429
    move-object/from16 v57, v35

    move/from16 v58, v38

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 432
    move-object/from16 v57, v8

    move/from16 v58, v26

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v41, v57

    .line 433
    move/from16 v57, v41

    if-eqz v57, :cond_2

    const/16 v57, 0x1

    :goto_2
    move/from16 v40, v57

    .line 434
    move-object/from16 v57, v35

    move/from16 v58, v40

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 437
    move-object/from16 v57, v8

    move/from16 v58, v27

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v43, v57

    .line 438
    move/from16 v57, v43

    if-eqz v57, :cond_3

    const/16 v57, 0x1

    :goto_3
    move/from16 v42, v57

    .line 439
    move-object/from16 v57, v35

    move/from16 v58, v42

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 442
    move-object/from16 v57, v8

    move/from16 v58, v28

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v45, v57

    .line 443
    move/from16 v57, v45

    if-eqz v57, :cond_4

    const/16 v57, 0x1

    :goto_4
    move/from16 v44, v57

    .line 444
    move-object/from16 v57, v35

    move/from16 v58, v44

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 446
    move-object/from16 v57, v8

    move/from16 v58, v29

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move-wide/from16 v46, v57

    .line 447
    move-object/from16 v57, v35

    move-wide/from16 v58, v46

    invoke-virtual/range {v57 .. v59}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 449
    move-object/from16 v57, v8

    move/from16 v58, v30

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move-wide/from16 v48, v57

    .line 450
    move-object/from16 v57, v35

    move-wide/from16 v58, v48

    invoke-virtual/range {v57 .. v59}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 453
    move-object/from16 v57, v8

    move/from16 v58, v31

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v51, v57

    .line 454
    move-object/from16 v57, v51

    invoke-static/range {v57 .. v57}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v57

    move-object/from16 v50, v57

    .line 455
    move-object/from16 v57, v35

    move-object/from16 v58, v50

    invoke-virtual/range {v57 .. v58}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 456
    new-instance v57, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v61, v57

    move-object/from16 v57, v61

    move-object/from16 v58, v61

    move-object/from16 v59, v33

    move-object/from16 v60, v34

    invoke-direct/range {v58 .. v60}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v32, v57

    .line 458
    move-object/from16 v57, v8

    move/from16 v58, v10

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v52, v57

    .line 459
    move-object/from16 v57, v32

    move/from16 v58, v52

    invoke-static/range {v58 .. v58}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 460
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v12

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 462
    move-object/from16 v57, v8

    move/from16 v58, v13

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v53, v57

    .line 463
    move-object/from16 v57, v32

    move-object/from16 v58, v53

    invoke-static/range {v58 .. v58}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 465
    move-object/from16 v57, v8

    move/from16 v58, v14

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v57

    move-object/from16 v54, v57

    .line 466
    move-object/from16 v57, v32

    move-object/from16 v58, v54

    invoke-static/range {v58 .. v58}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 467
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v15

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 468
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v16

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 469
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v17

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 470
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v18

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v0, v58

    move-object/from16 v1, v57

    iput v0, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 472
    move-object/from16 v57, v8

    move/from16 v58, v19

    invoke-interface/range {v57 .. v58}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    move/from16 v55, v57

    .line 473
    move-object/from16 v57, v32

    move/from16 v58, v55

    invoke-static/range {v58 .. v58}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 474
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v20

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 475
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v21

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 476
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v22

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 477
    move-object/from16 v57, v32

    move-object/from16 v58, v8

    move/from16 v59, v23

    invoke-interface/range {v58 .. v59}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 478
    move-object/from16 v57, v32

    move-object/from16 v58, v35

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :goto_5
    move-object/from16 v57, v32

    move-object/from16 v33, v57

    .line 484
    move-object/from16 v57, v8

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->close()V

    .line 485
    move-object/from16 v57, v6

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 482
    move-object/from16 v57, v33

    move-object/from16 v3, v57

    return-object v3

    .line 384
    :cond_0
    move-object/from16 v57, v6

    move/from16 v58, v7

    move-object/from16 v59, v4

    invoke-virtual/range {v57 .. v59}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :cond_1
    const/16 v57, 0x0

    goto/16 :goto_1

    .line 433
    :cond_2
    const/16 v57, 0x0

    goto/16 :goto_2

    .line 438
    :cond_3
    const/16 v57, 0x0

    goto/16 :goto_3

    .line 443
    :cond_4
    const/16 v57, 0x0

    goto/16 :goto_4

    .line 480
    :cond_5
    const/16 v57, 0x0

    move-object/from16 v32, v57

    goto :goto_5

    .line 484
    :catchall_0
    move-exception v57

    move-object/from16 v56, v57

    move-object/from16 v57, v8

    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->close()V

    .line 485
    move-object/from16 v57, v6

    invoke-virtual/range {v57 .. v57}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 486
    move-object/from16 v57, v56

    throw v57
.end method

.method public getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v12, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    move-object v2, v12

    .line 616
    const-string v12, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v12

    move-object v3, v12

    .line 617
    const/4 v12, 0x1

    move v4, v12

    .line 618
    move-object v12, v1

    if-nez v12, :cond_0

    .line 619
    move-object v12, v3

    move v13, v4

    invoke-virtual {v12, v13}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 623
    :goto_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v12}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 624
    move-object v12, v0

    iget-object v12, v12, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object v13, v3

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v12

    move-object v5, v12

    .line 626
    move-object v12, v5

    :try_start_0
    const-string v13, "id"

    invoke-static {v12, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move v6, v12

    .line 627
    move-object v12, v5

    const-string v13, "state"

    invoke-static {v12, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move v7, v12

    .line 628
    new-instance v12, Ljava/util/ArrayList;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v5

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v12

    .line 629
    :goto_1
    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 631
    new-instance v12, Landroidx/work/impl/model/WorkSpec$IdAndState;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Landroidx/work/impl/model/WorkSpec$IdAndState;-><init>()V

    move-object v9, v12

    .line 632
    move-object v12, v9

    move-object v13, v5

    move v14, v6

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 634
    move-object v12, v5

    move v13, v7

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move v10, v12

    .line 635
    move-object v12, v9

    move v13, v10

    invoke-static {v13}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v13

    iput-object v13, v12, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 636
    move-object v12, v8

    move-object v13, v9

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 637
    goto :goto_1

    .line 621
    :cond_0
    move-object v12, v3

    move v13, v4

    move-object v14, v1

    invoke-virtual {v12, v13, v14}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_1
    move-object v12, v8

    move-object v9, v12

    .line 640
    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 641
    move-object v12, v3

    invoke-virtual {v12}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 638
    move-object v12, v9

    move-object v0, v12

    return-object v0

    .line 640
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 641
    move-object v12, v3

    invoke-virtual {v12}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 642
    move-object v12, v11

    throw v12
.end method

.method public getWorkSpecs(Ljava/util/List;)[Landroidx/work/impl/model/WorkSpec;
    .locals 68
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroidx/work/impl/model/WorkSpec;"
        }
    .end annotation

    .prologue
    .line 491
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v6, v63

    .line 492
    move-object/from16 v63, v6

    const-string v64, "SELECT * FROM workspec WHERE id IN ("

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    .line 493
    move-object/from16 v63, v5

    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v63

    move/from16 v7, v63

    .line 494
    move-object/from16 v63, v6

    move/from16 v64, v7

    invoke-static/range {v63 .. v64}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 495
    move-object/from16 v63, v6

    const-string v64, ")"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    .line 496
    move-object/from16 v63, v6

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v8, v63

    .line 497
    const/16 v63, 0x0

    move/from16 v64, v7

    add-int v63, v63, v64

    move/from16 v9, v63

    .line 498
    move-object/from16 v63, v8

    move/from16 v64, v9

    invoke-static/range {v63 .. v64}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v63

    move-object/from16 v10, v63

    .line 499
    const/16 v63, 0x1

    move/from16 v11, v63

    .line 500
    move-object/from16 v63, v5

    invoke-interface/range {v63 .. v63}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v63

    move-object/from16 v12, v63

    :goto_0
    move-object/from16 v63, v12

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_1

    move-object/from16 v63, v12

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/String;

    move-object/from16 v13, v63

    .line 501
    move-object/from16 v63, v13

    if-nez v63, :cond_0

    .line 502
    move-object/from16 v63, v10

    move/from16 v64, v11

    invoke-virtual/range {v63 .. v64}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 506
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 507
    goto :goto_0

    .line 504
    :cond_0
    move-object/from16 v63, v10

    move/from16 v64, v11

    move-object/from16 v65, v13

    invoke-virtual/range {v63 .. v65}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 508
    :cond_1
    move-object/from16 v63, v4

    move-object/from16 v0, v63

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 509
    move-object/from16 v63, v4

    move-object/from16 v0, v63

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v63, v0

    move-object/from16 v64, v10

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v63

    move-object/from16 v12, v63

    .line 511
    move-object/from16 v63, v12

    :try_start_0
    const-string v64, "id"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v13, v63

    .line 512
    move-object/from16 v63, v12

    const-string v64, "state"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v14, v63

    .line 513
    move-object/from16 v63, v12

    const-string v64, "worker_class_name"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v15, v63

    .line 514
    move-object/from16 v63, v12

    const-string v64, "input_merger_class_name"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v16, v63

    .line 515
    move-object/from16 v63, v12

    const-string v64, "input"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v17, v63

    .line 516
    move-object/from16 v63, v12

    const-string v64, "output"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v18, v63

    .line 517
    move-object/from16 v63, v12

    const-string v64, "initial_delay"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v19, v63

    .line 518
    move-object/from16 v63, v12

    const-string v64, "interval_duration"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v20, v63

    .line 519
    move-object/from16 v63, v12

    const-string v64, "flex_duration"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v21, v63

    .line 520
    move-object/from16 v63, v12

    const-string v64, "run_attempt_count"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v22, v63

    .line 521
    move-object/from16 v63, v12

    const-string v64, "backoff_policy"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v23, v63

    .line 522
    move-object/from16 v63, v12

    const-string v64, "backoff_delay_duration"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v24, v63

    .line 523
    move-object/from16 v63, v12

    const-string v64, "period_start_time"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v25, v63

    .line 524
    move-object/from16 v63, v12

    const-string v64, "minimum_retention_duration"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v26, v63

    .line 525
    move-object/from16 v63, v12

    const-string v64, "schedule_requested_at"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v27, v63

    .line 526
    move-object/from16 v63, v12

    const-string v64, "required_network_type"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v28, v63

    .line 527
    move-object/from16 v63, v12

    const-string v64, "requires_charging"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v29, v63

    .line 528
    move-object/from16 v63, v12

    const-string v64, "requires_device_idle"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v30, v63

    .line 529
    move-object/from16 v63, v12

    const-string v64, "requires_battery_not_low"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v31, v63

    .line 530
    move-object/from16 v63, v12

    const-string v64, "requires_storage_not_low"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v32, v63

    .line 531
    move-object/from16 v63, v12

    const-string v64, "trigger_content_update_delay"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v33, v63

    .line 532
    move-object/from16 v63, v12

    const-string v64, "trigger_max_content_delay"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v34, v63

    .line 533
    move-object/from16 v63, v12

    const-string v64, "content_uri_triggers"

    invoke-static/range {v63 .. v64}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v63

    move/from16 v35, v63

    .line 534
    move-object/from16 v63, v12

    invoke-interface/range {v63 .. v63}, Landroid/database/Cursor;->getCount()I

    move-result v63

    move/from16 v0, v63

    new-array v0, v0, [Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v63, v0

    move-object/from16 v36, v63

    .line 535
    const/16 v63, 0x0

    move/from16 v37, v63

    .line 536
    :goto_2
    move-object/from16 v63, v12

    invoke-interface/range {v63 .. v63}, Landroid/database/Cursor;->moveToNext()Z

    move-result v63

    if-eqz v63, :cond_6

    .line 539
    move-object/from16 v63, v12

    move/from16 v64, v13

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v39, v63

    .line 541
    move-object/from16 v63, v12

    move/from16 v64, v15

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v40, v63

    .line 543
    new-instance v63, Landroidx/work/Constraints;

    move-object/from16 v67, v63

    move-object/from16 v63, v67

    move-object/from16 v64, v67

    invoke-direct/range {v64 .. v64}, Landroidx/work/Constraints;-><init>()V

    move-object/from16 v41, v63

    .line 546
    move-object/from16 v63, v12

    move/from16 v64, v28

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v43, v63

    .line 547
    move/from16 v63, v43

    invoke-static/range {v63 .. v63}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v63

    move-object/from16 v42, v63

    .line 548
    move-object/from16 v63, v41

    move-object/from16 v64, v42

    invoke-virtual/range {v63 .. v64}, Landroidx/work/Constraints;->setRequiredNetworkType(Landroidx/work/NetworkType;)V

    .line 551
    move-object/from16 v63, v12

    move/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v45, v63

    .line 552
    move/from16 v63, v45

    if-eqz v63, :cond_2

    const/16 v63, 0x1

    :goto_3
    move/from16 v44, v63

    .line 553
    move-object/from16 v63, v41

    move/from16 v64, v44

    invoke-virtual/range {v63 .. v64}, Landroidx/work/Constraints;->setRequiresCharging(Z)V

    .line 556
    move-object/from16 v63, v12

    move/from16 v64, v30

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v47, v63

    .line 557
    move/from16 v63, v47

    if-eqz v63, :cond_3

    const/16 v63, 0x1

    :goto_4
    move/from16 v46, v63

    .line 558
    move-object/from16 v63, v41

    move/from16 v64, v46

    invoke-virtual/range {v63 .. v64}, Landroidx/work/Constraints;->setRequiresDeviceIdle(Z)V

    .line 561
    move-object/from16 v63, v12

    move/from16 v64, v31

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v49, v63

    .line 562
    move/from16 v63, v49

    if-eqz v63, :cond_4

    const/16 v63, 0x1

    :goto_5
    move/from16 v48, v63

    .line 563
    move-object/from16 v63, v41

    move/from16 v64, v48

    invoke-virtual/range {v63 .. v64}, Landroidx/work/Constraints;->setRequiresBatteryNotLow(Z)V

    .line 566
    move-object/from16 v63, v12

    move/from16 v64, v32

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v51, v63

    .line 567
    move/from16 v63, v51

    if-eqz v63, :cond_5

    const/16 v63, 0x1

    :goto_6
    move/from16 v50, v63

    .line 568
    move-object/from16 v63, v41

    move/from16 v64, v50

    invoke-virtual/range {v63 .. v64}, Landroidx/work/Constraints;->setRequiresStorageNotLow(Z)V

    .line 570
    move-object/from16 v63, v12

    move/from16 v64, v33

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    move-wide/from16 v52, v63

    .line 571
    move-object/from16 v63, v41

    move-wide/from16 v64, v52

    invoke-virtual/range {v63 .. v65}, Landroidx/work/Constraints;->setTriggerContentUpdateDelay(J)V

    .line 573
    move-object/from16 v63, v12

    move/from16 v64, v34

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    move-wide/from16 v54, v63

    .line 574
    move-object/from16 v63, v41

    move-wide/from16 v64, v54

    invoke-virtual/range {v63 .. v65}, Landroidx/work/Constraints;->setTriggerMaxContentDelay(J)V

    .line 577
    move-object/from16 v63, v12

    move/from16 v64, v35

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v63

    move-object/from16 v57, v63

    .line 578
    move-object/from16 v63, v57

    invoke-static/range {v63 .. v63}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;

    move-result-object v63

    move-object/from16 v56, v63

    .line 579
    move-object/from16 v63, v41

    move-object/from16 v64, v56

    invoke-virtual/range {v63 .. v64}, Landroidx/work/Constraints;->setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V

    .line 580
    new-instance v63, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v67, v63

    move-object/from16 v63, v67

    move-object/from16 v64, v67

    move-object/from16 v65, v39

    move-object/from16 v66, v40

    invoke-direct/range {v64 .. v66}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v38, v63

    .line 582
    move-object/from16 v63, v12

    move/from16 v64, v14

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v58, v63

    .line 583
    move-object/from16 v63, v38

    move/from16 v64, v58

    invoke-static/range {v64 .. v64}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 584
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v16

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 586
    move-object/from16 v63, v12

    move/from16 v64, v17

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v63

    move-object/from16 v59, v63

    .line 587
    move-object/from16 v63, v38

    move-object/from16 v64, v59

    invoke-static/range {v64 .. v64}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 589
    move-object/from16 v63, v12

    move/from16 v64, v18

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v63

    move-object/from16 v60, v63

    .line 590
    move-object/from16 v63, v38

    move-object/from16 v64, v60

    invoke-static/range {v64 .. v64}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 591
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v19

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move-wide/from16 v0, v64

    move-object/from16 v2, v63

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 592
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v20

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move-wide/from16 v0, v64

    move-object/from16 v2, v63

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 593
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v21

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move-wide/from16 v0, v64

    move-object/from16 v2, v63

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 594
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v22

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 596
    move-object/from16 v63, v12

    move/from16 v64, v23

    invoke-interface/range {v63 .. v64}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v61, v63

    .line 597
    move-object/from16 v63, v38

    move/from16 v64, v61

    invoke-static/range {v64 .. v64}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 598
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v24

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move-wide/from16 v0, v64

    move-object/from16 v2, v63

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 599
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v25

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move-wide/from16 v0, v64

    move-object/from16 v2, v63

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 600
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v26

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move-wide/from16 v0, v64

    move-object/from16 v2, v63

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 601
    move-object/from16 v63, v38

    move-object/from16 v64, v12

    move/from16 v65, v27

    invoke-interface/range {v64 .. v65}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move-wide/from16 v0, v64

    move-object/from16 v2, v63

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 602
    move-object/from16 v63, v38

    move-object/from16 v64, v41

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 603
    move-object/from16 v63, v36

    move/from16 v64, v37

    move-object/from16 v65, v38

    aput-object v65, v63, v64
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    add-int/lit8 v37, v37, 0x1

    .line 605
    goto/16 :goto_2

    .line 552
    :cond_2
    const/16 v63, 0x0

    goto/16 :goto_3

    .line 557
    :cond_3
    const/16 v63, 0x0

    goto/16 :goto_4

    .line 562
    :cond_4
    const/16 v63, 0x0

    goto/16 :goto_5

    .line 567
    :cond_5
    const/16 v63, 0x0

    goto/16 :goto_6

    .line 606
    :cond_6
    move-object/from16 v63, v36

    move-object/from16 v38, v63

    .line 608
    move-object/from16 v63, v12

    invoke-interface/range {v63 .. v63}, Landroid/database/Cursor;->close()V

    .line 609
    move-object/from16 v63, v10

    invoke-virtual/range {v63 .. v63}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 606
    move-object/from16 v63, v38

    move-object/from16 v4, v63

    return-object v4

    .line 608
    :catchall_0
    move-exception v63

    move-object/from16 v62, v63

    move-object/from16 v63, v12

    invoke-interface/range {v63 .. v63}, Landroid/database/Cursor;->close()V

    .line 609
    move-object/from16 v63, v10

    invoke-virtual/range {v63 .. v63}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 610
    move-object/from16 v63, v62

    throw v63
.end method

.method public getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .locals 23

    .prologue
    .line 695
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const-string v19, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?"

    move-object/from16 v4, v19

    .line 696
    const-string v19, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v19

    move-object/from16 v5, v19

    .line 697
    const/16 v19, 0x1

    move/from16 v6, v19

    .line 698
    move-object/from16 v19, v3

    if-nez v19, :cond_2

    .line 699
    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 703
    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 704
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 706
    move-object/from16 v19, v2

    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v19

    move-object/from16 v7, v19

    .line 708
    move-object/from16 v19, v7

    :try_start_1
    const-string v20, "id"

    invoke-static/range {v19 .. v20}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    move/from16 v8, v19

    .line 709
    move-object/from16 v19, v7

    const-string v20, "state"

    invoke-static/range {v19 .. v20}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    move/from16 v9, v19

    .line 710
    move-object/from16 v19, v7

    const-string v20, "output"

    invoke-static/range {v19 .. v20}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    move/from16 v10, v19

    .line 711
    move-object/from16 v19, v7

    const-string v20, "run_attempt_count"

    invoke-static/range {v19 .. v20}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v19

    move/from16 v11, v19

    .line 712
    new-instance v19, Landroidx/collection/ArrayMap;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v12, v19

    .line 713
    :cond_0
    :goto_1
    move-object/from16 v19, v7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 714
    move-object/from16 v19, v7

    move/from16 v20, v8

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_0

    .line 715
    move-object/from16 v19, v7

    move/from16 v20, v8

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    .line 716
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v14, v19

    .line 717
    move-object/from16 v19, v14

    if-nez v19, :cond_1

    .line 718
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v19

    .line 719
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v21}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    .line 721
    :cond_1
    goto :goto_1

    .line 701
    :cond_2
    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v21}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 723
    :cond_3
    move-object/from16 v19, v7

    const/16 v20, -0x1

    :try_start_2
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v19

    .line 724
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-direct/range {v19 .. v20}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 726
    move-object/from16 v19, v7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 727
    const/16 v19, 0x0

    move-object/from16 v14, v19

    .line 728
    move-object/from16 v19, v7

    move/from16 v20, v8

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_4

    .line 729
    move-object/from16 v19, v7

    move/from16 v20, v8

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 730
    move-object/from16 v19, v12

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v14, v19

    .line 732
    :cond_4
    move-object/from16 v19, v14

    if-nez v19, :cond_5

    .line 733
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v19

    .line 735
    :cond_5
    new-instance v19, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    move-object/from16 v13, v19

    .line 736
    move-object/from16 v19, v13

    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 738
    move-object/from16 v19, v7

    move/from16 v20, v9

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v15, v19

    .line 739
    move-object/from16 v19, v13

    move/from16 v20, v15

    invoke-static/range {v20 .. v20}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 741
    move-object/from16 v19, v7

    move/from16 v20, v10

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    move-object/from16 v16, v19

    .line 742
    move-object/from16 v19, v13

    move-object/from16 v20, v16

    invoke-static/range {v20 .. v20}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 743
    move-object/from16 v19, v13

    move-object/from16 v20, v7

    move/from16 v21, v11

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 744
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 748
    :goto_2
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 749
    move-object/from16 v19, v13

    move-object/from16 v14, v19

    .line 751
    move-object/from16 v19, v7

    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 752
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 755
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 749
    move-object/from16 v19, v14

    move-object/from16 v2, v19

    return-object v2

    .line 746
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v13, v19

    goto :goto_2

    .line 751
    :catchall_0
    move-exception v19

    move-object/from16 v17, v19

    move-object/from16 v19, v7

    :try_start_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 752
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 753
    move-object/from16 v19, v17

    throw v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 755
    :catchall_1
    move-exception v19

    move-object/from16 v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 756
    move-object/from16 v19, v18

    throw v19
.end method

.method public getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v4, v23

    .line 762
    move-object/from16 v23, v4

    const-string v24, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 763
    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v5, v23

    .line 764
    move-object/from16 v23, v4

    move/from16 v24, v5

    invoke-static/range {v23 .. v24}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 765
    move-object/from16 v23, v4

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 766
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v6, v23

    .line 767
    const/16 v23, 0x0

    move/from16 v24, v5

    add-int v23, v23, v24

    move/from16 v7, v23

    .line 768
    move-object/from16 v23, v6

    move/from16 v24, v7

    invoke-static/range {v23 .. v24}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v23

    move-object/from16 v8, v23

    .line 769
    const/16 v23, 0x1

    move/from16 v9, v23

    .line 770
    move-object/from16 v23, v3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move-object/from16 v10, v23

    :goto_0
    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v11, v23

    .line 771
    move-object/from16 v23, v11

    if-nez v23, :cond_0

    .line 772
    move-object/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 776
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 777
    goto :goto_0

    .line 774
    :cond_0
    move-object/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v11

    invoke-virtual/range {v23 .. v25}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 778
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 779
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 781
    move-object/from16 v23, v2

    :try_start_0
    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    move-object/from16 v24, v8

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v23

    move-object/from16 v10, v23

    .line 783
    move-object/from16 v23, v10

    :try_start_1
    const-string v24, "id"

    invoke-static/range {v23 .. v24}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    move/from16 v11, v23

    .line 784
    move-object/from16 v23, v10

    const-string v24, "state"

    invoke-static/range {v23 .. v24}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    move/from16 v12, v23

    .line 785
    move-object/from16 v23, v10

    const-string v24, "output"

    invoke-static/range {v23 .. v24}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    move/from16 v13, v23

    .line 786
    move-object/from16 v23, v10

    const-string v24, "run_attempt_count"

    invoke-static/range {v23 .. v24}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v23

    move/from16 v14, v23

    .line 787
    new-instance v23, Landroidx/collection/ArrayMap;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v15, v23

    .line 788
    :cond_2
    :goto_2
    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 789
    move-object/from16 v23, v10

    move/from16 v24, v11

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_2

    .line 790
    move-object/from16 v23, v10

    move/from16 v24, v11

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v23

    .line 791
    move-object/from16 v23, v15

    move-object/from16 v24, v16

    invoke-virtual/range {v23 .. v24}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    move-object/from16 v17, v23

    .line 792
    move-object/from16 v23, v17

    if-nez v23, :cond_3

    .line 793
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v23

    .line 794
    move-object/from16 v23, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    invoke-virtual/range {v23 .. v25}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 796
    :cond_3
    goto :goto_2

    .line 798
    :cond_4
    move-object/from16 v23, v10

    const/16 v24, -0x1

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v23

    .line 799
    move-object/from16 v23, v2

    move-object/from16 v24, v15

    invoke-direct/range {v23 .. v24}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 800
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    move-object/from16 v25, v10

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v16, v23

    .line 801
    :goto_3
    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 803
    const/16 v23, 0x0

    move-object/from16 v18, v23

    .line 804
    move-object/from16 v23, v10

    move/from16 v24, v11

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_5

    .line 805
    move-object/from16 v23, v10

    move/from16 v24, v11

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v19, v23

    .line 806
    move-object/from16 v23, v15

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    move-object/from16 v18, v23

    .line 808
    :cond_5
    move-object/from16 v23, v18

    if-nez v23, :cond_6

    .line 809
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v23

    .line 811
    :cond_6
    new-instance v23, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    move-object/from16 v17, v23

    .line 812
    move-object/from16 v23, v17

    move-object/from16 v24, v10

    move/from16 v25, v11

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 814
    move-object/from16 v23, v10

    move/from16 v24, v12

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v19, v23

    .line 815
    move-object/from16 v23, v17

    move/from16 v24, v19

    invoke-static/range {v24 .. v24}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 817
    move-object/from16 v23, v10

    move/from16 v24, v13

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    move-object/from16 v20, v23

    .line 818
    move-object/from16 v23, v17

    move-object/from16 v24, v20

    invoke-static/range {v24 .. v24}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 819
    move-object/from16 v23, v17

    move-object/from16 v24, v10

    move/from16 v25, v14

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 820
    move-object/from16 v23, v17

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 821
    move-object/from16 v23, v16

    move-object/from16 v24, v17

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v23

    .line 822
    goto/16 :goto_3

    .line 823
    :cond_7
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    move-object/from16 v23, v16

    move-object/from16 v17, v23

    .line 826
    move-object/from16 v23, v10

    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 827
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 830
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 824
    move-object/from16 v23, v17

    move-object/from16 v2, v23

    return-object v2

    .line 826
    :catchall_0
    move-exception v23

    move-object/from16 v21, v23

    move-object/from16 v23, v10

    :try_start_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 827
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 828
    move-object/from16 v23, v21

    throw v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 830
    :catchall_1
    move-exception v23

    move-object/from16 v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 831
    move-object/from16 v23, v22

    throw v23
.end method

.method public getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const-string v20, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    move-object/from16 v4, v20

    .line 1060
    const-string v20, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v20

    move-object/from16 v5, v20

    .line 1061
    const/16 v20, 0x1

    move/from16 v6, v20

    .line 1062
    move-object/from16 v20, v3

    if-nez v20, :cond_2

    .line 1063
    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 1067
    :goto_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1068
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1070
    move-object/from16 v20, v2

    :try_start_0
    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    move-object/from16 v7, v20

    .line 1072
    move-object/from16 v20, v7

    :try_start_1
    const-string v21, "id"

    invoke-static/range {v20 .. v21}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    move/from16 v8, v20

    .line 1073
    move-object/from16 v20, v7

    const-string v21, "state"

    invoke-static/range {v20 .. v21}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    move/from16 v9, v20

    .line 1074
    move-object/from16 v20, v7

    const-string v21, "output"

    invoke-static/range {v20 .. v21}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    move/from16 v10, v20

    .line 1075
    move-object/from16 v20, v7

    const-string v21, "run_attempt_count"

    invoke-static/range {v20 .. v21}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    move/from16 v11, v20

    .line 1076
    new-instance v20, Landroidx/collection/ArrayMap;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v12, v20

    .line 1077
    :cond_0
    :goto_1
    move-object/from16 v20, v7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1078
    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1079
    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    .line 1080
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v14, v20

    .line 1081
    move-object/from16 v20, v14

    if-nez v20, :cond_1

    .line 1082
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v20

    .line 1083
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 1085
    :cond_1
    goto :goto_1

    .line 1065
    :cond_2
    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v3

    invoke-virtual/range {v20 .. v22}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1087
    :cond_3
    move-object/from16 v20, v7

    const/16 v21, -0x1

    :try_start_2
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v20

    .line 1088
    move-object/from16 v20, v2

    move-object/from16 v21, v12

    invoke-direct/range {v20 .. v21}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 1089
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    move-object/from16 v22, v7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v13, v20

    .line 1090
    :goto_2
    move-object/from16 v20, v7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1092
    const/16 v20, 0x0

    move-object/from16 v15, v20

    .line 1093
    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1094
    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    .line 1095
    move-object/from16 v20, v12

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v15, v20

    .line 1097
    :cond_4
    move-object/from16 v20, v15

    if-nez v20, :cond_5

    .line 1098
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v20

    .line 1100
    :cond_5
    new-instance v20, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    move-object/from16 v14, v20

    .line 1101
    move-object/from16 v20, v14

    move-object/from16 v21, v7

    move/from16 v22, v8

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 1103
    move-object/from16 v20, v7

    move/from16 v21, v9

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v16, v20

    .line 1104
    move-object/from16 v20, v14

    move/from16 v21, v16

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 1106
    move-object/from16 v20, v7

    move/from16 v21, v10

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    move-object/from16 v17, v20

    .line 1107
    move-object/from16 v20, v14

    move-object/from16 v21, v17

    invoke-static/range {v21 .. v21}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 1108
    move-object/from16 v20, v14

    move-object/from16 v21, v7

    move/from16 v22, v11

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1109
    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1110
    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 1111
    goto/16 :goto_2

    .line 1112
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1113
    move-object/from16 v20, v13

    move-object/from16 v14, v20

    .line 1115
    move-object/from16 v20, v7

    :try_start_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1116
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1119
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1113
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    return-object v2

    .line 1115
    :catchall_0
    move-exception v20

    move-object/from16 v18, v20

    move-object/from16 v20, v7

    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1116
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1117
    move-object/from16 v20, v18

    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1119
    :catchall_1
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1120
    move-object/from16 v20, v19

    throw v20
.end method

.method public getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 919
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const-string v20, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    move-object/from16 v4, v20

    .line 920
    const-string v20, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v20

    move-object/from16 v5, v20

    .line 921
    const/16 v20, 0x1

    move/from16 v6, v20

    .line 922
    move-object/from16 v20, v3

    if-nez v20, :cond_2

    .line 923
    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 927
    :goto_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 928
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 930
    move-object/from16 v20, v2

    :try_start_0
    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    move-object/from16 v7, v20

    .line 932
    move-object/from16 v20, v7

    :try_start_1
    const-string v21, "id"

    invoke-static/range {v20 .. v21}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    move/from16 v8, v20

    .line 933
    move-object/from16 v20, v7

    const-string v21, "state"

    invoke-static/range {v20 .. v21}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    move/from16 v9, v20

    .line 934
    move-object/from16 v20, v7

    const-string v21, "output"

    invoke-static/range {v20 .. v21}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    move/from16 v10, v20

    .line 935
    move-object/from16 v20, v7

    const-string v21, "run_attempt_count"

    invoke-static/range {v20 .. v21}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    move/from16 v11, v20

    .line 936
    new-instance v20, Landroidx/collection/ArrayMap;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Landroidx/collection/ArrayMap;-><init>()V

    move-object/from16 v12, v20

    .line 937
    :cond_0
    :goto_1
    move-object/from16 v20, v7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 938
    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_0

    .line 939
    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    .line 940
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v14, v20

    .line 941
    move-object/from16 v20, v14

    if-nez v20, :cond_1

    .line 942
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v20

    .line 943
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 945
    :cond_1
    goto :goto_1

    .line 925
    :cond_2
    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v3

    invoke-virtual/range {v20 .. v22}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 947
    :cond_3
    move-object/from16 v20, v7

    const/16 v21, -0x1

    :try_start_2
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v20

    .line 948
    move-object/from16 v20, v2

    move-object/from16 v21, v12

    invoke-direct/range {v20 .. v21}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 949
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    move-object/from16 v22, v7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v13, v20

    .line 950
    :goto_2
    move-object/from16 v20, v7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 952
    const/16 v20, 0x0

    move-object/from16 v15, v20

    .line 953
    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_4

    .line 954
    move-object/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    .line 955
    move-object/from16 v20, v12

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v15, v20

    .line 957
    :cond_4
    move-object/from16 v20, v15

    if-nez v20, :cond_5

    .line 958
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v20

    .line 960
    :cond_5
    new-instance v20, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    move-object/from16 v14, v20

    .line 961
    move-object/from16 v20, v14

    move-object/from16 v21, v7

    move/from16 v22, v8

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 963
    move-object/from16 v20, v7

    move/from16 v21, v9

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v16, v20

    .line 964
    move-object/from16 v20, v14

    move/from16 v21, v16

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 966
    move-object/from16 v20, v7

    move/from16 v21, v10

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    move-object/from16 v17, v20

    .line 967
    move-object/from16 v20, v14

    move-object/from16 v21, v17

    invoke-static/range {v21 .. v21}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 968
    move-object/from16 v20, v14

    move-object/from16 v21, v7

    move/from16 v22, v11

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 969
    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 970
    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 971
    goto/16 :goto_2

    .line 972
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 973
    move-object/from16 v20, v13

    move-object/from16 v14, v20

    .line 975
    move-object/from16 v20, v7

    :try_start_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 976
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 979
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 973
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    return-object v2

    .line 975
    :catchall_0
    move-exception v20

    move-object/from16 v18, v20

    move-object/from16 v20, v7

    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 976
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 977
    move-object/from16 v20, v18

    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 979
    :catchall_1
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 980
    move-object/from16 v20, v19

    throw v20
.end method

.method public getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 836
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v2, v10

    .line 837
    move-object v10, v2

    const-string v11, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 838
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v3, v10

    .line 839
    move-object v10, v2

    move v11, v3

    invoke-static {v10, v11}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 840
    move-object v10, v2

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 841
    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 842
    const/4 v10, 0x0

    move v11, v3

    add-int/2addr v10, v11

    move v5, v10

    .line 843
    move-object v10, v4

    move v11, v5

    invoke-static {v10, v11}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v10

    move-object v6, v10

    .line 844
    const/4 v10, 0x1

    move v7, v10

    .line 845
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_0
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v9, v10

    .line 846
    move-object v10, v9

    if-nez v10, :cond_0

    .line 847
    move-object v10, v6

    move v11, v7

    invoke-virtual {v10, v11}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 851
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 852
    goto :goto_0

    .line 849
    :cond_0
    move-object v10, v6

    move v11, v7

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 853
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v10}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    const-string v14, "WorkTag"

    aput-object v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    const-string v14, "workspec"

    aput-object v14, v12, v13

    const/4 v12, 0x1

    new-instance v13, Landroidx/work/impl/model/WorkSpecDao_Impl$10;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v0

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v16}, Landroidx/work/impl/model/WorkSpecDao_Impl$10;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v10, v11, v12, v13}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v10

    move-object v0, v10

    return-object v0
.end method

.method public getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1125
    move-object v0, p0

    move-object v1, p1

    const-string v5, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    move-object v2, v5

    .line 1126
    const-string v5, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    move-object v3, v5

    .line 1127
    const/4 v5, 0x1

    move v4, v5

    .line 1128
    move-object v5, v1

    if-nez v5, :cond_0

    .line 1129
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 1133
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string v9, "WorkTag"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string v9, "workspec"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    const-string v9, "workname"

    aput-object v9, v7, v8

    const/4 v7, 0x1

    new-instance v8, Landroidx/work/impl/model/WorkSpecDao_Impl$12;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Landroidx/work/impl/model/WorkSpecDao_Impl$12;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v5, v6, v7, v8}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v0, v5

    return-object v0

    .line 1131
    :cond_0
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 985
    move-object v0, p0

    move-object v1, p1

    const-string v5, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    move-object v2, v5

    .line 986
    const-string v5, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    move-object v3, v5

    .line 987
    const/4 v5, 0x1

    move v4, v5

    .line 988
    move-object v5, v1

    if-nez v5, :cond_0

    .line 989
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 993
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string v9, "WorkTag"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string v9, "workspec"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    const-string v9, "worktag"

    aput-object v9, v7, v8

    const/4 v7, 0x1

    new-instance v8, Landroidx/work/impl/model/WorkSpecDao_Impl$11;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Landroidx/work/impl/model/WorkSpecDao_Impl$11;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v5, v6, v7, v8}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    move-object v0, v5

    return-object v0

    .line 991
    :cond_0
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 285
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v7}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v7

    move-object v2, v7

    .line 286
    const/4 v7, 0x1

    move v3, v7

    .line 287
    move-object v7, v1

    if-nez v7, :cond_0

    .line 288
    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 292
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 294
    move-object v7, v2

    :try_start_0
    invoke-interface {v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v7

    move v4, v7

    .line 295
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    move v7, v4

    move v5, v7

    .line 298
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 299
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 296
    move v7, v5

    move v0, v7

    return v0

    .line 290
    :cond_0
    move-object v7, v2

    move v8, v3

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 299
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 300
    move-object v7, v6

    throw v7
.end method

.method public insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 5

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 203
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 205
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 206
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 210
    return-void

    .line 208
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 209
    move-object v3, v2

    throw v3
.end method

.method public markWorkSpecScheduled(Ljava/lang/String;J)I
    .locals 14

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 327
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v9}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v9

    move-object v4, v9

    .line 328
    const/4 v9, 0x1

    move v5, v9

    .line 329
    move-object v9, v4

    move v10, v5

    move-wide v11, v2

    invoke-interface {v9, v10, v11, v12}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 330
    const/4 v9, 0x2

    move v5, v9

    .line 331
    move-object v9, v1

    if-nez v9, :cond_0

    .line 332
    move-object v9, v4

    move v10, v5

    invoke-interface {v9, v10}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 336
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 338
    move-object v9, v4

    :try_start_0
    invoke-interface {v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v9

    move v6, v9

    .line 339
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    move v9, v6

    move v7, v9

    .line 342
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 343
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 340
    move v9, v7

    move v0, v9

    return v0

    .line 334
    :cond_0
    move-object v9, v4

    move v10, v5

    move-object v11, v1

    invoke-interface {v9, v10, v11}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 343
    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 344
    move-object v9, v8

    throw v9
.end method

.method public pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
    .locals 5

    .prologue
    .line 364
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 365
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v3

    move-object v1, v3

    .line 366
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 368
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v3

    .line 369
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 372
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 374
    return-void

    .line 371
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 372
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 373
    move-object v3, v2

    throw v3
.end method

.method public resetScheduledState()I
    .locals 7

    .prologue
    .line 349
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 350
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v5}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v5

    move-object v1, v5

    .line 351
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 353
    move-object v5, v1

    :try_start_0
    invoke-interface {v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v5

    move v2, v5

    .line 354
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    move v5, v2

    move v3, v5

    .line 357
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 358
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 355
    move v5, v3

    move v0, v5

    return v0

    .line 357
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 358
    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 359
    move-object v5, v4

    throw v5
.end method

.method public resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 306
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v7}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v7

    move-object v2, v7

    .line 307
    const/4 v7, 0x1

    move v3, v7

    .line 308
    move-object v7, v1

    if-nez v7, :cond_0

    .line 309
    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 313
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 315
    move-object v7, v2

    :try_start_0
    invoke-interface {v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v7

    move v4, v7

    .line 316
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    move v7, v4

    move v5, v7

    .line 319
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 320
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 317
    move v7, v5

    move v0, v7

    return v0

    .line 311
    :cond_0
    move-object v7, v2

    move v8, v3

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 320
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 321
    move-object v7, v6

    throw v7
.end method

.method public setOutput(Ljava/lang/String;Landroidx/work/Data;)V
    .locals 10

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 235
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v7}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v7

    move-object v3, v7

    .line 236
    const/4 v7, 0x1

    move v4, v7

    .line 238
    move-object v7, v2

    invoke-static {v7}, Landroidx/work/Data;->toByteArray(Landroidx/work/Data;)[B

    move-result-object v7

    move-object v5, v7

    .line 239
    move-object v7, v5

    if-nez v7, :cond_0

    .line 240
    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 244
    :goto_0
    const/4 v7, 0x2

    move v4, v7

    .line 245
    move-object v7, v1

    if-nez v7, :cond_1

    .line 246
    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 250
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 252
    move-object v7, v3

    :try_start_0
    invoke-interface {v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v7

    .line 253
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 256
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 258
    return-void

    .line 242
    :cond_0
    move-object v7, v3

    move v8, v4

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    goto :goto_0

    .line 248
    :cond_1
    move-object v7, v3

    move v8, v4

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 256
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 257
    move-object v7, v6

    throw v7
.end method

.method public setPeriodStartTime(Ljava/lang/String;J)V
    .locals 12

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 263
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v7}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v7

    move-object v4, v7

    .line 264
    const/4 v7, 0x1

    move v5, v7

    .line 265
    move-object v7, v4

    move v8, v5

    move-wide v9, v2

    invoke-interface {v7, v8, v9, v10}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 266
    const/4 v7, 0x2

    move v5, v7

    .line 267
    move-object v7, v1

    if-nez v7, :cond_0

    .line 268
    move-object v7, v4

    move v8, v5

    invoke-interface {v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 272
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 274
    move-object v7, v4

    :try_start_0
    invoke-interface {v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v7

    .line 275
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 278
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 280
    return-void

    .line 270
    :cond_0
    move-object v7, v4

    move v8, v5

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 278
    move-object v7, v0

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/SharedSQLiteStatement;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 279
    move-object v7, v6

    throw v7
.end method

.method public varargs setState(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I
    .locals 20

    .prologue
    .line 1622
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1623
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v5, v16

    .line 1624
    move-object/from16 v16, v5

    const-string v17, "UPDATE workspec SET state="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1625
    move-object/from16 v16, v5

    const-string v17, "?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1626
    move-object/from16 v16, v5

    const-string v17, " WHERE id IN ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1627
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v6, v16

    .line 1628
    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-static/range {v16 .. v17}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1629
    move-object/from16 v16, v5

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1630
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v7, v16

    .line 1631
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v16

    move-object/from16 v8, v16

    .line 1632
    const/16 v16, 0x1

    move/from16 v9, v16

    .line 1634
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v16

    move/from16 v10, v16

    .line 1635
    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 1636
    const/16 v16, 0x2

    move/from16 v9, v16

    .line 1637
    move-object/from16 v16, v4

    move-object/from16 v11, v16

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v12, v16

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_0
    move/from16 v16, v13

    move/from16 v17, v12

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    move-object/from16 v16, v11

    move/from16 v17, v13

    aget-object v16, v16, v17

    move-object/from16 v14, v16

    .line 1638
    move-object/from16 v16, v14

    if-nez v16, :cond_0

    .line 1639
    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-interface/range {v16 .. v17}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 1643
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 1637
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1641
    :cond_0
    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v14

    invoke-interface/range {v16 .. v18}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 1645
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1647
    move-object/from16 v16, v8

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v16

    move/from16 v11, v16

    .line 1648
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    move/from16 v16, v11

    move/from16 v12, v16

    .line 1651
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1649
    move/from16 v16, v12

    move/from16 v2, v16

    return v2

    .line 1651
    :catchall_0
    move-exception v16

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1652
    move-object/from16 v16, v15

    throw v16
.end method
