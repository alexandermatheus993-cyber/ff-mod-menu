.class public Landroidx/constraintlayout/solver/widgets/Guideline;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 37
    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 38
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 39
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 41
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 42
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mMinimumPosition:I

    .line 47
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 48
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 49
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v3, v3

    move v1, v3

    .line 50
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 51
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V
    .locals 14

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v9

    .line 216
    move-object v9, v3

    if-nez v9, :cond_0

    .line 269
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object v9, v3

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 220
    move-object v9, v3

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v5, v9

    .line 221
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v6, v9

    .line 222
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v9, :cond_1

    .line 223
    move-object v9, v3

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 224
    move-object v9, v3

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v5, v9

    .line 225
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_2
    move v6, v9

    .line 227
    :cond_1
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->resolved:Z

    if-eqz v9, :cond_8

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 228
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 232
    move-object v9, v1

    move-object v10, v7

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 233
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    .line 234
    move v9, v6

    if-eqz v9, :cond_2

    .line 235
    move-object v9, v1

    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 244
    :cond_2
    :goto_3
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->resolved:Z

    .line 245
    goto/16 :goto_0

    .line 221
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 225
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 237
    :cond_7
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 238
    move v9, v6

    if-eqz v9, :cond_2

    .line 239
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v8, v9

    .line 240
    move-object v9, v1

    move-object v10, v7

    move-object v11, v1

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 241
    move-object v9, v1

    move-object v10, v8

    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_3

    .line 247
    :cond_8
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 248
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 249
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v8, v9

    .line 250
    move-object v9, v1

    move-object v10, v7

    move-object v11, v8

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/16 v13, 0x8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v9

    .line 251
    move v9, v6

    if-eqz v9, :cond_9

    .line 252
    move-object v9, v1

    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 269
    :cond_9
    :goto_4
    goto/16 :goto_0

    .line 254
    :cond_a
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_c

    .line 255
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 256
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v8, v9

    .line 257
    move-object v9, v1

    move-object v10, v7

    move-object v11, v8

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v12, v12

    const/16 v13, 0x8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v9

    .line 258
    move v9, v6

    if-eqz v9, :cond_b

    .line 259
    move-object v9, v1

    move-object v10, v7

    move-object v11, v1

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 260
    move-object v9, v1

    move-object v10, v8

    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 262
    :cond_b
    goto :goto_4

    :cond_c
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_9

    .line 263
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 264
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v8, v9

    .line 265
    move-object v9, v1

    move-object v10, v1

    move-object v11, v7

    move-object v12, v8

    move-object v13, v0

    iget v13, v13, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 266
    invoke-static {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 265
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_4
.end method

.method public allowedInBarrier()Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 58
    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v3, v4

    .line 59
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 60
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 61
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 62
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 63
    return-void
.end method

.method public cyclePosition()V
    .locals 3

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 317
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 320
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_0

    .line 321
    :cond_2
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 323
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    goto :goto_0
.end method

.method public getAnchor()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v1

    return-object v0
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 6

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 147
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 128
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 129
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    .line 145
    :goto_0
    return-object v0

    .line 135
    :pswitch_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 136
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 145
    :pswitch_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getRelativeBegin()I
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    move v0, v1

    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x0

    move v0, v1

    .line 80
    :goto_0
    return v0

    .line 74
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 75
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 77
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 78
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 80
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getRelativeEnd()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    move v0, v1

    return v0
.end method

.method public getRelativePercent()F
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    move v0, v1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    const-string v1, "Guideline"

    move-object v0, v1

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v2

    move v1, v2

    .line 300
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 301
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v2

    move v1, v2

    .line 303
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 304
    return-void
.end method

.method inferRelativeEndPosition()V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 308
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 309
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 311
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 312
    return-void
.end method

.method inferRelativePercentPosition()V
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v1, v2

    .line 292
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 293
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v1, v2

    .line 295
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 296
    return-void
.end method

.method public isPercent()Z
    .locals 3

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isResolvedHorizontally()Z
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->resolved:Z

    move v0, v1

    return v0
.end method

.method public isResolvedVertically()Z
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->resolved:Z

    move v0, v1

    return v0
.end method

.method public setFinalValue(I)V
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 195
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->resolved:Z

    .line 196
    return-void
.end method

.method public setGuideBegin(I)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 164
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 165
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 166
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 168
    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 172
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 173
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 174
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 176
    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 156
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 157
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 158
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 160
    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 152
    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mMinimumPosition:I

    .line 121
    return-void
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 99
    :goto_0
    return-void

    .line 87
    :cond_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    .line 88
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 89
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 90
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 94
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 95
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v4, v4

    move v2, v4

    .line 96
    const/4 v4, 0x0

    move v3, v4

    :goto_2
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 97
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 92
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_1

    .line 99
    :cond_2
    goto :goto_0
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V
    .locals 6

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-nez v4, :cond_0

    .line 288
    :goto_0
    return-void

    .line 276
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 277
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 278
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setX(I)V

    .line 279
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setY(I)V

    .line 280
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setHeight(I)V

    .line 281
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setWidth(I)V

    .line 288
    :goto_1
    goto :goto_0

    .line 283
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setX(I)V

    .line 284
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setY(I)V

    .line 285
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setWidth(I)V

    .line 286
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setHeight(I)V

    goto :goto_1
.end method
