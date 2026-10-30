.class public Landroidx/constraintlayout/solver/state/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatio:F

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    const/4 v2, -0x2

    iput v2, v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_CONTENT:I

    .line 36
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    .line 37
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    .line 38
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 40
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    .line 41
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 42
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    const/4 v3, -0x2

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_CONTENT:I

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    .line 37
    move-object v2, v0

    const v3, 0x7fffffff

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    .line 38
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 40
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    .line 41
    move-object v2, v0

    sget-object v3, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 42
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    return-void
.end method

.method public static Fixed(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 6

    .prologue
    .line 67
    move v0, p0

    new-instance v2, Landroidx/constraintlayout/solver/state/Dimension;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 68
    move-object v2, v1

    move v3, v0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/Dimension;->fixed(I)Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v2

    .line 69
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    new-instance v2, Landroidx/constraintlayout/solver/state/Dimension;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 74
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/Dimension;->fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v2

    .line 75
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static Parent()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    new-instance v3, Landroidx/constraintlayout/solver/state/Dimension;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v4, v5}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 80
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/state/Dimension;->percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v3

    .line 81
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public static Spread()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Landroidx/constraintlayout/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Suggested(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 5

    .prologue
    .line 55
    move v0, p0

    new-instance v2, Landroidx/constraintlayout/solver/state/Dimension;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/constraintlayout/solver/state/Dimension;-><init>()V

    move-object v1, v2

    .line 56
    move-object v2, v1

    move v3, v0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/Dimension;->suggested(I)Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v2

    .line 57
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static Suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    new-instance v2, Landroidx/constraintlayout/solver/state/Dimension;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/constraintlayout/solver/state/Dimension;-><init>()V

    move-object v1, v2

    .line 62
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v2

    .line 63
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static Wrap()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 10

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v3

    if-nez v5, :cond_8

    .line 181
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v5, :cond_3

    .line 182
    move-object v5, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 183
    const/4 v5, 0x0

    move v4, v5

    .line 184
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v6, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v5, v6, :cond_2

    .line 185
    const/4 v5, 0x1

    move v4, v5

    .line 189
    :cond_0
    :goto_0
    move-object v5, v2

    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 233
    :cond_1
    :goto_1
    return-void

    .line 186
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v6, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    .line 187
    const/4 v5, 0x2

    move v4, v5

    goto :goto_0

    .line 191
    :cond_3
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    if-lez v5, :cond_4

    .line 192
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 194
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    const v6, 0x7fffffff

    if-ge v5, v6, :cond_5

    .line 195
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMaxWidth(I)V

    .line 197
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v6, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v5, v6, :cond_6

    .line 198
    move-object v5, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 199
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v6, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne v5, v6, :cond_7

    .line 200
    move-object v5, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 201
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 202
    move-object v5, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 203
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_1

    .line 207
    :cond_8
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v5, :cond_b

    .line 208
    move-object v5, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 209
    const/4 v5, 0x0

    move v4, v5

    .line 210
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v6, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v5, v6, :cond_a

    .line 211
    const/4 v5, 0x1

    move v4, v5

    .line 215
    :cond_9
    :goto_2
    move-object v5, v2

    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 216
    goto :goto_1

    .line 212
    :cond_a
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v6, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne v5, v6, :cond_9

    .line 213
    const/4 v5, 0x2

    move v4, v5

    goto :goto_2

    .line 217
    :cond_b
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    if-lez v5, :cond_c

    .line 218
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 220
    :cond_c
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    const v6, 0x7fffffff

    if-ge v5, v6, :cond_d

    .line 221
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMaxHeight(I)V

    .line 223
    :cond_d
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v6, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v5, v6, :cond_e

    .line 224
    move-object v5, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_1

    .line 225
    :cond_e
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v6, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne v5, v6, :cond_f

    .line 226
    move-object v5, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_1

    .line 227
    :cond_f
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 228
    move-object v5, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 229
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_1
.end method

.method public fixed(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 152
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 153
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 143
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 144
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 145
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 147
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method getRatio()F
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    move v0, v1

    return v0
.end method

.method getValue()I
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    move v0, v1

    return v0
.end method

.method public max(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    if-ltz v2, :cond_0

    .line 117
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    .line 119
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public max(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget-object v3, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v2, :cond_0

    .line 124
    move-object v2, v0

    sget-object v3, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 125
    move-object v2, v0

    const v3, 0x7fffffff

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    .line 127
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public min(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    .line 103
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    .line 105
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public min(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget-object v3, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 110
    move-object v2, v0

    const/4 v3, -0x2

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    .line 112
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    .line 98
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public ratio(F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setRatio(F)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    .line 170
    return-void
.end method

.method setValue(I)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 162
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 163
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 164
    return-void
.end method

.method public suggested(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 132
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 137
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 138
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
