.class public final Landroidx/core/graphics/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# static fields
.field public static final NONE:Landroidx/core/graphics/Insets;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 36
    new-instance v0, Landroidx/core/graphics/Insets;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/core/graphics/Insets;-><init>(IIII)V

    sput-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/core/graphics/Insets;->left:I

    .line 45
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/core/graphics/Insets;->top:I

    .line 46
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/core/graphics/Insets;->right:I

    .line 47
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/core/graphics/Insets;->bottom:I

    .line 48
    return-void
.end method

.method public static add(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 7
    .param p0    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->left:I

    move-object v3, v1

    iget v3, v3, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/Insets;->top:I

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/Insets;->right:I

    move-object v5, v1

    iget v5, v5, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Landroidx/core/graphics/Insets;->bottom:I

    move-object v6, v1

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 7
    .param p0    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->left:I

    move-object v3, v1

    iget v3, v3, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/Insets;->right:I

    move-object v5, v1

    iget v5, v5, Landroidx/core/graphics/Insets;->right:I

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/core/graphics/Insets;->bottom:I

    move-object v6, v1

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 113
    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static min(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 7
    .param p0    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->left:I

    move-object v3, v1

    iget v3, v3, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/Insets;->right:I

    move-object v5, v1

    iget v5, v5, Landroidx/core/graphics/Insets;->right:I

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/core/graphics/Insets;->bottom:I

    move-object v6, v1

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 126
    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static of(IIII)Landroidx/core/graphics/Insets;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v0

    if-nez v4, :cond_0

    move v4, v1

    if-nez v4, :cond_0

    move v4, v2

    if-nez v4, :cond_0

    move v4, v3

    if-nez v4, :cond_0

    .line 64
    sget-object v4, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    move-object v0, v4

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Landroidx/core/graphics/Insets;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/core/graphics/Insets;-><init>(IIII)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;
    .locals 5
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object v2, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2, v3, v4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static subtract(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 7
    .param p0    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->left:I

    move-object v3, v1

    iget v3, v3, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/Insets;->right:I

    move-object v5, v1

    iget v5, v5, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Landroidx/core/graphics/Insets;->bottom:I

    move-object v6, v1

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 5
    .param p0    # Landroid/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/graphics/Insets;->left:I

    move-object v2, v0

    iget v2, v2, Landroid/graphics/Insets;->top:I

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Insets;->right:I

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static wrap(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;
    .locals 2
    .param p0    # Landroid/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 149
    :goto_0
    return v0

    .line 140
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

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 142
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/core/graphics/Insets;

    move-object v2, v3

    .line 144
    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    move-object v4, v2

    iget v4, v4, Landroidx/core/graphics/Insets;->bottom:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 145
    :cond_3
    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->left:I

    move-object v4, v2

    iget v4, v4, Landroidx/core/graphics/Insets;->left:I

    if-eq v3, v4, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 146
    :cond_4
    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->right:I

    move-object v4, v2

    iget v4, v4, Landroidx/core/graphics/Insets;->right:I

    if-eq v3, v4, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 147
    :cond_5
    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    move-object v4, v2

    iget v4, v4, Landroidx/core/graphics/Insets;->top:I

    if-eq v3, v4, :cond_6

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 149
    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->left:I

    move v1, v2

    .line 155
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    add-int/2addr v2, v3

    move v1, v2

    .line 156
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v2, v3

    move v1, v2

    .line 157
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    move v1, v2

    .line 158
    move v2, v1

    move v0, v2

    return v0
.end method

.method public toPlatformInsets()Landroid/graphics/Insets;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/Insets;->left:I

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->top:I

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/Insets;->right:I

    move-object v4, v0

    iget v4, v4, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insets{left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
