.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x14
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl20"
.end annotation


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructorFetched:Z

.field private static sConsumedField:Ljava/lang/reflect/Field;

.field private static sConsumedFieldFetched:Z


# instance fields
.field private mInsets:Landroid/view/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1679
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1682
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 1686
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1687
    move-object v1, v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->createWindowInsetsInstance()Landroid/view/WindowInsets;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    .line 1688
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1690
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1691
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    .line 1692
    return-void
.end method

.method private static createWindowInsetsInstance()Landroid/view/WindowInsets;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1717
    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    if-nez v1, :cond_0

    .line 1719
    :try_start_0
    const-class v1, Landroid/view/WindowInsets;

    const-string v2, "CONSUMED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1723
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1725
    :cond_0
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 1727
    :try_start_1
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    move-object v0, v1

    .line 1728
    move-object v1, v0

    if-eqz v1, :cond_1

    .line 1729
    new-instance v1, Landroid/view/WindowInsets;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1755
    :goto_1
    return-object v0

    .line 1720
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1721
    const-string v1, "WindowInsetsCompat"

    const-string v2, "Could not retrieve WindowInsets.CONSUMED field"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0

    .line 1738
    :cond_1
    :goto_2
    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    if-nez v1, :cond_2

    .line 1740
    :try_start_2
    const-class v1, Landroid/view/WindowInsets;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1744
    :goto_3
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    .line 1746
    :cond_2
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_3

    .line 1748
    :try_start_3
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    goto :goto_1

    .line 1731
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1732
    const-string v1, "WindowInsetsCompat"

    const-string v2, "Could not get value from WindowInsets.CONSUMED field"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_2

    .line 1741
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 1742
    const-string v1, "WindowInsetsCompat"

    const-string v2, "Could not retrieve WindowInsets(Rect) constructor"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_3

    .line 1749
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 1750
    const-string v1, "WindowInsetsCompat"

    const-string v2, "Could not invoke WindowInsets(Rect) constructor"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 1755
    :cond_3
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method build()Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1705
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->applyInsetTypes()V

    .line 1706
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .locals 8
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1696
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    if-eqz v2, :cond_0

    .line 1697
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/Insets;->left:I

    move-object v5, v1

    iget v5, v5, Landroidx/core/graphics/Insets;->top:I

    move-object v6, v1

    iget v6, v6, Landroidx/core/graphics/Insets;->right:I

    move-object v7, v1

    iget v7, v7, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsets:Landroid/view/WindowInsets;

    .line 1700
    :cond_0
    return-void
.end method
