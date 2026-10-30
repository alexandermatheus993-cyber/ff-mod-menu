.class public Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4172
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 4173
    return-void
.end method

.method private createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 13

    .prologue
    .line 4263
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v0

    const/4 v10, 0x1

    sget v11, Landroidx/core/R$layout;->notification_template_custom_big:I

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v9

    move-object v3, v9

    .line 4265
    move-object v9, v3

    sget v10, Landroidx/core/R$id;->actions:I

    invoke-virtual {v9, v10}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4266
    const/4 v9, 0x0

    move v4, v9

    .line 4270
    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 4271
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->getNonContextualActions(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 4273
    move v9, v2

    if-eqz v9, :cond_0

    move-object v9, v5

    if-eqz v9, :cond_0

    .line 4274
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v6, v9

    .line 4275
    move v9, v6

    if-lez v9, :cond_0

    .line 4276
    const/4 v9, 0x1

    move v4, v9

    .line 4277
    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 4278
    move-object v9, v0

    move-object v10, v5

    move v11, v7

    .line 4279
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v9, v10}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v9

    move-object v8, v9

    .line 4280
    move-object v9, v3

    sget v10, Landroidx/core/R$id;->actions:I

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4277
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4284
    :cond_0
    move v9, v4

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    :goto_1
    move v6, v9

    .line 4285
    move-object v9, v3

    sget v10, Landroidx/core/R$id;->actions:I

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4286
    move-object v9, v3

    sget v10, Landroidx/core/R$id;->action_divider:I

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4287
    move-object v9, v0

    move-object v10, v3

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 4288
    move-object v9, v3

    move-object v0, v9

    return-object v0

    .line 4284
    :cond_1
    const/16 v9, 0x8

    goto :goto_1
.end method

.method private generateActionButton(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 12

    .prologue
    .line 4304
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 4305
    new-instance v5, Landroid/widget/RemoteViews;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4306
    move v8, v2

    if-eqz v8, :cond_4

    sget v8, Landroidx/core/R$layout;->notification_action_tombstone:I

    .line 4307
    :goto_1
    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v3, v5

    .line 4308
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    move-object v4, v5

    .line 4309
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 4310
    move-object v5, v3

    sget v6, Landroidx/core/R$id;->action_image:I

    move-object v7, v0

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v9, v9, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 4311
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Landroidx/core/R$color;->notification_action_color_filter:I

    .line 4312
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 4311
    invoke-virtual {v7, v8, v9}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4310
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4314
    :cond_0
    move-object v5, v3

    sget v6, Landroidx/core/R$id;->action_text:I

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4315
    move v5, v2

    if-nez v5, :cond_1

    .line 4316
    move-object v5, v3

    sget v6, Landroidx/core/R$id;->action_container:I

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4318
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2

    .line 4319
    move-object v5, v3

    sget v6, Landroidx/core/R$id;->action_container:I

    move-object v7, v1

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 4321
    :cond_2
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 4304
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 4307
    :cond_4
    sget v8, Landroidx/core/R$layout;->notification_action:I

    goto :goto_1
.end method

.method private static getNonContextualActions(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4293
    move-object v0, p0

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 4300
    :goto_0
    return-object v0

    .line 4294
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 4295
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/NotificationCompat$Action;

    move-object v3, v4

    .line 4296
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4297
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 4299
    :cond_1
    goto :goto_1

    .line 4300
    :cond_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 4200
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4201
    move-object v2, v1

    invoke-interface {v2}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4203
    :cond_0
    return-void
.end method

.method public displayCustomViewInline()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 4191
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 4182
    move-object v0, p0

    const-string v1, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    move-object v0, v1

    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 4228
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 4230
    const/4 v4, 0x0

    move-object v0, v4

    .line 4240
    :goto_0
    return-object v0

    .line 4232
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    move-object v2, v4

    .line 4233
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 4234
    move-object v4, v2

    .line 4235
    :goto_1
    move-object v3, v4

    .line 4236
    move-object v4, v3

    if-nez v4, :cond_2

    .line 4238
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 4235
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    goto :goto_1

    .line 4240
    :cond_2
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 4211
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4213
    const/4 v2, 0x0

    move-object v0, v2

    .line 4219
    :goto_0
    return-object v0

    .line 4215
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4217
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 4219
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 4249
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 4251
    const/4 v4, 0x0

    move-object v0, v4

    .line 4259
    :goto_0
    return-object v0

    .line 4253
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    move-object v2, v4

    .line 4254
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    :goto_1
    move-object v3, v4

    .line 4255
    move-object v4, v2

    if-nez v4, :cond_2

    .line 4257
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 4254
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    goto :goto_1

    .line 4259
    :cond_2
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
