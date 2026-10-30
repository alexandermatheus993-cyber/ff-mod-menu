.class public final Landroidx/work/ArrayCreatingInputMerger;
.super Landroidx/work/InputMerger;
.source "ArrayCreatingInputMerger.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/work/InputMerger;-><init>()V

    return-void
.end method

.method private concatenateArrayAndNonArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 126
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 127
    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    move-object v5, v4

    move v6, v3

    move-object v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 129
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method private concatenateArrays(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    .line 109
    move-object v6, v2

    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 110
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 112
    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v5

    move v9, v3

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object v6, v5

    move-object v0, v6

    return-object v0
.end method

.method private concatenateNonArrays(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 119
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 120
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 121
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method private createArrayFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 134
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 135
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public merge(Ljava/util/List;)Landroidx/work/Data;
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/work/Data;",
            ">;)",
            "Landroidx/work/Data;"
        }
    .end annotation

    .prologue
    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v14, Landroidx/work/Data$Builder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Landroidx/work/Data$Builder;-><init>()V

    move-object v2, v14

    .line 56
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object v3, v14

    .line 58
    move-object v14, v1

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v4, v14

    :goto_0
    move-object v14, v4

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v14, v4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/Data;

    move-object v5, v14

    .line 59
    move-object v14, v5

    invoke-virtual {v14}, Landroidx/work/Data;->getKeyValueMap()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v6, v14

    :goto_1
    move-object v14, v6

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v14, v6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    move-object v7, v14

    .line 60
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 61
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v9, v14

    .line 62
    move-object v14, v9

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object v10, v14

    .line 65
    move-object v14, v3

    move-object v15, v8

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    .line 66
    move-object v14, v12

    if-nez v14, :cond_1

    .line 68
    move-object v14, v10

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 70
    move-object v14, v9

    move-object v11, v14

    .line 99
    :goto_2
    move-object v14, v3

    move-object v15, v8

    move-object/from16 v16, v11

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 100
    goto :goto_1

    .line 73
    :cond_0
    move-object v14, v0

    move-object v15, v9

    invoke-direct {v14, v15}, Landroidx/work/ArrayCreatingInputMerger;->createArrayFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    goto :goto_2

    .line 77
    :cond_1
    move-object v14, v12

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object v13, v14

    .line 79
    move-object v14, v13

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 81
    move-object v14, v13

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 82
    move-object v14, v0

    move-object v15, v12

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Landroidx/work/ArrayCreatingInputMerger;->concatenateArrays(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    goto :goto_2

    .line 84
    :cond_2
    move-object v14, v0

    move-object v15, v12

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Landroidx/work/ArrayCreatingInputMerger;->concatenateNonArrays(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    goto :goto_2

    .line 86
    :cond_3
    move-object v14, v13

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v13

    .line 87
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 89
    move-object v14, v0

    move-object v15, v12

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Landroidx/work/ArrayCreatingInputMerger;->concatenateArrayAndNonArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    goto :goto_2

    .line 90
    :cond_4
    move-object v14, v10

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v14, v10

    .line 91
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 93
    move-object v14, v0

    move-object v15, v9

    move-object/from16 v16, v12

    invoke-direct/range {v14 .. v16}, Landroidx/work/ArrayCreatingInputMerger;->concatenateArrayAndNonArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    goto :goto_2

    .line 95
    :cond_5
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 101
    :cond_6
    goto/16 :goto_0

    .line 103
    :cond_7
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroidx/work/Data$Builder;->putAll(Ljava/util/Map;)Landroidx/work/Data$Builder;

    move-result-object v14

    .line 104
    move-object v14, v2

    invoke-virtual {v14}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v14

    move-object v0, v14

    return-object v0
.end method
