.class public Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static final ANCHOR_BASELINE:I = 0x4

.field public static final ANCHOR_BOTTOM:I = 0x3

.field public static final ANCHOR_LEFT:I = 0x0

.field public static final ANCHOR_RIGHT:I = 0x1

.field public static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final BOTH:I = 0x2

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.0f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_RATIO_RESOLVED:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field private static final USE_WRAP_DIMENSION_FOR_SPREAD:Z = false

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2

.field public static final WRAP_BEHAVIOR_HORIZONTAL_ONLY:I = 0x1

.field public static final WRAP_BEHAVIOR_INCLUDED:I = 0x0

.field public static final WRAP_BEHAVIOR_SKIPPED:I = 0x3

.field public static final WRAP_BEHAVIOR_VERTICAL_ONLY:I = 0x2


# instance fields
.field private OPTIMIZE_WRAP:Z

.field private OPTIMIZE_WRAP_ON_RESOLVED:Z

.field private hasBaseline:Z

.field public horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public horizontalGroup:I

.field public horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

.field private inPlaceholder:Z

.field public isTerminalWidget:[Z

.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field public mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field public mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field public mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field mGroupsToSolver:Z

.field mHeight:I

.field private mHeightOverride:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field private mInVirtuaLayout:Z

.field public mIsHeightWrapContent:Z

.field private mIsInBarrier:[Z

.field public mIsWidthWrapContent:Z

.field private mLastHorizontalMeasureSpec:I

.field private mLastVerticalMeasureSpec:I

.field public mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field public mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mMatchConstraintDefaultHeight:I

.field public mMatchConstraintDefaultWidth:I

.field public mMatchConstraintMaxHeight:I

.field public mMatchConstraintMaxWidth:I

.field public mMatchConstraintMinHeight:I

.field public mMatchConstraintMinWidth:I

.field public mMatchConstraintPercentHeight:F

.field public mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field private mMeasureRequested:Z

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field public mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedHasRatio:Z

.field public mResolvedMatchConstraintDefault:[I

.field public mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field public mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field public mWeight:[F

.field mWidth:I

.field private mWidthOverride:I

.field private mWrapBehaviorInParent:I

.field protected mX:I

.field protected mY:I

.field public measured:Z

.field private resolvedHorizontal:Z

.field private resolvedVertical:Z

.field public run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public verticalGroup:I

.field public verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 62
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 69
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 71
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 72
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 73
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 75
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 76
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 87
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 88
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 228
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 229
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 233
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 235
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 236
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 237
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 239
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 240
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 241
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 242
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 243
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 244
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 248
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 249
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 251
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 252
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 253
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 256
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 340
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 341
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 359
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 360
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 361
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 362
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 363
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 364
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 365
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 366
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 374
    move-object v1, v0

    const/4 v2, 0x6

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 375
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 377
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Z

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 382
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 385
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 388
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 389
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 390
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 391
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 394
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 395
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 396
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 397
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 400
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 401
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 404
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 413
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 414
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 422
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 425
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 427
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 428
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 440
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 443
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 444
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 448
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 450
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 451
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 453
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 454
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 523
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 524
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 553
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    .line 554
    return-void

    .line 69
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 251
    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 448
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 589
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(IIII)V

    .line 590
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 569
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 62
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 66
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 69
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Z

    fill-array-data v6, :array_0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 71
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 72
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 73
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 75
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 76
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 87
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 88
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 228
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 229
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 233
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 235
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 236
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 237
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 239
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 240
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 241
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 242
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 243
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 244
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 248
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 249
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 251
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 252
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 253
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 256
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 340
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 341
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 359
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 360
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 361
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 362
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 363
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 364
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 365
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 366
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 374
    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x5

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 375
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 377
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Z

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 382
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 385
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 388
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 389
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 390
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 391
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 394
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 395
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 396
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 397
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 400
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 401
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 404
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 413
    move-object v5, v0

    sget v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 414
    move-object v5, v0

    sget v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 422
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 425
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 427
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 428
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 440
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 443
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 444
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 448
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 450
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 451
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 453
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 454
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 523
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 524
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 570
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 571
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 572
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 573
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 574
    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    .line 575
    return-void

    .line 69
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 251
    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 448
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 62
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 69
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 71
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 73
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 75
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 76
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 88
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 228
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 229
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 233
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 235
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 236
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 237
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 239
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 240
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 241
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 242
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 243
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 244
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 248
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 249
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 251
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 252
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 253
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 256
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 340
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 341
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 359
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 360
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 361
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 362
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 363
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 364
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 365
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 366
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 374
    move-object v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 375
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 377
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Z

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 382
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v4, v5

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 385
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 388
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 389
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 390
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 391
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 394
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 395
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 396
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 397
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 400
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 401
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 404
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 413
    move-object v2, v0

    sget v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 414
    move-object v2, v0

    sget v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 422
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 425
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 427
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 428
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 440
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 443
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 444
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 448
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 450
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 451
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 453
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 454
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 523
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 524
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 557
    move-object v2, v0

    invoke-direct {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    .line 558
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 559
    return-void

    .line 69
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 251
    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 448
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 7

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(II)V

    .line 603
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 11

    .prologue
    .line 578
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(IIII)V

    .line 579
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method private addAnchors()V
    .locals 3

    .prologue
    .line 624
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 625
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 626
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 627
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 628
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 629
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 630
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 631
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 632
    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .locals 63

    .prologue
    .line 2670
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, p17

    move/from16 v22, p18

    move/from16 v23, p19

    move/from16 v24, p20

    move/from16 v25, p21

    move/from16 v26, p22

    move/from16 v27, p23

    move/from16 v28, p24

    move/from16 v29, p25

    move/from16 v30, p26

    move/from16 v31, p27

    move-object/from16 v53, v5

    move-object/from16 v54, v14

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v53

    move-object/from16 v32, v53

    .line 2671
    move-object/from16 v53, v5

    move-object/from16 v54, v15

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v53

    move-object/from16 v33, v53

    .line 2672
    move-object/from16 v53, v5

    move-object/from16 v54, v14

    invoke-virtual/range {v54 .. v54}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v53

    move-object/from16 v34, v53

    .line 2673
    move-object/from16 v53, v5

    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v53

    move-object/from16 v35, v53

    .line 2675
    move-object/from16 v53, v5

    invoke-static {}, Landroidx/constraintlayout/core/LinearSystem;->getMetrics()Landroidx/constraintlayout/core/Metrics;

    move-result-object v53

    if-eqz v53, :cond_0

    .line 2676
    move-object/from16 v53, v5

    invoke-static {}, Landroidx/constraintlayout/core/LinearSystem;->getMetrics()Landroidx/constraintlayout/core/Metrics;

    move-result-object v53

    move-object/from16 v62, v53

    move-object/from16 v53, v62

    move-object/from16 v54, v62

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x1

    add-long v54, v54, v56

    move-wide/from16 v0, v54

    move-object/from16 v2, v53

    iput-wide v0, v2, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    .line 2679
    :cond_0
    move-object/from16 v53, v14

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v53

    move/from16 v36, v53

    .line 2680
    move-object/from16 v53, v15

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v53

    move/from16 v37, v53

    .line 2681
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v53

    move/from16 v38, v53

    .line 2683
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2685
    const/16 v53, 0x0

    move/from16 v40, v53

    .line 2686
    move/from16 v53, v36

    if-eqz v53, :cond_1

    .line 2687
    add-int/lit8 v40, v40, 0x1

    .line 2689
    :cond_1
    move/from16 v53, v37

    if-eqz v53, :cond_2

    .line 2690
    add-int/lit8 v40, v40, 0x1

    .line 2692
    :cond_2
    move/from16 v53, v38

    if-eqz v53, :cond_3

    .line 2693
    add-int/lit8 v40, v40, 0x1

    .line 2696
    :cond_3
    move/from16 v53, v21

    if-eqz v53, :cond_4

    .line 2697
    const/16 v53, 0x3

    move/from16 v26, v53

    .line 2699
    :cond_4
    sget-object v53, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    move-object/from16 v54, v12

    invoke-virtual/range {v54 .. v54}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v54

    aget v53, v53, v54

    packed-switch v53, :pswitch_data_0

    .line 2719
    :goto_0
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    move/from16 v53, v0

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_5

    move/from16 v53, v6

    if-eqz v53, :cond_5

    .line 2723
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2724
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    move/from16 v53, v0

    move/from16 v17, v53

    .line 2725
    move-object/from16 v53, v4

    const/16 v54, -0x1

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 2727
    :cond_5
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    move/from16 v53, v0

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_6

    move/from16 v53, v6

    if-nez v53, :cond_6

    .line 2731
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2732
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    move/from16 v53, v0

    move/from16 v17, v53

    .line 2733
    move-object/from16 v53, v4

    const/16 v54, -0x1

    move/from16 v0, v54

    move-object/from16 v1, v53

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 2736
    :cond_6
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v53, v0

    const/16 v54, 0x8

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_7

    .line 2737
    const/16 v53, 0x0

    move/from16 v17, v53

    .line 2738
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2742
    :cond_7
    move/from16 v53, v31

    if-eqz v53, :cond_8

    .line 2743
    move/from16 v53, v36

    if-nez v53, :cond_10

    move/from16 v53, v37

    if-nez v53, :cond_10

    move/from16 v53, v38

    if-nez v53, :cond_10

    .line 2744
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move/from16 v55, v16

    invoke-virtual/range {v53 .. v55}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2751
    :cond_8
    :goto_1
    move/from16 v53, v39

    if-nez v53, :cond_12

    .line 2752
    move/from16 v53, v13

    if-eqz v53, :cond_11

    .line 2753
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    const/16 v56, 0x0

    const/16 v57, 0x3

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 2754
    move/from16 v53, v18

    if-lez v53, :cond_9

    .line 2755
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v18

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2757
    :cond_9
    move/from16 v53, v19

    const v54, 0x7fffffff

    move/from16 v0, v53

    move/from16 v1, v54

    if-ge v0, v1, :cond_a

    .line 2758
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v19

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2834
    :cond_a
    :goto_2
    move/from16 v53, v31

    if-eqz v53, :cond_b

    move/from16 v53, v23

    if-eqz v53, :cond_26

    .line 2840
    :cond_b
    move/from16 v53, v40

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ge v0, v1, :cond_e

    move/from16 v53, v7

    if-eqz v53, :cond_e

    move/from16 v53, v9

    if-eqz v53, :cond_e

    .line 2841
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v10

    const/16 v56, 0x0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2842
    move/from16 v53, v6

    if-nez v53, :cond_c

    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    if-nez v53, :cond_24

    :cond_c
    const/16 v53, 0x1

    :goto_3
    move/from16 v41, v53

    .line 2843
    move/from16 v53, v6

    if-nez v53, :cond_d

    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    if-eqz v53, :cond_d

    .line 2846
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    move-object/from16 v42, v53

    .line 2847
    move-object/from16 v53, v42

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v53, v0

    const/16 v54, 0x0

    cmpl-float v53, v53, v54

    if-eqz v53, :cond_25

    move-object/from16 v53, v42

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aget-object v53, v53, v54

    sget-object v54, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_25

    move-object/from16 v53, v42

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v53, v0

    const/16 v54, 0x1

    aget-object v53, v53, v54

    sget-object v54, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_25

    .line 2850
    const/16 v53, 0x1

    move/from16 v41, v53

    .line 2855
    :cond_d
    :goto_4
    move/from16 v53, v41

    if-eqz v53, :cond_e

    .line 2859
    move-object/from16 v53, v5

    move-object/from16 v54, v11

    move-object/from16 v55, v33

    const/16 v56, 0x0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3133
    :cond_e
    :goto_5
    return-void

    .line 2701
    :pswitch_0
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2703
    goto/16 :goto_0

    .line 2705
    :pswitch_1
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2707
    goto/16 :goto_0

    .line 2709
    :pswitch_2
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2711
    goto/16 :goto_0

    .line 2713
    :pswitch_3
    move/from16 v53, v26

    const/16 v54, 0x4

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_f

    const/16 v53, 0x1

    :goto_6
    move/from16 v39, v53

    goto/16 :goto_0

    :cond_f
    const/16 v53, 0x0

    goto :goto_6

    .line 2745
    :cond_10
    move/from16 v53, v36

    if-eqz v53, :cond_8

    move/from16 v53, v37

    if-nez v53, :cond_8

    .line 2746
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    goto/16 :goto_1

    .line 2761
    :cond_11
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    goto/16 :goto_2

    .line 2764
    :cond_12
    move/from16 v53, v40

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_15

    move/from16 v53, v21

    if-nez v53, :cond_15

    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_13

    move/from16 v53, v26

    if-nez v53, :cond_15

    .line 2768
    :cond_13
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2769
    move/from16 v53, v28

    move/from16 v54, v17

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v53

    move/from16 v41, v53

    .line 2770
    move/from16 v53, v29

    if-lez v53, :cond_14

    .line 2771
    move/from16 v53, v29

    move/from16 v54, v41

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    move/from16 v41, v53

    .line 2773
    :cond_14
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v41

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 2774
    goto/16 :goto_2

    .line 2775
    :cond_15
    move/from16 v53, v28

    const/16 v54, -0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_16

    .line 2776
    move/from16 v53, v17

    move/from16 v28, v53

    .line 2778
    :cond_16
    move/from16 v53, v29

    const/16 v54, -0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_17

    .line 2779
    move/from16 v53, v17

    move/from16 v29, v53

    .line 2781
    :cond_17
    move/from16 v53, v17

    if-lez v53, :cond_18

    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_18

    .line 2786
    const/16 v53, 0x0

    move/from16 v17, v53

    .line 2789
    :cond_18
    move/from16 v53, v28

    if-lez v53, :cond_19

    .line 2790
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v28

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2791
    move/from16 v53, v17

    move/from16 v54, v28

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v53

    move/from16 v17, v53

    .line 2793
    :cond_19
    move/from16 v53, v29

    if-lez v53, :cond_1c

    .line 2794
    const/16 v53, 0x1

    move/from16 v41, v53

    .line 2795
    move/from16 v53, v7

    if-eqz v53, :cond_1a

    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_1a

    .line 2796
    const/16 v53, 0x0

    move/from16 v41, v53

    .line 2798
    :cond_1a
    move/from16 v53, v41

    if-eqz v53, :cond_1b

    .line 2799
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v29

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2801
    :cond_1b
    move/from16 v53, v17

    move/from16 v54, v29

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    move/from16 v17, v53

    .line 2803
    :cond_1c
    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_1f

    .line 2804
    move/from16 v53, v7

    if-eqz v53, :cond_1d

    .line 2805
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    goto/16 :goto_2

    .line 2806
    :cond_1d
    move/from16 v53, v23

    if-eqz v53, :cond_1e

    .line 2807
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x5

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 2808
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_2

    .line 2810
    :cond_1e
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x5

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 2811
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_2

    .line 2813
    :cond_1f
    move/from16 v53, v26

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_23

    .line 2814
    const/16 v53, 0x0

    move-object/from16 v41, v53

    .line 2815
    const/16 v53, 0x0

    move-object/from16 v42, v53

    .line 2816
    move-object/from16 v53, v14

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v53

    sget-object v54, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_20

    move-object/from16 v53, v14

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v53

    sget-object v54, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_22

    .line 2818
    :cond_20
    move-object/from16 v53, v5

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v54, v0

    sget-object v55, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v54 .. v55}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v53

    move-object/from16 v41, v53

    .line 2819
    move-object/from16 v53, v5

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v54, v0

    sget-object v55, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v54 .. v55}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v53

    move-object/from16 v42, v53

    .line 2824
    :goto_7
    move-object/from16 v53, v5

    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v54

    move-object/from16 v55, v33

    move-object/from16 v56, v32

    move-object/from16 v57, v42

    move-object/from16 v58, v41

    move/from16 v59, v30

    invoke-virtual/range {v54 .. v59}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 2825
    move/from16 v53, v7

    if-eqz v53, :cond_21

    .line 2826
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2828
    :cond_21
    goto/16 :goto_2

    .line 2821
    :cond_22
    move-object/from16 v53, v5

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v54, v0

    sget-object v55, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v54 .. v55}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v53

    move-object/from16 v41, v53

    .line 2822
    move-object/from16 v53, v5

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v54, v0

    sget-object v55, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v54 .. v55}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v53

    move-object/from16 v42, v53

    goto :goto_7

    .line 2829
    :cond_23
    const/16 v53, 0x1

    move/from16 v9, v53

    goto/16 :goto_2

    .line 2842
    :cond_24
    const/16 v53, 0x0

    goto/16 :goto_3

    .line 2852
    :cond_25
    const/16 v53, 0x0

    move/from16 v41, v53

    goto/16 :goto_4

    .line 2867
    :cond_26
    const/16 v53, 0x5

    move/from16 v41, v53

    .line 2869
    move/from16 v53, v36

    if-nez v53, :cond_29

    move/from16 v53, v37

    if-nez v53, :cond_29

    move/from16 v53, v38

    if-nez v53, :cond_29

    .line 3112
    :cond_27
    :goto_8
    move/from16 v53, v7

    if-eqz v53, :cond_5c

    move/from16 v53, v9

    if-eqz v53, :cond_5c

    .line 3113
    const/16 v53, 0x0

    move/from16 v42, v53

    .line 3114
    move-object/from16 v53, v15

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    if-eqz v53, :cond_28

    .line 3115
    move-object/from16 v53, v15

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v53

    move/from16 v42, v53

    .line 3117
    :cond_28
    move-object/from16 v53, v35

    move-object/from16 v54, v11

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_5c

    .line 3118
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    move/from16 v53, v0

    if-eqz v53, :cond_5b

    move-object/from16 v53, v33

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_5b

    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    if-eqz v53, :cond_5b

    .line 3119
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    check-cast v53, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move-object/from16 v43, v53

    .line 3120
    move/from16 v53, v6

    if-eqz v53, :cond_5a

    .line 3121
    move-object/from16 v53, v43

    move-object/from16 v54, v15

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3125
    :goto_9
    goto/16 :goto_5

    .line 2871
    :cond_29
    move/from16 v53, v36

    if-eqz v53, :cond_2a

    move/from16 v53, v37

    if-nez v53, :cond_2a

    goto :goto_8

    .line 2873
    :cond_2a
    move/from16 v53, v36

    if-nez v53, :cond_2d

    move/from16 v53, v37

    if-eqz v53, :cond_2d

    .line 2874
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v35

    move-object/from16 v56, v15

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v0, v56

    neg-int v0, v0

    move/from16 v56, v0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 2875
    move/from16 v53, v7

    if-eqz v53, :cond_27

    .line 2876
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    move/from16 v53, v0

    if-eqz v53, :cond_2c

    move-object/from16 v53, v32

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_2c

    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    if-eqz v53, :cond_2c

    .line 2877
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    check-cast v53, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move-object/from16 v42, v53

    .line 2878
    move/from16 v53, v6

    if-eqz v53, :cond_2b

    .line 2879
    move-object/from16 v53, v42

    move-object/from16 v54, v14

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2883
    :goto_a
    goto/16 :goto_8

    .line 2881
    :cond_2b
    move-object/from16 v53, v42

    move-object/from16 v54, v14

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_a

    .line 2887
    :cond_2c
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v10

    const/16 v56, 0x0

    const/16 v57, 0x5

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_8

    .line 2890
    :cond_2d
    move/from16 v53, v36

    if-eqz v53, :cond_27

    move/from16 v53, v37

    if-eqz v53, :cond_27

    .line 2891
    const/16 v53, 0x1

    move/from16 v42, v53

    .line 2892
    const/16 v53, 0x0

    move/from16 v43, v53

    .line 2893
    const/16 v53, 0x0

    move/from16 v44, v53

    .line 2894
    const/16 v53, 0x0

    move/from16 v45, v53

    .line 2895
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2896
    const/16 v53, 0x4

    move/from16 v47, v53

    .line 2897
    const/16 v53, 0x6

    move/from16 v48, v53

    .line 2899
    move/from16 v53, v7

    if-eqz v53, :cond_2e

    .line 2900
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2902
    :cond_2e
    move-object/from16 v53, v14

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    move-object/from16 v49, v53

    .line 2903
    move-object/from16 v53, v15

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    move-object/from16 v50, v53

    .line 2904
    move-object/from16 v53, v4

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v53

    move-object/from16 v51, v53

    .line 2906
    move/from16 v53, v39

    if-eqz v53, :cond_43

    .line 2907
    move/from16 v53, v26

    if-nez v53, :cond_36

    .line 2908
    move/from16 v53, v29

    if-nez v53, :cond_2f

    move/from16 v53, v28

    if-nez v53, :cond_2f

    .line 2909
    const/16 v53, 0x1

    move/from16 v44, v53

    .line 2910
    const/16 v53, 0x8

    move/from16 v46, v53

    .line 2911
    const/16 v53, 0x8

    move/from16 v47, v53

    .line 2913
    move-object/from16 v53, v34

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_30

    move-object/from16 v53, v35

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_30

    .line 2914
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 2915
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v35

    move-object/from16 v56, v15

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v0, v56

    neg-int v0, v0

    move/from16 v56, v0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 2916
    goto/16 :goto_5

    .line 2919
    :cond_2f
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2920
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2921
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2922
    const/16 v53, 0x1

    move/from16 v42, v53

    .line 2923
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2925
    :cond_30
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_31

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-eqz v53, :cond_32

    .line 2926
    :cond_31
    const/16 v53, 0x4

    move/from16 v47, v53

    .line 3013
    :cond_32
    :goto_b
    move/from16 v53, v45

    if-eqz v53, :cond_33

    move-object/from16 v53, v34

    move-object/from16 v54, v35

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_33

    move-object/from16 v53, v49

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_33

    .line 3015
    const/16 v53, 0x0

    move/from16 v45, v53

    .line 3016
    const/16 v53, 0x0

    move/from16 v42, v53

    .line 3019
    :cond_33
    move/from16 v53, v43

    if-eqz v53, :cond_35

    .line 3020
    move/from16 v53, v39

    if-nez v53, :cond_34

    move/from16 v53, v22

    if-nez v53, :cond_34

    move/from16 v53, v24

    if-nez v53, :cond_34

    move-object/from16 v53, v34

    move-object/from16 v54, v10

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_34

    move-object/from16 v53, v35

    move-object/from16 v54, v11

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_34

    .line 3023
    const/16 v53, 0x8

    move/from16 v48, v53

    .line 3024
    const/16 v53, 0x8

    move/from16 v46, v53

    .line 3025
    const/16 v53, 0x0

    move/from16 v42, v53

    .line 3026
    const/16 v53, 0x0

    move/from16 v7, v53

    .line 3029
    :cond_34
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v57, v20

    move-object/from16 v58, v35

    move-object/from16 v59, v33

    move-object/from16 v60, v15

    .line 3030
    invoke-virtual/range {v60 .. v60}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v60

    move/from16 v61, v48

    .line 3029
    invoke-virtual/range {v53 .. v61}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3033
    :cond_35
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v53, v0

    const/16 v54, 0x8

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_46

    move-object/from16 v53, v15

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v53

    if-nez v53, :cond_46

    .line 3034
    goto/16 :goto_5

    .line 2928
    :cond_36
    move/from16 v53, v26

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_38

    .line 2929
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2930
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2931
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2932
    const/16 v53, 0x1

    move/from16 v42, v53

    .line 2933
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2934
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_37

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-eqz v53, :cond_32

    .line 2935
    :cond_37
    const/16 v53, 0x4

    move/from16 v47, v53

    goto/16 :goto_b

    .line 2937
    :cond_38
    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_39

    .line 2938
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2939
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2940
    const/16 v53, 0x8

    move/from16 v46, v53

    goto/16 :goto_b

    .line 2941
    :cond_39
    move/from16 v53, v26

    const/16 v54, 0x3

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_32

    .line 2942
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v53, v0

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_3b

    .line 2943
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2944
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2945
    const/16 v53, 0x1

    move/from16 v44, v53

    .line 2946
    const/16 v53, 0x8

    move/from16 v46, v53

    .line 2947
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2948
    move/from16 v53, v24

    if-eqz v53, :cond_3a

    .line 2949
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2950
    const/16 v53, 0x4

    move/from16 v48, v53

    .line 2951
    move/from16 v53, v7

    if-eqz v53, :cond_32

    .line 2952
    const/16 v53, 0x5

    move/from16 v48, v53

    goto/16 :goto_b

    .line 2955
    :cond_3a
    const/16 v53, 0x8

    move/from16 v48, v53

    goto/16 :goto_b

    .line 2958
    :cond_3b
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2959
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2960
    const/16 v53, 0x1

    move/from16 v44, v53

    .line 2961
    move/from16 v53, v21

    if-eqz v53, :cond_3f

    .line 2964
    move/from16 v53, v27

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_3c

    move/from16 v53, v27

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_3e

    :cond_3c
    const/16 v53, 0x1

    :goto_c
    move/from16 v52, v53

    .line 2966
    move/from16 v53, v52

    if-nez v53, :cond_3d

    .line 2967
    const/16 v53, 0x8

    move/from16 v46, v53

    .line 2968
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2970
    :cond_3d
    goto/16 :goto_b

    .line 2964
    :cond_3e
    const/16 v53, 0x0

    goto :goto_c

    .line 2971
    :cond_3f
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2972
    move/from16 v53, v29

    if-lez v53, :cond_40

    .line 2973
    const/16 v53, 0x5

    move/from16 v47, v53

    goto/16 :goto_b

    .line 2974
    :cond_40
    move/from16 v53, v29

    if-nez v53, :cond_32

    move/from16 v53, v28

    if-nez v53, :cond_32

    .line 2975
    move/from16 v53, v24

    if-nez v53, :cond_41

    .line 2976
    const/16 v53, 0x8

    move/from16 v47, v53

    goto/16 :goto_b

    .line 2978
    :cond_41
    move-object/from16 v53, v49

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_42

    move-object/from16 v53, v50

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_42

    .line 2979
    const/16 v53, 0x4

    move/from16 v46, v53

    .line 2983
    :goto_d
    const/16 v53, 0x4

    move/from16 v47, v53

    goto/16 :goto_b

    .line 2981
    :cond_42
    const/16 v53, 0x5

    move/from16 v46, v53

    goto :goto_d

    .line 2990
    :cond_43
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2991
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2994
    move-object/from16 v53, v34

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_32

    move-object/from16 v53, v35

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_32

    .line 2995
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v57, v20

    move-object/from16 v58, v35

    move-object/from16 v59, v33

    move-object/from16 v60, v15

    .line 2996
    invoke-virtual/range {v60 .. v60}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v60

    const/16 v61, 0x8

    .line 2995
    invoke-virtual/range {v53 .. v61}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2997
    move/from16 v53, v7

    if-eqz v53, :cond_45

    move/from16 v53, v9

    if-eqz v53, :cond_45

    .line 2998
    const/16 v53, 0x0

    move/from16 v52, v53

    .line 2999
    move-object/from16 v53, v15

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    if-eqz v53, :cond_44

    .line 3000
    move-object/from16 v53, v15

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v53

    move/from16 v52, v53

    .line 3002
    :cond_44
    move-object/from16 v53, v35

    move-object/from16 v54, v11

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_45

    .line 3006
    move-object/from16 v53, v5

    move-object/from16 v54, v11

    move-object/from16 v55, v33

    move/from16 v56, v52

    move/from16 v57, v41

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3009
    :cond_45
    goto/16 :goto_5

    .line 3037
    :cond_46
    move/from16 v53, v45

    if-eqz v53, :cond_49

    .line 3038
    move/from16 v53, v7

    if-eqz v53, :cond_48

    move-object/from16 v53, v34

    move-object/from16 v54, v35

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_48

    move/from16 v53, v39

    if-nez v53, :cond_48

    .line 3040
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_47

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-eqz v53, :cond_48

    .line 3041
    :cond_47
    const/16 v53, 0x6

    move/from16 v46, v53

    .line 3044
    :cond_48
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v57, v46

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3045
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v35

    move-object/from16 v56, v15

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v0, v56

    neg-int v0, v0

    move/from16 v56, v0

    move/from16 v57, v46

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3048
    :cond_49
    move/from16 v53, v7

    if-eqz v53, :cond_4a

    move/from16 v53, v25

    if-eqz v53, :cond_4a

    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_4a

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_4a

    .line 3052
    const/16 v53, 0x6

    move/from16 v47, v53

    .line 3053
    const/16 v53, 0x6

    move/from16 v46, v53

    .line 3054
    const/16 v53, 0x1

    move/from16 v42, v53

    .line 3057
    :cond_4a
    move/from16 v53, v42

    if-eqz v53, :cond_56

    .line 3058
    move/from16 v53, v44

    if-eqz v53, :cond_53

    move/from16 v53, v24

    if-eqz v53, :cond_4b

    move/from16 v53, v8

    if-eqz v53, :cond_53

    .line 3059
    :cond_4b
    move/from16 v53, v47

    move/from16 v52, v53

    .line 3060
    move-object/from16 v53, v49

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_4c

    move-object/from16 v53, v50

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_4d

    .line 3061
    :cond_4c
    const/16 v53, 0x6

    move/from16 v52, v53

    .line 3063
    :cond_4d
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    move/from16 v53, v0

    if-nez v53, :cond_4e

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    move/from16 v53, v0

    if-eqz v53, :cond_4f

    .line 3064
    :cond_4e
    const/16 v53, 0x5

    move/from16 v52, v53

    .line 3066
    :cond_4f
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_50

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v53, v0

    if-eqz v53, :cond_51

    .line 3067
    :cond_50
    const/16 v53, 0x5

    move/from16 v52, v53

    .line 3069
    :cond_51
    move/from16 v53, v24

    if-eqz v53, :cond_52

    .line 3070
    const/16 v53, 0x5

    move/from16 v52, v53

    .line 3072
    :cond_52
    move/from16 v53, v52

    move/from16 v54, v47

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v53

    move/from16 v47, v53

    .line 3075
    :cond_53
    move/from16 v53, v7

    if-eqz v53, :cond_55

    .line 3076
    move/from16 v53, v46

    move/from16 v54, v47

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    move/from16 v47, v53

    .line 3077
    move/from16 v53, v21

    if-eqz v53, :cond_55

    move/from16 v53, v24

    if-nez v53, :cond_55

    move-object/from16 v53, v49

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_54

    move-object/from16 v53, v50

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_55

    .line 3080
    :cond_54
    const/16 v53, 0x4

    move/from16 v47, v53

    .line 3083
    :cond_55
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v57, v47

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 3084
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v35

    move-object/from16 v56, v15

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v0, v56

    neg-int v0, v0

    move/from16 v56, v0

    move/from16 v57, v47

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v53

    .line 3087
    :cond_56
    move/from16 v53, v7

    if-eqz v53, :cond_58

    .line 3088
    const/16 v53, 0x0

    move/from16 v52, v53

    .line 3089
    move-object/from16 v53, v10

    move-object/from16 v54, v34

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_57

    .line 3090
    move-object/from16 v53, v14

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v53

    move/from16 v52, v53

    .line 3092
    :cond_57
    move-object/from16 v53, v34

    move-object/from16 v54, v10

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_58

    .line 3096
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v10

    move/from16 v56, v52

    move/from16 v57, v41

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3100
    :cond_58
    move/from16 v53, v7

    if-eqz v53, :cond_27

    move/from16 v53, v39

    if-eqz v53, :cond_27

    move/from16 v53, v18

    if-nez v53, :cond_27

    move/from16 v53, v28

    if-nez v53, :cond_27

    .line 3104
    move/from16 v53, v39

    if-eqz v53, :cond_59

    move/from16 v53, v26

    const/16 v54, 0x3

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_59

    .line 3105
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    const/16 v56, 0x0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_8

    .line 3107
    :cond_59
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    const/16 v56, 0x0

    move/from16 v57, v41

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_8

    .line 3123
    :cond_5a
    move-object/from16 v53, v43

    move-object/from16 v54, v15

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto/16 :goto_9

    .line 3130
    :cond_5b
    move-object/from16 v53, v5

    move-object/from16 v54, v11

    move-object/from16 v55, v33

    move/from16 v56, v42

    move/from16 v57, v41

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3133
    :cond_5c
    goto/16 :goto_5

    .line 2699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isChainHead(I)Z
    .locals 7

    .prologue
    .line 2185
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 2186
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v5, v2

    aget-object v4, v4, v5

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 3331
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v9, v5

    if-eqz v9, :cond_1

    .line 3332
    move-object v9, v3

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3373
    :goto_0
    return-void

    .line 3335
    :cond_0
    move-object v9, v1

    move-object v10, v2

    move-object v11, v0

    invoke-static {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 3336
    move-object v9, v3

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 3337
    move-object v9, v0

    move-object v10, v2

    move-object v11, v1

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 3339
    :cond_1
    move v9, v4

    if-nez v9, :cond_4

    .line 3340
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3341
    move-object v9, v6

    if-eqz v9, :cond_2

    .line 3342
    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_1
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3343
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3344
    goto :goto_1

    .line 3346
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3347
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 3348
    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_2
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3349
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3350
    goto :goto_2

    .line 3373
    :cond_3
    goto :goto_0

    .line 3353
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3354
    move-object v9, v6

    if-eqz v9, :cond_5

    .line 3355
    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_3
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3356
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3357
    goto :goto_3

    .line 3359
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3360
    move-object v9, v6

    if-eqz v9, :cond_6

    .line 3361
    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_4
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3362
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3363
    goto :goto_4

    .line 3365
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3366
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 3367
    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_5
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3368
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3369
    goto :goto_5
.end method

.method addFirst()Z
    .locals 2

    .prologue
    .line 2574
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 64

    .prologue
    .line 2210
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v6, v35

    .line 2211
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v7, v35

    .line 2212
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v8, v35

    .line 2213
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v9, v35

    .line 2214
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v10, v35

    .line 2216
    const/16 v35, 0x0

    move/from16 v11, v35

    .line 2217
    const/16 v35, 0x0

    move/from16 v12, v35

    .line 2218
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 2219
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1

    const/16 v35, 0x1

    :goto_0
    move/from16 v11, v35

    .line 2220
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_3

    const/16 v35, 0x1

    :goto_1
    move/from16 v12, v35

    .line 2222
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 2236
    :cond_0
    :goto_2
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDependencies()Z

    move-result v35

    if-nez v35, :cond_5

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-boolean v35, v35, v36

    if-nez v35, :cond_5

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-boolean v35, v35, v36

    if-nez v35, :cond_5

    .line 2567
    :goto_3
    return-void

    .line 2219
    :cond_1
    const/16 v35, 0x0

    goto :goto_0

    :cond_2
    const/16 v35, 0x0

    goto :goto_0

    .line 2220
    :cond_3
    const/16 v35, 0x0

    goto :goto_1

    :cond_4
    const/16 v35, 0x0

    goto :goto_1

    .line 2224
    :pswitch_0
    const/16 v35, 0x0

    move/from16 v11, v35

    .line 2225
    const/16 v35, 0x0

    move/from16 v12, v35

    .line 2226
    goto :goto_2

    .line 2228
    :pswitch_1
    const/16 v35, 0x0

    move/from16 v12, v35

    .line 2229
    goto :goto_2

    .line 2231
    :pswitch_2
    const/16 v35, 0x0

    move/from16 v11, v35

    goto :goto_2

    .line 2241
    :cond_5
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    move/from16 v35, v0

    if-nez v35, :cond_6

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    .line 2249
    :cond_6
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    move/from16 v35, v0

    if-eqz v35, :cond_7

    .line 2250
    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2251
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move/from16 v37, v0

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2252
    move/from16 v35, v11

    if-eqz v35, :cond_7

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    .line 2253
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    move/from16 v35, v0

    if-eqz v35, :cond_a

    .line 2254
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    check-cast v35, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move-object/from16 v13, v35

    .line 2255
    move-object/from16 v35, v13

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2256
    move-object/from16 v35, v13

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2263
    :cond_7
    :goto_4
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    move/from16 v35, v0

    if-eqz v35, :cond_9

    .line 2264
    move-object/from16 v35, v4

    move-object/from16 v36, v8

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2265
    move-object/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    move/from16 v37, v0

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2266
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v35

    if-eqz v35, :cond_8

    .line 2267
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    move/from16 v37, v0

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2269
    :cond_8
    move/from16 v35, v12

    if-eqz v35, :cond_9

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_9

    .line 2270
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    move/from16 v35, v0

    if-eqz v35, :cond_b

    .line 2271
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    check-cast v35, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move-object/from16 v13, v35

    .line 2272
    move-object/from16 v35, v13

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2273
    move-object/from16 v35, v13

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2280
    :cond_9
    :goto_5
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    .line 2281
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2282
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2288
    goto/16 :goto_3

    .line 2258
    :cond_a
    const/16 v35, 0x5

    move/from16 v13, v35

    .line 2259
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v36

    move-object/from16 v37, v7

    const/16 v38, 0x0

    move/from16 v39, v13

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_4

    .line 2275
    :cond_b
    const/16 v35, 0x5

    move/from16 v13, v35

    .line 2276
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v36

    move-object/from16 v37, v9

    const/16 v38, 0x0

    move/from16 v39, v13

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_5

    .line 2292
    :cond_c
    sget-object v35, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v35, :cond_d

    .line 2293
    sget-object v35, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    move-object/from16 v63, v35

    move-object/from16 v35, v63

    move-object/from16 v36, v63

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/core/Metrics;->widgets:J

    .line 2301
    :cond_d
    move/from16 v35, v5

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11

    .line 2305
    sget-object v35, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v35, :cond_e

    .line 2306
    sget-object v35, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    move-object/from16 v63, v35

    move-object/from16 v35, v63

    move-object/from16 v36, v63

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    .line 2308
    :cond_e
    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2309
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2310
    move-object/from16 v35, v4

    move-object/from16 v36, v8

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2311
    move-object/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2312
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2313
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_10

    .line 2314
    move/from16 v35, v11

    if-eqz v35, :cond_f

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-boolean v35, v35, v36

    if-eqz v35, :cond_f

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v35

    if-nez v35, :cond_f

    .line 2315
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v13, v35

    .line 2316
    move-object/from16 v35, v4

    move-object/from16 v36, v13

    move-object/from16 v37, v7

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2318
    :cond_f
    move/from16 v35, v12

    if-eqz v35, :cond_10

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-boolean v35, v35, v36

    if-eqz v35, :cond_10

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v35

    if-nez v35, :cond_10

    .line 2319
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v13, v35

    .line 2320
    move-object/from16 v35, v4

    move-object/from16 v36, v13

    move-object/from16 v37, v9

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2323
    :cond_10
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2324
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2325
    goto/16 :goto_3

    .line 2327
    :cond_11
    sget-object v35, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v35, :cond_12

    .line 2328
    sget-object v35, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    move-object/from16 v63, v35

    move-object/from16 v35, v63

    move-object/from16 v36, v63

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    .line 2331
    :cond_12
    const/16 v35, 0x0

    move/from16 v13, v35

    .line 2332
    const/16 v35, 0x0

    move/from16 v14, v35

    .line 2334
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_14

    .line 2336
    move-object/from16 v35, v3

    const/16 v36, 0x0

    invoke-direct/range {v35 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 2337
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    check-cast v35, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move-object/from16 v36, v3

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 2338
    const/16 v35, 0x1

    move/from16 v13, v35

    .line 2344
    :goto_6
    move-object/from16 v35, v3

    const/16 v36, 0x1

    invoke-direct/range {v35 .. v36}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v35

    if-eqz v35, :cond_2a

    .line 2345
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    check-cast v35, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move-object/from16 v36, v3

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 2346
    const/16 v35, 0x1

    move/from16 v14, v35

    .line 2351
    :goto_7
    move/from16 v35, v13

    if-nez v35, :cond_13

    move/from16 v35, v11

    if-eqz v35, :cond_13

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_13

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_13

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_13

    .line 2356
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v15, v35

    .line 2357
    move-object/from16 v35, v4

    move-object/from16 v36, v15

    move-object/from16 v37, v7

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2360
    :cond_13
    move/from16 v35, v14

    if-nez v35, :cond_14

    move/from16 v35, v12

    if-eqz v35, :cond_14

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_14

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    .line 2365
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v15, v35

    .line 2366
    move-object/from16 v35, v4

    move-object/from16 v36, v15

    move-object/from16 v37, v9

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2370
    :cond_14
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move/from16 v35, v0

    move/from16 v15, v35

    .line 2371
    move/from16 v35, v15

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_15

    .line 2372
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v35, v0

    move/from16 v15, v35

    .line 2374
    :cond_15
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move/from16 v35, v0

    move/from16 v16, v35

    .line 2375
    move/from16 v35, v16

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_16

    .line 2376
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v35, v0

    move/from16 v16, v35

    .line 2380
    :cond_16
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_2b

    const/16 v35, 0x1

    :goto_8
    move/from16 v17, v35

    .line 2382
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_2c

    const/16 v35, 0x1

    :goto_9
    move/from16 v18, v35

    .line 2387
    const/16 v35, 0x0

    move/from16 v19, v35

    .line 2388
    move-object/from16 v35, v3

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2389
    move-object/from16 v35, v3

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2391
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v35, v0

    move/from16 v20, v35

    .line 2392
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v35, v0

    move/from16 v21, v35

    .line 2394
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-lez v35, :cond_19

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_19

    .line 2395
    const/16 v35, 0x1

    move/from16 v19, v35

    .line 2396
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_17

    move/from16 v35, v20

    if-nez v35, :cond_17

    .line 2398
    const/16 v35, 0x3

    move/from16 v20, v35

    .line 2400
    :cond_17
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_18

    move/from16 v35, v21

    if-nez v35, :cond_18

    .line 2402
    const/16 v35, 0x3

    move/from16 v21, v35

    .line 2405
    :cond_18
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2d

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2d

    move/from16 v35, v20

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2d

    move/from16 v35, v21

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2d

    .line 2409
    move-object/from16 v35, v3

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v38, v17

    move/from16 v39, v18

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    .line 2433
    :cond_19
    :goto_a
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v37, v20

    aput v37, v35, v36

    .line 2434
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v37, v21

    aput v37, v35, v36

    .line 2435
    move-object/from16 v35, v3

    move/from16 v36, v19

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 2437
    move/from16 v35, v19

    if-eqz v35, :cond_30

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    if-eqz v35, :cond_1a

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_30

    :cond_1a
    const/16 v35, 0x1

    :goto_b
    move/from16 v22, v35

    .line 2440
    move/from16 v35, v19

    if-eqz v35, :cond_31

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1b

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_31

    :cond_1b
    const/16 v35, 0x1

    :goto_c
    move/from16 v23, v35

    .line 2444
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_32

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move/from16 v35, v0

    if-eqz v35, :cond_32

    const/16 v35, 0x1

    :goto_d
    move/from16 v24, v35

    .line 2446
    move/from16 v35, v24

    if-eqz v35, :cond_1c

    .line 2447
    const/16 v35, 0x0

    move/from16 v15, v35

    .line 2450
    :cond_1c
    const/16 v35, 0x1

    move/from16 v25, v35

    .line 2451
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 2452
    const/16 v35, 0x0

    move/from16 v25, v35

    .line 2455
    :cond_1d
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-boolean v35, v35, v36

    move/from16 v26, v35

    .line 2456
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-boolean v35, v35, v36

    move/from16 v27, v35

    .line 2458
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1f

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    move/from16 v35, v0

    if-nez v35, :cond_1f

    .line 2459
    move/from16 v35, v5

    if-eqz v35, :cond_1e

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1e

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1e

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-nez v35, :cond_36

    .line 2460
    :cond_1e
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_33

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    :goto_e
    move-object/from16 v28, v35

    .line 2461
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_34

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    :goto_f
    move-object/from16 v29, v35

    .line 2462
    move-object/from16 v35, v3

    move-object/from16 v36, v4

    const/16 v37, 0x1

    move/from16 v38, v11

    move/from16 v39, v12

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget-boolean v40, v40, v41

    move-object/from16 v41, v29

    move-object/from16 v42, v28

    move-object/from16 v43, v3

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget-object v43, v43, v44

    move/from16 v44, v24

    move-object/from16 v45, v3

    move-object/from16 v0, v45

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v45, v0

    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v46, v0

    move-object/from16 v47, v3

    move-object/from16 v0, v47

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move/from16 v47, v0

    move/from16 v48, v15

    move-object/from16 v49, v3

    move-object/from16 v0, v49

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v49, v0

    move-object/from16 v50, v3

    move-object/from16 v0, v50

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aget v50, v50, v51

    move-object/from16 v51, v3

    move-object/from16 v0, v51

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v51, v0

    move/from16 v52, v22

    move-object/from16 v53, v3

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v53, v0

    const/16 v54, 0x1

    aget-object v53, v53, v54

    sget-object v54, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_35

    const/16 v53, 0x1

    :goto_10
    move/from16 v54, v13

    move/from16 v55, v14

    move/from16 v56, v26

    move/from16 v57, v20

    move/from16 v58, v21

    move-object/from16 v59, v3

    move-object/from16 v0, v59

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v59, v0

    move-object/from16 v60, v3

    move-object/from16 v0, v60

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v60, v0

    move-object/from16 v61, v3

    move-object/from16 v0, v61

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v61, v0

    move/from16 v62, v25

    invoke-direct/range {v35 .. v62}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 2481
    :cond_1f
    :goto_11
    const/16 v35, 0x1

    move/from16 v28, v35

    .line 2482
    move/from16 v35, v5

    if-eqz v35, :cond_21

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    if-eqz v35, :cond_21

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_21

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_21

    .line 2483
    move-object/from16 v35, v4

    move-object/from16 v36, v8

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2484
    move-object/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2485
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2486
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_20

    .line 2487
    move/from16 v35, v14

    if-nez v35, :cond_20

    move/from16 v35, v12

    if-eqz v35, :cond_20

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-boolean v35, v35, v36

    if-eqz v35, :cond_20

    .line 2491
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v29, v35

    .line 2492
    move-object/from16 v35, v4

    move-object/from16 v36, v29

    move-object/from16 v37, v9

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2495
    :cond_20
    const/16 v35, 0x0

    move/from16 v28, v35

    .line 2497
    :cond_21
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_22

    .line 2504
    const/16 v35, 0x0

    move/from16 v28, v35

    .line 2506
    :cond_22
    move/from16 v35, v28

    if-eqz v35, :cond_26

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    move/from16 v35, v0

    if-nez v35, :cond_26

    .line 2508
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_37

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move/from16 v35, v0

    if-eqz v35, :cond_37

    const/16 v35, 0x1

    :goto_12
    move/from16 v24, v35

    .line 2510
    move/from16 v35, v24

    if-eqz v35, :cond_23

    .line 2511
    const/16 v35, 0x0

    move/from16 v16, v35

    .line 2514
    :cond_23
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_38

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    :goto_13
    move-object/from16 v29, v35

    .line 2515
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_39

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    :goto_14
    move-object/from16 v30, v35

    .line 2517
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    move/from16 v35, v0

    if-gtz v35, :cond_24

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_25

    .line 2519
    :cond_24
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3a

    .line 2520
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v8

    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v38

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v35

    .line 2521
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v31, v35

    .line 2522
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    move/from16 v32, v35

    .line 2523
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v31

    move/from16 v38, v32

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v35

    .line 2524
    const/16 v35, 0x0

    move/from16 v25, v35

    .line 2525
    move/from16 v35, v12

    if-eqz v35, :cond_25

    .line 2529
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v33, v35

    .line 2530
    const/16 v35, 0x5

    move/from16 v34, v35

    .line 2531
    move-object/from16 v35, v4

    move-object/from16 v36, v29

    move-object/from16 v37, v33

    const/16 v38, 0x0

    move/from16 v39, v34

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2541
    :cond_25
    :goto_15
    move-object/from16 v35, v3

    move-object/from16 v36, v4

    const/16 v37, 0x0

    move/from16 v38, v12

    move/from16 v39, v11

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget-boolean v40, v40, v41

    move-object/from16 v41, v30

    move-object/from16 v42, v29

    move-object/from16 v43, v3

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget-object v43, v43, v44

    move/from16 v44, v24

    move-object/from16 v45, v3

    move-object/from16 v0, v45

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v45, v0

    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v46, v0

    move-object/from16 v47, v3

    move-object/from16 v0, v47

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    move/from16 v47, v0

    move/from16 v48, v16

    move-object/from16 v49, v3

    move-object/from16 v0, v49

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v49, v0

    move-object/from16 v50, v3

    move-object/from16 v0, v50

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    move-object/from16 v50, v0

    const/16 v51, 0x1

    aget v50, v50, v51

    move-object/from16 v51, v3

    move-object/from16 v0, v51

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v51, v0

    move/from16 v52, v23

    move-object/from16 v53, v3

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aget-object v53, v53, v54

    sget-object v54, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_3c

    const/16 v53, 0x1

    :goto_16
    move/from16 v54, v14

    move/from16 v55, v13

    move/from16 v56, v27

    move/from16 v57, v21

    move/from16 v58, v20

    move-object/from16 v59, v3

    move-object/from16 v0, v59

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v59, v0

    move-object/from16 v60, v3

    move-object/from16 v0, v60

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v60, v0

    move-object/from16 v61, v3

    move-object/from16 v0, v61

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v61, v0

    move/from16 v62, v25

    invoke-direct/range {v35 .. v62}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 2547
    :cond_26
    move/from16 v35, v19

    if-eqz v35, :cond_27

    .line 2548
    const/16 v35, 0x8

    move/from16 v29, v35

    .line 2549
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3d

    .line 2550
    move-object/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v8

    move-object/from16 v38, v7

    move-object/from16 v39, v6

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v40, v0

    move/from16 v41, v29

    invoke-virtual/range {v35 .. v41}, Landroidx/constraintlayout/core/LinearSystem;->addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    .line 2556
    :cond_27
    :goto_17
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v35

    if-eqz v35, :cond_28

    .line 2557
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    move/from16 v38, v0

    const/high16 v39, 0x42b40000    # 90.0f

    add-float v38, v38, v39

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v38

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v39, v3

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    .line 2565
    :cond_28
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2566
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2567
    goto/16 :goto_3

    .line 2340
    :cond_29
    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v35

    move/from16 v13, v35

    goto/16 :goto_6

    .line 2348
    :cond_2a
    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v35

    move/from16 v14, v35

    goto/16 :goto_7

    .line 2380
    :cond_2b
    const/16 v35, 0x0

    goto/16 :goto_8

    .line 2382
    :cond_2c
    const/16 v35, 0x0

    goto/16 :goto_9

    .line 2410
    :cond_2d
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2e

    move/from16 v35, v20

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2e

    .line 2412
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2413
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v15, v35

    .line 2414
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_19

    .line 2415
    const/16 v35, 0x4

    move/from16 v20, v35

    .line 2416
    const/16 v35, 0x0

    move/from16 v19, v35

    goto/16 :goto_a

    .line 2418
    :cond_2e
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_19

    move/from16 v35, v21

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 2420
    move-object/from16 v35, v3

    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2421
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2f

    .line 2423
    move-object/from16 v35, v3

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2425
    :cond_2f
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v16, v35

    .line 2426
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_19

    .line 2427
    const/16 v35, 0x4

    move/from16 v21, v35

    .line 2428
    const/16 v35, 0x0

    move/from16 v19, v35

    goto/16 :goto_a

    .line 2437
    :cond_30
    const/16 v35, 0x0

    goto/16 :goto_b

    .line 2440
    :cond_31
    const/16 v35, 0x0

    goto/16 :goto_c

    .line 2444
    :cond_32
    const/16 v35, 0x0

    goto/16 :goto_d

    .line 2460
    :cond_33
    const/16 v35, 0x0

    goto/16 :goto_e

    .line 2461
    :cond_34
    const/16 v35, 0x0

    goto/16 :goto_f

    .line 2462
    :cond_35
    const/16 v53, 0x0

    goto/16 :goto_10

    .line 2466
    :cond_36
    move/from16 v35, v5

    if-eqz v35, :cond_1f

    .line 2467
    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2468
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2469
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1f

    .line 2470
    move/from16 v35, v11

    if-eqz v35, :cond_1f

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-boolean v35, v35, v36

    if-eqz v35, :cond_1f

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v35

    if-nez v35, :cond_1f

    .line 2474
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v35

    move-object/from16 v28, v35

    .line 2475
    move-object/from16 v35, v4

    move-object/from16 v36, v28

    move-object/from16 v37, v7

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_11

    .line 2508
    :cond_37
    const/16 v35, 0x0

    goto/16 :goto_12

    .line 2514
    :cond_38
    const/16 v35, 0x0

    goto/16 :goto_13

    .line 2515
    :cond_39
    const/16 v35, 0x0

    goto/16 :goto_14

    .line 2533
    :cond_3a
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3b

    .line 2535
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v8

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v38

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v35

    goto/16 :goto_15

    .line 2537
    :cond_3b
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v8

    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v38

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v35

    goto/16 :goto_15

    .line 2541
    :cond_3c
    const/16 v53, 0x0

    goto/16 :goto_16

    .line 2552
    :cond_3d
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v6

    move-object/from16 v38, v9

    move-object/from16 v39, v8

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v40, v0

    move/from16 v41, v29

    invoke-virtual/range {v35 .. v41}, Landroidx/constraintlayout/core/LinearSystem;->addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    goto/16 :goto_17

    .line 2222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public allowedInBarrier()Z
    .locals 3

    .prologue
    .line 1645
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 9

    .prologue
    .line 1695
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1696
    return-void
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .locals 17

    .prologue
    .line 1709
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_d

    .line 1712
    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_9

    .line 1713
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1714
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1715
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1716
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1717
    const/4 v12, 0x0

    move v9, v12

    .line 1718
    const/4 v12, 0x0

    move v10, v12

    .line 1719
    move-object v12, v5

    if-eqz v12, :cond_0

    move-object v12, v5

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    move-object v12, v6

    if-eqz v12, :cond_5

    move-object v12, v6

    .line 1720
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1729
    :cond_1
    :goto_0
    move-object v12, v7

    if-eqz v12, :cond_2

    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    move-object v12, v8

    if-eqz v12, :cond_6

    move-object v12, v8

    .line 1730
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1739
    :cond_3
    :goto_1
    move v12, v9

    if-eqz v12, :cond_7

    move v12, v10

    if-eqz v12, :cond_7

    .line 1740
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v11, v12

    .line 1741
    move-object v12, v11

    move-object v13, v2

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1876
    :cond_4
    :goto_2
    return-void

    .line 1723
    :cond_5
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1725
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1727
    const/4 v12, 0x1

    move v9, v12

    goto :goto_0

    .line 1733
    :cond_6
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1735
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1737
    const/4 v12, 0x1

    move v10, v12

    goto :goto_1

    .line 1742
    :cond_7
    move v12, v9

    if-eqz v12, :cond_8

    .line 1743
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v11, v12

    .line 1744
    move-object v12, v11

    move-object v13, v2

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1745
    goto :goto_2

    :cond_8
    move v12, v10

    if-eqz v12, :cond_4

    .line 1746
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v11, v12

    .line 1747
    move-object v12, v11

    move-object v13, v2

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    goto :goto_2

    .line 1749
    :cond_9
    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_a

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_b

    .line 1751
    :cond_a
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1753
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1755
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1756
    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1757
    goto/16 :goto_2

    :cond_b
    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_c

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_4

    .line 1759
    :cond_c
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1761
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1763
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1764
    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1765
    goto/16 :goto_2

    .line 1766
    :cond_d
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_f

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_e

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_f

    .line 1769
    :cond_e
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1770
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1771
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1772
    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1773
    move-object v12, v7

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1774
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1775
    move-object v12, v8

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1776
    goto/16 :goto_2

    :cond_f
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_11

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_10

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_11

    .line 1779
    :cond_10
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1780
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1781
    move-object v12, v6

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1782
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1783
    move-object v12, v7

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1784
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1785
    move-object v12, v8

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1786
    goto/16 :goto_2

    :cond_11
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_12

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_12

    .line 1789
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1790
    move-object v12, v2

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1791
    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1792
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1793
    move-object v12, v2

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1794
    move-object v12, v7

    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1795
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v9, v12

    .line 1796
    move-object v12, v9

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1797
    goto/16 :goto_2

    :cond_12
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_13

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_13

    .line 1800
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1801
    move-object v12, v2

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1802
    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1803
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1804
    move-object v12, v2

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1805
    move-object v12, v7

    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1806
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v9, v12

    .line 1807
    move-object v12, v9

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1808
    goto/16 :goto_2

    .line 1809
    :cond_13
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1810
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1811
    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1814
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_16

    .line 1815
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1816
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1817
    move-object v12, v7

    if-eqz v12, :cond_14

    .line 1818
    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1820
    :cond_14
    move-object v12, v8

    if-eqz v12, :cond_15

    .line 1821
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1873
    :cond_15
    :goto_3
    move-object v12, v5

    move-object v13, v6

    move v14, v4

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    move-result v12

    goto/16 :goto_2

    .line 1823
    :cond_16
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_17

    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_1b

    .line 1825
    :cond_17
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1826
    move-object v12, v7

    if-eqz v12, :cond_18

    .line 1827
    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1829
    :cond_18
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1830
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v13, v6

    if-eq v12, v13, :cond_19

    .line 1831
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1833
    :cond_19
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v9, v12

    .line 1834
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v10, v12

    .line 1835
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 1836
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1837
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1849
    :cond_1a
    goto :goto_3

    :cond_1b
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_1c

    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_15

    .line 1851
    :cond_1c
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1852
    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v13, v6

    if-eq v12, v13, :cond_1d

    .line 1853
    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1855
    :cond_1d
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1856
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v9, v12

    .line 1857
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1858
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1859
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_3
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .locals 9

    .prologue
    .line 1676
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 1677
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v7

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 1679
    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .locals 10

    .prologue
    .line 705
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object v6, v1

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 707
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 708
    return-void
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 3177
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 3179
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 3180
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 3182
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3183
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3185
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 3186
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 3187
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 3188
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 3189
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 3190
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 3191
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 3193
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 3194
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 3196
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 3197
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 3198
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 3199
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 3204
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3205
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3206
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3207
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3208
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3209
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3210
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3211
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 3212
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3213
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3215
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3216
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3217
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 3218
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 3220
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 3221
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 3222
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 3223
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 3225
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 3226
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 3228
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 3229
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 3230
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 3232
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 3233
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 3235
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 3236
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 3237
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 3238
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 3239
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 3241
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToTop:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToTop:I

    .line 3242
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToLeft:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToLeft:I

    .line 3243
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToRight:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToRight:I

    .line 3244
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToBottom:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToBottom:I

    .line 3245
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeftHasCentered:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 3246
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRightHasCentered:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 3248
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTopHasCentered:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 3249
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottomHasCentered:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 3251
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 3252
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 3254
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 3255
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 3256
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 3257
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 3258
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3259
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3261
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3262
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3264
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3265
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3267
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3268
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3269
    return-void

    .line 3213
    :cond_0
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto/16 :goto_0

    .line 3267
    :cond_1
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_1

    .line 3268
    :cond_2
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    goto :goto_2
.end method

.method public createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 9

    .prologue
    .line 799
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    move-object v2, v7

    .line 800
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    move-object v3, v7

    .line 801
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    move-object v4, v7

    .line 802
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    move-object v5, v7

    .line 803
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v7, :cond_0

    .line 804
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 806
    :cond_0
    return-void
.end method

.method public ensureMeasureRequested()V
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 177
    return-void
.end method

.method public ensureWidgetRuns()V
    .locals 6

    .prologue
    .line 593
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-nez v1, :cond_0

    .line 594
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 596
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-nez v1, :cond_1

    .line 597
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 599
    :cond_1
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .locals 6

    .prologue
    .line 1972
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2000
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1974
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v2

    .line 1998
    :goto_0
    return-object v0

    .line 1977
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1980
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1983
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1986
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1989
    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1992
    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1995
    :pswitch_7
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1998
    :pswitch_8
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 1972
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 2

    .prologue
    .line 1084
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    move v0, v1

    return v0
.end method

.method public getBiasPercent(I)F
    .locals 4

    .prologue
    .line 1060
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 1061
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v0, v2

    .line 1065
    :goto_0
    return v0

    .line 1062
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1063
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move v0, v2

    goto :goto_0

    .line 1065
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    move v0, v2

    goto :goto_0
.end method

.method public getBottom()I
    .locals 3

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1094
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 2

    .prologue
    .line 1580
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    move v0, v1

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 752
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 4

    .prologue
    .line 2028
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 2029
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object v0, v2

    .line 2033
    :goto_0
    return-object v0

    .line 2030
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2031
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 2033
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getDimensionRatio()F
    .locals 2

    .prologue
    .line 1334
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    move v0, v1

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 2

    .prologue
    .line 1343
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move v0, v1

    return v0
.end method

.method public getHasBaseline()Z
    .locals 2

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    move v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 908
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 909
    const/4 v1, 0x0

    move v0, v1

    .line 911
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move v0, v1

    goto :goto_0
.end method

.method public getHorizontalBiasPercent()F
    .locals 2

    .prologue
    .line 1039
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v0, v1

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 9

    .prologue
    .line 2112
    move-object v0, p0

    const/4 v7, 0x0

    move-object v1, v7

    .line 2113
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2114
    move-object v7, v0

    move-object v2, v7

    .line 2116
    :goto_0
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    .line 2117
    move-object v7, v2

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v3, v7

    .line 2118
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    move-object v4, v7

    .line 2119
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v5, v7

    .line 2120
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 2121
    move-object v7, v2

    move-object v1, v7

    .line 2132
    :cond_0
    move-object v7, v1

    move-object v0, v7

    return-object v0

    .line 2118
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_1

    .line 2119
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v7

    goto :goto_2

    .line 2124
    :cond_3
    move-object v7, v5

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move-object v6, v7

    .line 2125
    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v2

    if-eq v7, v8, :cond_5

    .line 2126
    move-object v7, v2

    move-object v1, v7

    .line 2130
    :goto_4
    goto :goto_0

    .line 2124
    :cond_4
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_3

    .line 2128
    :cond_5
    move-object v7, v5

    move-object v2, v7

    goto :goto_4
.end method

.method public getHorizontalChainStyle()I
    .locals 2

    .prologue
    .line 1618
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move v0, v1

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 3

    .prologue
    .line 2009
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method public getHorizontalMargin()I
    .locals 4

    .prologue
    .line 1008
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 1009
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_0

    .line 1010
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1012
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    .line 1013
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1015
    :cond_1
    move v2, v1

    move v0, v2

    return v0
.end method

.method public getLastHorizontalMeasureSpec()I
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    move v0, v1

    return v0
.end method

.method public getLastVerticalMeasureSpec()I
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    move v0, v1

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 974
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLength(I)I
    .locals 4

    .prologue
    .line 921
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 922
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    move v0, v2

    .line 926
    :goto_0
    return v0

    .line 923
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 924
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 926
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 3

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 3

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 965
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    move v0, v1

    return v0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 956
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    move v0, v1

    return v0
.end method

.method public getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .prologue
    .line 2094
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 2095
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 2096
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v0, v2

    .line 2103
    :goto_0
    return-object v0

    .line 2098
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2099
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 2100
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v0, v2

    goto :goto_0

    .line 2103
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .prologue
    .line 885
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move v1, v2

    .line 886
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 887
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 888
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 895
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 896
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v1, v2

    .line 899
    :cond_0
    move v2, v1

    move v0, v2

    return v0

    .line 889
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v2, :cond_2

    .line 890
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v1, v2

    .line 891
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    .line 893
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getOptimizerWrapWidth()I
    .locals 4

    .prologue
    .line 867
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move v1, v2

    .line 868
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 869
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 870
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 877
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 878
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v1, v2

    .line 881
    :cond_0
    move v2, v1

    move v0, v2

    return v0

    .line 871
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v2, :cond_2

    .line 872
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v1, v2

    .line 873
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    .line 875
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 649
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v0, v1

    return-object v0
.end method

.method public getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .prologue
    .line 2075
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 2076
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 2077
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v0, v2

    .line 2084
    :goto_0
    return-object v0

    .line 2079
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2080
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 2081
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v0, v2

    goto :goto_0

    .line 2084
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method getRelativePositioning(I)I
    .locals 4

    .prologue
    .line 1515
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 1516
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    move v0, v2

    .line 1520
    :goto_0
    return v0

    .line 1517
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1518
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    move v0, v2

    goto :goto_0

    .line 1520
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getRight()I
    .locals 3

    .prologue
    .line 992
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method protected getRootX()I
    .locals 3

    .prologue
    .line 937
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 3

    .prologue
    .line 947
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 80
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    move-object v0, v2

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 82
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    move-object v0, v2

    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 983
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 2

    .prologue
    .line 1049
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move v0, v1

    return v0
.end method

.method public getVerticalChainControlWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 9

    .prologue
    .line 2155
    move-object v0, p0

    const/4 v7, 0x0

    move-object v1, v7

    .line 2156
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2157
    move-object v7, v0

    move-object v2, v7

    .line 2158
    :goto_0
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    .line 2159
    move-object v7, v2

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v3, v7

    .line 2160
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    move-object v4, v7

    .line 2161
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v5, v7

    .line 2162
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 2163
    move-object v7, v2

    move-object v1, v7

    .line 2175
    :cond_0
    move-object v7, v1

    move-object v0, v7

    return-object v0

    .line 2160
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_1

    .line 2161
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v7

    goto :goto_2

    .line 2166
    :cond_3
    move-object v7, v5

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move-object v6, v7

    .line 2167
    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v2

    if-eq v7, v8, :cond_5

    .line 2168
    move-object v7, v2

    move-object v1, v7

    .line 2172
    :goto_4
    goto :goto_0

    .line 2166
    :cond_4
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_3

    .line 2170
    :cond_5
    move-object v7, v5

    move-object v2, v7

    goto :goto_4
.end method

.method public getVerticalChainStyle()I
    .locals 2

    .prologue
    .line 1638
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move v0, v1

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 3

    .prologue
    .line 2018
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalMargin()I
    .locals 4

    .prologue
    .line 1022
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 1023
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_0

    .line 1024
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1026
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    .line 1027
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1029
    :cond_1
    move v2, v1

    move v0, v2

    return v0
.end method

.method public getVisibility()I
    .locals 2

    .prologue
    .line 743
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 860
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 861
    const/4 v1, 0x0

    move v0, v1

    .line 863
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move v0, v1

    goto :goto_0
.end method

.method public getWrapBehaviorInParent()I
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    move v0, v1

    return v0
.end method

.method public getX()I
    .locals 3

    .prologue
    .line 836
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 837
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    add-int/2addr v1, v2

    move v0, v1

    .line 839
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move v0, v1

    goto :goto_0
.end method

.method public getY()I
    .locals 3

    .prologue
    .line 848
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 849
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    add-int/2addr v1, v2

    move v0, v1

    .line 851
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    move v0, v1

    goto :goto_0
.end method

.method public hasBaseline()Z
    .locals 2

    .prologue
    .line 1075
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    move v0, v1

    return v0
.end method

.method public hasDanglingDimension(I)Z
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-nez v3, :cond_3

    .line 191
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v3, v4

    move v2, v3

    .line 192
    move v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 195
    :goto_3
    return v0

    .line 191
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 192
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 194
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_5
    add-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_6
    add-int/2addr v3, v4

    move v2, v3

    .line 195
    move v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    const/4 v3, 0x1

    :goto_7
    move v0, v3

    goto :goto_3

    .line 194
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 195
    :cond_7
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public hasDependencies()Z
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 181
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v4

    .line 182
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    const/4 v4, 0x1

    move v0, v4

    .line 186
    :goto_1
    return v0

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public hasDimensionOverride()Z
    .locals 3

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .locals 13

    .prologue
    .line 1663
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v6, v8

    .line 1664
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v7, v8

    .line 1665
    move-object v8, v6

    move-object v9, v7

    move v10, v4

    move v11, v5

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    move-result v8

    .line 1666
    return-void
.end method

.method public isHeightWrapContent()Z
    .locals 2

    .prologue
    .line 694
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    move v0, v1

    return v0
.end method

.method public isInHorizontalChain()Z
    .locals 3

    .prologue
    .line 2061
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_2

    .line 2063
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 2065
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isInPlaceholder()Z
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    move v0, v1

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 3

    .prologue
    .line 2142
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_2

    .line 2144
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 2146
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isInVirtualLayout()Z
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    move v0, v1

    return v0
.end method

.method public isMeasureRequested()Z
    .locals 3

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

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
    .line 159
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isResolvedVertically()Z
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRoot()Z
    .locals 2

    .prologue
    .line 640
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpreadHeight()Z
    .locals 3

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpreadWidth()Z
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWidthWrapContent()Z
    .locals 2

    .prologue
    .line 676
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    move v0, v1

    return v0
.end method

.method public oppositeDimensionDependsOn(I)Z
    .locals 7

    .prologue
    .line 527
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 528
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v6, v1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 529
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v6, v2

    aget-object v5, v5, v6

    move-object v4, v5

    .line 530
    move-object v5, v3

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    move-object v5, v4

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    return v0

    .line 527
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 530
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public oppositeDimensionsTied()Z
    .locals 3

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 458
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 459
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 460
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 461
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 462
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 463
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 464
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 465
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 466
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 467
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 468
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 469
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 470
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 471
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 472
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 473
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 474
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 475
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 476
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 477
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 478
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 479
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 480
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 481
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v1, v2

    .line 482
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v1, v2

    .line 483
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 484
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 485
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 486
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 487
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 488
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 489
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 490
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 491
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 492
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 493
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    .line 494
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    .line 495
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 496
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 497
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x0

    const v3, 0x7fffffff

    aput v3, v1, v2

    .line 498
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x1

    const v3, 0x7fffffff

    aput v3, v1, v2

    .line 499
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 500
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 501
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 502
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 503
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 504
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 505
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 506
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 507
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 508
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 509
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 510
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 511
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 512
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 513
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 514
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 515
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 516
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 517
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 518
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 519
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 520
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 521
    return-void
.end method

.method public resetAllConstraints()V
    .locals 3

    .prologue
    .line 1881
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    .line 1882
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1883
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1884
    return-void
.end method

.method public resetAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 11

    .prologue
    .line 1893
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1894
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    instance-of v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v9, :cond_0

    .line 1895
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move-object v2, v9

    .line 1896
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1946
    :goto_0
    return-void

    .line 1901
    :cond_0
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v2, v9

    .line 1902
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v3, v9

    .line 1903
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 1904
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v5, v9

    .line 1905
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v6, v9

    .line 1906
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v7, v9

    .line 1907
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v8, v9

    .line 1909
    move-object v9, v1

    move-object v10, v6

    if-ne v9, v10, :cond_4

    .line 1910
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    .line 1911
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 1912
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1913
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1915
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v4

    .line 1916
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 1917
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1918
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1920
    :cond_2
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1921
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1945
    :cond_3
    :goto_1
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1946
    goto/16 :goto_0

    .line 1922
    :cond_4
    move-object v9, v1

    move-object v10, v7

    if-ne v9, v10, :cond_6

    .line 1923
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v2

    .line 1924
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 1925
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1926
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1928
    :cond_5
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    .line 1929
    :cond_6
    move-object v9, v1

    move-object v10, v8

    if-ne v9, v10, :cond_8

    .line 1930
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v4

    .line 1931
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v10

    if-ne v9, v10, :cond_7

    .line 1932
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1933
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1935
    :cond_7
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    .line 1936
    :cond_8
    move-object v9, v1

    move-object v10, v2

    if-eq v9, v10, :cond_9

    move-object v9, v1

    move-object v10, v3

    if-ne v9, v10, :cond_a

    .line 1937
    :cond_9
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 1938
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1

    .line 1940
    :cond_a
    move-object v9, v1

    move-object v10, v4

    if-eq v9, v10, :cond_b

    move-object v9, v1

    move-object v10, v5

    if-ne v9, v10, :cond_3

    .line 1941
    :cond_b
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 1942
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1
.end method

.method public resetAnchors()V
    .locals 7

    .prologue
    .line 1952
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    move-object v1, v5

    .line 1953
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    .line 1954
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    move-object v2, v5

    .line 1955
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1963
    :goto_0
    return-void

    .line 1959
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    :goto_1
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1960
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v4, v5

    .line 1961
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 1959
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1963
    :cond_1
    goto :goto_0
.end method

.method public resetFinalResolution()V
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 168
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 169
    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 170
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v4

    .line 171
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetFinalResolution()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V
    .locals 4

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 611
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 612
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 613
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 614
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 615
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 616
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 617
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 618
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 4

    .prologue
    .line 1544
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1545
    move-object v2, v0

    move v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 1546
    return-void

    .line 1545
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1555
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1556
    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 4

    .prologue
    .line 1567
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    .line 1568
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1572
    :goto_0
    return-void

    .line 1570
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 759
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 760
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/core/LinearSystem;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 779
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 780
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    move-object v3, v8

    .line 781
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    move-object v4, v8

    .line 782
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 783
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 784
    move-object v8, v3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".left"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 785
    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".top"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 786
    move-object v8, v5

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".right"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 787
    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".bottom"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 788
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    move-object v7, v8

    .line 789
    move-object v8, v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".baseline"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public setDimension(II)V
    .locals 5

    .prologue
    .line 1399
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1400
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v3, v4, :cond_0

    .line 1401
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1403
    :cond_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1404
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_1

    .line 1405
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1407
    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 5

    .prologue
    .line 1324
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1325
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1326
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1262
    move-object v0, p0

    move-object v1, p1

    move-object v11, v1

    if-eqz v11, :cond_0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 1263
    :cond_0
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1316
    :goto_0
    return-void

    .line 1266
    :cond_1
    const/4 v11, -0x1

    move v2, v11

    .line 1267
    const/4 v11, 0x0

    move v3, v11

    .line 1268
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v4, v11

    .line 1269
    move-object v11, v1

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v5, v11

    .line 1270
    move v11, v5

    if-lez v11, :cond_6

    move v11, v5

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_6

    .line 1271
    move-object v11, v1

    const/4 v12, 0x0

    move v13, v5

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 1272
    move-object v11, v6

    const-string v12, "W"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1273
    const/4 v11, 0x0

    move v2, v11

    .line 1277
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 1281
    :goto_2
    move-object v11, v1

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v6, v11

    .line 1283
    move v11, v6

    if-ltz v11, :cond_8

    move v11, v6

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_8

    .line 1284
    move-object v11, v1

    move v12, v5

    move v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1285
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 1286
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1288
    move-object v11, v7

    :try_start_0
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v9, v11

    .line 1289
    move-object v11, v8

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v10, v11

    .line 1290
    move v11, v9

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    move v11, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 1291
    move v11, v2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 1292
    move v11, v10

    move v12, v9

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v3, v11

    .line 1312
    :cond_3
    :goto_3
    move v11, v3

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 1313
    move-object v11, v0

    move v12, v3

    iput v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1314
    move-object v11, v0

    move v12, v2

    iput v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1316
    :cond_4
    goto/16 :goto_0

    .line 1274
    :cond_5
    move-object v11, v6

    const-string v12, "H"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1275
    const/4 v11, 0x1

    move v2, v11

    goto :goto_1

    .line 1279
    :cond_6
    const/4 v11, 0x0

    move v5, v11

    goto :goto_2

    .line 1294
    :cond_7
    move v11, v9

    move v12, v10

    div-float/2addr v11, v12

    :try_start_1
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    move v3, v11

    goto :goto_3

    .line 1297
    :catch_0
    move-exception v11

    move-object v9, v11

    goto :goto_3

    .line 1302
    :cond_8
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1303
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1305
    move-object v11, v7

    :try_start_2
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    move v3, v11

    .line 1308
    goto :goto_3

    .line 1306
    :catch_1
    move-exception v11

    move-object v8, v11

    goto :goto_3
.end method

.method public setFinalBaseline(I)V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    if-nez v4, :cond_0

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    sub-int/2addr v4, v5

    move v2, v4

    .line 150
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v4, v5

    move v3, v4

    .line 151
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 152
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 153
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 154
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 155
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 156
    goto :goto_0
.end method

.method public setFinalFrame(IIIIII)V
    .locals 12

    .prologue
    .line 91
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 92
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 93
    move v7, v6

    if-nez v7, :cond_0

    .line 94
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 95
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    move v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 97
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 98
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0

    .line 99
    :cond_1
    move v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 100
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 101
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0

    .line 103
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 104
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0
.end method

.method public setFinalHorizontal(II)V
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 120
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 121
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 122
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 123
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 128
    return-void
.end method

.method public setFinalLeft(I)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 110
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 111
    return-void
.end method

.method public setFinalTop(I)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 115
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 116
    return-void
.end method

.method public setFinalVertical(II)V
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 132
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 133
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 134
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 135
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    if-eqz v3, :cond_0

    .line 136
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 138
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 143
    return-void
.end method

.method public setFrame(III)V
    .locals 7

    .prologue
    .line 1473
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v3

    if-nez v4, :cond_1

    .line 1474
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1476
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimension(II)V

    goto :goto_0
.end method

.method public setFrame(IIII)V
    .locals 10

    .prologue
    .line 1418
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v3

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 1419
    move v7, v4

    move v8, v2

    sub-int/2addr v7, v8

    move v6, v7

    .line 1421
    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1422
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1424
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 1425
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1426
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1463
    :goto_0
    return-void

    .line 1431
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_1

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-ge v7, v8, :cond_1

    .line 1432
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move v5, v7

    .line 1434
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_2

    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-ge v7, v8, :cond_2

    .line 1435
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move v6, v7

    .line 1438
    :cond_2
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1439
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1441
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v7, v8, :cond_3

    .line 1442
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1444
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v7, v8, :cond_4

    .line 1445
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1447
    :cond_4
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_5

    .line 1448
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1450
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_6

    .line 1451
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1453
    :cond_6
    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-eq v7, v8, :cond_7

    .line 1454
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 1456
    :cond_7
    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-eq v7, v8, :cond_8

    .line 1457
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iput v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 1463
    :cond_8
    goto/16 :goto_0
.end method

.method public setGoneMargin(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .locals 5

    .prologue
    .line 1153
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1180
    :goto_0
    return-void

    .line 1155
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1157
    goto :goto_0

    .line 1159
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1161
    goto :goto_0

    .line 1163
    :pswitch_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1165
    goto :goto_0

    .line 1167
    :pswitch_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1169
    goto :goto_0

    .line 1171
    :pswitch_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1173
    goto :goto_0

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setHasBaseline(Z)V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 300
    return-void
.end method

.method public setHeight(I)V
    .locals 4

    .prologue
    .line 1200
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1201
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v3, :cond_0

    .line 1202
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1204
    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 686
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 4

    .prologue
    .line 1353
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1354
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 4

    .prologue
    .line 1608
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1609
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 6

    .prologue
    .line 1487
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1488
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1489
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v3, v4, :cond_0

    .line 1490
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1492
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 5

    .prologue
    .line 2043
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    move-object v4, v1

    aput-object v4, v2, v3

    .line 2044
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 8

    .prologue
    .line 1229
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1230
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1231
    move-object v5, v0

    move v6, v3

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    :goto_0
    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1232
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1233
    move v5, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v5, :cond_0

    .line 1234
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1236
    :cond_0
    return-void

    .line 1231
    :cond_1
    move v6, v3

    goto :goto_0
.end method

.method public setHorizontalWeight(F)V
    .locals 5

    .prologue
    .line 1589
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v3, 0x0

    move v4, v1

    aput v4, v2, v3

    .line 1590
    return-void
.end method

.method protected setInBarrier(IZ)V
    .locals 6

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move v4, v1

    move v5, v2

    aput-boolean v5, v3, v4

    .line 316
    return-void
.end method

.method public setInPlaceholder(Z)V
    .locals 4

    .prologue
    .line 311
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 312
    return-void
.end method

.method public setInVirtualLayout(Z)V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 264
    return-void
.end method

.method public setLastMeasureSpec(II)V
    .locals 5

    .prologue
    .line 345
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 346
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 347
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 348
    return-void
.end method

.method public setLength(II)V
    .locals 5

    .prologue
    .line 1213
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_1

    .line 1214
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1216
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x1

    move v4, v1

    aput v4, v2, v3

    .line 280
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 5

    .prologue
    .line 275
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x0

    move v4, v1

    aput v4, v2, v3

    .line 276
    return-void
.end method

.method public setMeasureRequested(Z)V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 320
    return-void
.end method

.method public setMinHeight(I)V
    .locals 4

    .prologue
    .line 1385
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1386
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 1390
    :goto_0
    return-void

    .line 1388
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 4

    .prologue
    .line 1372
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1373
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 1377
    :goto_0
    return-void

    .line 1375
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0
.end method

.method public setOffset(II)V
    .locals 5

    .prologue
    .line 1142
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 1143
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 1144
    return-void
.end method

.method public setOrigin(II)V
    .locals 5

    .prologue
    .line 1131
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1132
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1133
    return-void
.end method

.method public setParent(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 658
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 659
    return-void
.end method

.method setRelativePositioning(II)V
    .locals 5

    .prologue
    .line 1531
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_1

    .line 1532
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1534
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 725
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 726
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 4

    .prologue
    .line 1363
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1364
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 4

    .prologue
    .line 1628
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1629
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 6

    .prologue
    .line 1501
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1502
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1503
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_0

    .line 1504
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1506
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 5

    .prologue
    .line 2052
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    move-object v4, v1

    aput-object v4, v2, v3

    .line 2053
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 8

    .prologue
    .line 1247
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1248
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1249
    move-object v5, v0

    move v6, v3

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    :goto_0
    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1250
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1251
    move v5, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v5, :cond_0

    .line 1252
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1254
    :cond_0
    return-void

    .line 1249
    :cond_1
    move v6, v3

    goto :goto_0
.end method

.method public setVerticalWeight(F)V
    .locals 5

    .prologue
    .line 1598
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v3, 0x1

    move v4, v1

    aput v4, v2, v3

    .line 1599
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 735
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 1188
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1189
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_0

    .line 1190
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1192
    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 4

    .prologue
    .line 667
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 668
    return-void
.end method

.method public setWrapBehaviorInParent(I)V
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 328
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 330
    :cond_0
    return-void
.end method

.method public setX(I)V
    .locals 4

    .prologue
    .line 1112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1113
    return-void
.end method

.method public setY(I)V
    .locals 4

    .prologue
    .line 1121
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1122
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 8

    .prologue
    .line 2587
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2588
    move v5, v3

    if-eqz v5, :cond_6

    move v5, v4

    if-nez v5, :cond_6

    .line 2589
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2599
    :cond_0
    :goto_0
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v5, :cond_7

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2600
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2606
    :cond_2
    :goto_1
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 2607
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2608
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2610
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2611
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2628
    :cond_4
    :goto_2
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 2629
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v5, :cond_a

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v5, :cond_a

    .line 2630
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2641
    :cond_5
    :goto_3
    return-void

    .line 2590
    :cond_6
    move v5, v3

    if-nez v5, :cond_0

    move v5, v4

    if-eqz v5, :cond_0

    .line 2591
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2592
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2594
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    goto/16 :goto_0

    .line 2601
    :cond_7
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2602
    :cond_8
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_1

    .line 2612
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2613
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2614
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2631
    :cond_a
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v5, :cond_5

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v5, :cond_5

    .line 2632
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2633
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 815
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public updateFromRuns(ZZ)V
    .locals 11

    .prologue
    .line 3272
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->isResolved()Z

    move-result v10

    and-int/2addr v9, v10

    move v1, v9

    .line 3273
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->isResolved()Z

    move-result v10

    and-int/2addr v9, v10

    move v2, v9

    .line 3274
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move v3, v9

    .line 3275
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move v4, v9

    .line 3276
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move v5, v9

    .line 3277
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move v6, v9

    .line 3278
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v7, v9

    .line 3279
    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    move v8, v9

    .line 3280
    move v9, v7

    if-ltz v9, :cond_0

    move v9, v8

    if-ltz v9, :cond_0

    move v9, v3

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_0

    move v9, v3

    const v10, 0x7fffffff

    if-eq v9, v10, :cond_0

    move v9, v4

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_0

    move v9, v4

    const v10, 0x7fffffff

    if-eq v9, v10, :cond_0

    move v9, v5

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_0

    move v9, v5

    const v10, 0x7fffffff

    if-eq v9, v10, :cond_0

    move v9, v6

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_0

    move v9, v6

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_1

    .line 3285
    :cond_0
    const/4 v9, 0x0

    move v3, v9

    .line 3286
    const/4 v9, 0x0

    move v4, v9

    .line 3287
    const/4 v9, 0x0

    move v5, v9

    .line 3288
    const/4 v9, 0x0

    move v6, v9

    .line 3291
    :cond_1
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v7, v9

    .line 3292
    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    move v8, v9

    .line 3294
    move v9, v1

    if-eqz v9, :cond_2

    .line 3295
    move-object v9, v0

    move v10, v3

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 3297
    :cond_2
    move v9, v2

    if-eqz v9, :cond_3

    .line 3298
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 3301
    :cond_3
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    .line 3302
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3303
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3328
    :goto_0
    return-void

    .line 3308
    :cond_4
    move v9, v1

    if-eqz v9, :cond_6

    .line 3309
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_5

    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-ge v9, v10, :cond_5

    .line 3310
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move v7, v9

    .line 3312
    :cond_5
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3313
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v9, v10, :cond_6

    .line 3314
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3318
    :cond_6
    move v9, v2

    if-eqz v9, :cond_8

    .line 3319
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_7

    move v9, v8

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-ge v9, v10, :cond_7

    .line 3320
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move v8, v9

    .line 3322
    :cond_7
    move-object v9, v0

    move v10, v8

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3323
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v9, v10, :cond_8

    .line 3324
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iput v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3328
    :cond_8
    goto :goto_0
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 14

    .prologue
    .line 3142
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v9

    move v3, v9

    .line 3143
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v9

    move v4, v9

    .line 3144
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v9

    move v5, v9

    .line 3145
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v9

    move v6, v9

    .line 3147
    move v9, v2

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v9, :cond_0

    .line 3148
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move v3, v9

    .line 3149
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move v5, v9

    .line 3151
    :cond_0
    move v9, v2

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v9, :cond_1

    .line 3152
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move v4, v9

    .line 3153
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move v6, v9

    .line 3156
    :cond_1
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v7, v9

    .line 3157
    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    move v8, v9

    .line 3158
    move v9, v7

    if-ltz v9, :cond_2

    move v9, v8

    if-ltz v9, :cond_2

    move v9, v3

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_2

    move v9, v3

    const v10, 0x7fffffff

    if-eq v9, v10, :cond_2

    move v9, v4

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_2

    move v9, v4

    const v10, 0x7fffffff

    if-eq v9, v10, :cond_2

    move v9, v5

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_2

    move v9, v5

    const v10, 0x7fffffff

    if-eq v9, v10, :cond_2

    move v9, v6

    const/high16 v10, -0x80000000

    if-eq v9, v10, :cond_2

    move v9, v6

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_3

    .line 3163
    :cond_2
    const/4 v9, 0x0

    move v3, v9

    .line 3164
    const/4 v9, 0x0

    move v4, v9

    .line 3165
    const/4 v9, 0x0

    move v5, v9

    .line 3166
    const/4 v9, 0x0

    move v6, v9

    .line 3168
    :cond_3
    move-object v9, v0

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 3172
    return-void
.end method
