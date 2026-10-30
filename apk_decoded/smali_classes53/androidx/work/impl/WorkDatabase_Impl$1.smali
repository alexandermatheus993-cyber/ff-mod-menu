.class Landroidx/work/impl/WorkDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "WorkDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;I)V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    move-object v2, v1

    const-string v3, "CREATE  INDEX `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    move-object v2, v1

    const-string v3, "CREATE  INDEX `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    move-object v2, v1

    const-string v3, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    move-object v2, v1

    const-string v3, "CREATE  INDEX `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    move-object v2, v1

    const-string v3, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    move-object v2, v1

    const-string v3, "CREATE  INDEX `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    move-object v2, v1

    const-string v3, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    move-object v2, v1

    const-string v3, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    move-object v2, v1

    const-string v3, "CREATE  INDEX `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    move-object v2, v1

    const-string v3, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    move-object v2, v1

    const-string v3, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c84d23ade98552f1cec71088c1f0794c\')"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "DROP TABLE IF EXISTS `Dependency`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    move-object v2, v1

    const-string v3, "DROP TABLE IF EXISTS `WorkSpec`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    move-object v2, v1

    const-string v3, "DROP TABLE IF EXISTS `WorkTag`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    move-object v2, v1

    const-string v3, "DROP TABLE IF EXISTS `SystemIdInfo`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    move-object v2, v1

    const-string v3, "DROP TABLE IF EXISTS `WorkName`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v4}, Landroidx/work/impl/WorkDatabase_Impl;->access$000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 78
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v4}, Landroidx/work/impl/WorkDatabase_Impl;->access$100(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 79
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v4}, Landroidx/work/impl/WorkDatabase_Impl;->access$200(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/RoomDatabase$Callback;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/work/impl/WorkDatabase_Impl;->access$302(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v4

    .line 87
    move-object v4, v1

    const-string v5, "PRAGMA foreign_keys = ON"

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/work/impl/WorkDatabase_Impl;->access$400(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 89
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v4}, Landroidx/work/impl/WorkDatabase_Impl;->access$500(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 90
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v4}, Landroidx/work/impl/WorkDatabase_Impl;->access$600(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 91
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v4}, Landroidx/work/impl/WorkDatabase_Impl;->access$700(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/RoomDatabase$Callback;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 99
    return-void
.end method

.method protected validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 40

    .prologue
    .line 107
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v28, Ljava/util/HashMap;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x2

    invoke-direct/range {v29 .. v30}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v3, v28

    .line 108
    move-object/from16 v28, v3

    const-string v29, "work_spec_id"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "work_spec_id"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x1

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 109
    move-object/from16 v28, v3

    const-string v29, "prerequisite_id"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "prerequisite_id"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x2

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 110
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x2

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v4, v28

    .line 111
    move-object/from16 v28, v4

    new-instance v29, Landroidx/room/util/TableInfo$ForeignKey;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "WorkSpec"

    const-string v32, "CASCADE"

    const-string v33, "CASCADE"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    const/16 v36, 0x0

    const-string v37, "work_spec_id"

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v39, v35

    move-object/from16 v35, v39

    move-object/from16 v36, v39

    const/16 v37, 0x0

    const-string v38, "id"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    invoke-direct/range {v30 .. v35}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 112
    move-object/from16 v28, v4

    new-instance v29, Landroidx/room/util/TableInfo$ForeignKey;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "WorkSpec"

    const-string v32, "CASCADE"

    const-string v33, "CASCADE"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    const/16 v36, 0x0

    const-string v37, "prerequisite_id"

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v39, v35

    move-object/from16 v35, v39

    move-object/from16 v36, v39

    const/16 v37, 0x0

    const-string v38, "id"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    invoke-direct/range {v30 .. v35}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 113
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x2

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v5, v28

    .line 114
    move-object/from16 v28, v5

    new-instance v29, Landroidx/room/util/TableInfo$Index;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "index_Dependency_work_spec_id"

    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    const/16 v35, 0x0

    const-string v36, "work_spec_id"

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 115
    move-object/from16 v28, v5

    new-instance v29, Landroidx/room/util/TableInfo$Index;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "index_Dependency_prerequisite_id"

    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    const/16 v35, 0x0

    const-string v36, "prerequisite_id"

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 116
    new-instance v28, Landroidx/room/util/TableInfo;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const-string v30, "Dependency"

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    invoke-direct/range {v29 .. v33}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v6, v28

    .line 117
    move-object/from16 v28, v2

    const-string v29, "Dependency"

    invoke-static/range {v28 .. v29}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v28

    move-object/from16 v7, v28

    .line 118
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    invoke-virtual/range {v28 .. v29}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 119
    new-instance v28, Ljava/lang/IllegalStateException;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Migration didn\'t properly handle Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v6

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n Found:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v7

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 123
    :cond_0
    new-instance v28, Ljava/util/HashMap;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x17

    invoke-direct/range {v29 .. v30}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v8, v28

    .line 124
    move-object/from16 v28, v8

    const-string v29, "id"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "id"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x1

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 125
    move-object/from16 v28, v8

    const-string v29, "state"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "state"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 126
    move-object/from16 v28, v8

    const-string v29, "worker_class_name"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "worker_class_name"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 127
    move-object/from16 v28, v8

    const-string v29, "input_merger_class_name"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "input_merger_class_name"

    const-string v33, "TEXT"

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 128
    move-object/from16 v28, v8

    const-string v29, "input"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "input"

    const-string v33, "BLOB"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 129
    move-object/from16 v28, v8

    const-string v29, "output"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "output"

    const-string v33, "BLOB"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 130
    move-object/from16 v28, v8

    const-string v29, "initial_delay"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "initial_delay"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 131
    move-object/from16 v28, v8

    const-string v29, "interval_duration"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "interval_duration"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 132
    move-object/from16 v28, v8

    const-string v29, "flex_duration"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "flex_duration"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 133
    move-object/from16 v28, v8

    const-string v29, "run_attempt_count"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "run_attempt_count"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 134
    move-object/from16 v28, v8

    const-string v29, "backoff_policy"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "backoff_policy"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 135
    move-object/from16 v28, v8

    const-string v29, "backoff_delay_duration"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "backoff_delay_duration"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 136
    move-object/from16 v28, v8

    const-string v29, "period_start_time"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "period_start_time"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 137
    move-object/from16 v28, v8

    const-string v29, "minimum_retention_duration"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "minimum_retention_duration"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 138
    move-object/from16 v28, v8

    const-string v29, "schedule_requested_at"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "schedule_requested_at"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 139
    move-object/from16 v28, v8

    const-string v29, "required_network_type"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "required_network_type"

    const-string v33, "INTEGER"

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 140
    move-object/from16 v28, v8

    const-string v29, "requires_charging"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "requires_charging"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 141
    move-object/from16 v28, v8

    const-string v29, "requires_device_idle"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "requires_device_idle"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 142
    move-object/from16 v28, v8

    const-string v29, "requires_battery_not_low"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "requires_battery_not_low"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 143
    move-object/from16 v28, v8

    const-string v29, "requires_storage_not_low"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "requires_storage_not_low"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 144
    move-object/from16 v28, v8

    const-string v29, "trigger_content_update_delay"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "trigger_content_update_delay"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 145
    move-object/from16 v28, v8

    const-string v29, "trigger_max_content_delay"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "trigger_max_content_delay"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 146
    move-object/from16 v28, v8

    const-string v29, "content_uri_triggers"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "content_uri_triggers"

    const-string v33, "BLOB"

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 147
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x0

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v9, v28

    .line 148
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v10, v28

    .line 149
    move-object/from16 v28, v10

    new-instance v29, Landroidx/room/util/TableInfo$Index;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "index_WorkSpec_schedule_requested_at"

    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    const/16 v35, 0x0

    const-string v36, "schedule_requested_at"

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 150
    new-instance v28, Landroidx/room/util/TableInfo;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const-string v30, "WorkSpec"

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    invoke-direct/range {v29 .. v33}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v11, v28

    .line 151
    move-object/from16 v28, v2

    const-string v29, "WorkSpec"

    invoke-static/range {v28 .. v29}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v28

    move-object/from16 v12, v28

    .line 152
    move-object/from16 v28, v11

    move-object/from16 v29, v12

    invoke-virtual/range {v28 .. v29}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 153
    new-instance v28, Ljava/lang/IllegalStateException;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Migration didn\'t properly handle WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v11

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n Found:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 157
    :cond_1
    new-instance v28, Ljava/util/HashMap;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x2

    invoke-direct/range {v29 .. v30}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v13, v28

    .line 158
    move-object/from16 v28, v13

    const-string v29, "tag"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "tag"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x1

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 159
    move-object/from16 v28, v13

    const-string v29, "work_spec_id"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "work_spec_id"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x2

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 160
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v14, v28

    .line 161
    move-object/from16 v28, v14

    new-instance v29, Landroidx/room/util/TableInfo$ForeignKey;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "WorkSpec"

    const-string v32, "CASCADE"

    const-string v33, "CASCADE"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    const/16 v36, 0x0

    const-string v37, "work_spec_id"

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v39, v35

    move-object/from16 v35, v39

    move-object/from16 v36, v39

    const/16 v37, 0x0

    const-string v38, "id"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    invoke-direct/range {v30 .. v35}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 162
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v15, v28

    .line 163
    move-object/from16 v28, v15

    new-instance v29, Landroidx/room/util/TableInfo$Index;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "index_WorkTag_work_spec_id"

    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    const/16 v35, 0x0

    const-string v36, "work_spec_id"

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 164
    new-instance v28, Landroidx/room/util/TableInfo;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const-string v30, "WorkTag"

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    invoke-direct/range {v29 .. v33}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v16, v28

    .line 165
    move-object/from16 v28, v2

    const-string v29, "WorkTag"

    invoke-static/range {v28 .. v29}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v28

    move-object/from16 v17, v28

    .line 166
    move-object/from16 v28, v16

    move-object/from16 v29, v17

    invoke-virtual/range {v28 .. v29}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 167
    new-instance v28, Ljava/lang/IllegalStateException;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Migration didn\'t properly handle WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v16

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n Found:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v17

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 171
    :cond_2
    new-instance v28, Ljava/util/HashMap;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x2

    invoke-direct/range {v29 .. v30}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v18, v28

    .line 172
    move-object/from16 v28, v18

    const-string v29, "work_spec_id"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "work_spec_id"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x1

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 173
    move-object/from16 v28, v18

    const-string v29, "system_id"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "system_id"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 174
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v19, v28

    .line 175
    move-object/from16 v28, v19

    new-instance v29, Landroidx/room/util/TableInfo$ForeignKey;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "WorkSpec"

    const-string v32, "CASCADE"

    const-string v33, "CASCADE"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    const/16 v36, 0x0

    const-string v37, "work_spec_id"

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v39, v35

    move-object/from16 v35, v39

    move-object/from16 v36, v39

    const/16 v37, 0x0

    const-string v38, "id"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    invoke-direct/range {v30 .. v35}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 176
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x0

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v20, v28

    .line 177
    new-instance v28, Landroidx/room/util/TableInfo;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const-string v30, "SystemIdInfo"

    move-object/from16 v31, v18

    move-object/from16 v32, v19

    move-object/from16 v33, v20

    invoke-direct/range {v29 .. v33}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v21, v28

    .line 178
    move-object/from16 v28, v2

    const-string v29, "SystemIdInfo"

    invoke-static/range {v28 .. v29}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v28

    move-object/from16 v22, v28

    .line 179
    move-object/from16 v28, v21

    move-object/from16 v29, v22

    invoke-virtual/range {v28 .. v29}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 180
    new-instance v28, Ljava/lang/IllegalStateException;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Migration didn\'t properly handle SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n Found:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v22

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 184
    :cond_3
    new-instance v28, Ljava/util/HashMap;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x2

    invoke-direct/range {v29 .. v30}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v23, v28

    .line 185
    move-object/from16 v28, v23

    const-string v29, "name"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "name"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x1

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 186
    move-object/from16 v28, v23

    const-string v29, "work_spec_id"

    new-instance v30, Landroidx/room/util/TableInfo$Column;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    const-string v32, "work_spec_id"

    const-string v33, "TEXT"

    const/16 v34, 0x1

    const/16 v35, 0x2

    invoke-direct/range {v31 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {v28 .. v30}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 187
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v24, v28

    .line 188
    move-object/from16 v28, v24

    new-instance v29, Landroidx/room/util/TableInfo$ForeignKey;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "WorkSpec"

    const-string v32, "CASCADE"

    const-string v33, "CASCADE"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    const/16 v36, 0x0

    const-string v37, "work_spec_id"

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v39, v35

    move-object/from16 v35, v39

    move-object/from16 v36, v39

    const/16 v37, 0x0

    const-string v38, "id"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    invoke-direct/range {v30 .. v35}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 189
    new-instance v28, Ljava/util/HashSet;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const/16 v30, 0x1

    invoke-direct/range {v29 .. v30}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v25, v28

    .line 190
    move-object/from16 v28, v25

    new-instance v29, Landroidx/room/util/TableInfo$Index;

    move-object/from16 v39, v29

    move-object/from16 v29, v39

    move-object/from16 v30, v39

    const-string v31, "index_WorkName_work_spec_id"

    const/16 v32, 0x0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    const/16 v35, 0x0

    const-string v36, "work_spec_id"

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v28

    .line 191
    new-instance v28, Landroidx/room/util/TableInfo;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const-string v30, "WorkName"

    move-object/from16 v31, v23

    move-object/from16 v32, v24

    move-object/from16 v33, v25

    invoke-direct/range {v29 .. v33}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v26, v28

    .line 192
    move-object/from16 v28, v2

    const-string v29, "WorkName"

    invoke-static/range {v28 .. v29}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v28

    move-object/from16 v27, v28

    .line 193
    move-object/from16 v28, v26

    move-object/from16 v29, v27

    invoke-virtual/range {v28 .. v29}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 194
    new-instance v28, Ljava/lang/IllegalStateException;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Migration didn\'t properly handle WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v26

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n Found:\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v27

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 198
    :cond_4
    return-void
.end method
