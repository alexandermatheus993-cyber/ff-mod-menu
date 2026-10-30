.class Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 6999
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7000
    return-void
.end method

.method static fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 7
    .param p0    # Landroid/app/Notification$BubbleMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .prologue
    .line 7052
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    .line 7053
    const/4 v2, 0x0

    move-object v0, v2

    .line 7075
    :goto_0
    return-object v0

    .line 7055
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7057
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 7059
    :cond_1
    new-instance v2, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 7060
    invoke-virtual {v4}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v4

    move-object v5, v0

    .line 7061
    invoke-virtual {v5}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V

    move-object v3, v0

    .line 7062
    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7063
    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7065
    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v3

    .line 7064
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    move-object v1, v2

    .line 7067
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v2

    if-eqz v2, :cond_2

    .line 7068
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    .line 7071
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 7072
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    .line 7075
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->build()Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 5
    .param p0    # Landroidx/core/app/NotificationCompat$BubbleMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .prologue
    .line 7013
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    .line 7014
    const/4 v2, 0x0

    move-object v0, v2

    .line 7038
    :goto_0
    return-object v0

    .line 7016
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7018
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 7021
    :cond_1
    new-instance v2, Landroid/app/Notification$BubbleMetadata$Builder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    move-object v3, v0

    .line 7023
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7024
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7025
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7026
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7027
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    move-object v1, v2

    .line 7029
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v2

    if-eqz v2, :cond_2

    .line 7030
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    .line 7033
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 7034
    move-object v2, v1

    move-object v3, v0

    .line 7035
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v3

    .line 7034
    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    .line 7038
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
