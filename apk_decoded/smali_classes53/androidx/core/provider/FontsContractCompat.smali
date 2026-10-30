.class public Landroidx/core/provider/FontsContractCompat;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontsContractCompat$FontRequestCallback;,
        Landroidx/core/provider/FontsContractCompat$FontFamilyResult;,
        Landroidx/core/provider/FontsContractCompat$FontInfo;,
        Landroidx/core/provider/FontsContractCompat$TypefaceResult;,
        Landroidx/core/provider/FontsContractCompat$Columns;
    }
.end annotation


# static fields
.field private static final BACKGROUND_THREAD_KEEP_ALIVE_DURATION_MS:I = 0x2710

.field public static final PARCEL_FONT_RESULTS:Ljava/lang/String; = "font_results"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final RESULT_CODE_PROVIDER_NOT_FOUND:I = -0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final RESULT_CODE_WRONG_CERTIFICATES:I = -0x2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;

.field static final sPendingReplies:Landroidx/collection/SimpleArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback",
            "<",
            "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 172
    new-instance v0, Landroidx/collection/LruCache;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 175
    new-instance v0, Landroidx/core/provider/SelfDestructiveThread;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "fonts"

    const/16 v3, 0xa

    const/16 v4, 0x2710

    invoke-direct {v1, v2, v3, v4}, Landroidx/core/provider/SelfDestructiveThread;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    .line 201
    new-instance v0, Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    .line 204
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    .line 785
    new-instance v0, Landroidx/core/provider/FontsContractCompat$5;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Landroidx/core/provider/FontsContractCompat$5;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 671
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 814
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 815
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 816
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 802
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 803
    const/4 v3, 0x0

    move v0, v3

    .line 810
    :goto_0
    return v0

    .line 805
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 806
    move-object v3, v0

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 807
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 805
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 810
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    .line 729
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 728
    invoke-static {v5, v6, v7}, Landroidx/core/provider/FontsContractCompat;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    move-object v3, v5

    .line 730
    move-object v5, v3

    if-nez v5, :cond_0

    .line 731
    new-instance v5, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    move-object v0, v5

    .line 736
    :goto_0
    return-object v0

    .line 734
    :cond_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object v8, v1

    invoke-static {v5, v6, v7, v8}, Landroidx/core/provider/FontsContractCompat;->getFontFromProvider(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v5

    move-object v4, v5

    .line 736
    new-instance v5, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    move-object v0, v5

    goto :goto_0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 778
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 779
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 782
    :goto_0
    return-object v0

    .line 781
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v3

    move v2, v3

    .line 782
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method static getFontFromProvider(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 32
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 825
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v23

    .line 826
    new-instance v23, Landroid/net/Uri$Builder;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Landroid/net/Uri$Builder;-><init>()V

    const-string v24, "content"

    invoke-virtual/range {v23 .. v24}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v23

    move-object/from16 v24, v5

    .line 827
    invoke-virtual/range {v23 .. v24}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v23

    .line 828
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v8, v23

    .line 829
    new-instance v23, Landroid/net/Uri$Builder;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Landroid/net/Uri$Builder;-><init>()V

    const-string v24, "content"

    invoke-virtual/range {v23 .. v24}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v23

    move-object/from16 v24, v5

    .line 830
    invoke-virtual/range {v23 .. v24}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v23

    const-string v24, "file"

    .line 831
    invoke-virtual/range {v23 .. v24}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v23

    .line 832
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v9, v23

    .line 833
    const/16 v23, 0x0

    move-object/from16 v10, v23

    .line 835
    :try_start_0
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 836
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x7

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x0

    const-string v28, "_id"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x1

    const-string v28, "file_id"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x2

    const-string v28, "font_ttc_index"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x3

    const-string v28, "font_variation_settings"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x4

    const-string v28, "font_weight"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x5

    const-string v28, "font_italic"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x6

    const-string v28, "result_code"

    aput-object v28, v26, v27

    const-string v26, "query = ?"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v31, v27

    move-object/from16 v27, v31

    move-object/from16 v28, v31

    const/16 v29, 0x0

    move-object/from16 v30, v4

    .line 840
    invoke-virtual/range {v30 .. v30}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v28, 0x0

    move-object/from16 v29, v6

    .line 836
    invoke-virtual/range {v23 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v23

    move-object/from16 v10, v23

    .line 849
    :goto_0
    move-object/from16 v23, v10

    if-eqz v23, :cond_6

    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v23

    if-lez v23, :cond_6

    .line 850
    move-object/from16 v23, v10

    const-string v24, "result_code"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v11, v23

    .line 851
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v23

    .line 852
    move-object/from16 v23, v10

    const-string v24, "_id"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v12, v23

    .line 853
    move-object/from16 v23, v10

    const-string v24, "file_id"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v13, v23

    .line 854
    move-object/from16 v23, v10

    const-string v24, "font_ttc_index"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v14, v23

    .line 855
    move-object/from16 v23, v10

    const-string v24, "font_weight"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v15, v23

    .line 856
    move-object/from16 v23, v10

    const-string v24, "font_italic"

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v16, v23

    .line 857
    :goto_1
    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 858
    move/from16 v23, v11

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 859
    move-object/from16 v23, v10

    move/from16 v24, v11

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    :goto_2
    move/from16 v17, v23

    .line 860
    move/from16 v23, v14

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 861
    move-object/from16 v23, v10

    move/from16 v24, v14

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    :goto_3
    move/from16 v18, v23

    .line 863
    move/from16 v23, v13

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 864
    move-object/from16 v23, v10

    move/from16 v24, v12

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-wide/from16 v20, v23

    .line 865
    move-object/from16 v23, v8

    move-wide/from16 v24, v20

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v19, v23

    .line 871
    :goto_4
    move/from16 v23, v15

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v23, v10

    move/from16 v24, v15

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    :goto_5
    move/from16 v20, v23

    .line 872
    move/from16 v23, v16

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v23, v10

    move/from16 v24, v16

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v23, 0x1

    :goto_6
    move/from16 v21, v23

    .line 874
    move-object/from16 v23, v7

    new-instance v24, Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    move-object/from16 v26, v19

    move/from16 v27, v18

    move/from16 v28, v20

    move/from16 v29, v21

    move/from16 v30, v17

    invoke-direct/range {v25 .. v30}, Landroidx/core/provider/FontsContractCompat$FontInfo;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v23

    .line 875
    goto/16 :goto_1

    .line 843
    :cond_0
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x7

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x0

    const-string v28, "_id"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x1

    const-string v28, "file_id"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x2

    const-string v28, "font_ttc_index"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x3

    const-string v28, "font_variation_settings"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x4

    const-string v28, "font_weight"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x5

    const-string v28, "font_italic"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x6

    const-string v28, "result_code"

    aput-object v28, v26, v27

    const-string v26, "query = ?"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v31, v27

    move-object/from16 v27, v31

    move-object/from16 v28, v31

    const/16 v29, 0x0

    move-object/from16 v30, v4

    .line 847
    invoke-virtual/range {v30 .. v30}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v28, 0x0

    .line 843
    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    move-object/from16 v10, v23

    goto/16 :goto_0

    .line 859
    :cond_1
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 861
    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 867
    :cond_3
    move-object/from16 v23, v10

    move/from16 v24, v13

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-wide/from16 v20, v23

    .line 868
    move-object/from16 v23, v9

    move-wide/from16 v24, v20

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    move-object/from16 v19, v23

    goto/16 :goto_4

    .line 871
    :cond_4
    const/16 v23, 0x190

    goto/16 :goto_5

    .line 872
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 878
    :cond_6
    move-object/from16 v23, v10

    if-eqz v23, :cond_7

    .line 879
    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 882
    :cond_7
    move-object/from16 v23, v7

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object/from16 v3, v23

    return-object v3

    .line 878
    :catchall_0
    move-exception v23

    move-object/from16 v22, v23

    move-object/from16 v23, v10

    if-eqz v23, :cond_8

    .line 879
    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 881
    :cond_8
    move-object/from16 v23, v22

    throw v23
.end method

.method static getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    :try_start_0
    invoke-static {v5, v6, v7}, Landroidx/core/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 188
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v5

    if-nez v5, :cond_1

    .line 189
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v3

    .line 190
    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v7

    move v8, v2

    .line 189
    invoke-static {v5, v6, v7, v8}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v4, v5

    .line 191
    new-instance v5, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    move-object v8, v4

    if-eqz v8, :cond_0

    .line 192
    const/4 v8, 0x0

    .line 193
    :goto_0
    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    .line 191
    move-object v0, v5

    .line 198
    :goto_1
    return-object v0

    .line 185
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 186
    new-instance v5, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    move-object v0, v5

    goto :goto_1

    .line 193
    :cond_0
    const/4 v8, -0x3

    goto :goto_0

    .line 195
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 196
    const/4 v5, -0x2

    .line 197
    :goto_2
    move v4, v5

    .line 198
    new-instance v5, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    move-object v0, v5

    goto :goto_1

    .line 197
    :cond_2
    const/4 v5, -0x3

    goto :goto_2
.end method

.method public static getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
    .locals 21
    .param p2    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/core/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 233
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Typeface;

    move-object v8, v14

    .line 234
    move-object v14, v8

    if-eqz v14, :cond_1

    .line 235
    move-object v14, v2

    if-eqz v14, :cond_0

    .line 236
    move-object v14, v2

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 238
    :cond_0
    move-object v14, v8

    move-object v0, v14

    .line 319
    :goto_0
    return-object v0

    .line 241
    :cond_1
    move v14, v4

    if-eqz v14, :cond_4

    move v14, v5

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    .line 243
    move-object v14, v0

    move-object v15, v1

    move/from16 v16, v6

    invoke-static/range {v14 .. v16}, Landroidx/core/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v14

    move-object v9, v14

    .line 244
    move-object v14, v2

    if-eqz v14, :cond_2

    .line 245
    move-object v14, v9

    iget v14, v14, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v14, :cond_3

    .line 246
    move-object v14, v2

    move-object v15, v9

    iget-object v15, v15, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    move-object/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 251
    :cond_2
    :goto_1
    move-object v14, v9

    iget-object v14, v14, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    move-object v0, v14

    goto :goto_0

    .line 248
    :cond_3
    move-object v14, v2

    move-object v15, v9

    iget v15, v15, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    move-object/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_1

    .line 254
    :cond_4
    new-instance v14, Landroidx/core/provider/FontsContractCompat$1;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v6

    move-object/from16 v19, v7

    invoke-direct/range {v15 .. v19}, Landroidx/core/provider/FontsContractCompat$1;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/lang/String;)V

    move-object v9, v14

    .line 265
    move v14, v4

    if-eqz v14, :cond_5

    .line 267
    :try_start_0
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    move-object v15, v9

    move/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Landroidx/core/provider/SelfDestructiveThread;->postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    iget-object v14, v14, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v14

    goto :goto_0

    .line 268
    :catch_0
    move-exception v14

    move-object v10, v14

    .line 269
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_0

    .line 272
    :cond_5
    move-object v14, v2

    if-nez v14, :cond_7

    const/4 v14, 0x0

    .line 273
    :goto_2
    move-object v10, v14

    .line 287
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object v11, v15

    monitor-enter v14

    .line 288
    :try_start_1
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v12, v14

    .line 289
    move-object v14, v12

    if-eqz v14, :cond_8

    .line 292
    move-object v14, v10

    if-eqz v14, :cond_6

    .line 293
    move-object v14, v12

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 295
    :cond_6
    const/4 v14, 0x0

    move-object v15, v11

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v14

    goto/16 :goto_0

    .line 273
    :cond_7
    new-instance v14, Landroidx/core/provider/FontsContractCompat$2;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v17}, Landroidx/core/provider/FontsContractCompat$2;-><init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V

    goto :goto_2

    .line 297
    :cond_8
    move-object v14, v10

    if-eqz v14, :cond_9

    .line 298
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v14

    .line 299
    move-object v14, v12

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 300
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    move-object v15, v7

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 302
    :cond_9
    move-object v14, v11

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    move-object v15, v9

    new-instance v16, Landroidx/core/provider/FontsContractCompat$3;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v18}, Landroidx/core/provider/FontsContractCompat$3;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroidx/core/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V

    .line 319
    const/4 v14, 0x0

    move-object v0, v14

    goto/16 :goto_0

    .line 302
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v11

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v13

    throw v14
