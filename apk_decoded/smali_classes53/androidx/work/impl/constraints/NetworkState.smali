.class public Landroidx/work/impl/constraints/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# instance fields
.field private mIsConnected:Z

.field private mIsMetered:Z

.field private mIsNotRoaming:Z

.field private mIsValidated:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 7

    .prologue
    .line 33
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    .line 35
    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    .line 36
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    .line 37
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 79
    const/4 v3, 0x1

    move v0, v3

    .line 85
    :goto_0
    return v0

    .line 81
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

    .line 82
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 84
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/work/impl/constraints/NetworkState;

    move-object v2, v3

    .line 85
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 94
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 95
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x10

    .line 96
    :cond_1
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    if-eqz v2, :cond_2

    add-int/lit16 v1, v1, 0x100

    .line 97
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    if-eqz v2, :cond_3

    add-int/lit16 v1, v1, 0x1000

    .line 98
    :cond_3
    move v2, v1

    move v0, v2

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    move v0, v1

    return v0
.end method

.method public isMetered()Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    move v0, v1

    return v0
.end method

.method public isNotRoaming()Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    move v0, v1

    return v0
.end method

.method public isValidated()Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    const-string v1, "[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/work/impl/constraints/NetworkState;->mIsConnected:Z

    .line 105
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/work/impl/constraints/NetworkState;->mIsValidated:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/work/impl/constraints/NetworkState;->mIsMetered:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/work/impl/constraints/NetworkState;->mIsNotRoaming:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 104
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
