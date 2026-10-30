.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "RemoteActionCompatParcelizer.java"


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

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/app/RemoteActionCompat;
    .locals 7

    .prologue
    .line 14
    move-object v0, p0

    new-instance v2, Landroidx/core/app/RemoteActionCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    move-object v1, v2

    .line 15
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/app/RemoteActionCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    check-cast v3, Landroidx/core/graphics/drawable/IconCompat;

    iput-object v3, v2, Landroidx/core/app/RemoteActionCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 16
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 17
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    .line 18
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/app/RemoteActionCompat;->mActionIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, v2, Landroidx/core/app/RemoteActionCompat;->mActionIntent:Landroid/app/PendingIntent;

    .line 19
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/core/app/RemoteActionCompat;->mEnabled:Z

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean(ZI)Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/RemoteActionCompat;->mEnabled:Z

    .line 20
    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean(ZI)Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    .line 21
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 27
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/RemoteActionCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    .line 28
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;I)V

    .line 29
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;I)V

    .line 30
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/RemoteActionCompat;->mActionIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 31
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/RemoteActionCompat;->mEnabled:Z

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(ZI)V

    .line 32
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(ZI)V

    .line 33
    return-void
.end method
