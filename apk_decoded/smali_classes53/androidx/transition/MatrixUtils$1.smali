.class Landroidx/transition/MatrixUtils$1;
.super Landroid/graphics/Matrix;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Matrix can not be modified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 184
    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public postRotate(F)Z
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 166
    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public postRotate(FFF)Z
    .locals 5

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 160
    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public postScale(FF)Z
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 154
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public postScale(FFFF)Z
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 148
    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public postSkew(FF)Z
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 178
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public postSkew(FFFF)Z
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 172
    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public postTranslate(FF)Z
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 142
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 136
    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public preRotate(F)Z
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 118
    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public preRotate(FFF)Z
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 112
    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public preScale(FF)Z
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 106
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public preScale(FFFF)Z
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 100
    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public preSkew(FF)Z
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 130
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public preSkew(FFFF)Z
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 124
    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public preTranslate(FF)Z
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 94
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 38
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 33
    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 88
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 197
    const/4 v6, 0x0

    move v0, v6

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 190
    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public setRotate(F)V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 63
    return-void
.end method

.method public setRotate(FFF)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 58
    return-void
.end method

.method public setScale(FF)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 53
    return-void
.end method

.method public setScale(FFFF)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 48
    return-void
.end method

.method public setSinCos(FF)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 73
    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 68
    return-void
.end method

.method public setSkew(FF)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 83
    return-void
.end method

.method public setSkew(FFFF)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 78
    return-void
.end method

.method public setTranslate(FF)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 43
    return-void
.end method

.method public setValues([F)V
    .locals 3

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/transition/MatrixUtils$1;->oops()V

    .line 203
    return-void
.end method
