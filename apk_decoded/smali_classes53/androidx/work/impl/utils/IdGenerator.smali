.class public Landroidx/work/impl/utils/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final INITIAL_ID:I = 0x0

.field static final NEXT_ALARM_MANAGER_ID_KEY:Ljava/lang/String; = "next_alarm_manager_id"

.field static final NEXT_JOB_SCHEDULER_ID_KEY:Ljava/lang/String; = "next_job_scheduler_id"

.field static final PREFERENCE_FILE_KEY:Ljava/lang/String; = "androidx.work.util.id"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoadedPreferences:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/impl/utils/IdGenerator;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private loadPreferencesIfNecessary()V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/impl/utils/IdGenerator;->mLoadedPreferences:Z

    if-nez v1, :cond_0

    .line 99
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/impl/utils/IdGenerator;->mContext:Landroid/content/Context;

    const-string v3, "androidx.work.util.id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 100
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/work/impl/utils/IdGenerator;->mLoadedPreferences:Z

    .line 102
    :cond_0
    return-void
.end method

.method private nextId(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 88
    move v4, v2

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 89
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/work/impl/utils/IdGenerator;->update(Ljava/lang/String;I)V

    .line 90
    move v4, v2

    move v0, v4

    return v0

    .line 88
    :cond_0
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private update(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    return-void
.end method


# virtual methods
.method public nextAlarmManagerId()I
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    const-class v3, Landroidx/work/impl/utils/IdGenerator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 75
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Landroidx/work/impl/utils/IdGenerator;->loadPreferencesIfNecessary()V

    .line 76
    move-object v3, v0

    const-string v4, "next_alarm_manager_id"

    invoke-direct {v3, v4}, Landroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    return v0

    .line 77
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

.method public nextJobSchedulerIdWithRange(II)I
    .locals 11

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move v2, p2

    const-class v6, Landroidx/work/impl/utils/IdGenerator;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 59
    move-object v6, v0

    :try_start_0
    invoke-direct {v6}, Landroidx/work/impl/utils/IdGenerator;->loadPreferencesIfNecessary()V

    .line 60
    move-object v6, v0

    const-string v7, "next_job_scheduler_id"

    invoke-direct {v6, v7}, Landroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 61
    move v6, v4

    move v7, v1

    if-lt v6, v7, :cond_0

    move v6, v4

    move v7, v2

    if-le v6, v7, :cond_1

    .line 63
    :cond_0
    move v6, v1

    move v4, v6

    .line 64
    move-object v6, v0

    const-string v7, "next_job_scheduler_id"

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v6, v7, v8}, Landroidx/work/impl/utils/IdGenerator;->update(Ljava/lang/String;I)V

    .line 66
    :cond_1
    move v6, v4

    move-object v7, v3

    monitor-exit v7

    move v0, v6

    return v0

    .line 67
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method
