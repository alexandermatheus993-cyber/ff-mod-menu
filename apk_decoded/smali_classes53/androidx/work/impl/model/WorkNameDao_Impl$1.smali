.class Landroidx/work/impl/model/WorkNameDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "WorkNameDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkNameDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter",
        "<",
        "Landroidx/work/impl/model/WorkName;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkNameDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkNameDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/work/impl/model/WorkNameDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkNameDao_Impl;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkName;)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    iget-object v3, v3, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 32
    move-object v3, v1

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 36
    :goto_0
    move-object v3, v2

    iget-object v3, v3, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 37
    move-object v3, v1

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 41
    :goto_1
    return-void

    .line 34
    :cond_0
    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v2

    iget-object v5, v5, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    move-object v3, v1

    const/4 v4, 0x2

    move-object v5, v2

    iget-object v5, v5, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v3, v4, v5}, Landroidx/work/impl/model/WorkNameDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkName;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    const-string v1, "INSERT OR IGNORE INTO `WorkName`(`name`,`work_spec_id`) VALUES (?,?)"

    move-object v0, v1

    return-object v0
.end method
