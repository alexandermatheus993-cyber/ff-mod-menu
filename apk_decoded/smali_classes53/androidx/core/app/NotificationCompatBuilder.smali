.class Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroidx/core/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private final mBuilder:Landroid/app/Notification$Builder;

.field private final mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mContext:Landroid/content/Context;

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 15

    .prologue
    .line 68
    move-object v1, p0

    move-object/from16 v2, p1

    move-object v9, v1

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v9, v1

    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 61
    move-object v9, v1

    new-instance v10, Landroid/os/Bundle;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 69
    move-object v9, v1

    move-object v10, v2

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 70
    move-object v9, v1

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    .line 71
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_1

    .line 72
    move-object v9, v1

    new-instance v10, Landroid/app/Notification$Builder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    iget-object v12, v12, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v13, v2

    iget-object v13, v13, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 76
    :goto_0
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object v3, v9

    .line 77
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v3

    iget-wide v10, v10, Landroid/app/Notification;->when:J

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget v10, v10, Landroid/app/Notification;->icon:I

    move-object v11, v3

    iget v11, v11, Landroid/app/Notification;->iconLevel:I

    .line 78
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget-object v10, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 79
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget-object v10, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object v11, v2

    iget-object v11, v11, Landroidx/core/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 80
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget-object v10, v10, Landroid/app/Notification;->vibrate:[J

    .line 81
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget v10, v10, Landroid/app/Notification;->ledARGB:I

    move-object v11, v3

    iget v11, v11, Landroid/app/Notification;->ledOnMS:I

    move-object v12, v3

    iget v12, v12, Landroid/app/Notification;->ledOffMS:I

    .line 82
    invoke-virtual {v9, v10, v11, v12}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget v10, v10, Landroid/app/Notification;->flags:I

    const/4 v11, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    .line 83
    :goto_1
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget v10, v10, Landroid/app/Notification;->flags:I

    const/16 v11, 0x8

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    .line 84
    :goto_2
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget v10, v10, Landroid/app/Notification;->flags:I

    const/16 v11, 0x10

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    .line 85
    :goto_3
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget v10, v10, Landroid/app/Notification;->defaults:I

    .line 86
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 90
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget-object v10, v10, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 91
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object v11, v3

    iget v11, v11, Landroid/app/Notification;->flags:I

    const/16 v12, 0x80

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    .line 92
    :goto_4
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 95
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    move-object v11, v2

    iget v11, v11, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    move-object v12, v2

    iget-boolean v12, v12, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 96
    invoke-virtual {v9, v10, v11, v12}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 97
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_0

    .line 98
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v3

    iget-object v10, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object v11, v3

    iget v11, v11, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 100
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_b

    .line 101
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-boolean v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 102
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 103
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 104
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_5
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/app/NotificationCompat$Action;

    move-object v5, v9

    .line 105
    move-object v9, v1

    move-object v10, v5

    invoke-direct {v9, v10}, Landroidx/core/app/NotificationCompatBuilder;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 106
    goto :goto_5

    .line 74
    :cond_1
    move-object v9, v1

    new-instance v10, Landroid/app/Notification$Builder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    iget-object v12, v12, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 82
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 83
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 84
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 91
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 108
    :cond_6
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v9, :cond_7

    .line 109
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 111
    :cond_7
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-ge v9, v10, :cond_a

    .line 112
    move-object v9, v2

    iget-boolean v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    if-eqz v9, :cond_8

    .line 113
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v10, "android.support.localOnly"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    :cond_8
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 116
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v10, "android.support.groupKey"

    move-object v11, v2

    iget-object v11, v11, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    move-object v9, v2

    iget-boolean v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v9, :cond_f

    .line 118
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v10, "android.support.isGroupSummary"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    :cond_9
    :goto_6
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 125
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v10, "android.support.sortKey"

    move-object v11, v2

    iget-object v11, v11, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_a
    move-object v9, v1

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 130
    move-object v9, v1

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 132
    :cond_b
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_c

    .line 133
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-boolean v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 135
    :cond_c
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_d

    .line 136
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_d

    .line 137
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-static {v9}, Landroidx/core/app/NotificationCompatBuilder;->getPeople(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Landroidx/core/app/NotificationCompatBuilder;->combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v4, v9

    .line 138
    move-object v9, v4

    if-eqz v9, :cond_d

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 139
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v10, "android.people"

    move-object v11, v4

    move-object v12, v4

    .line 140
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 139
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    :cond_d
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-lt v9, v10, :cond_e

    .line 145
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-boolean v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 146
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-boolean v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 147
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 148
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 150
    move-object v9, v1

    move-object v10, v2

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    iput v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 152
    :cond_e
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_14

    .line 153
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 154
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 155
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 156
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v3

    iget-object v10, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object v11, v3

    iget-object v11, v11, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 157
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 161
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-ge v9, v10, :cond_10

    .line 162
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-static {v9}, Landroidx/core/app/NotificationCompatBuilder;->getPeople(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Landroidx/core/app/NotificationCompatBuilder;->combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v4, v9

    .line 166
    :goto_7
    move-object v9, v4

    if-eqz v9, :cond_11

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 167
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_8
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v6, v9

    .line 168
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 169
    goto :goto_8

    .line 120
    :cond_f
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v10, "android.support.useSideChannel"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 164
    :cond_10
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    move-object v4, v9

    goto :goto_7

    .line 172
    :cond_11
    move-object v9, v1

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 174
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_14

    .line 177
    move-object v9, v2

    .line 178
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "android.car.EXTENSIONS"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    move-object v5, v9

    .line 179
    move-object v9, v5

    if-nez v9, :cond_12

    .line 180
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v5, v9

    .line 182
    :cond_12
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v5

    invoke-direct {v10, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v6, v9

    .line 183
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v7, v9

    .line 184
    const/4 v9, 0x0

    move v8, v9

    :goto_9
    move v9, v8

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_13

    .line 185
    move-object v9, v7

    move v10, v8

    .line 186
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v2

    iget-object v11, v11, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    move v12, v8

    .line 188
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/app/NotificationCompat$Action;

    .line 187
    invoke-static {v11}, Landroidx/core/app/NotificationCompatJellybean;->getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v11

    .line 185
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 190
    :cond_13
    move-object v9, v5

    const-string v10, "invisible_actions"

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 192
    move-object v9, v6

    const-string v10, "invisible_actions"

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 194
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "android.car.EXTENSIONS"

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v10, "android.car.EXTENSIONS"

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    :cond_14
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_15

    .line 201
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v9, :cond_15

    .line 202
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 205
    :cond_15
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v9, v10, :cond_18

    .line 206
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 208
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v9, :cond_16

    .line 209
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 211
    :cond_16
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v9, :cond_17

    .line 212
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 214
    :cond_17
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v9, :cond_18

    .line 215
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 218
    :cond_18
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_1a

    .line 219
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 221
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget-wide v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 222
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object v10, v2

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 223
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 224
    move-object v9, v2

    iget-boolean v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    if-eqz v9, :cond_19

    .line 225
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-boolean v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 228
    :cond_19
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 229
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 230
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 231
    invoke-virtual {v9, v10, v11, v12}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 232
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 235
    :cond_1a
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_1b

    .line 236
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_a
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/app/Person;

    move-object v5, v9

    .line 237
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 238
    goto :goto_a

    .line 240
    :cond_1b
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1d

    if-lt v9, v10, :cond_1c

    .line 241
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-boolean v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 244
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 245
    invoke-static {v10}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v10

    .line 244
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 246
    move-object v9, v2

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    if-eqz v9, :cond_1c

    .line 247
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v2

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    invoke-virtual {v10}, Landroidx/core/content/LocusIdCompat;->toLocusId()Landroid/content/LocusId;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 251
    :cond_1c
    move-object v9, v2

    iget-boolean v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    if-eqz v9, :cond_1e

    .line 252
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v9, :cond_1f

    .line 253
    move-object v9, v1

    const/4 v10, 0x2

    iput v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 258
    :goto_b
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 259
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 260
    move-object v9, v3

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/app/Notification;->defaults:I

    const/4 v11, -0x2

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Landroid/app/Notification;->defaults:I

    .line 261
    move-object v9, v3

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/app/Notification;->defaults:I

    const/4 v11, -0x3

    and-int/lit8 v10, v10, -0x3

    iput v10, v9, Landroid/app/Notification;->defaults:I

    .line 262
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v3

    iget v10, v10, Landroid/app/Notification;->defaults:I

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 264
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_1e

    .line 265
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 266
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    const-string v10, "silent"

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 268
    :cond_1d
    move-object v9, v1

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v1

    iget v10, v10, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 271
    :cond_1e
    return-void

    .line 255
    :cond_1f
    move-object v9, v1

    const/4 v10, 0x1

    iput v10, v9, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    goto :goto_b
.end method

.method private addAction(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 14

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x14

    if-lt v8, v9, :cond_9

    .line 351
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    move-object v3, v8

    .line 352
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_1

    .line 353
    new-instance v8, Landroid/app/Notification$Action$Builder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 354
    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    :goto_0
    move-object v11, v1

    .line 355
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    move-object v12, v1

    .line 356
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v2, v8

    .line 363
    :goto_1
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 364
    move-object v8, v1

    .line 365
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v8

    .line 364
    invoke-static {v8}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 366
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object v8

    .line 364
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 354
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 358
    :cond_1
    new-instance v8, Landroid/app/Notification$Action$Builder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 359
    move-object v10, v3

    if-eqz v10, :cond_2

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v10

    :goto_3
    move-object v11, v1

    .line 360
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    move-object v12, v1

    .line 361
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v2, v8

    goto :goto_1

    .line 359
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 370
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 371
    new-instance v8, Landroid/os/Bundle;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v4, v8

    .line 375
    :goto_4
    move-object v8, v4

    const-string v9, "android.support.allowGeneratedReplies"

    move-object v10, v1

    .line 376
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v10

    .line 375
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v8, v9, :cond_4

    .line 378
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v8

    .line 381
    :cond_4
    move-object v8, v4

    const-string v9, "android.support.action.semanticAction"

    move-object v10, v1

    .line 382
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v10

    .line 381
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_5

    .line 384
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    move-result-object v8

    .line 387
    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_6

    .line 388
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v8

    .line 391
    :cond_6
    move-object v8, v4

    const-string v9, "android.support.action.showsUserInterface"

    move-object v10, v1

    .line 392
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v10

    .line 391
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v8

    .line 394
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v9, v2

    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 399
    :cond_7
    :goto_5
    return-void

    .line 373
    :cond_8
    new-instance v8, Landroid/os/Bundle;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v4, v8

    goto :goto_4

    .line 395
    :cond_9
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_7

    .line 396
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v10, v1

    .line 397
    invoke-static {v9, v10}, Landroidx/core/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v9

    .line 396
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_5
.end method

.method private static combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    if-nez v3, :cond_0

    .line 277
    move-object v3, v1

    move-object v0, v3

    .line 285
    :goto_0
    return-object v0

    .line 279
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 280
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 282
    :cond_1
    new-instance v3, Landroidx/collection/ArraySet;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Landroidx/collection/ArraySet;-><init>(I)V

    move-object v2, v3

    .line 283
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 284
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 285
    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private static getPeople(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/Person;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    move-object v4, v0

    if-nez v4, :cond_0

    .line 291
    const/4 v4, 0x0

    move-object v0, v4

    .line 297
    :goto_0
    return-object v0

    .line 293
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 294
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/Person;

    move-object v3, v4

    .line 295
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 296
    goto :goto_1

    .line 297
    :cond_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .locals 6

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 528
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->vibrate:[J

    .line 529
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/app/Notification;->defaults:I

    const/4 v4, -0x2

    and-int/lit8 v3, v3, -0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 530
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/app/Notification;->defaults:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 531
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 7

    .prologue
    .line 310
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    move-object v1, v5

    .line 311
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 312
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 315
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_5

    .line 316
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 317
    :goto_0
    move-object v2, v5

    .line 318
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompatBuilder;->buildInternal()Landroid/app/Notification;

    move-result-object v5

    move-object v3, v5

    .line 319
    move-object v5, v2

    if-eqz v5, :cond_6

    .line 320
    move-object v5, v3

    move-object v6, v2

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 324
    :cond_1
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    move-object v5, v1

    if-eqz v5, :cond_2

    .line 325
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v5

    move-object v4, v5

    .line 326
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 327
    move-object v5, v3

    move-object v6, v4

    iput-object v6, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 330
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    move-object v5, v1

    if-eqz v5, :cond_3

    .line 331
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    move-object v6, v0

    .line 332
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v5

    move-object v4, v5

    .line 333
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 334
    move-object v5, v3

    move-object v6, v4

    iput-object v6, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 338
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_4

    move-object v5, v1

    if-eqz v5, :cond_4

    .line 339
    move-object v5, v3

    invoke-static {v5}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 340
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 341
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 345
    :cond_4
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 317
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 321
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_1

    .line 322
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1
.end method

.method protected buildInternal()Landroid/app/Notification;
    .locals 10

    .prologue
    .line 403
    move-object v0, p0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_0

    .line 404
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v0, v6

    .line 522
    :goto_0
    return-object v0

    .line 405
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_3

    .line 406
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v1, v6

    .line 408
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v6, :cond_2

    .line 410
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_1

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 413
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 416
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_2

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 419
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 423
    :cond_2
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 424
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_9

    .line 425
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 426
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v1, v6

    .line 427
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_4

    .line 428
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 430
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_5

    .line 431
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 433
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_6

    .line 434
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 437
    :cond_6
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v6, :cond_8

    .line 439
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_7

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 442
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 445
    :cond_7
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_8

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 448
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 451
    :cond_8
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0

    .line 452
    :cond_9
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_e

    .line 453
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 454
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v1, v6

    .line 455
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_a

    .line 456
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 458
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_b

    .line 459
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 462
    :cond_b
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v6, :cond_d

    .line 464
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_c

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 467
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 470
    :cond_c
    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    move-object v6, v1

    iget v6, v6, Landroid/app/Notification;->flags:I

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_d

    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 473
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 477
    :cond_d
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0

    .line 478
    :cond_e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_12

    .line 479
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 480
    invoke-static {v6}, Landroidx/core/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v6

    move-object v1, v6

    .line 481
    move-object v6, v1

    if-eqz v6, :cond_f

    .line 483
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.support.actionExtras"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 486
    :cond_f
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 487
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v2, v6

    .line 488
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_10

    .line 489
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 491
    :cond_10
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_11

    .line 492
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 494
    :cond_11
    move-object v6, v2

    move-object v0, v6

    goto/16 :goto_0

    .line 495
    :cond_12
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_18

    .line 496
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    move-object v1, v6

    .line 499
    move-object v6, v1

    invoke-static {v6}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v6

    move-object v2, v6

    .line 500
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v6

    .line 501
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 502
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 503
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 505
    :cond_13
    goto :goto_1

    .line 506
    :cond_14
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 507
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 508
    invoke-static {v6}, Landroidx/core/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v6

    move-object v4, v6

    .line 509
    move-object v6, v4

    if-eqz v6, :cond_15

    .line 511
    move-object v6, v1

    invoke-static {v6}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.support.actionExtras"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 514
    :cond_15
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_16

    .line 515
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 517
    :cond_16
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_17

    .line 518
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 520
    :cond_17
    move-object v6, v1

    move-object v0, v6

    goto/16 :goto_0

    .line 522
    :cond_18
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    move-object v0, v1

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method
