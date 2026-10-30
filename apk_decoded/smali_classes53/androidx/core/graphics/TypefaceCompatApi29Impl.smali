.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi29Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v11, 0x0

    move-object v5, v11

    .line 110
    move-object v11, v2

    :try_start_0
    invoke-virtual {v11}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v11

    move-object v6, v11

    move-object v11, v6

    array-length v11, v11

    move v7, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_0
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_2

    move-object v11, v6

    move v12, v8

    aget-object v11, v11, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v11

    .line 112
    :try_start_1
    new-instance v11, Landroid/graphics/fonts/Font$Builder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v3

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    move-object v12, v9

    .line 113
    invoke-virtual {v12}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    .line 114
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    move-object v12, v9

    .line 116
    invoke-virtual {v12}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    move-object v12, v9

    .line 117
    invoke-virtual {v12}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    .line 118
    invoke-virtual {v11}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v11

    move-object v10, v11

    .line 119
    move-object v11, v5

    if-nez v11, :cond_1

    .line 120
    new-instance v11, Landroid/graphics/fonts/FontFamily$Builder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v10

    invoke-direct {v12, v13}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v5, v11

    .line 110
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 115
    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    .line 122
    :cond_1
    move-object v11, v5

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    goto :goto_2

    .line 124
    :catch_0
    move-exception v11

    move-object v10, v11

    goto :goto_2

    .line 128
    :cond_2
    move-object v11, v5

    if-nez v11, :cond_3

    .line 129
    const/4 v11, 0x0

    move-object v0, v11

    .line 141
    :goto_3
    return-object v0

    .line 131
    :cond_3
    :try_start_2
    new-instance v11, Landroid/graphics/fonts/FontStyle;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    .line 132
    move v13, v4

    const/4 v14, 0x1

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_4

    const/16 v13, 0x2bc

    .line 134
    :goto_4
    move v14, v4

    const/4 v15, 0x2

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    .line 135
    :goto_5
    invoke-direct {v12, v13, v14}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    move-object v6, v11

    .line 137
    new-instance v11, Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v5

    invoke-virtual {v13}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    move-object v12, v6

    .line 138
    invoke-virtual {v11, v12}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v11

    .line 139
    invoke-virtual {v11}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .line 137
    move-object v0, v11

    goto :goto_3

    .line 133
    :cond_4
    const/16 v13, 0x190

    goto :goto_4

    .line 135
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 140
    :catch_1
    move-exception v11

    move-object v5, v11

    .line 141
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_3
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 20
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v14, 0x0

    move-object v5, v14

    .line 63
    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object v6, v14

    .line 65
    move-object v14, v3

    move-object v7, v14

    move-object v14, v7

    :try_start_0
    array-length v14, v14

    move v8, v14

    const/4 v14, 0x0

    move v9, v14

    :goto_0
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_6

    move-object v14, v7

    move v15, v9

    aget-object v14, v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v10, v14

    .line 66
    move-object v14, v6

    move-object v15, v10

    :try_start_1
    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v15

    const-string v16, "r"

    move-object/from16 v17, v2

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    move-object v11, v14

    .line 68
    move-object v14, v11

    if-nez v14, :cond_1

    .line 82
    move-object v14, v11

    if-eqz v14, :cond_0

    move-object v14, v11

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 71
    :cond_1
    :try_start_2
    new-instance v14, Landroid/graphics/fonts/Font$Builder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v15, v10

    .line 72
    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v14

    .line 73
    move-object v15, v10

    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    :goto_2
    invoke-virtual {v14, v15}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v14

    move-object v15, v10

    .line 75
    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v14

    .line 76
    invoke-virtual {v14}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v14

    move-object v12, v14

    .line 77
    move-object v14, v5

    if-nez v14, :cond_4

    .line 78
    new-instance v14, Landroid/graphics/fonts/FontFamily$Builder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v12

    invoke-direct/range {v15 .. v16}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v14

    .line 82
    :goto_3
    move-object v14, v11

    if-eqz v14, :cond_2

    move-object v14, v11

    :try_start_3
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 84
    :cond_2
    goto :goto_1

    .line 74
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 80
    :cond_4
    move-object v14, v5

    move-object v15, v12

    :try_start_4
    invoke-virtual {v14, v15}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v14

    goto :goto_3

    .line 66
    :catch_0
    move-exception v14

    move-object v12, v14

    move-object v14, v11

    if-eqz v14, :cond_5

    move-object v14, v11

    :try_start_5
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    move-object v14, v12

    :try_start_6
    throw v14

    .line 82
    :catch_1
    move-exception v14

    move-object v11, v14

    goto :goto_1

    .line 66
    :catch_2
    move-exception v14

    move-object v13, v14

    move-object v14, v12

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 98
    :catch_3
    move-exception v14

    move-object v7, v14

    .line 99
    const/4 v14, 0x0

    move-object v0, v14

    :goto_5
    return-object v0

    .line 86
    :cond_6
    move-object v14, v5

    if-nez v14, :cond_7

    .line 87
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_5

    .line 89
    :cond_7
    :try_start_7
    new-instance v14, Landroid/graphics/fonts/FontStyle;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    .line 90
    move/from16 v16, v4

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_8

    const/16 v16, 0x2bc

    .line 92
    :goto_6
    move/from16 v17, v4

    const/16 v18, 0x2

    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    .line 93
    :goto_7
    invoke-direct/range {v15 .. v17}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    move-object v7, v14

    .line 95
    new-instance v14, Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    move-object v15, v7

    .line 96
    invoke-virtual {v14, v15}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v14

    .line 97
    invoke-virtual {v14}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v14

    .line 95
    move-object v0, v14

    goto :goto_5

    .line 91
    :cond_8
    const/16 v16, 0x190

    goto :goto_6

    .line 93
    :cond_9
    const/16 v17, 0x0

    goto :goto_7
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Do not use this function in API 29 or later."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    const/4 v9, 0x0

    move-object v6, v9

    .line 153
    const/4 v9, 0x0

    move-object v7, v9

    .line 155
    :try_start_0
    new-instance v9, Landroid/graphics/fonts/Font$Builder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    move v12, v3

    invoke-direct {v10, v11, v12}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v9}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v9

    move-object v7, v9

    .line 156
    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-direct {v10, v11}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v9}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v9

    move-object v6, v9

    .line 157
    new-instance v9, Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-direct {v10, v11}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    move-object v10, v7

    .line 159
    invoke-virtual {v10}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v9

    .line 160
    invoke-virtual {v9}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 157
    move-object v0, v9

    .line 162
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 162
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Do not use this function in API 29 or later."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
