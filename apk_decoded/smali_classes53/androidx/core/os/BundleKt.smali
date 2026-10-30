.class public final Landroidx/core/os/BundleKt;
.super Ljava/lang/Object;
.source "Bundle.kt"


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
        "bundleOf",
        "Landroid/os/Bundle;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/os/Bundle;",
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
.method public static final varargs bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;
    .locals 25
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
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v3, p0

    move-object/from16 v18, v3

    const-string v19, "pairs"

    invoke-static/range {v18 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v18, Landroid/os/Bundle;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/os/Bundle;-><init>(I)V

    move-object/from16 v4, v18

    const/16 v18, 0x0

    move/from16 v5, v18

    const/16 v18, 0x0

    move/from16 v6, v18

    move-object/from16 v18, v4

    move-object/from16 v7, v18

    const/16 v18, 0x0

    move/from16 v8, v18

    .line 33
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

    if-ge v0, v1, :cond_20

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

    .line 34
    move-object/from16 v18, v14

    move-object/from16 v15, v18

    move-object/from16 v18, v15

    if-nez v18, :cond_0

    .line 35
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 38
    :cond_0
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 39
    :cond_1
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Byte;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->byteValue()B

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_1

    .line 40
    :cond_2
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Character;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Character;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Character;->charValue()C

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_1

    .line 41
    :cond_3
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Double;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 42
    :cond_4
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Float;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->floatValue()F

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 43
    :cond_5
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 44
    :cond_6
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 45
    :cond_7
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Short;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->shortValue()S

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_1

    .line 48
    :cond_8
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/os/Bundle;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Landroid/os/Bundle;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 49
    :cond_9
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 50
    :cond_a
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/os/Parcelable;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Landroid/os/Parcelable;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 53
    :cond_b
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [Z

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_1

    .line 54
    :cond_c
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [B

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [B

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 55
    :cond_d
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [C

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [C

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_1

    .line 56
    :cond_e
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [D

    move/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [D

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 57
    :cond_f
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [F

    move/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [F

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 58
    :cond_10
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [I

    move/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [I

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 59
    :cond_11
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [J

    move/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [J

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_1

    .line 60
    :cond_12
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [S

    move/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, [S

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_1

    .line 63
    :cond_13
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 64
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

    .line 65
    nop

    .line 67
    const-class v18, Landroid/os/Parcelable;

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 68
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_14

    new-instance v21, Ljava/lang/NullPointerException;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const-string v23, "null cannot be cast to non-null type kotlin.Array<android.os.Parcelable>"

    invoke-direct/range {v22 .. v23}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_14
    check-cast v20, [Landroid/os/Parcelable;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 70
    :cond_15
    const-class v18, Ljava/lang/String;

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 71
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_16

    new-instance v21, Ljava/lang/NullPointerException;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const-string v23, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct/range {v22 .. v23}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_16
    check-cast v20, [Ljava/lang/String;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 73
    :cond_17
    const-class v18, Ljava/lang/CharSequence;

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 74
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    if-nez v21, :cond_18

    new-instance v21, Ljava/lang/NullPointerException;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const-string v23, "null cannot be cast to non-null type kotlin.Array<kotlin.CharSequence>"

    invoke-direct/range {v22 .. v23}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_18
    check-cast v20, [Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 76
    :cond_19
    const-class v18, Ljava/io/Serializable;

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 77
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/io/Serializable;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_1

    .line 80
    :cond_1a
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v18

    .line 81
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    .line 82
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

    .line 81
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v18, Ljava/lang/Throwable;

    throw v18

    .line 89
    :cond_1b
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/io/Serializable;

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Ljava/io/Serializable;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_1

    .line 92
    :cond_1c
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x12

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1d

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/os/IBinder;

    move/from16 v18, v0

    if-eqz v18, :cond_1d

    .line 93
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Landroid/os/IBinder;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_1

    .line 94
    :cond_1d
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1e

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/util/Size;

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    .line 95
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Landroid/util/Size;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    goto/16 :goto_1

    .line 96
    :cond_1e
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/util/SizeF;

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    .line 97
    move-object/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    check-cast v20, Landroid/util/SizeF;

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    goto/16 :goto_1

    .line 99
    :cond_1f
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    .line 100
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

    .line 105
    :cond_20
    nop

    .line 32
    move-object/from16 v18, v4

    .line 105
    move-object/from16 v3, v18

    return-object v3
.end method
