.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 2430
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2438
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .locals 9

    .prologue
    .line 2896
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v1, v6

    .line 2897
    move-object v6, v1

    sget v7, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move v2, v6

    .line 2898
    move-object v6, v1

    sget v7, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move v3, v6

    .line 2900
    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    move v4, v6

    .line 2901
    move v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3fa66666    # 1.3f

    invoke-static {v6, v7, v8}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    const v7, 0x3e999998    # 0.29999995f

    div-float/2addr v6, v7

    move v5, v6

    .line 2905
    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v5

    sub-float/2addr v6, v7

    move v7, v2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move v7, v5

    move v8, v3

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v0, v6

    return v0
.end method

.method private static constrain(FFF)F
    .locals 5

    .prologue
    .line 2909
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method static constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2608
    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 2609
    move-object v3, v0

    move-object v1, v3

    const/4 v3, -0x1

    move v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 2622
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    .line 2609
    :sswitch_0
    move-object v3, v1

    const-string v4, "androidx.core.app.NotificationCompat$BigTextStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    :sswitch_1
    move-object v3, v1

    const-string v4, "androidx.core.app.NotificationCompat$BigPictureStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    goto :goto_0

    :sswitch_2
    move-object v3, v1

    const-string v4, "androidx.core.app.NotificationCompat$InboxStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    move v2, v3

    goto :goto_0

    :sswitch_3
    move-object v3, v1

    const-string v4, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    move v2, v3

    goto :goto_0

    :sswitch_4
    move-object v3, v1

    const-string v4, "androidx.core.app.NotificationCompat$MessagingStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    move v2, v3

    goto :goto_0

    .line 2611
    :pswitch_0
    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v0, v3

    goto :goto_1

    .line 2613
    :pswitch_1
    new-instance v3, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    move-object v0, v3

    goto :goto_1

    .line 2615
    :pswitch_2
    new-instance v3, Landroidx/core/app/NotificationCompat$InboxStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    move-object v0, v3

    goto :goto_1

    .line 2617
    :pswitch_3
    new-instance v3, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    move-object v0, v3

    goto :goto_1

    .line 2619
    :pswitch_4
    new-instance v3, Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    move-object v0, v3

    goto :goto_1

    .line 2609
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2ab80d9c -> :sswitch_3
        -0xa3fb04d -> :sswitch_1
        0x366a678b -> :sswitch_2
        0x36cfe824 -> :sswitch_0
        0x7c9f11cd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2580
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 2581
    const/4 v1, 0x0

    move-object v0, v1

    .line 2603
    :goto_0
    return-object v0

    .line 2583
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_5

    .line 2584
    move-object v1, v0

    const-class v2, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2585
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 2587
    :cond_1
    move-object v1, v0

    const-class v2, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2588
    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 2590
    :cond_2
    move-object v1, v0

    const-class v2, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2591
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 2593
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_5

    .line 2594
    move-object v1, v0

    const-class v2, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2595
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 2597
    :cond_4
    move-object v1, v0

    const-class v2, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 2598
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2597
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2599
    new-instance v1, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 2603
    :cond_5
    const/4 v1, 0x0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method static constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .locals 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2629
    move-object v0, p0

    move-object v2, v0

    const-string v3, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v2

    move-object v1, v2

    .line 2630
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2631
    move-object v2, v1

    move-object v0, v2

    .line 2647
    :goto_0
    return-object v0

    .line 2636
    :cond_0
    move-object v2, v0

    const-string v3, "android.selfDisplayName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    const-string v3, "android.messagingStyleUser"

    .line 2637
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2638
    :cond_1
    new-instance v2, Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 2639
    :cond_2
    move-object v2, v0

    const-string v3, "android.picture"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2640
    new-instance v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 2641
    :cond_3
    move-object v2, v0

    const-string v3, "android.bigText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2642
    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 2643
    :cond_4
    move-object v2, v0

    const-string v3, "android.textLines"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2644
    new-instance v2, Landroidx/core/app/NotificationCompat$InboxStyle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 2647
    :cond_5
    move-object v2, v0

    const-string v3, "android.template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method static constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .locals 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2652
    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v3

    move-object v1, v3

    .line 2653
    move-object v3, v1

    if-nez v3, :cond_0

    .line 2654
    const/4 v3, 0x0

    move-object v0, v3

    .line 2660
    :goto_0
    return-object v0

    .line 2657
    :cond_0
    move-object v3, v1

    move-object v4, v0

    :try_start_0
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 2659
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2660
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 2837
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move v6, v1

    invoke-static {v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;
    .locals 15
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2842
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v4, v9

    .line 2843
    move v9, v3

    if-nez v9, :cond_1

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    :goto_0
    move v5, v9

    .line 2844
    move v9, v3

    if-nez v9, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    :goto_1
    move v6, v9

    .line 2845
    move v9, v5

    move v10, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v7, v9

    .line 2846
    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v5

    move v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2847
    move v9, v2

    if-eqz v9, :cond_0

    .line 2848
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v2

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2851
    :cond_0
    new-instance v9, Landroid/graphics/Canvas;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v9

    .line 2852
    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2853
    move-object v9, v7

    move-object v0, v9

    return-object v0

    .line 2843
    :cond_1
    move v9, v3

    goto :goto_0

    .line 2844
    :cond_2
    move v9, v3

    goto :goto_1
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 2858
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    sget v10, Landroidx/core/R$drawable;->notification_icon_background:I

    .line 2859
    move v11, v4

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    move v12, v2

    .line 2858
    invoke-direct {v9, v10, v11, v12}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v5, v9

    .line 2860
    new-instance v9, Landroid/graphics/Canvas;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v9

    .line 2861
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v7, v9

    .line 2862
    move-object v9, v7

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 2863
    move v9, v2

    move v10, v3

    sub-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v8, v9

    .line 2864
    move-object v9, v7

    move v10, v8

    move v11, v8

    move v12, v3

    move v13, v8

    add-int/2addr v12, v13

    move v13, v3

    move v14, v8

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2865
    move-object v9, v7

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, -0x1

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2866
    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2867
    move-object v9, v5

    move-object v0, v9

    return-object v0

    .line 2859
    :cond_0
    move v11, v4

    goto :goto_0
.end method

.method public static extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;
    .locals 3
    .param p0    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2570
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 2571
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2572
    const/4 v2, 0x0

    move-object v0, v2

    .line 2574
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Style;->constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .locals 5

    .prologue
    .line 2890
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget v3, Landroidx/core/R$id;->title:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2891
    move-object v2, v1

    sget v3, Landroidx/core/R$id;->text2:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2892
    move-object v2, v1

    sget v3, Landroidx/core/R$id;->text:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2893
    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2530
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    if-eqz v3, :cond_0

    .line 2531
    move-object v3, v1

    const-string v4, "android.summaryText"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2533
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 2534
    move-object v3, v1

    const-string v4, "android.title.big"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2536
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Style;->getClassName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2537
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 2538
    move-object v3, v1

    const-string v4, "androidx.core.app.extra.COMPAT_TEMPLATE"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    :cond_2
    return-void
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2482
    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .locals 25
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2671
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object v7, v15

    .line 2672
    new-instance v15, Landroid/widget/RemoteViews;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v5

    invoke-direct/range {v16 .. v18}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v8, v15

    .line 2673
    const/4 v15, 0x0

    move v9, v15

    .line 2674
    const/4 v15, 0x0

    move v10, v15

    .line 2676
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    const/4 v15, 0x1

    :goto_0
    move v11, v15

    .line 2677
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 2679
    move v15, v11

    if-eqz v15, :cond_a

    .line 2680
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->notification_background:I

    const-string v17, "setBackgroundResource"

    sget v18, Landroidx/core/R$drawable;->notification_bg_low:I

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2682
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const-string v17, "setBackgroundResource"

    sget v18, Landroidx/core/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2692
    :cond_0
    :goto_1
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_d

    .line 2695
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_b

    .line 2696
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2697
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2701
    :goto_2
    move v15, v4

    if-eqz v15, :cond_1

    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v15, v15, Landroid/app/Notification;->icon:I

    if-eqz v15, :cond_1

    .line 2702
    move-object v15, v7

    sget v16, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move v12, v15

    .line 2704
    move v15, v12

    move-object/from16 v16, v7

    sget v17, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    move v13, v15

    .line 2706
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_c

    .line 2707
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v16, v0

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v19, v0

    .line 2711
    invoke-virtual/range {v19 .. v19}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v19

    .line 2707
    invoke-direct/range {v15 .. v19}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v14, v15

    .line 2712
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->right_icon:I

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2717
    :goto_3
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->right_icon:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2738
    :cond_1
    :goto_4
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v15, :cond_2

    .line 2739
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->title:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2741
    :cond_2
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_3

    .line 2742
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2743
    const/4 v15, 0x1

    move v9, v15

    .line 2746
    :cond_3
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    :goto_5
    move v12, v15

    .line 2747
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v15, :cond_10

    .line 2748
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2749
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2750
    const/4 v15, 0x1

    move v9, v15

    .line 2751
    const/4 v15, 0x1

    move v12, v15

    .line 2770
    :goto_6
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_4

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    .line 2771
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2772
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_13

    .line 2773
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text2:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2774
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text2:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2775
    const/4 v15, 0x1

    move v10, v15

    .line 2783
    :cond_4
    :goto_7
    move v15, v10

    if-eqz v15, :cond_6

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    .line 2784
    move v15, v6

    if-eqz v15, :cond_5

    .line 2786
    move-object v15, v7

    sget v16, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    move v13, v15

    .line 2788
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text:I

    const/16 v17, 0x0

    move/from16 v18, v13

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2792
    :cond_5
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->line1:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2795
    :cond_6
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_8

    .line 2796
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz v15, :cond_14

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-lt v15, v0, :cond_14

    .line 2797
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->chronometer:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2798
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->chronometer:I

    const-string v17, "setBase"

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    .line 2799
    invoke-virtual/range {v18 .. v18}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v18

    .line 2800
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v20, v20, v22

    add-long v18, v18, v20

    .line 2798
    invoke-virtual/range {v15 .. v19}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 2801
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->chronometer:I

    const-string v17, "setStarted"

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2802
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    if-eqz v15, :cond_7

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-lt v15, v0, :cond_7

    .line 2803
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->chronometer:I

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 2810
    :cond_7
    :goto_8
    const/4 v15, 0x1

    move v12, v15

    .line 2812
    :cond_8
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->right_side:I

    move/from16 v17, v12

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    :goto_9
    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2813
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->line3:I

    move/from16 v17, v9

    if-eqz v17, :cond_16

    const/16 v17, 0x0

    :goto_a
    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2814
    move-object v15, v8

    move-object v3, v15

    return-object v3

    .line 2676
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 2685
    :cond_a
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->notification_background:I

    const-string v17, "setBackgroundResource"

    sget v18, Landroidx/core/R$drawable;->notification_bg:I

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2687
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const-string v17, "setBackgroundResource"

    sget v18, Landroidx/core/R$drawable;->notification_template_icon_bg:I

    invoke-virtual/range {v15 .. v18}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 2699
    :cond_b
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const/16 v17, 0x8

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 2714
    :cond_c
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->right_icon:I

    move-object/from16 v17, v3

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 2719
    :cond_d
    move v15, v4

    if-eqz v15, :cond_1

    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v15, v15, Landroid/app/Notification;->icon:I

    if-eqz v15, :cond_1

    .line 2720
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2721
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_e

    .line 2722
    move-object v15, v7

    sget v16, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v16, v7

    sget v17, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    .line 2724
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    sub-int v15, v15, v16

    move v12, v15

    .line 2725
    move-object v15, v7

    sget v16, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move v13, v15

    .line 2727
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v16, v0

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v19, v0

    .line 2731
    invoke-virtual/range {v19 .. v19}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v19

    .line 2727
    invoke-direct/range {v15 .. v19}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v14, v15

    .line 2732
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2733
    goto/16 :goto_4

    .line 2734
    :cond_e
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->icon:I

    move-object/from16 v17, v3

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 2746
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 2752
    :cond_10
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-lez v15, :cond_12

    .line 2753
    move-object v15, v7

    sget v16, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move v13, v15

    .line 2755
    move-object v15, v3

    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v15, v15, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    move/from16 v16, v13

    move/from16 v0, v16

    if-le v15, v0, :cond_11

    .line 2756
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    move-object/from16 v17, v7

    sget v18, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2762
    :goto_b
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2763
    const/4 v15, 0x1

    move v9, v15

    .line 2764
    const/4 v15, 0x1

    move v12, v15

    .line 2765
    goto/16 :goto_6

    .line 2759
    :cond_11
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v15

    move-object v14, v15

    .line 2760
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    move-object/from16 v17, v14

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_b

    .line 2766
    :cond_12
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->info:I

    const/16 v17, 0x8

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_6

    .line 2777
    :cond_13
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->text2:I

    const/16 v17, 0x8

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    .line 2807
    :cond_14
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->time:I

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2808
    move-object v15, v8

    sget v16, Landroidx/core/R$id;->time:I

    const-string v17, "setTime"

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_8

    .line 2812
    :cond_15
    const/16 v17, 0x8

    goto/16 :goto_9

    .line 2813
    :cond_16
    const/16 v17, 0x8

    goto/16 :goto_a
.end method

.method public build()Landroid/app/Notification;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2457
    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 2458
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v2, :cond_0

    .line 2459
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move-object v1, v2

    .line 2461
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 9
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2878
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 2879
    move-object v3, v1

    sget v4, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2880
    move-object v3, v1

    sget v4, Landroidx/core/R$id;->notification_main_column:I

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2881
    move-object v3, v1

    sget v4, Landroidx/core/R$id;->notification_main_column:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2882
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 2884
    move-object v3, v1

    sget v4, Landroidx/core/R$id;->notification_main_column_container:I

    const/4 v5, 0x0

    move-object v6, v0

    .line 2885
    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2884
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2887
    :cond_0
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2559
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "android.summaryText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2560
    move-object v2, v1

    const-string v3, "android.title.big"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2561
    move-object v2, v1

    const-string v3, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2562
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2825
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2833
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public displayCustomViewInline()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2490
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2471
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2506
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2498
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2514
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2547
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "android.summaryText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2548
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android.summaryText"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 2549
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    .line 2551
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android.title.big"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2552
    return-void
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2444
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 2445
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2446
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v2, :cond_0

    .line 2447
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 2450
    :cond_0
    return-void
.end method
