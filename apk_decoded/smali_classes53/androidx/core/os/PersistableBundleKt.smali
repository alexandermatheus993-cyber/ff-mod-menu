.class public final Landroidx/core/os/PersistableBundleKt;
.super Ljava/lang/Object;
.source "PersistableBundle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a=\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0007\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "persistableBundleOf",
        "Landroid/os/PersistableBundle;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/os/PersistableBundle;",
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
.method public static final varargs persistableBundleOf([Lkotlin/Pair;)Landroid/os/PersistableBundle;
    .locals 25
    .param p0    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v3, p0

    move-object/from16 v18, v3

    const-string v19, "pairs"

    invoke-static/range {v18 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v18, Landroid/os/PersistableBundle;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/os/PersistableBundle;-><init>(I)V

    move-object/from16 v4, v18

    const/16 v18, 0x0

    move/from16 v5, v18

    const/16 v18, 0x0

    move/from16 v6, v18

    move-object/from16 v18, v4

    move-object/from16 v7, v18

    const/16 v18, 0x0

    move/from16 v8, v18

    .line 32
    move-object/from16 v18, v3

    move-object/from16 v9, v18

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    const/16 v18, 0x0

    move/from16 v11, v18

    :goto_0
    move/from16 v18, v11

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    move-object/from16 v18, v9

    move/from16 v19, v11

    aget-object v18, v18, v19

    move-object/from16 v12, v18

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v13, v18

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    .line 33
    move-object/from16 v18, v14

    move-object/from16 v15, v18

    move-object/from16 v18, v15

    if-nez v18, :cond_0

    .line 34
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 37
    :cond_0
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 38
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x16

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 39
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 41
    :cond_1
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Illegal value type boolean for key \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v18, Ljava/lang/Throwable;

    throw v18

    .line 44
    :cond_2
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Double;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 45
    :cond_3
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 46
    :cond_4
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 49
    :cond_5
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/String;

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 52
    :cond_6
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 53
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x16

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 54
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [Z

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_1

    .line 56
    :cond_7
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Illegal value type boolean[] for key \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v18, Ljava/lang/Throwable;

    throw v18

    .line 59
    :cond_8
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [D

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [D

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 60
    :cond_9
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [I

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [I

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 61
    :cond_a
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [J

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [J

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_1

    .line 64
    :cond_b
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 65
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v16, v18

    .line 66
    nop

    .line 68
    const-class v18, Ljava/lang/String;

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 69
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_c

    new-instance v21, Ljava/lang/NullPointerException;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const-string v23, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct/range {v22 .. v23}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_c
    check-cast v20, [Ljava/lang/String;

    invoke-virtual/range {v18 .. v20}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 72
    :cond_d
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v18

    .line 73
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    .line 74
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Illegal value array type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " for key \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 73
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v18, Ljava/lang/Throwable;

    throw v18

    .line 81
    :cond_e
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    .line 82
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Illegal value type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " for key \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v18, Ljava/lang/Throwable;

    throw v18

    .line 86
    :cond_f
    nop

    .line 31
    move-object/from16 v18, v4

    .line 86
    move-object/from16 v3, v18

    return-object v3
.end method
