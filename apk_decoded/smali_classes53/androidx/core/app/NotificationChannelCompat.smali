.class public Landroidx/core/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationChannelCompat$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field private static final DEFAULT_LIGHT_COLOR:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true


# instance fields
.field mAudioAttributes:Landroid/media/AudioAttributes;

.field private mBypassDnd:Z

.field private mCanBubble:Z

.field mConversationId:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mGroupId:Ljava/lang/String;

.field final mId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mImportance:I

.field private mImportantConversation:Z

.field mLightColor:I

.field mLights:Z

.field private mLockscreenVisibility:I

.field mName:Ljava/lang/CharSequence;

.field mParentId:Ljava/lang/String;

.field mShowBadge:Z

.field mSound:Landroid/net/Uri;

.field mVibrationEnabled:Z

.field mVibrationPattern:[J


# direct methods
.method constructor <init>(Landroid/app/NotificationChannel;)V
    .locals 5
    .param p1    # Landroid/app/NotificationChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 286
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    .line 287
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 288
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    .line 289
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 290
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    .line 291
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 292
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    .line 293
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    iput v3, v2, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 294
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    .line 295
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    .line 296
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 297
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    .line 298
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    .line 301
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/NotificationChannelCompat;->mBypassDnd:Z

    .line 302
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    iput v3, v2, Landroidx/core/app/NotificationChannelCompat;->mLockscreenVisibility:I

    .line 303
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 304
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/NotificationChannelCompat;->mCanBubble:Z

    .line 306
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2

    .line 307
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/NotificationChannelCompat;->mImportantConversation:Z

    .line 309
    :cond_2
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 60
    move-object v3, v0

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v4, v3, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    .line 63
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 275
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    .line 276
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    .line 277
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 278
    move-object v3, v0

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v4, v3, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public canBubble()Z
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/NotificationChannelCompat;->mCanBubble:Z

    move v0, v1

    return v0
.end method

.method public canBypassDnd()Z
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/NotificationChannelCompat;->mBypassDnd:Z

    move v0, v1

    return v0
.end method

.method public canShowBadge()Z
    .locals 2

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    move v0, v1

    return v0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    move-object v0, v1

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getImportance()I
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    move v0, v1

    return v0
.end method

.method public getLightColor()I
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    move v0, v1

    return v0
.end method

.method public getLockscreenVisibility()I
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationChannelCompat;->mLockscreenVisibility:I

    move v0, v1

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 8

    .prologue
    .line 317
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 318
    const/4 v2, 0x0

    move-object v0, v2

    .line 332
    :goto_0
    return-object v0

    .line 320
    :cond_0
    new-instance v2, Landroid/app/NotificationChannel;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v1, v2

    .line 321
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 322
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 323
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 324
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 325
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 326
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 327
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 328
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 329
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 330
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getParentChannelId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public getVibrationPattern()[J
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    move-object v0, v1

    return-object v0
.end method

.method public isImportantConversation()Z
    .locals 2

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/NotificationChannelCompat;->mImportantConversation:Z

    move v0, v1

    return v0
.end method

.method public shouldShowLights()Z
    .locals 2

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    move v0, v1

    return v0
.end method

.method public shouldVibrate()Z
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    move v0, v1

    return v0
.end method

.method public toBuilder()Landroidx/core/app/NotificationChannelCompat$Builder;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    new-instance v1, Landroidx/core/app/NotificationChannelCompat$Builder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    .line 341
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 342
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    .line 343
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 344
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setShowBadge(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 345
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationChannelCompat$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    .line 346
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightsEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 347
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightColor(I)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    .line 348
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    .line 349
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationPattern([J)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    .line 350
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationChannelCompat$Builder;->setConversationId(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v1

    .line 340
    move-object v0, v1

    return-object v0
.end method
