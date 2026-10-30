.class Landroidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
.super Ljava/lang/Object;
.source "ConcatAdapterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ConcatAdapterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrapperAndLocalPosition"
.end annotation


# instance fields
.field mInUse:Z

.field mLocalPosition:I

.field mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
