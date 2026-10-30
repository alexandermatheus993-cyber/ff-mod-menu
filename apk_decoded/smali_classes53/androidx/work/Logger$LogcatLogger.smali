.class public Landroidx/work/Logger$LogcatLogger;
.super Landroidx/work/Logger;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogcatLogger"
.end annotation


# instance fields
.field private mLoggingLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/work/Logger;-><init>(I)V

    .line 120
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    .line 121
    return-void
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    .line 137
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 138
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v5, 0x6

    if-gt v4, v5, :cond_0

    .line 170
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 171
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_0

    .line 148
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 149
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    .line 126
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 127
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public varargs warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget v4, v4, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_0

    .line 159
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 160
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method
