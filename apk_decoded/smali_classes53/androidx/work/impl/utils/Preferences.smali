.class public Landroidx/work/impl/utils/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;
    }
.end annotation


# static fields
.field private static final KEY_LAST_CANCEL_ALL_TIME_MS:Ljava/lang/String; = "last_cancel_all_time_ms"

.field private static final KEY_RESCHEDULE_NEEDED:Ljava/lang/String; = "reschedule_needed"

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "androidx.work.util.preferences"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/impl/utils/Preferences;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/impl/utils/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 8

    .prologue
    .line 96
    move-object v0, p0

    const-class v3, Landroidx/work/impl/utils/Preferences;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 97
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/utils/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    .line 98
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/utils/Preferences;->mContext:Landroid/content/Context;

    const-string v5, "androidx.work.util.preferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, v3, Landroidx/work/impl/utils/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 102
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/utils/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    return-object v0

    .line 103
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


# virtual methods
.method public getLastCancelAllTimeMillis()J
    .locals 6

    .prologue
    .line 59
    move-object v1, p0

    move-object v2, v1

    invoke-direct {v2}, Landroidx/work/impl/utils/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_cancel_all_time_ms"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-wide v1, v2

    return-wide v1
.end method

.method public getLastCancelAllTimeMillisLiveData()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    new-instance v1, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v3}, Landroidx/work/impl/utils/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;-><init>(Landroid/content/SharedPreferences;)V

    move-object v0, v1

    return-object v0
.end method

.method public needsReschedule()Z
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/work/impl/utils/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "reschedule_needed"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public setLastCancelAllTimeMillis(J)V
    .locals 9

    .prologue
    .line 76
    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    invoke-direct {v4}, Landroidx/work/impl/utils/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_cancel_all_time_ms"

    move-wide v6, v2

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method public setNeedsReschedule(Z)V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/work/impl/utils/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "reschedule_needed"

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    return-void
.end method
