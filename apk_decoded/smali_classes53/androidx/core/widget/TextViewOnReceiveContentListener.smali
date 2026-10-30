.class public final Landroidx/core/widget/TextViewOnReceiveContentListener;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"

# interfaces
.implements Landroidx/core/view/OnReceiveContentListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;,
        Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static coerceToText(Landroid/content/ClipData;Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10
    .param p0    # Landroid/content/ClipData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v6, Landroid/text/SpannableStringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v3, v6

    .line 109
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 110
    move-object v6, v1

    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    move v8, v2

    invoke-static {v6, v7, v8}, Landroidx/core/widget/TextViewOnReceiveContentListener;->coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v5, v6

    .line 111
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 112
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 109
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    :cond_1
    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method private static coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ClipData$Item;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 121
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;->coerce(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .line 123
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;->coerce(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private static onReceiveForDragAndDrop(Landroid/widget/TextView;Landroidx/core/view/ContentInfoCompat;)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/ContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/view/ContentInfoCompat;->getClip()Landroid/content/ClipData;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    .line 101
    invoke-virtual {v5}, Landroidx/core/view/ContentInfoCompat;->getFlags()I

    move-result v5

    .line 100
    invoke-static {v3, v4, v5}, Landroidx/core/widget/TextViewOnReceiveContentListener;->coerceToText(Landroid/content/ClipData;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 102
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/core/widget/TextViewOnReceiveContentListener;->replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method private static replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V
    .locals 10
    .param p0    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    move v2, v6

    .line 130
    move-object v6, v0

    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    move v3, v6

    .line 131
    const/4 v6, 0x0

    move v7, v2

    move v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v4, v6

    .line 132
    const/4 v6, 0x0

    move v7, v2

    move v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 133
    move-object v6, v0

    move v7, v5

    invoke-static {v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 134
    move-object v6, v0

    move v7, v4

    move v8, v5

    move-object v9, v1

    invoke-interface {v6, v7, v8, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v6

    .line 135
    return-void
.end method


# virtual methods
.method public onReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 16
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/ContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v12, "ReceiveContent"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 59
    const-string v12, "ReceiveContent"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 61
    :cond_0
    move-object v12, v2

    invoke-virtual {v12}, Landroidx/core/view/ContentInfoCompat;->getSource()I

    move-result v12

    move v3, v12

    .line 62
    move v12, v3

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 65
    move-object v12, v2

    move-object v0, v12

    .line 95
    :goto_0
    return-object v0

    .line 67
    :cond_1
    move v12, v3

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 68
    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    move-object v13, v2

    invoke-static {v12, v13}, Landroidx/core/widget/TextViewOnReceiveContentListener;->onReceiveForDragAndDrop(Landroid/widget/TextView;Landroidx/core/view/ContentInfoCompat;)V

    .line 69
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 77
    :cond_2
    move-object v12, v2

    invoke-virtual {v12}, Landroidx/core/view/ContentInfoCompat;->getClip()Landroid/content/ClipData;

    move-result-object v12

    move-object v4, v12

    .line 78
    move-object v12, v2

    invoke-virtual {v12}, Landroidx/core/view/ContentInfoCompat;->getFlags()I

    move-result v12

    move v5, v12

    .line 79
    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    move-object v6, v12

    .line 80
    move-object v12, v6

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Editable;

    move-object v7, v12

    .line 81
    move-object v12, v6

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v8, v12

    .line 82
    const/4 v12, 0x0

    move v9, v12

    .line 83
    const/4 v12, 0x0

    move v10, v12

    :goto_1
    move v12, v10

    move-object v13, v4

    invoke-virtual {v13}, Landroid/content/ClipData;->getItemCount()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 84
    move-object v12, v8

    move-object v13, v4

    move v14, v10

    invoke-virtual {v13, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v13

    move v14, v5

    invoke-static {v12, v13, v14}, Landroidx/core/widget/TextViewOnReceiveContentListener;->coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object v11, v12

    .line 85
    move-object v12, v11

    if-eqz v12, :cond_3

    .line 86
    move v12, v9

    if-nez v12, :cond_4

    .line 87
    move-object v12, v7

    move-object v13, v11

    invoke-static {v12, v13}, Landroidx/core/widget/TextViewOnReceiveContentListener;->replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V

    .line 88
    const/4 v12, 0x1

    move v9, v12

    .line 83
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 90
    :cond_4
    move-object v12, v7

    move-object v13, v7

    invoke-static {v13}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    const-string v14, "\n"

    invoke-interface {v12, v13, v14}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v12

    .line 91
    move-object v12, v7

    move-object v13, v7

    invoke-static {v13}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    move-object v14, v11

    invoke-interface {v12, v13, v14}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v12

    goto :goto_2

    .line 95
    :cond_5
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0
.end method
