.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 16
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v11, v2

    invoke-virtual {v11}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v11

    move-object v5, v11

    .line 133
    const/4 v11, 0x0

    move v6, v11

    .line 134
    move-object v11, v1

    invoke-static {v11}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    array-length v11, v11

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    :goto_0
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_0

    move-object v11, v7

    move v12, v9

    aget-object v11, v11, v12

    move-object v10, v11

    .line 135
    move-object v11, v5

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 136
    const/4 v11, 0x1

    move v6, v11

    .line 140
    :cond_0
    move v11, v6

    if-nez v11, :cond_2

    .line 141
    const/4 v11, 0x0

    move v0, v11

    .line 185
    :goto_1
    return v0

    .line 134
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 144
    :cond_2
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x19

    if-lt v11, v12, :cond_3

    .line 145
    move-object v11, v0

    move-object v12, v2

    .line 146
    invoke-virtual {v12}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputContentInfo;

    move v13, v3

    move-object v14, v4

    .line 145
    invoke-interface {v11, v12, v13, v14}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v11

    move v0, v11

    goto :goto_1

    .line 148
    :cond_3
    move-object v11, v1

    invoke-static {v11}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result v11

    move v7, v11

    .line 150
    move v11, v7

    packed-switch v11, :pswitch_data_0

    .line 160
    const/4 v11, 0x0

    move v0, v11

    goto :goto_1

    .line 153
    :pswitch_0
    const/4 v11, 0x0

    move v8, v11

    .line 163
    :goto_2
    new-instance v11, Landroid/os/Bundle;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v9, v11

    .line 164
    move-object v11, v9

    move v12, v8

    if-eqz v12, :cond_4

    .line 165
    const-string v12, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 166
    :goto_3
    move-object v13, v2

    .line 167
    invoke-virtual {v13}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v13

    .line 164
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    move-object v11, v9

    move v12, v8

    if-eqz v12, :cond_5

    .line 169
    const-string v12, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 170
    :goto_4
    move-object v13, v2

    .line 171
    invoke-virtual {v13}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v13

    .line 168
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    move-object v11, v9

    move v12, v8

    if-eqz v12, :cond_6

    .line 173
    const-string v12, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 174
    :goto_5
    move-object v13, v2

    .line 175
    invoke-virtual {v13}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v13

    .line 172
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    move-object v11, v9

    move v12, v8

    if-eqz v12, :cond_7

    .line 177
    const-string v12, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 178
    :goto_6
    move v13, v3

    .line 176
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    move-object v11, v9

    move v12, v8

    if-eqz v12, :cond_8

    .line 181
    const-string v12, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 182
    :goto_7
    move-object v13, v4

    .line 180
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    move-object v11, v0

    move v12, v8

    if-eqz v12, :cond_9

    .line 186
    const-string v12, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 187
    :goto_8
    move-object v13, v9

    .line 185
    invoke-interface {v11, v12, v13}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v11

    move v0, v11

    goto :goto_1

    .line 156
    :pswitch_1
    const/4 v11, 0x1

    move v8, v11

    .line 157
    goto :goto_2

    .line 166
    :cond_4
    const-string v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_3

    .line 170
    :cond_5
    const-string v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_4

    .line 174
    :cond_6
    const-string v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_5

    .line 178
    :cond_7
    const-string v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_6

    .line 182
    :cond_8
    const-string v12, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_7

    .line 187
    :cond_9
    const-string v12, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    goto :goto_8

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .locals 11
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    if-nez v5, :cond_0

    .line 261
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "inputConnection must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 263
    :cond_0
    move-object v5, v1

    if-nez v5, :cond_1

    .line 264
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "editorInfo must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :cond_1
    move-object v5, v2

    if-nez v5, :cond_2

    .line 267
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "onCommitContentListener must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-lt v5, v6, :cond_3

    .line 270
    move-object v5, v2

    move-object v3, v5

    .line 271
    new-instance v5, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object v0, v5

    .line 288
    :goto_0
    return-object v0

    .line 283
    :cond_3
    move-object v5, v1

    invoke-static {v5}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 284
    move-object v5, v3

    array-length v5, v5

    if-nez v5, :cond_4

    .line 285
    move-object v5, v0

    move-object v0, v5

    goto :goto_0

    .line 287
    :cond_4
    move-object v5, v2

    move-object v4, v5

    .line 288
    new-instance v5, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object v0, v5

    goto :goto_0
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .locals 19
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v1

    if-nez v13, :cond_0

    .line 73
    const/4 v13, 0x0

    move v0, v13

    .line 115
    :goto_0
    return v0

    .line 77
    :cond_0
    const-string v13, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    move-object v14, v0

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 78
    const/4 v13, 0x0

    move v3, v13

    .line 84
    :goto_1
    const/4 v13, 0x0

    move-object v4, v13

    .line 85
    const/4 v13, 0x0

    move v5, v13

    .line 87
    move-object v13, v1

    move v14, v3

    if-eqz v14, :cond_5

    .line 88
    :try_start_0
    const-string v14, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    .line 87
    :goto_2
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/os/ResultReceiver;

    move-object v4, v13

    .line 90
    move-object v13, v1

    move v14, v3

    if-eqz v14, :cond_6

    .line 91
    const-string v14, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 90
    :goto_3
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    move-object v6, v13

    .line 93
    move-object v13, v1

    move v14, v3

    if-eqz v14, :cond_7

    .line 94
    const-string v14, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 93
    :goto_4
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/ClipDescription;

    move-object v7, v13

    .line 96
    move-object v13, v1

    move v14, v3

    if-eqz v14, :cond_8

    .line 97
    const-string v14, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 96
    :goto_5
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    move-object v8, v13

    .line 99
    move-object v13, v1

    move v14, v3

    if-eqz v14, :cond_9

    .line 100
    const-string v14, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 99
    :goto_6
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move v9, v13

    .line 102
    move-object v13, v1

    move v14, v3

    if-eqz v14, :cond_a

    .line 103
    const-string v14, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 102
    :goto_7
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    move-object v10, v13

    .line 105
    move-object v13, v6

    if-eqz v13, :cond_1

    move-object v13, v7

    if-eqz v13, :cond_1

    .line 106
    new-instance v13, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v14 .. v17}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    move-object v11, v13

    .line 108
    move-object v13, v2

    move-object v14, v11

    move v15, v9

    move-object/from16 v16, v10

    invoke-interface/range {v13 .. v16}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    move v5, v13

    .line 111
    :cond_1
    move-object v13, v4

    if-eqz v13, :cond_2

    .line 112
    move-object v13, v4

    move v14, v5

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    :goto_8
    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 115
    :cond_2
    move v13, v5

    move v0, v13

    goto/16 :goto_0

    .line 79
    :cond_3
    const-string v13, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    move-object v14, v0

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 80
    const/4 v13, 0x1

    move v3, v13

    goto/16 :goto_1

    .line 82
    :cond_4
    const/4 v13, 0x0

    move v0, v13

    goto/16 :goto_0

    .line 89
    :cond_5
    :try_start_1
    const-string v14, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    goto/16 :goto_2

    .line 92
    :cond_6
    const-string v14, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto/16 :goto_3

    .line 95
    :cond_7
    const-string v14, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_4

    .line 98
    :cond_8
    const-string v14, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_5

    .line 101
    :cond_9
    const-string v14, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_6

    .line 104
    :cond_a
    const-string v14, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 112
    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    .line 111
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v4

    if-eqz v13, :cond_c

    .line 112
    move-object v13, v4

    move v14, v5

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    :goto_9
    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 114
    :cond_c
    move-object v13, v12

    throw v13

    .line 112
    :cond_d
    const/4 v14, 0x0

    goto :goto_9
.end method
