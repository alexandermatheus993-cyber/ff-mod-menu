.class final Landroidx/work/impl/WorkDatabase$1;
.super Landroidx/room/RoomDatabase$Callback;
.source "WorkDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->generateCleanupCallback()Landroidx/room/RoomDatabase$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/room/RoomDatabase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 124
    move-object v3, v1

    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 128
    move-object v3, v1

    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->getPruneSQL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    move-object v3, v1

    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    move-object v3, v1

    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 132
    move-object v3, v2

    throw v3
.end method
