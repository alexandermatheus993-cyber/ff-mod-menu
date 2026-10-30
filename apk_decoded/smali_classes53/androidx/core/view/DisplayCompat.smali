.class public final Landroidx/core/view/DisplayCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayCompat$ModeCompat;
    }
.end annotation


# static fields
.field private static final DISPLAY_SIZE_4K_HEIGHT:I = 0x870

.field private static final DISPLAY_SIZE_4K_WIDTH:I = 0xf00


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_0

    .line 202
    const-string v4, "sys.display-size"

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/core/view/DisplayCompat;->parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v4

    .line 203
    :goto_0
    move-object v2, v4

    .line 204
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 205
    move-object v4, v2

    move-object v0, v4

    .line 224
    :goto_1
    return-object v0

    .line 203
    :cond_0
    const-string v4, "vendor.display-size"

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/core/view/DisplayCompat;->parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v4

    goto :goto_0

    .line 206
    :cond_1
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/DisplayCompat;->isSonyBravia4kTv(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    new-instance v4, Landroid/graphics/Point;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0xf00

    const/16 v7, 0x870

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v4

    goto :goto_1

    .line 213
    :cond_2
    new-instance v4, Landroid/graphics/Point;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object v2, v4

    .line 214
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    .line 215
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v4

    move-object v3, v4

    .line 216
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 217
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 224
    :goto_2
    move-object v4, v2

    move-object v0, v4

    goto :goto_1

    .line 218
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_4

    .line 219
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_2

    .line 221
    :cond_4
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_2
.end method

.method public static getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ArrayReturn"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Landroidx/core/view/DisplayCompat;->getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v7

    move-object v2, v7

    .line 66
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_3

    .line 68
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v7

    move-object v3, v7

    .line 69
    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v3

    array-length v9, v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    .line 70
    const/4 v7, 0x0

    move v5, v7

    .line 71
    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 72
    move-object v7, v3

    move v8, v6

    aget-object v7, v7, v8

    move-object v8, v2

    invoke-static {v7, v8}, Landroidx/core/view/DisplayCompat;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    move-object v7, v4

    move v8, v6

    new-instance v9, Landroidx/core/view/DisplayCompat$ModeCompat;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    move v12, v6

    aget-object v11, v11, v12

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 76
    const/4 v7, 0x1

    move v5, v7

    .line 71
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    :cond_0
    move-object v7, v4

    move v8, v6

    new-instance v9, Landroidx/core/view/DisplayCompat$ModeCompat;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    move v12, v6

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 82
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 85
    move-object v7, v4

    new-instance v8, Landroidx/core/view/DisplayCompat$ModeCompat;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    invoke-direct {v9, v10}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 87
    :cond_2
    move-object v7, v4

    const/4 v8, 0x0

    new-array v8, v8, [Landroidx/core/view/DisplayCompat$ModeCompat;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroidx/core/view/DisplayCompat$ModeCompat;

    move-object v0, v7

    .line 91
    :goto_2
    return-object v0

    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [Landroidx/core/view/DisplayCompat$ModeCompat;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    new-instance v10, Landroidx/core/view/DisplayCompat$ModeCompat;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v2

    invoke-direct {v11, v12}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/graphics/Point;)V

    aput-object v10, v8, v9

    move-object v0, v7

    goto :goto_2
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 128
    move-object v3, v1

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 129
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 131
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 131
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private static isSonyBravia4kTv(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/DisplayCompat;->isTv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Sony"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BRAVIA"

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 236
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 233
    :goto_0
    move v0, v1

    return v0

    .line 236
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    move-object v0, p0

    move-object v2, v0

    const-string v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    move-object v1, v2

    .line 155
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 156
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 155
    :goto_0
    move v0, v2

    return v0

    .line 156
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static parseDisplaySize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 107
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 108
    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 109
    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 110
    move v4, v2

    if-lez v4, :cond_0

    move v4, v3

    if-lez v4, :cond_0

    .line 111
    new-instance v4, Landroid/graphics/Point;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v4

    return-object v0

    .line 114
    :cond_0
    new-instance v4, Ljava/lang/NumberFormatException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4
.end method

.method private static parsePhysicalDisplaySizeFromSystemProperties(Ljava/lang/String;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_0

    .line 174
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/DisplayCompat;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 176
    move-object v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Landroidx/core/view/DisplayCompat;->parseDisplaySize(Ljava/lang/String;)Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 185
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 185
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    move-object v3, v1

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    move-object v3, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_1

    :cond_0
    move-object v2, v0

    .line 144
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    move-object v3, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v2, v3, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    move-object v3, v1

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 143
    :goto_0
    move v0, v2

    return v0

    .line 144
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
