.class Landroidx/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static sDrawMatrixField:Ljava/lang/reflect/Field;

.field private static sDrawMatrixFieldFetched:Z

.field private static sTryHiddenAnimateTransform:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 11
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_1

    .line 46
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->animateTransform(Landroid/graphics/Matrix;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    move-object v5, v1

    if-nez v5, :cond_3

    .line 50
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 51
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 52
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 53
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 54
    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 57
    :cond_2
    goto :goto_0

    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_4

    .line 58
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Landroidx/transition/ImageViewUtils;->hiddenAnimateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 60
    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 61
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 62
    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move-object v9, v2

    .line 63
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 62
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    const/4 v5, 0x0

    move-object v3, v5

    .line 65
    invoke-static {}, Landroidx/transition/ImageViewUtils;->fetchDrawMatrixField()V

    .line 66
    sget-object v5, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_5

    .line 68
    :try_start_0
    sget-object v5, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    move-object v3, v5

    .line 69
    move-object v5, v3

    if-nez v5, :cond_5

    .line 70
    new-instance v5, Landroid/graphics/Matrix;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v5

    .line 71
    sget-object v5, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_5
    :goto_1
    move-object v5, v3

    if-eqz v5, :cond_6

    .line 78
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 80
    :cond_6
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_0

    .line 73
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_1
.end method

.method private static fetchDrawMatrixField()V
    .locals 3

    .prologue
    .line 100
    sget-boolean v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    if-nez v1, :cond_0

    .line 102
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "mDrawMatrix"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    .line 103
    sget-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    .line 109
    :cond_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static hiddenAnimateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 5
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    sget-boolean v3, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    if-eqz v3, :cond_0

    .line 92
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->animateTransform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 94
    const/4 v3, 0x0

    sput-boolean v3, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    goto :goto_0
.end method
