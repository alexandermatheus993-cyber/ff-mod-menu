.class public final Landroidx/core/app/NotificationCompat$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_BIG_PICTURE_AMBIENT:I = 0x20

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY:I = 0x40

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_BRIDGE_TAG:Ljava/lang/String; = "bridgeTag"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISMISSAL_ID:Ljava/lang/String; = "dismissalId"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_FULL_SCREEN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_LARGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_MEDIUM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_SMALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_XSMALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBridgeTag:Ljava/lang/String;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDismissalId:Ljava/lang/String;

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 5333
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5313
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 5314
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 5316
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 5319
    move-object v1, v0

    const v2, 0x800005

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 5320
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 5321
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 5324
    move-object v1, v0

    const/16 v2, 0x50

    iput v2, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 5334
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 12
    .param p1    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 5337
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 5313
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 5314
    move-object v7, v0

    const/4 v8, 0x1

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 5316
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 5319
    move-object v7, v0

    const v8, 0x800005

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 5320
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 5321
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 5324
    move-object v7, v0

    const/16 v8, 0x50

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 5338
    move-object v7, v1

    invoke-static {v7}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v7

    move-object v2, v7

    .line 5339
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    const-string v8, "android.wearable.EXTENSIONS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 5340
    :goto_0
    move-object v3, v7

    .line 5341
    move-object v7, v3

    if-eqz v7, :cond_6

    .line 5342
    move-object v7, v3

    const-string v8, "actions"

    .line 5343
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v4, v7

    .line 5344
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_4

    move-object v7, v4

    if-eqz v7, :cond_4

    .line 5345
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroidx/core/app/NotificationCompat$Action;

    move-object v5, v7

    .line 5346
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 5347
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-lt v7, v8, :cond_2

    .line 5348
    move-object v7, v5

    move v8, v6

    move-object v9, v4

    move v10, v6

    .line 5349
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$Action;

    .line 5348
    invoke-static {v9}, Landroidx/core/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v9

    aput-object v9, v7, v8

    .line 5346
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5340
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 5350
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_0

    .line 5351
    move-object v7, v5

    move v8, v6

    move-object v9, v4

    move v10, v6

    .line 5352
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 5351
    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_2

    .line 5355
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    .line 5358
    :cond_4
    move-object v7, v0

    move-object v8, v3

    const-string v9, "flags"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 5359
    move-object v7, v0

    move-object v8, v3

    const-string v9, "displayIntent"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 5361
    move-object v7, v3

    const-string v8, "pages"

    invoke-static {v7, v8}, Landroidx/core/app/NotificationCompat;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v7

    move-object v5, v7

    .line 5363
    move-object v7, v5

    if-eqz v7, :cond_5

    .line 5364
    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    .line 5367
    :cond_5
    move-object v7, v0

    move-object v8, v3

    const-string v9, "background"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 5368
    move-object v7, v0

    move-object v8, v3

    const-string v9, "contentIcon"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 5369
    move-object v7, v0

    move-object v8, v3

    const-string v9, "contentIconGravity"

    const v10, 0x800005

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 5371
    move-object v7, v0

    move-object v8, v3

    const-string v9, "contentActionIndex"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 5373
    move-object v7, v0

    move-object v8, v3

    const-string v9, "customSizePreset"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 5375
    move-object v7, v0

    move-object v8, v3

    const-string v9, "customContentHeight"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 5376
    move-object v7, v0

    move-object v8, v3

    const-string v9, "gravity"

    const/16 v10, 0x50

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 5377
    move-object v7, v0

    move-object v8, v3

    const-string v9, "hintScreenTimeout"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 5378
    move-object v7, v0

    move-object v8, v3

    const-string v9, "dismissalId"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 5379
    move-object v7, v0

    move-object v8, v3

    const-string v9, "bridgeTag"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 5381
    :cond_6
    return-void
.end method

