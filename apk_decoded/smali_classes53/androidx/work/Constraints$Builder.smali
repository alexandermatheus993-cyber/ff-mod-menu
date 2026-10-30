.class public final Landroidx/work/Constraints$Builder;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mContentUriTriggers:Landroidx/work/ContentUriTriggers;

.field mRequiredNetworkType:Landroidx/work/NetworkType;

.field mRequiresBatteryNotLow:Z

.field mRequiresCharging:Z

.field mRequiresDeviceIdle:Z

.field mRequiresStorageNotLow:Z

.field mTriggerContentMaxDelay:J

.field mTriggerContentUpdateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 283
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/work/Constraints$Builder;->mRequiresCharging:Z

    .line 284
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    .line 285
    move-object v1, v0

    sget-object v2, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v2, v1, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 286
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    .line 287
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    .line 289
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    .line 290
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    .line 291
    move-object v1, v0

    new-instance v2, Landroidx/work/ContentUriTriggers;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/work/ContentUriTriggers;-><init>()V

    iput-object v2, v1, Landroidx/work/Constraints$Builder;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    return-void
.end method


# virtual methods
.method public addContentUriTrigger(Landroid/net/Uri;Z)Landroidx/work/Constraints$Builder;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/Constraints$Builder;->mContentUriTriggers:Landroidx/work/ContentUriTriggers;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/work/ContentUriTriggers;->add(Landroid/net/Uri;Z)V

    .line 372
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public build()Landroidx/work/Constraints;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    new-instance v1, Landroidx/work/Constraints;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;
    .locals 4
    .param p1    # Landroidx/work/NetworkType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/Constraints$Builder;->mRequiredNetworkType:Landroidx/work/NetworkType;

    .line 327
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    .line 340
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setRequiresCharging(Z)Landroidx/work/Constraints$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/work/Constraints$Builder;->mRequiresCharging:Z

    .line 302
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    .line 315
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setRequiresStorageNotLow(Z)Landroidx/work/Constraints$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    .line 353
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTriggerContentMaxDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/Constraints$Builder;
    .locals 9
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 427
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-object v6, v4

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    .line 428
    move-object v5, v1

    move-object v1, v5

    return-object v1
.end method

.method public setTriggerContentMaxDelay(Ljava/time/Duration;)Landroidx/work/Constraints$Builder;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 443
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    .line 444
    move-object v3, v1

    move-object v1, v3

    return-object v1
.end method

.method public setTriggerContentUpdateDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/Constraints$Builder;
    .locals 9
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 391
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-object v6, v4

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    .line 392
    move-object v5, v1

    move-object v1, v5

    return-object v1
.end method

.method public setTriggerContentUpdateDelay(Ljava/time/Duration;)Landroidx/work/Constraints$Builder;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 408
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    .line 409
    move-object v3, v1

    move-object v1, v3

    return-object v1
.end method
