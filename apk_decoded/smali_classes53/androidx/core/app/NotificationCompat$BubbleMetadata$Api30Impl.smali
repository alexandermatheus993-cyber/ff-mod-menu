.class Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 7082
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7083
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
        value = 0x1e
    .end annotation

    .prologue
    .line 7137
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    .line 7138
    const/4 v2, 0x0

    move-object v0, v2

    .line 7162
    :goto_0
    return-object v0

    .line 7141
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .line 7142
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7143
    new-instance v2, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 7148
    :goto_1
    move-object v2, v1

    move-object v3, v0

    .line 7149
    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7150
    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7152
    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v3

    .line 7151
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    .line 7154
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v2

    if-eqz v2, :cond_1

    .line 7155
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    .line 7158
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 7159
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v2

    .line 7162
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->build()Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 7145
    :cond_3
    new-instance v2, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v4

    move-object v5, v0

    .line 7146
    invoke-virtual {v5}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V

    move-object v1, v2

    goto :goto_1
.end method

.method static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 7
    .param p0    # Landroidx/core/app/NotificationCompat$BubbleMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 7096
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    .line 7097
    const/4 v2, 0x0

    move-object v0, v2

    .line 7123
    :goto_0
    return-object v0

    .line 7100
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .line 7101
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7102
    new-instance v2, Landroid/app/Notification$BubbleMetadata$Builder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 7103
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 7109
    :goto_1
    move-object v2, v1

    move-object v3, v0

    .line 7110
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7111
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    move-object v3, v0

    .line 7112
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    .line 7114
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v2

    if-eqz v2, :cond_1

    .line 7115
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    .line 7118
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 7119
    move-object v2, v1

    move-object v3, v0

    .line 7120
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v3

    .line 7119
    invoke-virtual {v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v2

    .line 7123
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 7105
    :cond_3
    new-instance v2, Landroid/app/Notification$BubbleMetadata$Builder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 7107
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V

    move-object v1, v2

    goto :goto_1
.end method
