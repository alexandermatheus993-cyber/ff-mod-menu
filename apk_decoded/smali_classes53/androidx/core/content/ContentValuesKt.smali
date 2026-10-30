.class public final Landroidx/core/content/ContentValuesKt;
.super Ljava/lang/Object;
.source "ContentValues.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "contentValuesOf",
        "Landroid/content/ContentValues;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/content/ContentValues;",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final varargs contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;
    .locals 20
    .param p0    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v1, p0

    move-object v15, v1

    const-string v16, "pairs"

    invoke-static/range {v15 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v15, Landroid/content/ContentValues;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/content/ContentValues;-><init>(I)V

    move-object v2, v15

    const/4 v15, 0x0

    move v3, v15

    const/4 v15, 0x0

    move v4, v15

    move-object v15, v2

    move-object v5, v15

    const/4 v15, 0x0

    move v6, v15

    .line 29
    move-object v15, v1

    move-object v7, v15

    move-object v15, v7

    array-length v15, v15

    move v8, v15

    const/4 v15, 0x0

    move v9, v15

    :goto_0
    move v15, v9

    move/from16 v16, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    move-object v15, v7

    move/from16 v16, v9

    aget-object v15, v15, v16

    move-object v10, v15

    move-object v15, v10

    invoke-virtual {v15}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v11, v15

    move-object v15, v10

    invoke-virtual {v15}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    .line 30
    move-object v15, v12

    move-object v13, v15

    move-object v15, v13

    if-nez v15, :cond_0

    .line 31
    move-object v15, v5

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 29
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 32
    :cond_0
    move-object v15, v13

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_1

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_1
    move-object v15, v13

    instance-of v15, v15, Ljava/lang/Integer;

    if-eqz v15, :cond_2

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 34
    :cond_2
    move-object v15, v13

    instance-of v15, v15, Ljava/lang/Long;

    if-eqz v15, :cond_3

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 35
    :cond_3
    move-object v15, v13

    instance-of v15, v15, Ljava/lang/Boolean;

    if-eqz v15, :cond_4

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 36
    :cond_4
    move-object v15, v13

    instance-of v15, v15, Ljava/lang/Float;

    if-eqz v15, :cond_5

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 37
    :cond_5
    move-object v15, v13

    instance-of v15, v15, Ljava/lang/Double;

    if-eqz v15, :cond_6

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 38
    :cond_6
    move-object v15, v13

    instance-of v15, v15, [B

    if-eqz v15, :cond_7

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, [B

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 39
    :cond_7
    move-object v15, v13

    instance-of v15, v15, Ljava/lang/Byte;

    if-eqz v15, :cond_8

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Byte;

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto/16 :goto_1

    .line 40
    :cond_8
    move-object v15, v13

    instance-of v15, v15, Ljava/lang/Short;

    if-eqz v15, :cond_9

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Short;

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto/16 :goto_1

    .line 42
    :cond_9
    move-object v15, v12

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 43
    new-instance v15, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Illegal value type "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for key \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    .line 47
    :cond_a
    nop

    .line 28
    move-object v15, v2

    .line 47
    move-object v1, v15

    return-object v1
.end method
