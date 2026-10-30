.class public final Landroidx/core/telephony/mbms/MbmsHelper;
.super Ljava/lang/Object;
.source "MbmsHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestNameForService(Landroid/content/Context;Landroid/telephony/mbms/ServiceInfo;)Ljava/lang/CharSequence;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/telephony/mbms/ServiceInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanTargetApiAnnotation"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-ge v8, v9, :cond_0

    .line 58
    const/4 v8, 0x0

    move-object v0, v8

    .line 75
    :goto_0
    return-object v0

    .line 60
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    move-object v2, v8

    .line 62
    move-object v8, v1

    invoke-virtual {v8}, Landroid/telephony/mbms/ServiceInfo;->getNamedContentLocales()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    move v3, v8

    .line 63
    move v8, v3

    if-nez v8, :cond_1

    .line 64
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 66
    :cond_1
    move v8, v3

    new-array v8, v8, [Ljava/lang/String;

    move-object v4, v8

    .line 68
    const/4 v8, 0x0

    move v5, v8

    .line 69
    move-object v8, v1

    invoke-virtual {v8}, Landroid/telephony/mbms/ServiceInfo;->getNamedContentLocales()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Locale;

    move-object v7, v8

    .line 70
    move-object v8, v4

    move v9, v5

    move-object v10, v7

    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    goto :goto_1

    .line 74
    :cond_2
    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    move-object v6, v8

    .line 75
    move-object v8, v6

    if-nez v8, :cond_3

    const/4 v8, 0x0

    :goto_2
    move-object v0, v8

    goto :goto_0

    :cond_3
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/telephony/mbms/ServiceInfo;->getNameForLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_2
.end method
