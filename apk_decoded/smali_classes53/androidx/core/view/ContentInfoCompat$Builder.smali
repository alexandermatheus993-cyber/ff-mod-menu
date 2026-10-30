.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mClip:Landroid/content/ClipData;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mExtras:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mFlags:I

.field mLinkUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mSource:I


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 5
    .param p1    # Landroid/content/ClipData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 294
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    .line 295
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    .line 296
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .locals 4
    .param p1    # Landroidx/core/view/ContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 280
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/ContentInfoCompat;->mClip:Landroid/content/ClipData;

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    .line 281
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/core/view/ContentInfoCompat;->mSource:I

    iput v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    .line 282
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/core/view/ContentInfoCompat;->mFlags:I

    iput v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mFlags:I

    .line 283
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/ContentInfoCompat;->mLinkUri:Landroid/net/Uri;

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mLinkUri:Landroid/net/Uri;

    .line 284
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/core/view/ContentInfoCompat;->mExtras:Landroid/os/Bundle;

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 285
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    new-instance v1, Landroidx/core/view/ContentInfoCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method public setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 4
    .param p1    # Landroid/content/ClipData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mClip:Landroid/content/ClipData;

    .line 307
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 357
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mFlags:I

    .line 332
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mLinkUri:Landroid/net/Uri;

    .line 345
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSource(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/view/ContentInfoCompat$Builder;->mSource:I

    .line 319
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