.end method

.method public static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 15
    .param p0    # Landroid/content/pm/PackageManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 745
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 746
    move-object v10, v0

    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v10

    move-object v4, v10

    .line 747
    move-object v10, v4

    if-nez v10, :cond_0

    .line 748
    new-instance v10, Landroid/content/pm/PackageManager$NameNotFoundException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package found for authority: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 752
    :cond_0
    move-object v10, v4

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 753
    new-instance v10, Landroid/content/pm/PackageManager$NameNotFoundException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found content provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", but package was not "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    .line 755
    invoke-virtual {v13}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 761
    :cond_1
    move-object v10, v0

    move-object v11, v4

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x40

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    move-object v6, v10

    .line 763
    move-object v10, v6

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10}, Landroidx/core/provider/FontsContractCompat;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v10

    move-object v5, v10

    .line 764
    move-object v10, v5

    sget-object v11, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 765
    move-object v10, v1

    move-object v11, v2

    invoke-static {v10, v11}, Landroidx/core/provider/FontsContractCompat;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v10

    move-object v7, v10

    .line 766
    const/4 v10, 0x0

    move v8, v10

    :goto_0
    move v10, v8

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 768
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v7

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v10

    .line 769
    move-object v10, v9

    sget-object v11, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 770
    move-object v10, v5

    move-object v11, v9

    invoke-static {v10, v11}, Landroidx/core/provider/FontsContractCompat;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 771
    move-object v10, v4

    move-object v0, v10

    .line 774
    :goto_1
    return-object v0

    .line 766
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 774
    :cond_3
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1
.end method

.method public static prepareFontData(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 14
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/core/provider/FontsContractCompat$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    new-instance v10, Ljava/util/HashMap;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v3, v10

    .line 692
    move-object v10, v1

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_2

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 693
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v10

    if-eqz v10, :cond_0

    .line 692
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 697
    :cond_0
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v10

    move-object v8, v10

    .line 698
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 699
    goto :goto_1

    .line 702
    :cond_1
    move-object v10, v0

    move-object v11, v2

    move-object v12, v8

    invoke-static {v10, v11, v12}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v9, v10

    .line 703
    move-object v10, v3

    move-object v11, v8

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 705
    :cond_2
    move-object v10, v3

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    move-object v0, v10

    return-object v0
.end method

.method public static requestFont(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Landroidx/core/provider/FontsContractCompat;->requestFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V

    .line 532
    return-void
.end method

.method private static requestFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    new-instance v5, Landroid/os/Handler;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v4, v5

    .line 542
    move-object v5, v3

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/core/provider/FontsContractCompat$4;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 654
    return-void
.end method

.method public static resetCache()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 223
    sget-object v0, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 224
    return-void
.end method
