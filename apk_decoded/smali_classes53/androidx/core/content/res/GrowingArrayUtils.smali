.class final Landroidx/core/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 57
    move v4, v1

    invoke-static {v4}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v4

    new-array v4, v4, [I

    move-object v3, v4

    .line 58
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    move-object v4, v3

    move-object v0, v4

    .line 61
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    aput v6, v4, v5

    .line 62
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public static append([JIJ)[J
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    array-length v6, v6

    if-le v5, v6, :cond_0

    .line 70
    move v5, v1

    invoke-static {v5}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v5

    new-array v5, v5, [J

    move-object v4, v5

    .line 71
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    move-object v5, v4

    move-object v0, v5

    .line 74
    :cond_0
    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    aput-wide v7, v5, v6

    .line 75
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 43
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    move v5, v1

    .line 44
    invoke-static {v5}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v5

    .line 43
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 45
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    move-object v4, v3

    move-object v0, v4

    .line 48
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 49
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public static append([ZIZ)[Z
    .locals 9

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 83
    move v4, v1

    invoke-static {v4}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v4

    new-array v4, v4, [Z

    move-object v3, v4

    .line 84
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    move-object v4, v3

    move-object v0, v4

    .line 87
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    aput-boolean v6, v4, v5

    .line 88
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public static growSize(I)I
    .locals 3

    .prologue
    .line 175
    move v0, p0

    move v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const/16 v1, 0x8

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static insert([IIII)[I
    .locals 11

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    array-length v6, v6

    if-gt v5, v6, :cond_0

    .line 123
    move-object v5, v0

    move v6, v2

    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    move-object v5, v0

    move v6, v2

    move v7, v3

    aput v7, v5, v6

    .line 125
    move-object v5, v0

    move-object v0, v5

    .line 132
    :goto_0
    return-object v0

    .line 128
    :cond_0
    move v5, v1

    invoke-static {v5}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v5

    new-array v5, v5, [I

    move-object v4, v5

    .line 129
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    move-object v5, v4

    move v6, v2

    move v7, v3

    aput v7, v5, v6

    .line 131
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    array-length v9, v9

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public static insert([JIIJ)[J
    .locals 13

    .prologue
    .line 139
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    array-length v7, v7

    if-gt v6, v7, :cond_0

    .line 140
    move-object v6, v0

    move v7, v2

    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v1

    move v11, v2

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move-object v6, v0

    move v7, v2

    move-wide v8, v3

    aput-wide v8, v6, v7

    .line 142
    move-object v6, v0

    move-object v0, v6

    .line 149
    :goto_0
    return-object v0

    .line 145
    :cond_0
    move v6, v1

    invoke-static {v6}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v6

    new-array v6, v6, [J

    move-object v5, v6

    .line 146
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    move-object v6, v5

    move v7, v2

    move-wide v8, v3

    aput-wide v8, v6, v7

    .line 148
    move-object v6, v0

    move v7, v2

    move-object v8, v5

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    array-length v10, v10

    move v11, v2

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    array-length v6, v6

    if-gt v5, v6, :cond_0

    .line 105
    move-object v5, v0

    move v6, v2

    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    move-object v5, v0

    move v6, v2

    move-object v7, v3

    aput-object v7, v5, v6

    .line 107
    move-object v5, v0

    move-object v0, v5

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    move v6, v1

    .line 111
    invoke-static {v6}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v6

    .line 110
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 112
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    move-object v5, v4

    move v6, v2

    move-object v7, v3

    aput-object v7, v5, v6

    .line 114
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    array-length v9, v9

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public static insert([ZIIZ)[Z
    .locals 11

    .prologue
    .line 156
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    array-length v6, v6

    if-gt v5, v6, :cond_0

    .line 157
    move-object v5, v0

    move v6, v2

    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    move-object v5, v0

    move v6, v2

    move v7, v3

    aput-boolean v7, v5, v6

    .line 159
    move-object v5, v0

    move-object v0, v5

    .line 166
    :goto_0
    return-object v0

    .line 162
    :cond_0
    move v5, v1

    invoke-static {v5}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v5

    new-array v5, v5, [Z

    move-object v4, v5

    .line 163
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    move-object v5, v4

    move v6, v2

    move v7, v3

    aput-boolean v7, v5, v6

    .line 165
    move-object v5, v0

    move v6, v2

    move-object v7, v4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    array-length v9, v9

    move v10, v2

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method
