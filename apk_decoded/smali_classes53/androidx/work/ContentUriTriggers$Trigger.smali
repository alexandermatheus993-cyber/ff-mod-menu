.class public final Landroidx/work/ContentUriTriggers$Trigger;
.super Ljava/lang/Object;
.source "ContentUriTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ContentUriTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trigger"
.end annotation


# instance fields
.field private final mTriggerForDescendants:Z

.field private final mUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/Uri;Z)V
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    .line 90
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 114
    :goto_0
    return v0

    .line 110
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 112
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/work/ContentUriTriggers$Trigger;

    move-object v2, v3

    .line 114
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    move-object v4, v2

    iget-object v4, v4, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    .line 115
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 114
    :goto_1
    move v0, v3

    goto :goto_0

    .line 115
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/ContentUriTriggers$Trigger;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    move v1, v2

    .line 121
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 122
    move v2, v1

    move v0, v2

    return v0

    .line 121
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public shouldTriggerForDescendants()Z
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/ContentUriTriggers$Trigger;->mTriggerForDescendants:Z

    move v0, v1

    return v0
.end method
