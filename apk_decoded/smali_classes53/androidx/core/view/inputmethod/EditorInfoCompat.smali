.class public final Landroidx/core/view/inputmethod/EditorInfoCompat;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;
    }
.end annotation


# static fields
.field private static final CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final CONTENT_MIME_TYPES_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final CONTENT_SELECTION_END_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

.field private static final CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

.field private static final CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000

.field static final MAX_INITIAL_SELECTION_LENGTH:I = 0x400
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MEMORY_EFFICIENT_TEXT_LENGTH:I = 0x800
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 528
    return-void
.end method

.method public static getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_1

    .line 182
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    move-object v1, v2

    .line 183
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .line 192
    :goto_1
    return-object v0

    .line 183
    :cond_0
    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 186
    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v0, v2

    goto :goto_1

    .line 188
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 189
    move-object v2, v1

    if-nez v2, :cond_3

    .line 190
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 192
    :cond_3
    move-object v2, v1

    if-eqz v2, :cond_4

    move-object v2, v1

    :goto_2
    move-object v0, v2

    goto :goto_1

    :cond_4
    sget-object v2, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_2
.end method

.method public static getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;
    .locals 11
    .param p0    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    move v1, p1

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_0

    .line 392
    move-object v8, v0

    move v9, v1

    invoke-static {v8, v9}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v0, v8

    .line 418
    :goto_0
    return-object v0

    .line 395
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v8, :cond_1

    .line 396
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 400
    :cond_1
    move-object v8, v0

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move-object v9, v0

    iget v9, v9, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v8, v9, :cond_3

    .line 401
    move-object v8, v0

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    :goto_1
    move v2, v8

    .line 402
    move-object v8, v0

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move-object v9, v0

    iget v9, v9, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v8, v9, :cond_4

    .line 403
    move-object v8, v0

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    :goto_2
    move v3, v8

    .line 405
    move-object v8, v0

    iget-object v8, v8, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v9, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 406
    move-object v8, v0

    iget-object v8, v8, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v9, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move v5, v8

    .line 407
    move v8, v3

    move v9, v2

    sub-int/2addr v8, v9

    move v6, v8

    .line 408
    move-object v8, v0

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-ltz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-ltz v8, :cond_2

    move v8, v5

    move v9, v4

    sub-int/2addr v8, v9

    move v9, v6

    if-eq v8, v9, :cond_5

    .line 410
    :cond_2
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 401
    :cond_3
    move-object v8, v0

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    goto :goto_1

    .line 403
    :cond_4
    move-object v8, v0

    iget v8, v8, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    goto :goto_2

    .line 412
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v9, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    .line 413
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v7, v8

    .line 415
    move-object v8, v7

    if-nez v8, :cond_6

    .line 416
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 418
    :cond_6
    move v8, v1

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    .line 419
    move-object v8, v7

    move v9, v4

    move v10, v5

    invoke-interface {v8, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 418
    :goto_3
    move-object v0, v8

    goto :goto_0

    .line 420
    :cond_7
    move-object v8, v7

    move v9, v4

    move v10, v5

    invoke-static {v8, v9, v10}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method public static getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 10
    .param p0    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_0

    .line 438
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    .line 453
    :goto_0
    return-object v0

    .line 441
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v6, :cond_1

    .line 442
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 445
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v7, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    .line 446
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v6

    .line 448
    move-object v6, v3

    if-nez v6, :cond_2

    .line 449
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 451
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v7, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 452
    move v6, v1

    move-object v7, v3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v8, v4

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 453
    move v6, v2

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 454
    move-object v6, v3

    move v7, v4

    move v8, v4

    move v9, v5

    add-int/2addr v8, v9

    invoke-interface {v6, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 453
    :goto_1
    move-object v0, v6

    goto :goto_0

    .line 455
    :cond_3
    move-object v6, v3

    move v7, v4

    move v8, v4

    move v9, v5

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 9
    .param p0    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_0

    .line 357
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    .line 373
    :goto_0
    return-object v0

    .line 360
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v6, :cond_1

    .line 361
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 364
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v7, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    .line 365
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v6

    .line 367
    move-object v6, v3

    if-nez v6, :cond_2

    .line 368
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 371
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v7, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 372
    move v6, v1

    move v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 373
    move v6, v2

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 374
    move-object v6, v3

    move v7, v4

    move v8, v5

    sub-int/2addr v7, v8

    move v8, v4

    invoke-interface {v6, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 373
    :goto_1
    move-object v0, v6

    goto :goto_0

    .line 375
    :cond_3
    move-object v6, v3

    move v7, v4

    move v8, v5

    sub-int/2addr v7, v8

    move v8, v4

    invoke-static {v6, v7, v8}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method static getProtocol(Landroid/view/inputmethod/EditorInfo;)I
    .locals 5

    .prologue
    .line 504
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_0

    .line 505
    const/4 v3, 0x1

    move v0, v3

    .line 521
    :goto_0
    return v0

    .line 507
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 508
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 510
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v4, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    move v1, v3

    .line 511
    move-object v3, v0

    iget-object v3, v3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v4, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    .line 512
    move v3, v1

    if-eqz v3, :cond_2

    move v3, v2

    if-eqz v3, :cond_2

    .line 513
    const/4 v3, 0x4

    move v0, v3

    goto :goto_0

    .line 515
    :cond_2
    move v3, v1

    if-eqz v3, :cond_3

    .line 516
    const/4 v3, 0x3

    move v0, v3

    goto :goto_0

    .line 518
    :cond_3
    move v3, v2

    if-eqz v3, :cond_4

    .line 519
    const/4 v3, 0x2

    move v0, v3

    goto :goto_0

    .line 521
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private static isCutOnSurrogate(Ljava/lang/CharSequence;II)Z
    .locals 5

    .prologue
    .line 460
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 466
    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    .line 462
    :pswitch_0
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 464
    :pswitch_1
    move-object v3, v0

    move v4, v1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isPasswordInputType(I)Z
    .locals 4

    .prologue
    .line 471
    move v0, p0

    move v2, v0

    const/16 v3, 0xfff

    and-int/lit16 v2, v2, 0xfff

    move v1, v2

    .line 473
    move v2, v1

    const/16 v3, 0x81

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0xe1

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_0

    .line 159
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 162
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 164
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    move-object v2, v0

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V
    .locals 10
    .param p0    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 236
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_0

    .line 237
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    .line 268
    :goto_0
    return-void

    .line 242
    :cond_0
    move-object v6, v0

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move-object v7, v0

    iget v7, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v6, v7, :cond_2

    .line 243
    move-object v6, v0

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move v7, v2

    sub-int/2addr v6, v7

    .line 244
    :goto_1
    move v3, v6

    .line 245
    move-object v6, v0

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move-object v7, v0

    iget v7, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v6, v7, :cond_3

    .line 246
    move-object v6, v0

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move v7, v2

    sub-int/2addr v6, v7

    .line 247
    :goto_2
    move v4, v6

    .line 249
    move-object v6, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v5, v6

    .line 251
    move v6, v2

    if-ltz v6, :cond_1

    move v6, v3

    if-ltz v6, :cond_1

    move v6, v4

    move v7, v5

    if-le v6, v7, :cond_4

    .line 252
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 253
    goto :goto_0

    .line 244
    :cond_2
    move-object v6, v0

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move v7, v2

    sub-int/2addr v6, v7

    goto :goto_1

    .line 247
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move v7, v2

    sub-int/2addr v6, v7

    goto :goto_2

    .line 257
    :cond_4
    move-object v6, v0

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v6}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isPasswordInputType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 258
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 259
    goto :goto_0

    .line 262
    :cond_5
    move v6, v5

    const/16 v7, 0x800

    if-gt v6, v7, :cond_6

    .line 263
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 264
    goto :goto_0

    .line 267
    :cond_6
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/EditorInfoCompat;->trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 268
    goto :goto_0
.end method

.method public static setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 213
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/core/view/inputmethod/EditorInfoCompat$Impl30;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private static setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 9

    .prologue
    .line 484
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v5, :cond_0

    .line 485
    move-object v5, v0

    new-instance v6, Landroid/os/Bundle;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 488
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 489
    new-instance v5, Landroid/text/SpannableStringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v4, v5

    .line 490
    move-object v5, v0

    iget-object v5, v5, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v6, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 491
    move-object v5, v0

    iget-object v5, v5, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v6, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    move-object v5, v0

    iget-object v5, v5, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v6, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    return-void

    .line 489
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 25

    .prologue
    .line 289
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v19, v5

    move/from16 v20, v4

    sub-int v19, v19, v20

    move/from16 v6, v19

    .line 291
    move/from16 v19, v6

    const/16 v20, 0x400

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 292
    const/16 v19, 0x0

    :goto_0
    move/from16 v7, v19

    .line 295
    move/from16 v19, v4

    move/from16 v8, v19

    .line 296
    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v20, v5

    sub-int v19, v19, v20

    move/from16 v9, v19

    .line 297
    const/16 v19, 0x800

    move/from16 v20, v7

    move/from16 v0, v20

    rsub-int v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v10, v19

    .line 298
    move/from16 v19, v8

    const-wide v20, 0x3fe999999999999aL    # 0.8

    move/from16 v22, v10

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 299
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v11, v19

    .line 300
    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v12, v19

    .line 302
    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v12

    sub-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v13, v19

    .line 306
    move/from16 v19, v8

    move/from16 v20, v13

    sub-int v19, v19, v20

    move/from16 v14, v19

    .line 309
    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v13

    sub-int v20, v20, v21

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 311
    move/from16 v19, v14

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v14, v19

    .line 312
    move/from16 v19, v13

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v13, v19

    .line 314
    :cond_0
    move-object/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v12

    add-int v20, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 316
    move/from16 v19, v12

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v12, v19

    .line 320
    :cond_1
    move/from16 v19, v13

    move/from16 v20, v7

    add-int v19, v19, v20

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v15, v19

    .line 322
    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 323
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v21, v14

    move/from16 v22, v13

    add-int v21, v21, v22

    invoke-interface/range {v19 .. v21}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v17, v19

    .line 325
    move-object/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v5

    move/from16 v22, v12

    add-int v21, v21, v22

    invoke-interface/range {v19 .. v21}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v18, v19

    .line 328
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x0

    move-object/from16 v22, v17

    aput-object v22, v20, v21

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x1

    move-object/from16 v22, v18

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v16, v19

    .line 336
    :goto_1
    const/16 v19, 0x0

    move/from16 v14, v19

    .line 337
    move/from16 v19, v14

    move/from16 v20, v13

    add-int v19, v19, v20

    move/from16 v17, v19

    .line 338
    move-object/from16 v19, v2

    move-object/from16 v20, v16

    move/from16 v21, v17

    move/from16 v22, v17

    move/from16 v23, v7

    add-int v22, v22, v23

    invoke-static/range {v19 .. v22}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 340
    return-void

    .line 292
    :cond_2
    move/from16 v19, v6

    goto/16 :goto_0

    .line 330
    :cond_3
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v21, v14

    move/from16 v22, v15

    add-int v21, v21, v22

    .line 331
    invoke-interface/range {v19 .. v21}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v16, v19

    goto :goto_1
.end method
