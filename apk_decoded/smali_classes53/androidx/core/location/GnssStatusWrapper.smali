.class Landroidx/core/location/GnssStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GnssStatusWrapper.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/GnssStatus;


# direct methods
.method constructor <init>(Landroid/location/GnssStatus;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 38
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus;

    iput-object v3, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 125
    const/4 v3, 0x1

    move v0, v3

    .line 131
    :goto_0
    return v0

    .line 127
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Landroidx/core/location/GnssStatusWrapper;

    if-nez v3, :cond_1

    .line 128
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 130
    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/core/location/GnssStatusWrapper;

    move-object v2, v3

    .line 131
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v3, v4}, Landroid/location/GnssStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getAzimuthDegrees(I)F
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getBasebandCn0DbHz(I)F
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 116
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    move-result v2

    move v0, v2

    return v0

    .line 118
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 98
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v2

    move v0, v2

    return v0

    .line 100
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public getCn0DbHz(I)F
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getConstellationType(I)I
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getElevationDegrees(I)F
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getSatelliteCount()I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSvid(I)I
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public hasAlmanacData(I)Z
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 107
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->hasBasebandCn0DbHz(I)Z

    move-result v2

    move v0, v2

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 89
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v2

    move v0, v2

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public hasEphemerisData(I)Z
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {v1}, Landroid/location/GnssStatus;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public usedInFix(I)Z
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
