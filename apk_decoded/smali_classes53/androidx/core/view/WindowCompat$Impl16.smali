.class Landroidx/core/view/WindowCompat$Impl16;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl16"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .locals 8
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    move-object v0, p0

    move v1, p1

    const/16 v5, 0x700

    move v2, v5

    .line 150
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 151
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    move v4, v5

    .line 152
    move-object v5, v3

    move v6, v1

    if-eqz v6, :cond_0

    .line 153
    move v6, v4

    const/16 v7, -0x701

    and-int/lit16 v6, v6, -0x701

    .line 152
    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 155
    return-void

    .line 154
    :cond_0
    move v6, v4

    const/16 v7, 0x700

    or-int/lit16 v6, v6, 0x700

    goto :goto_0
.end method
