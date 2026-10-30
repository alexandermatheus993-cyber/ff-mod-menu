.class Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "Preferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastCancelAllLiveData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private mLastCancelAllTimeMillis:J

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 8

    .prologue
    .line 116
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 117
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 118
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "last_cancel_all_time_ms"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    .line 119
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->postValue(Ljava/lang/Object;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/lifecycle/MutableLiveData;->onActive()V

    .line 136
    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 137
    return-void
.end method

.method protected onInactive()V
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/lifecycle/MutableLiveData;->onInactive()V

    .line 142
    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 143
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 124
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    const-string v6, "last_cancel_all_time_ms"

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    move-object v6, v2

    move-object v7, v3

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 126
    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 127
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    .line 128
    move-object v6, v1

    move-object v7, v1

    iget-wide v7, v7, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->setValue(Ljava/lang/Object;)V

    .line 131
    :cond_0
    return-void
.end method
