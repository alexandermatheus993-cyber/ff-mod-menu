.class final Landroidx/core/os/LocaleListCompatWrapper;
.super Ljava/lang/Object;
.source "LocaleListCompatWrapper.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final sEmptyList:[Ljava/util/Locale;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->sEmptyList:[Ljava/util/Locale;

    .line 173
    new-instance v0, Ljava/util/Locale;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "en"

    const-string v3, "XA"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 174
    new-instance v0, Ljava/util/Locale;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ar"

    const-string v3, "XB"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_AR_XB:Ljava/util/Locale;

    .line 219
    const-string v0, "en-Latn"

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->EN_LATN:Ljava/util/Locale;

    return-void
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .locals 13
    .param p1    # [Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 123
    move-object v8, v1

    array-length v8, v8

    if-nez v8, :cond_0

    .line 124
    move-object v8, v0

    sget-object v9, Landroidx/core/os/LocaleListCompatWrapper;->sEmptyList:[Ljava/util/Locale;

    iput-object v9, v8, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    .line 125
    move-object v8, v0

    const-string v9, ""

    iput-object v9, v8, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    .line 149
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 128
    new-instance v8, Ljava/util/HashSet;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v3, v8

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v8

    .line 130
    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move-object v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 131
    move-object v8, v1

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 132
    move-object v8, v6

    if-nez v8, :cond_1

    .line 133
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "list["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 134
    :cond_1
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 130
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    :cond_2
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Locale;

    move-object v7, v8

    .line 138
    move-object v8, v2

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 139
    move-object v8, v4

    move-object v9, v7

    invoke-static {v8, v9}, Landroidx/core/os/LocaleListCompatWrapper;->toLanguageTag(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 140
    move v8, v5

    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_3

    .line 141
    move-object v8, v4

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 143
    :cond_3
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    .line 146
    :cond_4
    move-object v8, v0

    move-object v9, v2

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/util/Locale;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/util/Locale;

    iput-object v9, v8, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    .line 147
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/core/os/LocaleListCompatWrapper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v4

    move v3, v4

    .line 262
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    move v5, v3

    aget-object v4, v4, v5

    goto :goto_0
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 224
    const/4 v8, 0x0

    move v0, v8

    .line 255
    :goto_0
    return v0

    .line 226
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v8, v8

    if-nez v8, :cond_1

    .line 227
    const/4 v8, -0x1

    move v0, v8

    goto :goto_0

    .line 230
    :cond_1
    const v8, 0x7fffffff

    move v3, v8

    .line 232
    move v8, v2

    if-eqz v8, :cond_3

    .line 233
    move-object v8, v0

    sget-object v9, Landroidx/core/os/LocaleListCompatWrapper;->EN_LATN:Ljava/util/Locale;

    invoke-direct {v8, v9}, Landroidx/core/os/LocaleListCompatWrapper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v8

    move v4, v8

    .line 234
    move v8, v4

    if-nez v8, :cond_2

    .line 235
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 236
    :cond_2
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 237
    move v8, v4

    move v3, v8

    .line 240
    :cond_3
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v8

    .line 241
    move-object v8, v5

    invoke-static {v8}, Landroidx/core/os/LocaleListCompat;->forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    move-object v6, v8

    .line 244
    move-object v8, v0

    move-object v9, v6

    invoke-direct {v8, v9}, Landroidx/core/os/LocaleListCompatWrapper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v8

    move v7, v8

    .line 245
    move v8, v7

    if-nez v8, :cond_4

    .line 246
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 247
    :cond_4
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_5

    .line 248
    move v8, v7

    move v3, v8

    .line 250
    :cond_5
    goto :goto_1

    .line 251
    :cond_6
    move v8, v3

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_7

    .line 253
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 255
    :cond_7
    move v8, v3

    move v0, v8

    goto :goto_0
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 7

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 211
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    move v6, v2

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Landroidx/core/os/LocaleListCompatWrapper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v4

    move v3, v4

    .line 212
    move v4, v3

    if-lez v4, :cond_0

    .line 213
    move v4, v2

    move v0, v4

    .line 216
    :goto_1
    return v0

    .line 210
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const v4, 0x7fffffff

    move v0, v4

    goto :goto_1
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 163
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 164
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    move-object v2, v1

    move-object v0, v2

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const-string v2, ""

    move-object v0, v2

    goto :goto_0

    .line 170
    :cond_1
    const-string v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    sget-object v1, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_EN_XA:Ljava/util/Locale;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_AR_XB:Ljava/util/Locale;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 6
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x1L
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    const/4 v4, 0x1

    move v0, v4

    .line 206
    :goto_0
    return v0

    .line 185
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 186
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 188
    :cond_1
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/os/LocaleListCompatWrapper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-static {v4}, Landroidx/core/os/LocaleListCompatWrapper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 191
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 193
    :cond_3
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/os/LocaleListCompatWrapper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 194
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 198
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 199
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 200
    :cond_4
    const/4 v4, 0x1

    .line 199
    :goto_1
    move v0, v4

    goto :goto_0

    .line 201
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 203
    :cond_6
    move-object v4, v1

    invoke-static {v4}, Landroidx/core/os/LocaleListCompatWrapper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 206
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_2
.end method

.method static toLanguageTag(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 155
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    move-object v3, v0

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 77
    const/4 v4, 0x1

    move v0, v4

    .line 91
    :goto_0
    return v0

    .line 79
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Landroidx/core/os/LocaleListCompatWrapper;

    if-nez v4, :cond_1

    .line 80
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 82
    :cond_1
    move-object v4, v1

    check-cast v4, Landroidx/core/os/LocaleListCompatWrapper;

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    move-object v2, v4

    .line 83
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    move-object v5, v2

    array-length v5, v5

    if-eq v4, v5, :cond_2

    .line 84
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 86
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 87
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 88
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 86
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v3, v1

    if-gt v2, v3, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    move v3, v1

    aget-object v2, v2, v3

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/os/LocaleListCompatWrapper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    const/4 v3, 0x1

    move v1, v3

    .line 97
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 98
    const/16 v3, 0x1f

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/Locale;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    move v3, v1

    move v0, v3

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 67
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    move v3, v2

    move v0, v3

    .line 71
    :goto_1
    return v0

    .line 66
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    move v0, v1

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 106
    move-object v3, v1

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 108
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 110
    move-object v3, v1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    move-object v3, v1

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 114
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
