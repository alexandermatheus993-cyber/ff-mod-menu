.class public Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;
.super Landroidx/room/migration/Migration;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkMigration"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 99
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 7
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroidx/work/impl/utils/Preferences;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/work/impl/utils/Preferences;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 105
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/work/impl/utils/Preferences;->setNeedsReschedule(Z)V

    .line 106
    return-void
.end method
