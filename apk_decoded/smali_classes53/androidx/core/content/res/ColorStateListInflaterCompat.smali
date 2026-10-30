.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "ColorStateListInflaterCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    move-object v3, v5

    .line 89
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v9, v5

    move v5, v9

    move v6, v9

    move v4, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    move v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 95
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "No start tag found"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-static {v5, v6, v7, v8}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v1

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 114
    move-object v5, v4

    const-string v6, "selector"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    .line 116
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": invalid color state list tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Landroidx/core/content/res/ColorStateListInflaterCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v3, v4

    .line 66
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 70
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 68
    const-string v4, "CSLCompat"

    const-string v5, "Failed to inflate ColorStateList."

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 70
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 26
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v6, v20

    .line 132
    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    move-object/from16 v9, v20

    .line 133
    move-object/from16 v20, v9

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 134
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 136
    :cond_0
    :goto_0
    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    move/from16 v25, v20

    move/from16 v20, v25

    move/from16 v21, v25

    move/from16 v8, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move-object/from16 v20, v3

    .line 137
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    move/from16 v25, v20

    move/from16 v20, v25

    move/from16 v21, v25

    move/from16 v7, v21

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move/from16 v20, v8

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 138
    :cond_1
    move/from16 v20, v8

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move/from16 v20, v7

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    move-object/from16 v20, v3

    .line 139
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "item"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 140
    goto :goto_0

    .line 143
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    sget-object v23, Landroidx/core/R$styleable;->ColorStateListItem:[I

    invoke-static/range {v20 .. v23}, Landroidx/core/content/res/ColorStateListInflaterCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v12, v20

    .line 144
    move-object/from16 v20, v12

    sget v21, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const v22, -0xff01

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v13, v20

    .line 147
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v14, v20

    .line 148
    move-object/from16 v20, v12

    sget v21, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 149
    move-object/from16 v20, v12

    sget v21, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    move/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v14, v20

    .line 154
    :cond_3
    :goto_1
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 158
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v20

    move/from16 v16, v20

    .line 159
    move/from16 v20, v16

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v17, v20

    .line 160
    const/16 v20, 0x0

    move/from16 v18, v20

    :goto_2
    move/from16 v20, v18

    move/from16 v21, v16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 161
    move-object/from16 v20, v4

    move/from16 v21, v18

    invoke-interface/range {v20 .. v21}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v20

    move/from16 v19, v20

    .line 162
    move/from16 v20, v19

    const v21, 0x10101a5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    move/from16 v20, v19

    const v21, 0x101031f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    move/from16 v20, v19

    sget v21, Landroidx/core/R$attr;->alpha:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 165
    move-object/from16 v20, v17

    move/from16 v21, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v22, v4

    move/from16 v23, v18

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 166
    move/from16 v22, v19

    :goto_3
    aput v22, v20, v21

    .line 160
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 150
    :cond_5
    move-object/from16 v20, v12

    sget v21, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 151
    move-object/from16 v20, v12

    sget v21, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    move/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    move/from16 v14, v20

    goto/16 :goto_1

    .line 166
    :cond_6
    move/from16 v22, v19

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    goto :goto_3

    .line 169
    :cond_7
    move-object/from16 v20, v17

    move/from16 v21, v15

    invoke-static/range {v20 .. v21}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v20

    move-object/from16 v17, v20

    .line 174
    move/from16 v20, v13

    move/from16 v21, v14

    invoke-static/range {v20 .. v21}, Landroidx/core/content/res/ColorStateListInflaterCompat;->modulateColorAlpha(IF)I

    move-result v20

    move/from16 v18, v20

    .line 176
    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v18

    invoke-static/range {v20 .. v22}, Landroidx/core/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v20

    move-object/from16 v10, v20

    .line 177
    move-object/from16 v20, v9

    move/from16 v21, v11

    move-object/from16 v22, v17

    invoke-static/range {v20 .. v22}, Landroidx/core/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[I

    move-object/from16 v9, v20

    .line 178
    add-int/lit8 v11, v11, 0x1

    .line 179
    goto/16 :goto_0

    .line 181
    :cond_8
    move/from16 v20, v11

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    .line 182
    move/from16 v20, v11

    move/from16 v0, v20

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    move-object/from16 v13, v20

    .line 183
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v12

    const/16 v23, 0x0

    move/from16 v24, v11

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    move-object/from16 v20, v9

    const/16 v21, 0x0

    move-object/from16 v22, v13

    const/16 v23, 0x0

    move/from16 v24, v11

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    new-instance v20, Landroid/content/res/ColorStateList;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v13

    move-object/from16 v23, v12

    invoke-direct/range {v21 .. v23}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v2, v20

    return-object v2
.end method

.method private static modulateColorAlpha(IF)I
    .locals 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 198
    move v0, p0

    move v1, p1

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    move v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v2, v3

    .line 199
    move v3, v0

    const v4, 0xffffff

    and-int/2addr v3, v4

    move v4, v2

    const/16 v5, 0x18

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    :goto_0
    move-object v0, v4

    return-object v0

    .line 192
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_0
.end method
