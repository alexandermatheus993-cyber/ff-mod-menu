.class Landroidx/core/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;
    }
.end annotation


# static fields
.field private static final INVALID_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatBaseImpl"


# instance fields
.field private mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanConcurrentHashMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private addFontFamily(Landroid/graphics/Typeface;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;)V
    .locals 10

    .prologue
    .line 220
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v2

    invoke-static {v6}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->getUniqueKey(Landroid/graphics/Typeface;)J

    move-result-wide v6

    move-wide v4, v6

    .line 221
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 222
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    move-wide v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 224
    :cond_0
    return-void
.end method

.method private findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v3

    move v4, v2

    new-instance v5, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-object v0, v3

    return-object v0
.end method

.method private static findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v12, v1

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_2

    const/16 v12, 0x190

    :goto_0
    move v3, v12

    .line 63
    move v12, v1

    const/4 v13, 0x2

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    move v4, v12

    .line 65
    const/4 v12, 0x0

    move-object v5, v12

    .line 66
    const v12, 0x7fffffff

    move v6, v12

    .line 68
    move-object v12, v0

    move-object v7, v12

    move-object v12, v7

    array-length v12, v12

    move v8, v12

    const/4 v12, 0x0

    move v9, v12

    :goto_2
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_5

    move-object v12, v7

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 69
    move-object v12, v2

    move-object v13, v10

    invoke-interface {v12, v13}, Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;->getWeight(Ljava/lang/Object;)I

    move-result v12

    move v13, v3

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    .line 70
    move-object v13, v2

    move-object v14, v10

    invoke-interface {v13, v14}, Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;->isItalic(Ljava/lang/Object;)Z

    move-result v13

    move v14, v4

    if-ne v13, v14, :cond_4

    const/4 v13, 0x0

    :goto_3
    add-int/2addr v12, v13

    move v11, v12

    .line 72
    move-object v12, v5

    if-eqz v12, :cond_0

    move v12, v6

    move v13, v11

    if-le v12, v13, :cond_1

    .line 73
    :cond_0
    move-object v12, v10

    move-object v5, v12

    .line 74
    move v12, v11

    move v6, v12

    .line 68
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 62
    :cond_2
    const/16 v12, 0x2bc

    goto :goto_0

    .line 63
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 70
    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    .line 77
    :cond_5
    move-object v12, v5

    move-object v0, v12

    return-object v0
.end method

.method private static getUniqueKey(Landroid/graphics/Typeface;)J
    .locals 7
    .param p0    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    move-object v1, p0

    move-object v4, v1

    if-nez v4, :cond_0

    .line 82
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 95
    :goto_0
    return-wide v1

    .line 86
    :cond_0
    :try_start_0
    const-class v4, Landroid/graphics/Typeface;

    const-string v5, "native_instance"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v2, v4

    .line 87
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    move-object v3, v4

    .line 89
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 90
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 91
    const-string v4, "TypefaceCompatBaseImpl"

    const-string v5, "Could not retrieve font from family."

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 92
    const-wide/16 v4, 0x0

    move-wide v1, v4

    goto :goto_0

    .line 93
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 94
    const-string v4, "TypefaceCompatBaseImpl"

    const-string v5, "Could not retrieve font from family."

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 95
    const-wide/16 v4, 0x0

    move-wide v1, v4

    goto :goto_0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v7, v0

    move-object v8, v2

    move v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v7

    move-object v5, v7

    .line 171
    move-object v7, v5

    if-nez v7, :cond_0

    .line 172
    const/4 v7, 0x0

    move-object v0, v7

    .line 179
    :goto_0
    return-object v0

    .line 174
    :cond_0
    move-object v7, v1

    move-object v8, v3

    move-object v9, v5

    .line 175
    invoke-virtual {v9}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v10

    move v11, v4

    .line 174
    invoke-static {v7, v8, v9, v10, v11}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v6, v7

    .line 177
    move-object v7, v0

    move-object v8, v6

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->addFontFamily(Landroid/graphics/Typeface;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;)V

    .line 179
    move-object v7, v6

    move-object v0, v7

    goto :goto_0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 13
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
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v10, v3

    array-length v10, v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    .line 139
    const/4 v10, 0x0

    move-object v0, v10

    .line 147
    :goto_0
    return-object v0

    .line 141
    :cond_0
    move-object v10, v0

    move-object v11, v3

    move v12, v4

    invoke-virtual {v10, v11, v12}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v10

    move-object v5, v10

    .line 142
    const/4 v10, 0x0

    move-object v6, v10

    .line 144
    move-object v10, v1

    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v11}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    move-object v6, v10

    .line 145
    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v7, v10

    .line 149
    move-object v10, v6

    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 145
    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 146
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 147
    const/4 v10, 0x0

    move-object v8, v10

    .line 149
    move-object v10, v6

    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 147
    move-object v10, v8

    move-object v0, v10

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v6

    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 150
    move-object v10, v9

    throw v10
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-static {v7}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    move-object v3, v7

    .line 116
    move-object v7, v3

    if-nez v7, :cond_0

    .line 117
    const/4 v7, 0x0

    move-object v0, v7

    .line 128
    :goto_0
    return-object v0

    .line 120
    :cond_0
    move-object v7, v3

    move-object v8, v2

    :try_start_0
    invoke-static {v7, v8}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 121
    const/4 v7, 0x0

    move-object v4, v7

    .line 130
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    .line 121
    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 123
    :cond_1
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 130
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    .line 123
    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 124
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 128
    const/4 v7, 0x0

    move-object v5, v7

    .line 130
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    .line 128
    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    .line 131
    move-object v7, v6

    throw v7
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v1

    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    move-object v6, v10

    .line 189
    move-object v10, v6

    if-nez v10, :cond_0

    .line 190
    const/4 v10, 0x0

    move-object v0, v10

    .line 201
    :goto_0
    return-object v0

    .line 193
    :cond_0
    move-object v10, v6

    move-object v11, v2

    move v12, v3

    :try_start_0
    invoke-static {v10, v11, v12}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 194
    const/4 v10, 0x0

    move-object v7, v10

    .line 203
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 194
    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 196
    :cond_1
    move-object v10, v6

    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    move-object v7, v10

    .line 203
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 196
    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 197
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 201
    const/4 v10, 0x0

    move-object v8, v10

    .line 203
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 201
    move-object v10, v8

    move-object v0, v10

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 204
    move-object v10, v9

    throw v10
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 9

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    new-instance v5, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object v0, v3

    return-object v0
.end method

.method getFontFamily(Landroid/graphics/Typeface;)Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->getUniqueKey(Landroid/graphics/Typeface;)J

    move-result-wide v4

    move-wide v2, v4

    .line 213
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 214
    const/4 v4, 0x0

    move-object v0, v4

    .line 216
    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/graphics/TypefaceCompatBaseImpl;->mFontFamilies:Ljava/util/concurrent/ConcurrentHashMap;

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-object v0, v4

    goto :goto_0
.end method
