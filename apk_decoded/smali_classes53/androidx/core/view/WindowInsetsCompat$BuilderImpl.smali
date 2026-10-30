.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final mInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mInsetsTypeMask:[Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 1598
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroidx/core/view/WindowInsetsCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    check-cast v4, Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {v3, v4}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-direct {v1, v2}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1599
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1601
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1602
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 1603
    return-void
.end method


# virtual methods
.method protected final applyInsetTypes()V
    .locals 7

    .prologue
    .line 1647
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-eqz v4, :cond_3

    .line 1648
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v5, 0x1

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v5

    aget-object v4, v4, v5

    move-object v1, v4

    .line 1649
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v5

    aget-object v4, v4, v5

    move-object v2, v4

    .line 1650
    move-object v4, v1

    if-eqz v4, :cond_4

    move-object v4, v2

    if-eqz v4, :cond_4

    .line 1651
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    .line 1658
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v5, 0x10

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v5

    aget-object v4, v4, v5

    move-object v3, v4

    .line 1659
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1661
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v5, 0x20

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v5

    aget-object v4, v4, v5

    move-object v3, v4

    .line 1662
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1664
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v5, 0x40

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v5

    aget-object v4, v4, v5

    move-object v3, v4

    .line 1665
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Landroidx/core/graphics/Insets;)V

    .line 1667
    :cond_3
    return-void

    .line 1652
    :cond_4
    move-object v4, v1

    if-eqz v4, :cond_5

    .line 1653
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    goto :goto_0

    .line 1654
    :cond_5
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1655
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    goto :goto_0
.end method

.method build()Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1671
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->applyInsetTypes()V

    .line 1672
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object v0, v1

    return-object v0
.end method

.method setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)V
    .locals 0
    .param p1    # Landroidx/core/view/DisplayCutoutCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1615
    return-void
.end method

.method setInsets(ILandroidx/core/graphics/Insets;)V
    .locals 7
    .param p2    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1619
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-nez v4, :cond_0

    .line 1620
    move-object v4, v0

    const/16 v5, 0x9

    new-array v5, v5, [Landroidx/core/graphics/Insets;

    iput-object v5, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    .line 1622
    :cond_0
    const/4 v4, 0x1

    move v3, v4

    :goto_0
    move v4, v3

    const/16 v5, 0x100

    if-gt v4, v5, :cond_2

    .line 1623
    move v4, v1

    move v5, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 1622
    :goto_1
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_0

    .line 1626
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    move v5, v3

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v5

    move-object v6, v2

    aput-object v6, v4, v5

    goto :goto_1

    .line 1628
    :cond_2
    return-void
.end method

.method setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V
    .locals 7
    .param p2    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1631
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1634
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Ignoring visibility inset not available for IME"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1637
    :cond_0
    return-void
.end method

.method setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1609
    return-void
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1613
    return-void
.end method

.method setSystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1607
    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1605
    return-void
.end method

.method setTappableElementInsets(Landroidx/core/graphics/Insets;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1611
    return-void
.end method

.method setVisible(IZ)V
    .locals 0

    .prologue
    .line 1639
    return-void
.end method
