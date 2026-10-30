.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "IconCompatParcelizer.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 7

    .prologue
    .line 14
    move-object v0, p0

    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    move-object v1, v2

    .line 15
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v3

    iput v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 16
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray([BI)[B

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    .line 17
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    .line 18
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v3

    iput v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 19
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v3

    iput v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 20
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 21
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    .line 22
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    .line 23
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->onPostParceling()V

    .line 24
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 30
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/versionedparcelable/VersionedParcel;->isStream()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->onPreParceling(Z)V

    .line 31
    const/4 v2, -0x1

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    if-eq v2, v3, :cond_0

    .line 32
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 34
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    if-eqz v2, :cond_1

    .line 35
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BI)V

    .line 37
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    .line 38
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    :cond_2
    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    if-eq v2, v3, :cond_3

    .line 41
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 43
    :cond_3
    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    if-eq v2, v3, :cond_4

    .line 44
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 46
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 47
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 50
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 52
    :cond_6
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 53
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 55
    :cond_7
    return-void
.end method
