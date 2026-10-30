.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# static fields
.field private static sTryIsAsynchronous:Z

.field private static sTrySetAsynchronous:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .locals 4
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    .line 98
    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    move v0, v2

    .line 109
    :goto_0
    return v0

    .line 100
    :cond_0
    sget-boolean v2, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 104
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    goto :goto_0

    .line 105
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 106
    const/4 v2, 0x0

    sput-boolean v2, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    .line 109
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .locals 5
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_0

    .line 72
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 84
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-boolean v3, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 79
    move-object v3, v0

    move v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/os/Message;->setAsynchronous(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_1
    :goto_1
    goto :goto_0

    .line 80
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 81
    const/4 v3, 0x0

    sput-boolean v3, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    goto :goto_1
.end method
