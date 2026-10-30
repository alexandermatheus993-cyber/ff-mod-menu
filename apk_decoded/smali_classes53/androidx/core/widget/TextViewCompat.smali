.class public final Landroidx/core/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewCompat$OreoCallback;,
        Landroidx/core/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompat"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 456
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 457
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    .line 462
    :goto_0
    return v0

    .line 459
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 460
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 462
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 439
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 440
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    .line 445
    :goto_0
    return v0

    .line 442
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 443
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 445
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 422
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 423
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    .line 428
    :goto_0
    return v0

    .line 425
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 426
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 428
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 474
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    .line 479
    :goto_0
    return-object v0

    .line 476
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 477
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 479
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object v0, v1

    goto :goto_0
.end method

.method public static getAutoSizeTextType(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 406
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 407
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v1

    move v0, v1

    .line 412
    :goto_0
    return v0

    .line 409
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v1, :cond_1

    .line 410
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v1}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 412
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getCompoundDrawableTintList(Landroid/widget/TextView;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1009
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1010
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 1011
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .line 1015
    :goto_0
    return-object v0

    .line 1012
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v1, :cond_1

    .line 1013
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/TintableCompoundDrawablesView;

    invoke-interface {v1}, Landroidx/core/widget/TintableCompoundDrawablesView;->getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 1015
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getCompoundDrawableTintMode(Landroid/widget/TextView;)Landroid/graphics/PorterDuff$Mode;
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1044
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1045
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 1046
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .line 1050
    :goto_0
    return-object v0

    .line 1047
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v1, :cond_1

    .line 1048
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/TintableCompoundDrawablesView;

    invoke-interface {v1}, Landroidx/core/widget/TintableCompoundDrawablesView;->getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 1050
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    .line 296
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    .line 310
    :goto_0
    return-object v0

    .line 298
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    .line 299
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v1, v5

    .line 300
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 301
    move v5, v1

    if-eqz v5, :cond_1

    .line 303
    move-object v5, v2

    const/4 v6, 0x2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 304
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v4, v5

    .line 305
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v3

    aput-object v7, v5, v6

    .line 306
    move-object v5, v2

    const/4 v6, 0x2

    move-object v7, v4

    aput-object v7, v5, v6

    .line 308
    :cond_1
    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    .line 299
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 310
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 778
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public static getMaxLines(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 226
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 227
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    move v0, v1

    .line 244
    :goto_0
    return v0

    .line 230
    :cond_0
    sget-boolean v1, Landroidx/core/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    if-nez v1, :cond_1

    .line 231
    const-string v1, "mMaxMode"

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 232
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/widget/TextViewCompat;->sMaxModeFieldFetched:Z

    .line 234
    :cond_1
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMaxModeField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 236
    sget-boolean v1, Landroidx/core/widget/TextViewCompat;->sMaximumFieldFetched:Z

    if-nez v1, :cond_2

    .line 237
    const-string v1, "mMaximum"

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    .line 238
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/widget/TextViewCompat;->sMaximumFieldFetched:Z

    .line 240
    :cond_2
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    .line 241
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMaximumField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 244
    :cond_3
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static getMinLines(Landroid/widget/TextView;)I
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 252
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 253
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMinLines()I

    move-result v1

    move v0, v1

    .line 270
    :goto_0
    return v0

    .line 256
    :cond_0
    sget-boolean v1, Landroidx/core/widget/TextViewCompat;->sMinModeFieldFetched:Z

    if-nez v1, :cond_1

    .line 257
    const-string v1, "mMinMode"

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    .line 258
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/widget/TextViewCompat;->sMinModeFieldFetched:Z

    .line 260
    :cond_1
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMinModeField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 262
    sget-boolean v1, Landroidx/core/widget/TextViewCompat;->sMinimumFieldFetched:Z

    if-nez v1, :cond_2

    .line 263
    const-string v1, "mMinimum"

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    .line 264
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/widget/TextViewCompat;->sMinimumFieldFetched:Z

    .line 266
    :cond_2
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    .line 267
    sget-object v1, Landroidx/core/widget/TextViewCompat;->sMinimumField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 270
    :cond_3
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method private static getTextDirection(Landroid/text/TextDirectionHeuristic;)I
    .locals 3
    .param p0    # Landroid/text/TextDirectionHeuristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .prologue
    .line 963
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_0

    .line 964
    const/4 v1, 0x1

    move v0, v1

    .line 980
    :goto_0
    return v0

    .line 965
    :cond_0
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_1

    .line 966
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 967
    :cond_1
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_2

    .line 968
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 969
    :cond_2
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_3

    .line 970
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 971
    :cond_3
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_4

    .line 972
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 973
    :cond_4
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_5

    .line 974
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 975
    :cond_5
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_6

    .line 976
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 977
    :cond_6
    move-object v1, v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v1, v2, :cond_7

    .line 978
    const/4 v1, 0x7

    move v0, v1

    goto :goto_0

    .line 980
    :cond_7
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .prologue
    .line 907
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v5

    instance-of v5, v5, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v5, :cond_0

    .line 909
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    .line 954
    :goto_0
    return-object v0

    .line 912
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_3

    .line 913
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v5

    const/16 v6, 0xf

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 918
    move-object v5, v0

    .line 919
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v5

    move-object v1, v5

    .line 920
    move-object v5, v1

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v2, v5

    .line 923
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    move v3, v5

    .line 924
    move v5, v3

    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v5

    move v4, v5

    .line 925
    move v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    move v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 927
    :cond_1
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 929
    :cond_2
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 935
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_1
    move v1, v5

    .line 938
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextDirection()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 941
    move v5, v1

    if-eqz v5, :cond_5

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    :goto_2
    move-object v0, v5

    goto :goto_0

    .line 935
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 942
    :cond_5
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 944
    :pswitch_0
    sget-object v5, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 946
    :pswitch_1
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 948
    :pswitch_2
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 950
    :pswitch_3
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 952
    :pswitch_4
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 954
    :pswitch_5
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object v0, v5

    goto :goto_0

    .line 938
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 815
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 816
    new-instance v2, Landroidx/core/text/PrecomputedTextCompat$Params;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    move-object v0, v2

    .line 827
    :goto_0
    return-object v0

    .line 818
    :cond_0
    new-instance v2, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Landroid/text/TextPaint;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    .line 819
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v3, v4}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    move-object v1, v2

    .line 820
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 821
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-result-object v2

    .line 822
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-result-object v2

    .line 824
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 825
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    move-result-object v2

    .line 827
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->build()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 116
    :try_start_0
    const-class v3, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v1, v3

    .line 117
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 118
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 119
    const-string v3, "TextViewCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 130
    :goto_0
    return v0

    .line 127
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 128
    const-string v3, "TextViewCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve value of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 130
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0
.end method

.method public static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 10
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_1

    .line 362
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    move-object v5, v0

    instance-of v5, v5, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v5, :cond_0

    .line 365
    move-object v5, v0

    check-cast v5, Landroidx/core/widget/AutoSizeableTextView;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0
.end method

.method public static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_1

    .line 388
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v3, :cond_0

    .line 390
    move-object v3, v0

    check-cast v3, Landroidx/core/widget/AutoSizeableTextView;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0
.end method

.method public static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .locals 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 326
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_1

    .line 327
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v2, :cond_0

    .line 329
    move-object v2, v0

    check-cast v2, Landroidx/core/widget/AutoSizeableTextView;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0
.end method

.method public static setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 993
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 994
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 995
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v2, :cond_0

    .line 997
    move-object v2, v0

    check-cast v2, Landroidx/core/widget/TintableCompoundDrawablesView;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1027
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1028
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 1029
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v2, :cond_0

    .line 1031
    move-object v2, v0

    check-cast v2, Landroidx/core/widget/TintableCompoundDrawablesView;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 152
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_4

    .line 154
    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 155
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_2

    move-object v7, v3

    :goto_2
    move-object v8, v2

    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v1

    :goto_3
    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    goto :goto_0

    .line 154
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 155
    :cond_2
    move-object v7, v1

    goto :goto_2

    :cond_3
    move-object v9, v3

    goto :goto_3

    .line 157
    :cond_4
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 211
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_4

    .line 213
    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 214
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_2

    move v7, v3

    :goto_2
    move v8, v2

    .line 215
    move v9, v5

    if-eqz v9, :cond_3

    move v9, v1

    :goto_3
    move v10, v4

    .line 214
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 216
    goto :goto_0

    .line 213
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 214
    :cond_2
    move v7, v1

    goto :goto_2

    .line 215
    :cond_3
    move v9, v3

    goto :goto_3

    .line 217
    :cond_4
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_0

    .line 179
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_4

    .line 181
    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 182
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_2

    move-object v7, v3

    :goto_2
    move-object v8, v2

    .line 183
    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v1

    :goto_3
    move-object v10, v4

    .line 182
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 184
    goto :goto_0

    .line 181
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 182
    :cond_2
    move-object v7, v1

    goto :goto_2

    .line 183
    :cond_3
    move-object v9, v3

    goto :goto_3

    .line 185
    :cond_4
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .locals 5
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 506
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    .line 507
    invoke-static {v3, v4}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    .line 506
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 508
    return-void
.end method

.method public static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .locals 10
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 693
    move-object v0, p0

    move v1, p1

    move v5, v1

    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v5

    .line 694
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    .line 695
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 718
    :goto_0
    return-void

    .line 699
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    move-object v2, v5

    .line 701
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    move-object v5, v0

    .line 704
    invoke-virtual {v5}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 705
    :cond_1
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v3, v5

    .line 713
    :goto_1
    move v5, v1

    move v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 714
    move v5, v1

    move v6, v3

    add-int/2addr v5, v6

    move v4, v5

    .line 715
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    move v7, v4

    move-object v8, v0

    .line 716
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    .line 715
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 718
    :cond_2
    goto :goto_0

    .line 707
    :cond_3
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v3, v5

    goto :goto_1
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .locals 10
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 738
    move-object v0, p0

    move v1, p1

    move v5, v1

    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v5

    .line 740
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    move-object v2, v5

    .line 742
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    move-object v5, v0

    .line 745
    invoke-virtual {v5}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 746
    :cond_0
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v3, v5

    .line 754
    :goto_0
    move v5, v1

    move v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_1

    .line 755
    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    move v4, v5

    .line 756
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    move-object v8, v0

    .line 757
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    move v9, v4

    .line 756
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 759
    :cond_1
    return-void

    .line 748
    :cond_2
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v3, v5

    goto :goto_0
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 796
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v3

    .line 798
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v3

    move v2, v3

    .line 800
    move v3, v1

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 802
    move-object v3, v0

    move v4, v1

    move v5, v2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 804
    :cond_0
    return-void
.end method

.method public static setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/text/PrecomputedTextCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 884
    move-object v0, p0

    move-object v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 887
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat;->getPrecomputedText()Landroid/text/PrecomputedText;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    :goto_0
    return-void

    .line 889
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v3

    move-object v2, v3

    .line 890
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat;->getParams()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 891
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Given text can not be applied to TextView."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 893
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 5
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 283
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 284
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setTextMetricsParams(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 842
    move-object v0, p0

    move-object v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 843
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/widget/TextViewCompat;->getTextDirection(Landroid/text/TextDirectionHeuristic;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 846
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_2

    .line 847
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v3

    move v2, v3

    .line 850
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 853
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 856
    move-object v3, v0

    move v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 858
    :cond_1
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 869
    :goto_0
    return-void

    .line 862
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 866
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 867
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_0
.end method

.method public static wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-gt v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroidx/core/widget/TextViewCompat$OreoCallback;

    if-eqz v2, :cond_1

    .line 523
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .line 529
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Landroidx/core/widget/TextViewCompat$OreoCallback;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Landroidx/core/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    move-object v0, v2

    goto :goto_0
.end method
