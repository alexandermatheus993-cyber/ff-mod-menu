.class Landroidx/core/location/GpsStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GpsStatusWrapper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BEIDOU_PRN_COUNT:I = 0x23

.field private static final BEIDOU_PRN_OFFSET:I = 0xc8

.field private static final GLONASS_PRN_COUNT:I = 0x18

.field private static final GLONASS_PRN_OFFSET:I = 0x40

.field private static final GPS_PRN_COUNT:I = 0x20

.field private static final GPS_PRN_OFFSET:I = 0x0

.field private static final QZSS_SVID_MAX:I = 0xc8

.field private static final QZSS_SVID_MIN:I = 0xc1

.field private static final SBAS_PRN_MAX:I = 0x40

.field private static final SBAS_PRN_MIN:I = 0x21

.field private static final SBAS_PRN_OFFSET:I = -0x57


# instance fields
.field private mCachedIterator:Ljava/util/Iterator;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mWrapped"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedIteratorPosition:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mWrapped"
    .end annotation
.end field

.field private mCachedSatellite:Landroid/location/GpsSatellite;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mWrapped"
    .end annotation
.end field

.field private mCachedSatelliteCount:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mWrapped"
    .end annotation
.end field

.field private final mWrapped:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 61
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsStatus;

    iput-object v3, v2, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 62
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 63
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v3}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 64
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    .line 66
    return-void
.end method

.method private static getConstellationFromPrn(I)I
    .locals 3

    .prologue
    .line 189
    move v0, p0

    move v1, v0

    if-lez v1, :cond_0

    move v1, v0

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 190
    const/4 v1, 0x1

    move v0, v1

    .line 200
    :goto_0
    return v0

    .line 191
    :cond_0
    move v1, v0

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x40

    if-gt v1, v2, :cond_1

    .line 192
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 193
    :cond_1
    move v1, v0

    const/16 v2, 0x40

    if-le v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x58

    if-gt v1, v2, :cond_2

    .line 194
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 195
    :cond_2
    move v1, v0

    const/16 v2, 0xc8

    if-le v1, v2, :cond_3

    move v1, v0

    const/16 v2, 0xeb

    if-gt v1, v2, :cond_3

    .line 196
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 197
    :cond_3
    move v1, v0

    const/16 v2, 0xc1

    if-lt v1, v2, :cond_4

    move v1, v0

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_4

    .line 198
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 200
    :cond_4
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private getSatellite(I)Landroid/location/GpsSatellite;
    .locals 9

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 153
    move v5, v1

    move-object v6, v0

    :try_start_0
    iget v6, v6, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    if-ge v5, v6, :cond_0

    .line 154
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v6}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iput-object v6, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 155
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 157
    :cond_0
    :goto_0
    move-object v5, v0

    iget v5, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 158
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 159
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 160
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    .line 166
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    move-object v2, v5

    .line 167
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    move-object v5, v2

    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    move-object v0, v5

    return-object v0

    .line 163
    :cond_2
    move-object v5, v0

    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/GpsSatellite;

    iput-object v6, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private static getSvidFromPrn(I)I
    .locals 2

    .prologue
    .line 205
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 216
    :goto_0
    :pswitch_0
    move v1, v0

    move v0, v1

    return v0

    .line 207
    :pswitch_1
    add-int/lit8 v0, v0, 0x57

    .line 208
    goto :goto_0

    .line 210
    :pswitch_2
    add-int/lit8 v0, v0, -0x40

    .line 211
    goto :goto_0

    .line 213
    :pswitch_3
    add-int/lit16 v0, v0, -0xc8

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 174
    const/4 v3, 0x1

    move v0, v3

    .line 180
    :goto_0
    return v0

    .line 176
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Landroidx/core/location/GpsStatusWrapper;

    if-nez v3, :cond_1

    .line 177
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 179
    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/core/location/GpsStatusWrapper;

    move-object v2, v3

    .line 180
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getAzimuthDegrees(I)F
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getBasebandCn0DbHz(I)F
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

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
    .line 137
    move-object v0, p0

    move v1, p1

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
    .line 102
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getConstellationType(I)I
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 85
    const/4 v2, 0x1

    move v0, v2

    .line 87
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    invoke-static {v2}, Landroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getElevationDegrees(I)F
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getSatelliteCount()I
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    monitor-enter v5

    .line 71
    move-object v5, v0

    :try_start_0
    iget v5, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 72
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v5}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    move-object v3, v5

    .line 73
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 78
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    move-object v6, v1

    monitor-exit v6

    move v0, v5

    return v0

    .line 79
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public getSvid(I)I
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 94
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    move v0, v2

    .line 96
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    invoke-static {v2}, Landroidx/core/location/GpsStatusWrapper;->getSvidFromPrn(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public hasAlmanacData(I)Z
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->hasAlmanac()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasEphemerisData(I)Z
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->hasEphemeris()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public usedInFix(I)Z
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v2

    move v0, v2

    return v0
.end method
