.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2009
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toPlatformType(I)I
    .locals 5

    .prologue
    .line 2017
    move v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 2018
    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    const/16 v4, 0x100

    if-gt v3, v4, :cond_1

    .line 2019
    move v3, v0

    move v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 2020
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 2018
    :cond_0
    :goto_1
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 2022
    :sswitch_0
    move v3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    .line 2023
    goto :goto_1

    .line 2025
    :sswitch_1
    move v3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    .line 2026
    goto :goto_1

    .line 2028
    :sswitch_2
    move v3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    .line 2029
    goto :goto_1

    .line 2031
    :sswitch_3
    move v3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    .line 2032
    goto :goto_1

    .line 2034
    :sswitch_4
    move v3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    .line 2035
    goto :goto_1

    .line 2037
    :sswitch_5
    move v3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    .line 2038
    goto :goto_1

    .line 2040
    :sswitch_6
    move v3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    .line 2041
    goto :goto_1

    .line 2043
    :sswitch_7
    move v3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    move v1, v3

    goto :goto_1

    .line 2048
    :cond_1
    move v3, v1

    move v0, v3

    return v0

    .line 2020
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method
