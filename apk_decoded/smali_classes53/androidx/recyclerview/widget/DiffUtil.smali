.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$CenteredArray;,
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$Diagonal;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final DIAGONAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private static backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v14

    move-object v15, v0

    invoke-virtual {v15}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v15

    sub-int/2addr v14, v15

    const/4 v15, 0x2

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    move v5, v14

    .line 275
    move-object v14, v0

    invoke-virtual {v14}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v14

    move-object v15, v0

    invoke-virtual {v15}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v15

    sub-int/2addr v14, v15

    move v6, v14

    .line 278
    move v14, v4

    neg-int v14, v14

    move v7, v14

    :goto_1
    move v14, v7

    move v15, v4

    if-gt v14, v15, :cond_7

    .line 287
    move v14, v7

    move v15, v4

    neg-int v15, v15

    if-eq v14, v15, :cond_0

    move v14, v7

    move v15, v4

    if-eq v14, v15, :cond_3

    move-object v14, v3

    move v15, v7

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v14

    move-object v15, v3

    move/from16 v16, v7

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 289
    :cond_0
    move-object v14, v3

    move v15, v7

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v14

    move/from16 v18, v14

    move/from16 v14, v18

    move/from16 v15, v18

    move v8, v15

    move v10, v14

    .line 295
    :goto_2
    move-object v14, v0

    iget v14, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object v15, v0

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    move/from16 v16, v10

    sub-int v15, v15, v16

    move/from16 v16, v7

    sub-int v15, v15, v16

    sub-int/2addr v14, v15

    move v11, v14

    .line 296
    move v14, v4

    if-eqz v14, :cond_1

    move v14, v10

    move v15, v8

    if-eq v14, v15, :cond_4

    :cond_1
    move v14, v11

    :goto_3
    move v9, v14

    .line 298
    :goto_4
    move v14, v10

    move-object v15, v0

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v14, v15, :cond_5

    move v14, v11

    move-object v15, v0

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v14, v15, :cond_5

    move-object v14, v1

    move v15, v10

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v16, v11

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    .line 300
    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 301
    add-int/lit8 v10, v10, -0x1

    .line 302
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 274
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 292
    :cond_3
    move-object v14, v3

    move v15, v7

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v14

    move v8, v14

    .line 293
    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v10, v14

    goto :goto_2

    .line 296
    :cond_4
    move v14, v11

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 305
    :cond_5
    move-object v14, v3

    move v15, v7

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v16}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 306
    move v14, v5

    if-eqz v14, :cond_6

    .line 309
    move v14, v6

    move v15, v7

    sub-int/2addr v14, v15

    move v12, v14

    .line 311
    move v14, v12

    move v15, v4

    neg-int v15, v15

    if-lt v14, v15, :cond_6

    move v14, v12

    move v15, v4

    if-gt v14, v15, :cond_6

    move-object v14, v2

    move v15, v12

    .line 313
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v14

    move v15, v10

    if-lt v14, v15, :cond_6

    .line 315
    new-instance v14, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    move-object v13, v14

    .line 317
    move-object v14, v13

    move v15, v10

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 318
    move-object v14, v13

    move v15, v11

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 319
    move-object v14, v13

    move v15, v8

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 320
    move-object v14, v13

    move v15, v9

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 321
    move-object v14, v13

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 322
    move-object v14, v13

    move-object v0, v14

    .line 326
    :goto_5
    return-object v0

    .line 278
    :cond_6
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    .line 326
    :cond_7
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_5
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 3
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 22
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 124
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v14

    move v2, v14

    .line 125
    move-object v14, v0

    invoke-virtual {v14}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v14

    move v3, v14

    .line 127
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v14

    .line 131
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v14

    .line 133
    move-object v14, v5

    new-instance v15, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v20, v3

    invoke-direct/range {v16 .. v20}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 135
    move v14, v2

    move v15, v3

    add-int/2addr v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    move v6, v14

    .line 139
    new-instance v14, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move/from16 v16, v6

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-direct/range {v15 .. v16}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    move-object v7, v14

    .line 140
    new-instance v14, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move/from16 v16, v6

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-direct/range {v15 .. v16}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    move-object v8, v14

    .line 143
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v14

    .line 144
    :goto_0
    move-object v14, v5

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 145
    move-object v14, v5

    move-object v15, v5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v14, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object v10, v14

    .line 146
    move-object v14, v10

    move-object v15, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-static/range {v14 .. v17}, Landroidx/recyclerview/widget/DiffUtil;->midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v14

    move-object v11, v14

    .line 147
    move-object v14, v11

    if-eqz v14, :cond_2

    .line 149
    move-object v14, v11

    invoke-virtual {v14}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v14

    if-lez v14, :cond_0

    .line 150
    move-object v14, v4

    move-object v15, v11

    invoke-virtual {v15}, Landroidx/recyclerview/widget/DiffUtil$Snake;->toDiagonal()Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 153
    :cond_0
    move-object v14, v9

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v14, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    :goto_1
    move-object v12, v14

    .line 155
    move-object v14, v12

    move-object v15, v10

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 156
    move-object v14, v12

    move-object v15, v10

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 157
    move-object v14, v12

    move-object v15, v11

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 158
    move-object v14, v12

    move-object v15, v11

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 159
    move-object v14, v5

    move-object v15, v12

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 163
    move-object v14, v10

    move-object v13, v14

    .line 164
    move-object v14, v13

    move-object v15, v10

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 165
    move-object v14, v13

    move-object v15, v10

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 166
    move-object v14, v13

    move-object v15, v11

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 167
    move-object v14, v13

    move-object v15, v11

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v15, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 168
    move-object v14, v5

    move-object v15, v13

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 173
    :goto_2
    goto/16 :goto_0

    .line 153
    :cond_1
    move-object v14, v9

    move-object v15, v9

    .line 154
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 153
    invoke-interface {v14, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/DiffUtil$Range;

    goto :goto_1

    .line 170
    :cond_2
    move-object v14, v9

    move-object v15, v10

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_2

    .line 175
    :cond_3
    move-object v14, v4

    sget-object v15, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    new-instance v14, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    .line 178
    invoke-virtual/range {v18 .. v18}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v18

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v19

    move/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    .line 177
    move-object v0, v14

    return-object v0
.end method

.method private static forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 20
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    const/16 v16, 0x2

    rem-int/lit8 v15, v15, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x1

    :goto_0
    move v6, v15

    .line 218
    move-object v15, v1

    invoke-virtual {v15}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v16

    sub-int v15, v15, v16

    move v7, v15

    .line 219
    move v15, v5

    neg-int v15, v15

    move v8, v15

    :goto_1
    move v15, v8

    move/from16 v16, v5

    move/from16 v0, v16

    if-gt v15, v0, :cond_7

    .line 226
    move v15, v8

    move/from16 v16, v5

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move v15, v8

    move/from16 v16, v5

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v15

    move-object/from16 v16, v3

    move/from16 v17, v8

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 228
    :cond_0
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v15

    move/from16 v19, v15

    move/from16 v15, v19

    move/from16 v16, v19

    move/from16 v9, v16

    move v11, v15

    .line 234
    :goto_2
    move-object v15, v1

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move/from16 v16, v11

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int v15, v15, v16

    move/from16 v16, v8

    sub-int v15, v15, v16

    move v12, v15

    .line 235
    move v15, v5

    if-eqz v15, :cond_1

    move v15, v11

    move/from16 v16, v9

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    :cond_1
    move v15, v12

    :goto_3
    move v10, v15

    .line 237
    :goto_4
    move v15, v11

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    move v15, v12

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    move-object v15, v2

    move/from16 v16, v11

    move/from16 v17, v12

    .line 239
    invoke-virtual/range {v15 .. v17}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 240
    add-int/lit8 v11, v11, 0x1

    .line 241
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 217
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 231
    :cond_3
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v15

    move v9, v15

    .line 232
    move v15, v9

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move v11, v15

    goto :goto_2

    .line 235
    :cond_4
    move v15, v12

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 244
    :cond_5
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 245
    move v15, v6

    if-eqz v15, :cond_6

    .line 248
    move v15, v7

    move/from16 v16, v8

    sub-int v15, v15, v16

    move v13, v15

    .line 250
    move v15, v13

    move/from16 v16, v5

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    move v15, v13

    move/from16 v16, v5

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-gt v15, v0, :cond_6

    move-object v15, v4

    move/from16 v16, v13

    .line 252
    invoke-virtual/range {v15 .. v16}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v15

    move/from16 v16, v11

    move/from16 v0, v16

    if-gt v15, v0, :cond_6

    .line 254
    new-instance v15, Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    move-object v14, v15

    .line 255
    move-object v15, v14

    move/from16 v16, v9

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 256
    move-object v15, v14

    move/from16 v16, v10

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 257
    move-object v15, v14

    move/from16 v16, v11

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 258
    move-object v15, v14

    move/from16 v16, v12

    move/from16 v0, v16

    iput v0, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 259
    move-object v15, v14

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 260
    move-object v15, v14

    move-object v1, v15

    .line 264
    :goto_5
    return-object v1

    .line 219
    :cond_6
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_1

    .line 264
    :cond_7
    const/4 v15, 0x0

    move-object v1, v15

    goto :goto_5
.end method

.method private static midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 192
    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 207
    :goto_0
    return-object v0

    .line 194
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v4, v7

    .line 195
    move-object v7, v2

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 196
    move-object v7, v3

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    invoke-virtual {v7, v8, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    .line 197
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_4

    .line 198
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/DiffUtil;->forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v7

    move-object v6, v7

    .line 199
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 200
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 202
    :cond_2
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/DiffUtil;->backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v7

    move-object v6, v7

    .line 203
    move-object v7, v6

    if-eqz v7, :cond_3

    .line 204
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 197
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 207
    :cond_4
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method
