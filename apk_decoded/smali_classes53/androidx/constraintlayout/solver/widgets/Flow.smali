.class public Landroidx/constraintlayout/solver/widgets/Flow;
.super Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;-><init>()V

    .line 47
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 48
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 49
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 50
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 51
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 52
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 54
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 55
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 56
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 57
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 58
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 59
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 62
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    .line 64
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 65
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 68
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 72
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 76
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 77
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 80
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    move v0, v1

    return v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    move v0, v1

    return v0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    move v0, v1

    return v0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    move v0, v1

    return v0
.end method

.method private createAlignedConstraints(Z)V
    .locals 15

    .prologue
    .line 1121
    move-object v0, p0

    move/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v11, :cond_0

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v11, :cond_0

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v11, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    const/4 v11, 0x0

    move v2, v11

    :goto_1
    move v11, v2

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v11, v12, :cond_2

    .line 1128
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v12, v2

    aget-object v11, v11, v12

    move-object v3, v11

    .line 1129
    move-object v11, v3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1132
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    move v2, v11

    .line 1133
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    move v3, v11

    .line 1135
    const/4 v11, 0x0

    move-object v4, v11

    .line 1136
    const/4 v11, 0x0

    move v5, v11

    :goto_2
    move v11, v5

    move v12, v2

    if-ge v11, v12, :cond_9

    .line 1137
    move v11, v5

    move v6, v11

    .line 1138
    move v11, v1

    if-eqz v11, :cond_3

    .line 1139
    move v11, v2

    move v12, v5

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v6, v11

    .line 1141
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v12, v6

    aget-object v11, v11, v12

    move-object v7, v11

    .line 1142
    move-object v11, v7

    if-eqz v11, :cond_4

    move-object v11, v7

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    .line 1136
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1145
    :cond_5
    move v11, v5

    if-nez v11, :cond_6

    .line 1146
    move-object v11, v7

    move-object v12, v7

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1147
    move-object v11, v7

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1148
    move-object v11, v7

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1150
    :cond_6
    move v11, v5

    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_7

    .line 1151
    move-object v11, v7

    move-object v12, v7

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1153
    :cond_7
    move v11, v5

    if-lez v11, :cond_8

    .line 1154
    move-object v11, v7

    move-object v12, v7

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v4

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1155
    move-object v11, v4

    move-object v12, v4

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v7

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1157
    :cond_8
    move-object v11, v7

    move-object v4, v11

    goto :goto_3

    .line 1159
    :cond_9
    const/4 v11, 0x0

    move v5, v11

    :goto_4
    move v11, v5

    move v12, v3

    if-ge v11, v12, :cond_f

    .line 1160
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v12, v5

    aget-object v11, v11, v12

    move-object v6, v11

    .line 1161
    move-object v11, v6

    if-eqz v11, :cond_a

    move-object v11, v6

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_b

    .line 1159
    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1164
    :cond_b
    move v11, v5

    if-nez v11, :cond_c

    .line 1165
    move-object v11, v6

    move-object v12, v6

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1166
    move-object v11, v6

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1167
    move-object v11, v6

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1169
    :cond_c
    move v11, v5

    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_d

    .line 1170
    move-object v11, v6

    move-object v12, v6

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1172
    :cond_d
    move v11, v5

    if-lez v11, :cond_e

    .line 1173
    move-object v11, v6

    move-object v12, v6

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v4

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1174
    move-object v11, v4

    move-object v12, v4

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v6

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1176
    :cond_e
    move-object v11, v6

    move-object v4, v11

    goto :goto_5

    .line 1179
    :cond_f
    const/4 v11, 0x0

    move v5, v11

    :goto_6
    move v11, v5

    move v12, v2

    if-ge v11, v12, :cond_16

    .line 1180
    const/4 v11, 0x0

    move v6, v11

    :goto_7
    move v11, v6

    move v12, v3

    if-ge v11, v12, :cond_15

    .line 1181
    move v11, v6

    move v12, v2

    mul-int/2addr v11, v12

    move v12, v5

    add-int/2addr v11, v12

    move v7, v11

    .line 1182
    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 1183
    move v11, v5

    move v12, v3

    mul-int/2addr v11, v12

    move v12, v6

    add-int/2addr v11, v12

    move v7, v11

    .line 1185
    :cond_10
    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v12, v12

    if-lt v11, v12, :cond_12

    .line 1180
    :cond_11
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1188
    :cond_12
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v12, v7

    aget-object v11, v11, v12

    move-object v8, v11

    .line 1189
    move-object v11, v8

    if-eqz v11, :cond_11

    move-object v11, v8

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_13

    .line 1190
    goto :goto_8

    .line 1192
    :cond_13
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v12, v5

    aget-object v11, v11, v12

    move-object v9, v11

    .line 1193
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v12, v6

    aget-object v11, v11, v12

    move-object v10, v11

    .line 1194
    move-object v11, v8

    move-object v12, v9

    if-eq v11, v12, :cond_14

    .line 1195
    move-object v11, v8

    move-object v12, v8

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v9

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1196
    move-object v11, v8

    move-object v12, v8

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v9

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1198
    :cond_14
    move-object v11, v8

    move-object v12, v10

    if-eq v11, v12, :cond_11

    .line 1199
    move-object v11, v8

    move-object v12, v8

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v10

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1200
    move-object v11, v8

    move-object v12, v8

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v10

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    goto :goto_8

    .line 1179
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1204
    :cond_16
    goto/16 :goto_0
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 10

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    .line 201
    const/4 v4, 0x0

    move v0, v4

    .line 219
    :goto_0
    return v0

    .line 203
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_5

    .line 204
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v4, :cond_1

    .line 205
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 206
    :cond_1
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 207
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move v5, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v3, v4

    .line 208
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 209
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 210
    move-object v4, v0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 212
    :cond_2
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 213
    :cond_3
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 214
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 215
    :cond_4
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 216
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v0, v4

    goto :goto_0

    .line 219
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 10

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    .line 178
    const/4 v4, 0x0

    move v0, v4

    .line 196
    :goto_0
    return v0

    .line 180
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_5

    .line 181
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v4, :cond_1

    .line 182
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 183
    :cond_1
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 184
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move v5, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v3, v4

    .line 185
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 186
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 187
    move-object v4, v0

    move-object v5, v1

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 189
    :cond_2
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 190
    :cond_3
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 191
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 192
    :cond_4
    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 193
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v0, v4

    goto :goto_0

    .line 196
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 22

    .prologue
    .line 967
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    const/16 v18, 0x0

    move/from16 v9, v18

    .line 968
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 969
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 971
    move/from16 v18, v6

    if-nez v18, :cond_c

    .line 972
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    move/from16 v18, v0

    move/from16 v11, v18

    .line 973
    move/from16 v18, v11

    if-gtz v18, :cond_2

    .line 975
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 976
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 977
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_0
    move/from16 v18, v13

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 978
    move/from16 v18, v13

    if-lez v18, :cond_0

    .line 979
    move/from16 v18, v12

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v12, v18

    .line 981
    :cond_0
    move-object/from16 v18, v4

    move/from16 v19, v13

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 982
    move-object/from16 v18, v14

    if-nez v18, :cond_1

    .line 977
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 985
    :cond_1
    move/from16 v18, v12

    move-object/from16 v19, v3

    move-object/from16 v20, v14

    move/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v12, v18

    .line 986
    move/from16 v18, v12

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 1015
    :cond_2
    :goto_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 1016
    move-object/from16 v18, v3

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 1019
    :cond_3
    move/from16 v18, v10

    if-nez v18, :cond_4

    move/from16 v18, v6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    :cond_4
    move/from16 v18, v11

    if-nez v18, :cond_6

    move/from16 v18, v6

    if-nez v18, :cond_6

    .line 1021
    :cond_5
    const/16 v18, 0x1

    move/from16 v9, v18

    .line 1024
    :cond_6
    :goto_3
    move/from16 v18, v9

    if-nez v18, :cond_25

    .line 1028
    move/from16 v18, v6

    if-nez v18, :cond_10

    .line 1029
    move/from16 v18, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v11

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 1034
    :goto_4
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 1035
    :cond_7
    move-object/from16 v18, v3

    move/from16 v19, v11

    move/from16 v0, v19

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1039
    :goto_5
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 1040
    :cond_8
    move-object/from16 v18, v3

    move/from16 v19, v10

    move/from16 v0, v19

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1045
    :goto_6
    const/16 v18, 0x0

    move/from16 v12, v18

    :goto_7
    move/from16 v18, v12

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_19

    .line 1046
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_8
    move/from16 v18, v13

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_18

    .line 1047
    move/from16 v18, v13

    move/from16 v19, v11

    mul-int v18, v18, v19

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v14, v18

    .line 1048
    move/from16 v18, v6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1049
    move/from16 v18, v12

    move/from16 v19, v10

    mul-int v18, v18, v19

    move/from16 v19, v13

    add-int v18, v18, v19

    move/from16 v14, v18

    .line 1051
    :cond_9
    move/from16 v18, v14

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    .line 1046
    :cond_a
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 989
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 993
    :cond_c
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    move/from16 v18, v0

    move/from16 v10, v18

    .line 994
    move/from16 v18, v10

    if-gtz v18, :cond_2

    .line 996
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 997
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 998
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_a
    move/from16 v18, v13

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 999
    move/from16 v18, v13

    if-lez v18, :cond_d

    .line 1000
    move/from16 v18, v12

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v12, v18

    .line 1002
    :cond_d
    move-object/from16 v18, v4

    move/from16 v19, v13

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 1003
    move-object/from16 v18, v14

    if-nez v18, :cond_e

    .line 998
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 1006
    :cond_e
    move/from16 v18, v12

    move-object/from16 v19, v3

    move-object/from16 v20, v14

    move/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v12, v18

    .line 1007
    move/from16 v18, v12

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    .line 1008
    goto/16 :goto_2

    .line 1010
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1031
    :cond_10
    move/from16 v18, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    goto/16 :goto_4

    .line 1037
    :cond_11
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1042
    :cond_12
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1054
    :cond_13
    move-object/from16 v18, v4

    move/from16 v19, v14

    aget-object v18, v18, v19

    move-object/from16 v15, v18

    .line 1055
    move-object/from16 v18, v15

    if-nez v18, :cond_14

    .line 1056
    goto/16 :goto_9

    .line 1058
    :cond_14
    move-object/from16 v18, v3

    move-object/from16 v19, v15

    move/from16 v20, v7

    invoke-direct/range {v18 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v18

    move/from16 v16, v18

    .line 1059
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move/from16 v19, v12

    aget-object v18, v18, v19

    if-eqz v18, :cond_15

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move/from16 v19, v12

    aget-object v18, v18, v19

    .line 1060
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v18

    move/from16 v19, v16

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    .line 1061
    :cond_15
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move/from16 v19, v12

    move-object/from16 v20, v15

    aput-object v20, v18, v19

    .line 1063
    :cond_16
    move-object/from16 v18, v3

    move-object/from16 v19, v15

    move/from16 v20, v7

    invoke-direct/range {v18 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v18

    move/from16 v17, v18

    .line 1064
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    if-eqz v18, :cond_17

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    .line 1065
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v18

    move/from16 v19, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 1066
    :cond_17
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move/from16 v19, v13

    move-object/from16 v20, v15

    aput-object v20, v18, v19

    goto/16 :goto_9

    .line 1045
    :cond_18
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 1071
    :cond_19
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 1072
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_c
    move/from16 v18, v13

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    .line 1073
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 1074
    move-object/from16 v18, v14

    if-eqz v18, :cond_1b

    .line 1075
    move/from16 v18, v13

    if-lez v18, :cond_1a

    .line 1076
    move/from16 v18, v12

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v12, v18

    .line 1078
    :cond_1a
    move/from16 v18, v12

    move-object/from16 v19, v3

    move-object/from16 v20, v14

    move/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v12, v18

    .line 1072
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 1081
    :cond_1c
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 1082
    const/16 v18, 0x0

    move/from16 v14, v18

    :goto_d
    move/from16 v18, v14

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1f

    .line 1083
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move/from16 v19, v14

    aget-object v18, v18, v19

    move-object/from16 v15, v18

    .line 1084
    move-object/from16 v18, v15

    if-eqz v18, :cond_1e

    .line 1085
    move/from16 v18, v14

    if-lez v18, :cond_1d

    .line 1086
    move/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 1088
    :cond_1d
    move/from16 v18, v13

    move-object/from16 v19, v3

    move-object/from16 v20, v15

    move/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 1082
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 1091
    :cond_1f
    move-object/from16 v18, v8

    const/16 v19, 0x0

    move/from16 v20, v12

    aput v20, v18, v19

    .line 1092
    move-object/from16 v18, v8

    const/16 v19, 0x1

    move/from16 v20, v13

    aput v20, v18, v19

    .line 1094
    move/from16 v18, v6

    if-nez v18, :cond_22

    .line 1095
    move/from16 v18, v12

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_21

    .line 1096
    move/from16 v18, v11

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_20

    .line 1097
    add-int/lit8 v11, v11, -0x1

    .line 1115
    :goto_e
    goto/16 :goto_3

    .line 1099
    :cond_20
    const/16 v18, 0x1

    move/from16 v9, v18

    goto :goto_e

    .line 1102
    :cond_21
    const/16 v18, 0x1

    move/from16 v9, v18

    goto :goto_e

    .line 1105
    :cond_22
    move/from16 v18, v13

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_24

    .line 1106
    move/from16 v18, v10

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_23

    .line 1107
    add-int/lit8 v10, v10, -0x1

    goto :goto_e

    .line 1109
    :cond_23
    const/16 v18, 0x1

    move/from16 v9, v18

    goto :goto_e

    .line 1112
    :cond_24
    const/16 v18, 0x1

    move/from16 v9, v18

    goto :goto_e

    .line 1116
    :cond_25
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v20, v11

    aput v20, v18, v19

    .line 1117
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v20, v10

    aput v20, v18, v19

    .line 1118
    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 37

    .prologue
    .line 778
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v25, v4

    if-nez v25, :cond_0

    .line 916
    :goto_0
    return-void

    .line 782
    :cond_0
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 783
    new-instance v25, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object/from16 v36, v25

    move-object/from16 v25, v36

    move-object/from16 v26, v36

    move-object/from16 v27, v2

    move/from16 v28, v5

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v6

    invoke-direct/range {v26 .. v33}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    move-object/from16 v8, v25

    .line 784
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v26, v8

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 786
    const/16 v25, 0x0

    move/from16 v9, v25

    .line 788
    move/from16 v25, v5

    if-nez v25, :cond_9

    .line 789
    const/16 v25, 0x0

    move/from16 v10, v25

    .line 790
    const/16 v25, 0x0

    move/from16 v11, v25

    :goto_1
    move/from16 v25, v11

    move/from16 v26, v4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 791
    move-object/from16 v25, v3

    move/from16 v26, v11

    aget-object v25, v25, v26

    move-object/from16 v12, v25

    .line 792
    move-object/from16 v25, v2

    move-object/from16 v26, v12

    move/from16 v27, v6

    invoke-direct/range {v25 .. v27}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v25

    move/from16 v13, v25

    .line 793
    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v25

    sget-object v26, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 794
    add-int/lit8 v9, v9, 0x1

    .line 796
    :cond_1
    move/from16 v25, v10

    move/from16 v26, v6

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    move/from16 v25, v10

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v26, v13

    add-int v25, v25, v26

    move/from16 v26, v6

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    :cond_2
    move-object/from16 v25, v8

    invoke-static/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v25

    if-eqz v25, :cond_4

    const/16 v25, 0x1

    :goto_2
    move/from16 v14, v25

    .line 797
    move/from16 v25, v14

    if-nez v25, :cond_3

    move/from16 v25, v11

    if-lez v25, :cond_3

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    move/from16 v25, v0

    if-lez v25, :cond_3

    move/from16 v25, v11

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    move/from16 v26, v0

    rem-int v25, v25, v26

    if-nez v25, :cond_3

    .line 798
    const/16 v25, 0x1

    move/from16 v14, v25

    .line 800
    :cond_3
    move/from16 v25, v14

    if-eqz v25, :cond_5

    .line 801
    move/from16 v25, v13

    move/from16 v10, v25

    .line 802
    new-instance v25, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object/from16 v36, v25

    move-object/from16 v25, v36

    move-object/from16 v26, v36

    move-object/from16 v27, v2

    move/from16 v28, v5

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v6

    invoke-direct/range {v26 .. v33}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    move-object/from16 v8, v25

    .line 803
    move-object/from16 v25, v8

    move/from16 v26, v11

    invoke-virtual/range {v25 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 804
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v26, v8

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 812
    :goto_3
    move-object/from16 v25, v8

    move-object/from16 v26, v12

    invoke-virtual/range {v25 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 790
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 796
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 806
    :cond_5
    move/from16 v25, v11

    if-lez v25, :cond_6

    .line 807
    move/from16 v25, v10

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    move/from16 v26, v0

    move/from16 v27, v13

    add-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v10, v25

    goto :goto_3

    .line 809
    :cond_6
    move/from16 v25, v13

    move/from16 v10, v25

    goto :goto_3

    .line 841
    :cond_7
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v10, v25

    .line 843
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v11, v25

    .line 844
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v12, v25

    .line 845
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v13, v25

    .line 846
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v14, v25

    .line 848
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v25

    move/from16 v15, v25

    .line 849
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v25

    move/from16 v16, v25

    .line 850
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v25

    move/from16 v17, v25

    .line 851
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v25

    move/from16 v18, v25

    .line 853
    const/16 v25, 0x0

    move/from16 v19, v25

    .line 854
    const/16 v25, 0x0

    move/from16 v20, v25

    .line 856
    move-object/from16 v25, v2

    .line 857
    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v25

    sget-object v26, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_8

    move-object/from16 v25, v2

    .line 858
    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v25

    sget-object v26, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_10

    :cond_8
    const/16 v25, 0x1

    :goto_4
    move/from16 v21, v25

    .line 860
    move/from16 v25, v9

    if-lez v25, :cond_12

    move/from16 v25, v21

    if-eqz v25, :cond_12

    .line 862
    const/16 v25, 0x0

    move/from16 v22, v25

    :goto_5
    move/from16 v25, v22

    move/from16 v26, v10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    .line 863
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object/from16 v23, v25

    .line 864
    move/from16 v25, v5

    if-nez v25, :cond_11

    .line 865
    move-object/from16 v25, v23

    move/from16 v26, v6

    move-object/from16 v27, v23

    invoke-virtual/range {v27 .. v27}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v27

    sub-int v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 862
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 815
    :cond_9
    const/16 v25, 0x0

    move/from16 v10, v25

    .line 816
    const/16 v25, 0x0

    move/from16 v11, v25

    :goto_7
    move/from16 v25, v11

    move/from16 v26, v4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 817
    move-object/from16 v25, v3

    move/from16 v26, v11

    aget-object v25, v25, v26

    move-object/from16 v12, v25

    .line 818
    move-object/from16 v25, v2

    move-object/from16 v26, v12

    move/from16 v27, v6

    invoke-direct/range {v25 .. v27}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v25

    move/from16 v13, v25

    .line 819
    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v25

    sget-object v26, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 820
    add-int/lit8 v9, v9, 0x1

    .line 822
    :cond_a
    move/from16 v25, v10

    move/from16 v26, v6

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    move/from16 v25, v10

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v26, v13

    add-int v25, v25, v26

    move/from16 v26, v6

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    :cond_b
    move-object/from16 v25, v8

    invoke-static/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v25

    if-eqz v25, :cond_d

    const/16 v25, 0x1

    :goto_8
    move/from16 v14, v25

    .line 823
    move/from16 v25, v14

    if-nez v25, :cond_c

    move/from16 v25, v11

    if-lez v25, :cond_c

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    move/from16 v25, v0

    if-lez v25, :cond_c

    move/from16 v25, v11

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    move/from16 v26, v0

    rem-int v25, v25, v26

    if-nez v25, :cond_c

    .line 824
    const/16 v25, 0x1

    move/from16 v14, v25

    .line 826
    :cond_c
    move/from16 v25, v14

    if-eqz v25, :cond_e

    .line 827
    move/from16 v25, v13

    move/from16 v10, v25

    .line 828
    new-instance v25, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object/from16 v36, v25

    move-object/from16 v25, v36

    move-object/from16 v26, v36

    move-object/from16 v27, v2

    move/from16 v28, v5

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move/from16 v33, v6

    invoke-direct/range {v26 .. v33}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    move-object/from16 v8, v25

    .line 829
    move-object/from16 v25, v8

    move/from16 v26, v11

    invoke-virtual/range {v25 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 830
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v26, v8

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 838
    :goto_9
    move-object/from16 v25, v8

    move-object/from16 v26, v12

    invoke-virtual/range {v25 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 816
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 822
    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 832
    :cond_e
    move/from16 v25, v11

    if-lez v25, :cond_f

    .line 833
    move/from16 v25, v10

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    move/from16 v26, v0

    move/from16 v27, v13

    add-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v10, v25

    goto :goto_9

    .line 835
    :cond_f
    move/from16 v25, v13

    move/from16 v10, v25

    goto :goto_9

    .line 858
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 867
    :cond_11
    move-object/from16 v25, v23

    move/from16 v26, v6

    move-object/from16 v27, v23

    invoke-virtual/range {v27 .. v27}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v27

    sub-int v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto/16 :goto_6

    .line 872
    :cond_12
    const/16 v25, 0x0

    move/from16 v22, v25

    :goto_a
    move/from16 v25, v22

    move/from16 v26, v10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_17

    .line 873
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move/from16 v26, v22

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object/from16 v23, v25

    .line 874
    move/from16 v25, v5

    if-nez v25, :cond_15

    .line 875
    move/from16 v25, v22

    move/from16 v26, v10

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 876
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move/from16 v26, v22

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object/from16 v24, v25

    .line 877
    move-object/from16 v25, v24

    invoke-static/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v14, v25

    .line 878
    const/16 v25, 0x0

    move/from16 v18, v25

    .line 883
    :goto_b
    move-object/from16 v25, v23

    invoke-static/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v24, v25

    .line 884
    move-object/from16 v25, v23

    move/from16 v26, v5

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v16

    move/from16 v33, v17

    move/from16 v34, v18

    move/from16 v35, v6

    invoke-virtual/range {v25 .. v35}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 886
    move-object/from16 v25, v24

    move-object/from16 v12, v25

    .line 887
    const/16 v25, 0x0

    move/from16 v16, v25

    .line 888
    move/from16 v25, v19

    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v19, v25

    .line 889
    move/from16 v25, v20

    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v20, v25

    .line 890
    move/from16 v25, v22

    if-lez v25, :cond_13

    .line 891
    move/from16 v25, v20

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v20, v25

    .line 872
    :cond_13
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 880
    :cond_14
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v14, v25

    .line 881
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v25

    move/from16 v18, v25

    goto :goto_b

    .line 894
    :cond_15
    move/from16 v25, v22

    move/from16 v26, v10

    const/16 v27, 0x1

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    .line 895
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move/from16 v26, v22

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object/from16 v24, v25

    .line 896
    move-object/from16 v25, v24

    invoke-static/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v13, v25

    .line 897
    const/16 v25, 0x0

    move/from16 v17, v25

    .line 902
    :goto_d
    move-object/from16 v25, v23

    invoke-static/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v24, v25

    .line 903
    move-object/from16 v25, v23

    move/from16 v26, v5

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v16

    move/from16 v33, v17

    move/from16 v34, v18

    move/from16 v35, v6

    invoke-virtual/range {v25 .. v35}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 905
    move-object/from16 v25, v24

    move-object/from16 v11, v25

    .line 906
    const/16 v25, 0x0

    move/from16 v15, v25

    .line 907
    move/from16 v25, v19

    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v19, v25

    .line 908
    move/from16 v25, v20

    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v20, v25

    .line 909
    move/from16 v25, v22

    if-lez v25, :cond_13

    .line 910
    move/from16 v25, v19

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v19, v25

    goto/16 :goto_c

    .line 899
    :cond_16
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v25, v0

    move-object/from16 v13, v25

    .line 900
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v25

    move/from16 v17, v25

    goto :goto_d

    .line 914
    :cond_17
    move-object/from16 v25, v7

    const/16 v26, 0x0

    move/from16 v27, v19

    aput v27, v25, v26

    .line 915
    move-object/from16 v25, v7

    const/16 v26, 0x1

    move/from16 v27, v20

    aput v27, v25, v26

    .line 916
    goto/16 :goto_0
.end method

.method private measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 22

    .prologue
    .line 931
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v10, v3

    if-nez v10, :cond_0

    .line 952
    :goto_0
    return-void

    .line 934
    :cond_0
    const/4 v10, 0x0

    move-object v7, v10

    .line 935
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 936
    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    move-object v12, v1

    move v13, v4

    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v0

    move/from16 v18, v5

    invoke-direct/range {v11 .. v18}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    move-object v7, v10

    .line 937
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 945
    :goto_1
    const/4 v10, 0x0

    move v8, v10

    :goto_2
    move v10, v8

    move v11, v3

    if-ge v10, v11, :cond_2

    .line 946
    move-object v10, v2

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 947
    move-object v10, v7

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 945
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 939
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object v7, v10

    .line 940
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->clear()V

    .line 941
    move-object v10, v7

    move v11, v4

    move-object v12, v1

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v13, v1

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v14, v1

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v15, v1

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v1

    .line 942
    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v16

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v18

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v19

    move/from16 v20, v5

    .line 941
    invoke-virtual/range {v10 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    goto :goto_1

    .line 950
    :cond_2
    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v12

    aput v12, v10, v11

    .line 951
    move-object v10, v6

    const/4 v11, 0x1

    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v12

    aput v12, v10, v11

    .line 952
    goto/16 :goto_0
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V
    .locals 13

    .prologue
    .line 1218
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V

    .line 1220
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v7

    :goto_0
    move v3, v7

    .line 1221
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    packed-switch v7, :pswitch_data_0

    .line 1240
    :cond_0
    :goto_1
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 1241
    return-void

    .line 1220
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1223
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 1224
    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_3

    .line 1225
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object v6, v7

    .line 1226
    move-object v7, v6

    move v8, v3

    move v9, v5

    move v10, v5

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1224
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1226
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 1228
    :cond_3
    goto :goto_1

    .line 1230
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1231
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    move-object v4, v7

    .line 1232
    move-object v7, v4

    move v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1233
    goto :goto_1

    .line 1237
    :pswitch_2
    move-object v7, v0

    move v8, v3

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/Flow;->createAlignedConstraints(Z)V

    goto :goto_1

    .line 1221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
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
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 86
    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v3, v4

    .line 88
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 89
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 90
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 91
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 92
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 93
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 95
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 96
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 97
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 98
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 99
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 100
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    .line 102
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 103
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    .line 105
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 106
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 107
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 109
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 111
    move-object v4, v0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 112
    return-void
.end method

.method public measure(IIII)V
    .locals 27

    .prologue
    .line 227
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    move/from16 v21, v0

    if-lez v21, :cond_0

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChildren()Z

    move-result v21

    if-nez v21, :cond_0

    .line 228
    move-object/from16 v21, v2

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    .line 229
    move-object/from16 v21, v2

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 327
    :goto_0
    return-void

    .line 233
    :cond_0
    const/16 v21, 0x0

    move/from16 v7, v21

    .line 234
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 235
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v21

    move/from16 v9, v21

    .line 236
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v21

    move/from16 v10, v21

    .line 237
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v21

    move/from16 v11, v21

    .line 238
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v21

    move/from16 v12, v21

    .line 240
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 241
    move/from16 v21, v4

    move/from16 v22, v9

    sub-int v21, v21, v22

    move/from16 v22, v10

    sub-int v21, v21, v22

    move/from16 v14, v21

    .line 242
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 243
    move/from16 v21, v6

    move/from16 v22, v11

    sub-int v21, v21, v22

    move/from16 v22, v12

    sub-int v21, v21, v22

    move/from16 v14, v21

    .line 246
    :cond_1
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 247
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 248
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 250
    :cond_2
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 251
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 262
    :cond_3
    :goto_1
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    move-object/from16 v15, v21

    .line 264
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 265
    const/16 v21, 0x0

    move/from16 v17, v21

    :goto_2
    move/from16 v21, v17

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 266
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    move/from16 v22, v17

    aget-object v21, v21, v22

    move-object/from16 v18, v21

    .line 267
    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 268
    add-int/lit8 v16, v16, 0x1

    .line 265
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 254
    :cond_5
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 255
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 257
    :cond_6
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 258
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    goto :goto_1

    .line 271
    :cond_7
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    move/from16 v21, v0

    move/from16 v17, v21

    .line 272
    move/from16 v21, v16

    if-lez v21, :cond_a

    .line 273
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    move/from16 v21, v0

    move/from16 v22, v16

    sub-int v21, v21, v22

    move/from16 v0, v21

    new-array v0, v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    move-object/from16 v15, v21

    .line 274
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 275
    const/16 v21, 0x0

    move/from16 v19, v21

    :goto_3
    move/from16 v21, v19

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 276
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    move/from16 v22, v19

    aget-object v21, v21, v22

    move-object/from16 v20, v21

    .line 277
    move-object/from16 v21, v20

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 278
    move-object/from16 v21, v15

    move/from16 v22, v18

    move-object/from16 v23, v20

    aput-object v23, v21, v22

    .line 279
    add-int/lit8 v18, v18, 0x1

    .line 275
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 282
    :cond_9
    move/from16 v21, v18

    move/from16 v17, v21

    .line 284
    :cond_a
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 285
    move-object/from16 v21, v2

    move/from16 v22, v17

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 286
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 301
    :goto_4
    move-object/from16 v21, v13

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v22, v9

    add-int v21, v21, v22

    move/from16 v22, v10

    add-int v21, v21, v22

    move/from16 v7, v21

    .line 302
    move-object/from16 v21, v13

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v22, v11

    add-int v21, v21, v22

    move/from16 v22, v12

    add-int v21, v21, v22

    move/from16 v8, v21

    .line 304
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 305
    const/16 v21, 0x0

    move/from16 v19, v21

    .line 307
    move/from16 v21, v3

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 308
    move/from16 v21, v4

    move/from16 v18, v21

    .line 315
    :cond_b
    :goto_5
    move/from16 v21, v5

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 316
    move/from16 v21, v6

    move/from16 v19, v21

    .line 323
    :cond_c
    :goto_6
    move-object/from16 v21, v2

    move/from16 v22, v18

    move/from16 v23, v19

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    .line 324
    move-object/from16 v21, v2

    move/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/Flow;->setWidth(I)V

    .line 325
    move-object/from16 v21, v2

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/Flow;->setHeight(I)V

    .line 326
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    move/from16 v22, v0

    if-lez v22, :cond_11

    const/16 v22, 0x1

    :goto_7
    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 327
    goto/16 :goto_0

    .line 288
    :pswitch_0
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    move/from16 v23, v17

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move/from16 v24, v0

    move/from16 v25, v14

    move-object/from16 v26, v13

    invoke-direct/range {v21 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow;->measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    .line 290
    goto/16 :goto_4

    .line 292
    :pswitch_1
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    move/from16 v23, v17

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move/from16 v24, v0

    move/from16 v25, v14

    move-object/from16 v26, v13

    invoke-direct/range {v21 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    .line 294
    goto/16 :goto_4

    .line 296
    :pswitch_2
    move-object/from16 v21, v2

    move-object/from16 v22, v15

    move/from16 v23, v17

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move/from16 v24, v0

    move/from16 v25, v14

    move-object/from16 v26, v13

    invoke-direct/range {v21 .. v26}, Landroidx/constraintlayout/solver/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto/16 :goto_4

    .line 309
    :cond_d
    move/from16 v21, v3

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 310
    move/from16 v21, v7

    move/from16 v22, v4

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v18, v21

    goto/16 :goto_5

    .line 311
    :cond_e
    move/from16 v21, v3

    if-nez v21, :cond_b

    .line 312
    move/from16 v21, v7

    move/from16 v18, v21

    goto/16 :goto_5

    .line 317
    :cond_f
    move/from16 v21, v5

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 318
    move/from16 v21, v8

    move/from16 v22, v6

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v19, v21

    goto/16 :goto_6

    .line 319
    :cond_10
    move/from16 v21, v5

    if-nez v21, :cond_c

    .line 320
    move/from16 v21, v8

    move/from16 v19, v21

    goto/16 :goto_6

    .line 326
    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFirstHorizontalBias(F)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 156
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 140
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 132
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 120
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 160
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 144
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 136
    return-void
.end method

.method public setWrapMode(I)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 164
    return-void
.end method
