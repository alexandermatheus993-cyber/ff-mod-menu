.class public final Landroidx/work/Constraints;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Constraints$Builder;
    }
.end annotation


# static fields
.field public static final NONE:Landroidx/work/Constraints;


# instance fields
.field private mContentUriTriggers:Landroidx/work/ContentUriTriggers;
    .annotation build Landroidx/room/ColumnInfo;
        name = "content_uri_triggers"
    .end annotation
.end field

.field private mRequiredNetworkType:Landroidx/work/NetworkType;
    .annotation build Landroidx/room/ColumnInfo;
        name = "required_network_type"
    .end annotation
.end field

.field private mRequiresBatteryNotLow:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "requires_battery_not_low"
    .end annotation
.end field

.field private mRequiresCharging:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "requires_charging"
    .end annotation
.end field

.field private mRequiresDeviceIdle:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "requires_device_idle"
    .end annotation
.end field

.field private mRequiresStorageNotLow:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "requires_storage_not_low"
    .end annotation
.end field

.field private mTriggerContentUpdateDelay:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "trigger_content_update_delay"
    .end annotation
.end field

.field private mTriggerMaxContentDelay:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "trigger_max_content_delay"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroidx/work/Constraints$Builder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    sput-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v1, v0

    sget-object v2, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v2, v1, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 64
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 67
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    .line 72
    move-object v1, v0

    new-instance v2, Landroidx/work/ContentUriTriggers;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v2, v1, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 80
    return-void
.end method

.method constructor <init>(Landroidx/work/Constraints$Builder;)V
    .locals 7

    .prologue
    .line 82
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v1

    sget-object v4, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v4, v3, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 64
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 67
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    .line 72
    move-object v3, v1

    new-instance v4, Landroidx/work/ContentUriTriggers;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v4, v3, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 83
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/Constraints$Builder;->mRequiresCharging:Z

    iput-boolean v4, v3, Landroidx/work/Constraints;->mRequiresCharging:Z

    .line 84
    move-object v3, v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    .line 85
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    iput-object v4, v3, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 86
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    iput-boolean v4, v3, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    .line 87
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    iput-boolean v4, v3, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    .line 88
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 89
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/Constraints$Builder;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    iput-object v4, v3, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 90
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    iput-wide v4, v3, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 91
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Landroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    iput-wide v4, v3, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    .line 93
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/work/Constraints;)V
    .locals 7
    .param p1    # Landroidx/work/Constraints;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v1

    sget-object v4, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v4, v3, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 64
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 67
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    .line 72
    move-object v3, v1

    new-instance v4, Landroidx/work/ContentUriTriggers;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v4, v3, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 96
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresCharging:Z

    iput-boolean v4, v3, Landroidx/work/Constraints;->mRequiresCharging:Z

    .line 97
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    iput-boolean v4, v3, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    .line 98
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    iput-object v4, v3, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 99
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    iput-boolean v4, v3, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    .line 100
    move-object v3, v1

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    iput-boolean v4, v3, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    .line 101
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    iput-object v4, v3, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 102
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 250
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 262
    :goto_0
    return v1

    .line 251
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 253
    :cond_2
    move-object v4, v2

    check-cast v4, Landroidx/work/Constraints;

    move-object v3, v4

    .line 255
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresCharging:Z

    move-object v5, v3

    iget-boolean v5, v5, Landroidx/work/Constraints;->mRequiresCharging:Z

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 256
    :cond_3
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    move-object v5, v3

    iget-boolean v5, v5, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 257
    :cond_4
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    move-object v5, v3

    iget-boolean v5, v5, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    if-eq v4, v5, :cond_5

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 258
    :cond_5
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    move-object v5, v3

    iget-boolean v5, v5, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    if-eq v4, v5, :cond_6

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 259
    :cond_6
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 260
    :cond_7
    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    move-object v6, v3

    iget-wide v6, v6, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 261
    :cond_8
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    if-eq v4, v5, :cond_9

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 262
    :cond_9
    move-object v4, v1

    iget-object v4, v4, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    move-object v5, v3

    iget-object v5, v5, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v4, v5}, Landroidx/work/ContentUriTriggers;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v1, v4

    goto :goto_0
.end method

.method public getContentUriTriggers()Landroidx/work/ContentUriTriggers;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    move-object v0, v1

    return-object v0
.end method

.method public getRequiredNetworkType()Landroidx/work/NetworkType;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    move-object v0, v1

    return-object v0
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getTriggerMaxContentDelay()J
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    move-wide v0, v1

    return-wide v0
.end method

.method public hasContentUriTriggers()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v1}, Landroidx/work/ContentUriTriggers;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 267
    move-object v1, p0

    move-object v3, v1

    iget-object v3, v3, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    invoke-virtual {v3}, Landroidx/work/NetworkType;->hashCode()I

    move-result v3

    move v2, v3

    .line 268
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresCharging:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/2addr v3, v4

    move v2, v3

    .line 269
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v3, v4

    move v2, v3

    .line 270
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    add-int/2addr v3, v4

    move v2, v3

    .line 271
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    add-int/2addr v3, v4

    move v2, v3

    .line 272
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 274
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    move-object v6, v1

    iget-wide v6, v6, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 275
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-object v4, v4, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    invoke-virtual {v4}, Landroidx/work/ContentUriTriggers;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v3

    .line 276
    move v3, v2

    move v1, v3

    return v1

    .line 268
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 269
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 270
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 271
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public requiresBatteryNotLow()Z
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    move v0, v1

    return v0
.end method

.method public requiresCharging()Z
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/Constraints;->mRequiresCharging:Z

    move v0, v1

    return v0
.end method

.method public requiresDeviceIdle()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    move v0, v1

    return v0
.end method

.method public requiresStorageNotLow()Z
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    move v0, v1

    return v0
.end method

.method public setContentUriTriggers(Landroidx/work/ContentUriTriggers;)V
    .locals 4
    .param p1    # Landroidx/work/ContentUriTriggers;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/Constraints;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    .line 227
    return-void
.end method

.method public setRequiredNetworkType(Landroidx/work/NetworkType;)V
    .locals 4
    .param p1    # Landroidx/work/NetworkType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/Constraints;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 115
    return-void
.end method

.method public setRequiresBatteryNotLow(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/work/Constraints;->mRequiresBatteryNotLow:Z

    .line 165
    return-void
.end method

.method public setRequiresCharging(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/work/Constraints;->mRequiresCharging:Z

    .line 131
    return-void
.end method

.method public setRequiresDeviceIdle(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/work/Constraints;->mRequiresDeviceIdle:Z

    .line 149
    return-void
.end method

.method public setRequiresStorageNotLow(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/work/Constraints;->mRequiresStorageNotLow:Z

    .line 181
    return-void
.end method

.method public setTriggerContentUpdateDelay(J)V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/work/Constraints;->mTriggerContentUpdateDelay:J

    .line 199
    return-void
.end method

.method public setTriggerMaxContentDelay(J)V
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/work/Constraints;->mTriggerMaxContentDelay:J

    .line 217
    return-void
.end method