.method private static getActionFromActionCompat(Landroidx/core/app/NotificationCompat$Action;)Landroid/app/Notification$Action;
    .locals 15
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 5459
    move-object v0, p0

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_2

    .line 5460
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v9

    move-object v2, v9

    .line 5461
    new-instance v9, Landroid/app/Notification$Action$Builder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    .line 5462
    move-object v11, v2

    if-nez v11, :cond_1

    const/4 v11, 0x0

    :goto_0
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    move-object v13, v0

    .line 5463
    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v1, v9

    .line 5474
    :goto_1
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 5475
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v9

    .line 5479
    :goto_2
    move-object v9, v2

    const-string v10, "android.support.allowGeneratedReplies"

    move-object v11, v0

    .line 5480
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v11

    .line 5479
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5481
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v9, v10, :cond_0

    .line 5482
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    .line 5484
    :cond_0
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    .line 5485
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v9

    move-object v3, v9

    .line 5486
    move-object v9, v3

    if-eqz v9, :cond_5

    .line 5487
    move-object v9, v3

    invoke-static {v9}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v9

    move-object v4, v9

    .line 5488
    move-object v9, v4

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_3
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_5

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 5489
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    .line 5488
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5462
    :cond_1
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    goto :goto_0

    .line 5465
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v9

    move-object v2, v9

    .line 5466
    const/4 v9, 0x0

    move v3, v9

    .line 5467
    move-object v9, v2

    if-eqz v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 5468
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v9

    move v3, v9

    .line 5470
    :cond_3
    new-instance v9, Landroid/app/Notification$Action$Builder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v3

    move-object v12, v0

    .line 5471
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v1, v9

    goto/16 :goto_1

    .line 5477
    :cond_4
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v2, v9

    goto/16 :goto_2

    .line 5492
    :cond_5
    move-object v9, v1

    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method private setFlag(IZ)V
    .locals 8

    .prologue
    .line 6111
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 6112
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    move v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 6116
    :goto_0
    return-void

    .line 6114
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .param p1    # Landroidx/core/app/NotificationCompat$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5529
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 5530
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addActions(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 5546
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 5547
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addPage(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .param p1    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5628
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 5629
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addPages(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5645
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 5646
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public clearActions()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5556
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5557
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public clearPages()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5657
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5658
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public clone()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5498
    move-object v0, p0

    new-instance v2, Landroidx/core/app/NotificationCompat$WearableExtender;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    move-object v1, v2

    .line 5499
    move-object v2, v1

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 5500
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 5501
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 5502
    move-object v2, v1

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 5503
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 5504
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 5505
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 5506
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 5507
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 5508
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 5509
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 5510
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 5511
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 5512
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 5513
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5188
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$WearableExtender;->clone()Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 11
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5392
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Landroid/os/Bundle;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v2, v6

    .line 5394
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 5395
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_11

    .line 5396
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 5397
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    move-object v5, v6

    .line 5398
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    .line 5399
    move-object v6, v3

    move-object v7, v5

    .line 5400
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$WearableExtender;->getActionFromActionCompat(Landroidx/core/app/NotificationCompat$Action;)Landroid/app/Notification$Action;

    move-result-object v7

    .line 5399
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 5404
    :cond_0
    :goto_1
    goto :goto_0

    .line 5401
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 5402
    move-object v6, v3

    move-object v7, v5

    invoke-static {v7}, Landroidx/core/app/NotificationCompatJellybean;->getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    .line 5405
    :cond_2
    move-object v6, v2

    const-string v7, "actions"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5410
    :cond_3
    :goto_2
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 5411
    move-object v6, v2

    const-string v7, "flags"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5413
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_5

    .line 5414
    move-object v6, v2

    const-string v7, "displayIntent"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5416
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 5417
    move-object v6, v2

    const-string v7, "pages"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 5418
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/app/Notification;

    .line 5417
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5420
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    .line 5421
    move-object v6, v2

    const-string v7, "background"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5423
    :cond_7
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    if-eqz v6, :cond_8

    .line 5424
    move-object v6, v2

    const-string v7, "contentIcon"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5426
    :cond_8
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const v7, 0x800005

    if-eq v6, v7, :cond_9

    .line 5427
    move-object v6, v2

    const-string v7, "contentIconGravity"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5429
    :cond_9
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    .line 5430
    move-object v6, v2

    const-string v7, "contentActionIndex"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5433
    :cond_a
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    if-eqz v6, :cond_b

    .line 5434
    move-object v6, v2

    const-string v7, "customSizePreset"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5436
    :cond_b
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    if-eqz v6, :cond_c

    .line 5437
    move-object v6, v2

    const-string v7, "customContentHeight"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5439
    :cond_c
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    const/16 v7, 0x50

    if-eq v6, v7, :cond_d

    .line 5440
    move-object v6, v2

    const-string v7, "gravity"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5442
    :cond_d
    move-object v6, v0

    iget v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    if-eqz v6, :cond_e

    .line 5443
    move-object v6, v2

    const-string v7, "hintScreenTimeout"

    move-object v8, v0

    iget v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5445
    :cond_e
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 5446
    move-object v6, v2

    const-string v7, "dismissalId"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5448
    :cond_f
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 5449
    move-object v6, v2

    const-string v7, "bridgeTag"

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5452
    :cond_10
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.wearable.EXTENSIONS"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5453
    move-object v6, v1

    move-object v0, v6

    return-object v0

    .line 5407
    :cond_11
    move-object v6, v2

    const-string v7, "actions"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method public getActions()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5564
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5701
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    move-object v0, v1

    return-object v0
.end method

.method public getBridgeTag()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 6107
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getContentAction()I
    .locals 2

    .prologue
    .line 5777
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    move v0, v1

    return v0
.end method

.method public getContentIcon()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5722
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    move v0, v1

    return v0
.end method

.method public getContentIconGravity()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5749
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    move v0, v1

    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 3

    .prologue
    .line 5905
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCustomContentHeight()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5864
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    move v0, v1

    return v0
.end method

.method public getCustomSizePreset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5836
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    move v0, v1

    return v0
.end method

.method public getDismissalId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 6086
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5612
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    move-object v0, v1

    return-object v0
.end method

.method public getGravity()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5804
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    move v0, v1

    return v0
.end method

.method public getHintAmbientBigPicture()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6041
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5986
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintContentIntentLaunchesActivity()Z
    .locals 3

    .prologue
    .line 6064
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintHideIcon()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5930
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintScreenTimeout()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6014
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    move v0, v1

    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5955
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPages()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5671
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 3

    .prologue
    .line 5883
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5686
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 5687
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setBridgeTag(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 6098
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 6099
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentAction(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5763
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 5764
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentIcon(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5711
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 5712
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentIconGravity(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5735
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 5736
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setContentIntentAvailableOffline(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5894
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 5895
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomContentHeight(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5850
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 5851
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomSizePreset(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5820
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 5821
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setDismissalId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 6077
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 6078
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5600
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 5601
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setGravity(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5790
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 5791
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHintAmbientBigPicture(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6027
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, 0x20

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 6028
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5971
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, 0x10

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 5972
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHintContentIntentLaunchesActivity(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 6053
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, 0x40

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 6054
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHintHideIcon(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5917
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 5918
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHintScreenTimeout(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6000
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 6001
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHintShowBackgroundOnly(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5942
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x4

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 5943
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setStartScrollBottom(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 5873
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/16 v3, 0x8

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 5874
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
