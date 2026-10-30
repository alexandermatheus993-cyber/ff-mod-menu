.class public final Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/RemoteInput$Builder;,
        Landroidx/core/app/RemoteInput$EditChoicesBeforeSending;,
        Landroidx/core/app/RemoteInput$Source;
    }
.end annotation


# static fields
.field public static final EDIT_CHOICES_BEFORE_SENDING_AUTO:I = 0x0

.field public static final EDIT_CHOICES_BEFORE_SENDING_DISABLED:I = 0x1

.field public static final EDIT_CHOICES_BEFORE_SENDING_ENABLED:I = 0x2

.field private static final EXTRA_DATA_TYPE_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.dataTypeResultsData"

.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final EXTRA_RESULTS_SOURCE:Ljava/lang/String; = "android.remoteinput.resultsSource"

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field public static final SOURCE_CHOICE:I = 0x1

.field public static final SOURCE_FREE_FORM_INPUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteInput"


# instance fields
.field private final mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoices:[Ljava/lang/CharSequence;

.field private final mEditChoicesBeforeSending:I

.field private final mExtras:Landroid/os/Bundle;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 97
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 98
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 99
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 100
    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    .line 101
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    .line 102
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 103
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    .line 104
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    move-object v8, v0

    .line 105
    invoke-virtual {v8}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v8

    if-nez v8, :cond_0

    .line 106
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 109
    :cond_0
    return-void
.end method

.method public static addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/RemoteInput;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_1

    .line 467
    move-object v9, v0

    invoke-static {v9}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    invoke-static {v9, v10, v11}, Landroid/app/RemoteInput;->addDataResultToIntent(Landroid/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_0

    .line 469
    move-object v9, v1

    invoke-static {v9}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    move-object v3, v9

    .line 470
    move-object v9, v3

    if-nez v9, :cond_2

    .line 471
    new-instance v9, Landroid/content/Intent;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    move-object v3, v9

    .line 473
    :cond_2
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_1
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v5, v9

    .line 474
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v6, v9

    .line 475
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    move-object v7, v9

    .line 476
    move-object v9, v6

    if-nez v9, :cond_3

    .line 477
    goto :goto_1

    .line 479
    :cond_3
    move-object v9, v3

    move-object v10, v6

    .line 480
    invoke-static {v10}, Landroidx/core/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    move-object v8, v9

    .line 481
    move-object v9, v8

    if-nez v9, :cond_4

    .line 482
    new-instance v9, Landroid/os/Bundle;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v8, v9

    .line 484
    :cond_4
    move-object v9, v8

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    move-object v9, v3

    move-object v10, v6

    invoke-static {v10}, Landroidx/core/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    .line 486
    goto :goto_1

    .line 487
    :cond_5
    move-object v9, v1

    const-string v10, "android.remoteinput.results"

    move-object v11, v3

    invoke-static {v10, v11}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto/16 :goto_0
.end method

.method public static addResultsToIntent([Landroidx/core/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 15

    .prologue
    .line 402
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_1

    .line 403
    move-object v11, v0

    invoke-static {v11}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v11

    move-object v12, v1

    move-object v13, v2

    invoke-static {v11, v12, v13}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-lt v11, v12, :cond_5

    .line 408
    move-object v11, v1

    .line 409
    invoke-static {v11}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v11

    move-object v3, v11

    .line 412
    move-object v11, v1

    invoke-static {v11}, Landroidx/core/app/RemoteInput;->getResultsSource(Landroid/content/Intent;)I

    move-result v11

    move v4, v11

    .line 414
    move-object v11, v3

    if-nez v11, :cond_3

    .line 415
    move-object v11, v2

    move-object v3, v11

    .line 419
    :goto_1
    move-object v11, v0

    move-object v5, v11

    move-object v11, v5

    array-length v11, v11

    move v6, v11

    const/4 v11, 0x0

    move v7, v11

    :goto_2
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_4

    move-object v11, v5

    move v12, v7

    aget-object v11, v11, v12

    move-object v8, v11

    .line 421
    move-object v11, v1

    move-object v12, v8

    .line 423
    invoke-virtual {v12}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v12

    .line 422
    invoke-static {v11, v12}, Landroidx/core/app/RemoteInput;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    move-object v9, v11

    .line 424
    const/4 v11, 0x1

    new-array v11, v11, [Landroidx/core/app/RemoteInput;

    move-object v10, v11

    .line 425
    move-object v11, v10

    const/4 v12, 0x0

    move-object v13, v8

    aput-object v13, v11, v12

    .line 426
    move-object v11, v10

    .line 427
    invoke-static {v11}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v11

    move-object v12, v1

    move-object v13, v3

    .line 426
    invoke-static {v11, v12, v13}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 428
    move-object v11, v9

    if-eqz v11, :cond_2

    .line 429
    move-object v11, v8

    move-object v12, v1

    move-object v13, v9

    invoke-static {v11, v12, v13}, Landroidx/core/app/RemoteInput;->addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    .line 419
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 417
    :cond_3
    move-object v11, v3

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    .line 434
    :cond_4
    move-object v11, v1

    move v12, v4

    invoke-static {v11, v12}, Landroidx/core/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 435
    goto :goto_0

    :cond_5
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_0

    .line 436
    move-object v11, v1

    invoke-static {v11}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v11

    move-object v3, v11

    .line 437
    move-object v11, v3

    if-nez v11, :cond_6

    .line 438
    new-instance v11, Landroid/content/Intent;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object v3, v11

    .line 440
    :cond_6
    move-object v11, v3

    const-string v12, "android.remoteinput.resultsData"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    move-object v4, v11

    .line 441
    move-object v11, v4

    if-nez v11, :cond_7

    .line 442
    new-instance v11, Landroid/os/Bundle;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v4, v11

    .line 444
    :cond_7
    move-object v11, v0

    move-object v5, v11

    move-object v11, v5

    array-length v11, v11

    move v6, v11

    const/4 v11, 0x0

    move v7, v11

    :goto_3
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_9

    move-object v11, v5

    move v12, v7

    aget-object v11, v11, v12

    move-object v8, v11

    .line 445
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v12}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    .line 446
    move-object v11, v9

    instance-of v11, v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_8

    .line 447
    move-object v11, v4

    move-object v12, v8

    .line 448
    invoke-virtual {v12}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v12

    move-object v13, v9

    check-cast v13, Ljava/lang/CharSequence;

    .line 447
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 444
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 451
    :cond_9
    move-object v11, v3

    const-string v12, "android.remoteinput.resultsData"

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    .line 452
    move-object v11, v1

    const-string v12, "android.remoteinput.results"

    move-object v13, v3

    invoke-static {v12, v13}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto/16 :goto_0
.end method

.method static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    new-instance v2, Landroid/app/RemoteInput$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    .line 562
    invoke-virtual {v4}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 563
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    move-object v3, v0

    .line 564
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    move-object v3, v0

    .line 565
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    move-object v3, v0

    .line 566
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    move-object v1, v2

    .line 567
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 568
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    .line 570
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 549
    move-object v0, p0

    move-object v3, v0

    if-nez v3, :cond_0

    .line 550
    const/4 v3, 0x0

    move-object v0, v3

    .line 556
    :goto_0
    return-object v0

    .line 552
    :cond_0
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Landroid/app/RemoteInput;

    move-object v1, v3

    .line 553
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 554
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget-object v5, v5, v6

    invoke-static {v5}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v5

    aput-object v5, v3, v4

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 556
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method static fromPlatform(Landroid/app/RemoteInput;)Landroidx/core/app/RemoteInput;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 575
    move-object v0, p0

    new-instance v2, Landroidx/core/app/RemoteInput$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    .line 576
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 577
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v2

    move-object v3, v0

    .line 578
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v2

    move-object v3, v0

    .line 579
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v2

    move-object v3, v0

    .line 580
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v2

    move-object v1, v2

    .line 581
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 582
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v2

    .line 584
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .prologue
    .line 589
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    move-object v1, v3

    .line 590
    move-object v3, v1

    if-nez v3, :cond_0

    .line 591
    const/4 v3, 0x0

    move-object v0, v3

    .line 600
    :goto_0
    return-object v0

    .line 593
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    move-object v2, v3

    .line 594
    move-object v3, v2

    const-string v4, "text/vnd.android.intent"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 595
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 597
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.remoteinput.results"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 598
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 600
    :cond_2
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, p1

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_0

    .line 339
    move-object v10, v0

    move-object v11, v1

    invoke-static {v10, v11}, Landroid/app/RemoteInput;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    move-object v0, v10

    .line 363
    :goto_0
    return-object v0

    .line 340
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_8

    .line 341
    move-object v10, v0

    invoke-static {v10}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    move-object v2, v10

    .line 342
    move-object v10, v2

    if-nez v10, :cond_1

    .line 343
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 345
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v3, v10

    .line 346
    move-object v10, v2

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    move-object v4, v10

    .line 347
    move-object v10, v4

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :cond_2
    :goto_1
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    .line 348
    move-object v10, v6

    const-string v11, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 349
    move-object v10, v6

    const-string v11, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 350
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 351
    goto :goto_1

    .line 353
    :cond_3
    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    move-object v8, v10

    .line 354
    move-object v10, v8

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 355
    move-object v10, v9

    if-eqz v10, :cond_2

    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 356
    goto :goto_1

    .line 358
    :cond_4
    move-object v10, v3

    move-object v11, v7

    move-object v12, v9

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 360
    :cond_5
    goto :goto_1

    .line 361
    :cond_6
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    :goto_2
    move-object v0, v10

    goto/16 :goto_0

    :cond_7
    move-object v10, v3

    goto :goto_2

    .line 363
    :cond_8
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0
.end method

.method private static getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 544
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 376
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 377
    move-object v2, v0

    invoke-static {v2}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    .line 385
    :goto_0
    return-object v0

    .line 378
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 379
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 380
    move-object v2, v1

    if-nez v2, :cond_1

    .line 381
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 383
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.remoteinput.resultsData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v0, v2

    goto :goto_0

    .line 385
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static getResultsSource(Landroid/content/Intent;)I
    .locals 5
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 530
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 531
    move-object v2, v0

    invoke-static {v2}, Landroid/app/RemoteInput;->getResultsSource(Landroid/content/Intent;)I

    move-result v2

    move v0, v2

    .line 539
    :goto_0
    return v0

    .line 532
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 533
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 534
    move-object v2, v1

    if-nez v2, :cond_1

    .line 535
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 537
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.remoteinput.resultsSource"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 539
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static setResultsSource(Landroid/content/Intent;I)V
    .locals 7
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 505
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_1

    .line 506
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 508
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 509
    move-object v3, v2

    if-nez v3, :cond_2

    .line 510
    new-instance v3, Landroid/content/Intent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v2, v3

    .line 512
    :cond_2
    move-object v3, v2

    const-string v4, "android.remoteinput.resultsSource"

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 513
    move-object v3, v0

    const-string v4, "android.remoteinput.results"

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    move v0, v1

    return v0
.end method

.method public getAllowedDataTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getEditChoicesBeforeSending()I
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    move v0, v1

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isDataOnly()Z
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 144
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    .line 145
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 146
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 143
    :goto_0
    move v0, v1

    return v0

    .line 146
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
