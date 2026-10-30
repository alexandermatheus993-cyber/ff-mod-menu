.class public final Landroidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x100

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0x9

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1865
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static all()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1969
    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .locals 1

    .prologue
    .line 1888
    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .locals 1

    .prologue
    .line 1949
    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .locals 1

    .prologue
    .line 1896
    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .locals 6

    .prologue
    .line 1973
    move v0, p0

    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 1993
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1975
    :sswitch_0
    const/4 v1, 0x0

    move v0, v1

    .line 1991
    :goto_0
    return v0

    .line 1977
    :sswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 1979
    :sswitch_2
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 1981
    :sswitch_3
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 1983
    :sswitch_4
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 1985
    :sswitch_5
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 1987
    :sswitch_6
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 1989
    :sswitch_7
    const/4 v1, 0x7

    move v0, v1

    goto :goto_0

    .line 1991
    :sswitch_8
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 1973
    nop

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
        0x100 -> :sswitch_8
    .end sparse-switch
.end method

.method public static mandatorySystemGestures()I
    .locals 1

    .prologue
    .line 1926
    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .locals 1

    .prologue
    .line 1880
    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .locals 1

    .prologue
    .line 1872
    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .locals 1

    .prologue
    .line 1958
    const/4 v0, 0x7

    return v0
.end method

.method public static systemGestures()I
    .locals 1

    .prologue
    .line 1918
    const/16 v0, 0x10

    return v0
.end method

.method public static tappableElement()I
    .locals 1

    .prologue
    .line 1934
    const/16 v0, 0x40

    return v0
.end method
