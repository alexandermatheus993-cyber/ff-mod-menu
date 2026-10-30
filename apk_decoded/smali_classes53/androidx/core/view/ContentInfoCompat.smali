.class public final Landroidx/core/view/ContentInfoCompat;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ContentInfoCompat$Builder;,
        Landroidx/core/view/ContentInfoCompat$Flags;,
        Landroidx/core/view/ContentInfoCompat$Source;
    }
.end annotation


# static fields
.field public static final FLAG_CONVERT_TO_PLAIN_TEXT:I = 0x1

.field public static final SOURCE_APP:I = 0x0

.field public static final SOURCE_CLIPBOARD:I = 0x1

.field public static final SOURCE_DRAG_AND_DROP:I = 0x3

.field public static final SOURCE_INPUT_METHOD:I = 0x2


# instance fields
.field final mClip:Landroid/content/ClipData;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mExtras:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mFlags:I

.field final mLinkUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mSource:I


# direct methods
.method constructor <init>(Landroidx/core/view/ContentInfoCompat$Builder;)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 138
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    .line 139
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "source"

    invoke-static {v3, v4, v5, v6}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v3

    iput v3, v2, Landroidx/core/view/ContentInfoCompat;->mSource:I

    .line 141
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/core/view/ContentInfoCompat$Builder;->mFlags:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroidx/core/util/Preconditions;->checkFlagsArgument(II)I

    move-result v3

    iput v3, v2, Landroidx/core/view/ContentInfoCompat;->mFlags:I

    .line 142
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/ContentInfoCompat$Builder;->mLinkUri:Landroid/net/Uri;

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat;->mLinkUri:Landroid/net/Uri;

    .line 143
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/ContentInfoCompat$Builder;->mExtras:Landroid/os/Bundle;

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat;->mExtras:Landroid/os/Bundle;

    .line 144
    return-void
.end method

.method private static buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipDescription;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Landroid/content/ClipData;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Landroid/content/ClipDescription;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/content/ClipDescription;-><init>(Landroid/content/ClipDescription;)V

    move-object v7, v1

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipData$Item;

    invoke-direct {v5, v6, v7}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    move-object v2, v4

    .line 255
    const/4 v4, 0x1

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 256
    move-object v4, v2

    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipData$Item;

    invoke-virtual {v4, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method static flagsToString(I)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 120
    move v0, p0

    move v1, v0

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "FLAG_CONVERT_TO_PLAIN_TEXT"

    move-object v0, v1

    .line 123
    :goto_0
    return-object v0

    :cond_0
    move v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method static sourceToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 87
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 93
    move v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    const-string v1, "SOURCE_APP"

    move-object v0, v1

    goto :goto_0

    .line 89
    :pswitch_1
    const-string v1, "SOURCE_CLIPBOARD"

    move-object v0, v1

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v1, "SOURCE_INPUT_METHOD"

    move-object v0, v1

    goto :goto_0

    .line 91
    :pswitch_3
    const-string v1, "SOURCE_DRAG_AND_DROP"

    move-object v0, v1

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    move-object v0, v1

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/ContentInfoCompat;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getFlags()I
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/view/ContentInfoCompat;->mFlags:I

    move v0, v1

    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/ContentInfoCompat;->mLinkUri:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public getSource()I
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/view/ContentInfoCompat;->mSource:I

    move v0, v1

    return v0
.end method

.method public partition(Landroidx/core/util/Predicate;)Landroid/util/Pair;
    .locals 10
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Landroidx/core/view/ContentInfoCompat;",
            "Landroidx/core/view/ContentInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 224
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-interface {v6, v7}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    move v2, v6

    .line 225
    move v6, v2

    if-eqz v6, :cond_0

    move-object v6, v0

    :goto_0
    move v7, v2

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object v0, v6

    .line 249
    :goto_2
    return-object v0

    .line 225
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move-object v7, v0

    goto :goto_1

    .line 227
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 228
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 229
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 230
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    move-object v5, v6

    .line 231
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 232
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 229
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 234
    :cond_3
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    .line 237
    :cond_4
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 238
    const/4 v6, 0x0

    move-object v7, v0

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object v0, v6

    goto :goto_2

    .line 240
    :cond_5
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 241
    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object v0, v6

    goto :goto_2

    .line 243
    :cond_6
    new-instance v6, Landroidx/core/view/ContentInfoCompat$Builder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    .line 244
    invoke-virtual {v7}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    move-object v8, v2

    invoke-static {v7, v8}, Landroidx/core/view/ContentInfoCompat;->buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/view/ContentInfoCompat$Builder;->setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v6

    .line 245
    invoke-virtual {v6}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v6

    move-object v4, v6

    .line 246
    new-instance v6, Landroidx/core/view/ContentInfoCompat$Builder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    .line 247
    invoke-virtual {v7}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    move-object v8, v3

    invoke-static {v7, v8}, Landroidx/core/view/ContentInfoCompat;->buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/view/ContentInfoCompat$Builder;->setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v6

    .line 248
    invoke-virtual {v6}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v6

    move-object v5, v6

    .line 249
    move-object v6, v4

    move-object v7, v5

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentInfoCompat{clip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/view/ContentInfoCompat;->mSource:I

    .line 151
    invoke-static {v2}, Landroidx/core/view/ContentInfoCompat;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/view/ContentInfoCompat;->mFlags:I

    .line 152
    invoke-static {v2}, Landroidx/core/view/ContentInfoCompat;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", linkUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ContentInfoCompat;->mLinkUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/ContentInfoCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    move-object v0, v1

    return-object v0
.end method
