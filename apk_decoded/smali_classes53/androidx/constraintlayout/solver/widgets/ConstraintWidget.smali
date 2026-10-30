.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
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


# instance fields
.field private OPTIMIZE_WRAP:Z

.field private OPTIMIZE_WRAP_ON_RESOLVED:Z

.field private hasBaseline:Z

.field public horizontalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

.field public horizontalGroup:I

.field public horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

.field private inPlaceholder:Z

.field public isTerminalWidget:[Z

.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field public mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field public mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

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

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field private mInVirtuaLayout:Z

.field public mIsHeightWrapContent:Z

.field private mIsInBarrier:[Z

.field public mIsWidthWrapContent:Z

.field private mLastHorizontalMeasureSpec:I

.field private mLastVerticalMeasureSpec:I

.field public mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field public mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

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

.field protected mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field public mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedHasRatio:Z

.field public mResolvedMatchConstraintDefault:[I

.field public mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field public mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field public mWeight:[F

.field mWidth:I

.field protected mX:I

.field protected mY:I

.field public measured:Z

.field private resolvedHorizontal:Z

.field private resolvedVertical:Z

.field public run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

.field public verticalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

.field public verticalGroup:I

.field public verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 391
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 62
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 69
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 71
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 72
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 73
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 84
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 85
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 219
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 220
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 224
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 225
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 226
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 228
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 229
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 230
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 231
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 232
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 233
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 237
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 238
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 240
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 241
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 242
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 245
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 319
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 320
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 338
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 339
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 340
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 341
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 342
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 343
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 344
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 345
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 353
    move-object v1, v0

    const/4 v2, 0x6

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 354
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 356
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Z

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 361
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v3, v4

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 364
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 367
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 368
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 369
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 370
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 373
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 374
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 375
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 376
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 379
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 380
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 383
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 392
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 393
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 401
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 404
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 406
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 407
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 419
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 422
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 423
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 427
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 429
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

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

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 430
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

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

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 432
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 433
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 498
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    .line 499
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 524
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 525
    return-void

    .line 69
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 240
    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 427
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 560
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 561
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 540
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

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 62
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 66
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 69
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Z

    fill-array-data v6, :array_0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 71
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 72
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 73
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 84
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 85
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 219
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 220
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 224
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 225
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 226
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 228
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 229
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 230
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 231
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 232
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 233
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 237
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 238
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 240
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 241
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 242
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 245
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 319
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 320
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 338
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 339
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 340
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 341
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 342
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 343
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 344
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 345
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 353
    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x5

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 354
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 356
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Z

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 361
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v9, v7, v8

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 364
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 367
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 368
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 369
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 370
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 373
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 374
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 375
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 376
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 379
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 380
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 383
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 392
    move-object v5, v0

    sget v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 393
    move-object v5, v0

    sget v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 401
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 404
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 406
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 407
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 419
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 422
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 423
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 427
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 429
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

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

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 430
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

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

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 432
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 433
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 498
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    .line 499
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 541
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 542
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 543
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 544
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 545
    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 546
    return-void

    .line 69
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 240
    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 427
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 62
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 69
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 71
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 73
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    .line 84
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 85
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 219
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 220
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 224
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 225
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 226
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 228
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 229
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 230
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 231
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 232
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 233
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 237
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 238
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 240
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 241
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 242
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 245
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 319
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 320
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 338
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 339
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 340
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 341
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 342
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 343
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 344
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 345
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 353
    move-object v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 354
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 356
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Z

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 361
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v4, v5

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 364
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 367
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 368
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 369
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 370
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 373
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 374
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 375
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 376
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 379
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 380
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 383
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 392
    move-object v2, v0

    sget v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 393
    move-object v2, v0

    sget v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 401
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 404
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 406
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 407
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 419
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 422
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 423
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 427
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 429
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

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

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 430
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

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

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 432
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 433
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 498
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    .line 499
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    .line 528
    move-object v2, v0

    invoke-direct {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 529
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 530
    return-void

    .line 69
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 240
    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 427
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 7

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 574
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 11

    .prologue
    .line 549
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

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 550
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method private addAnchors()V
    .locals 3

    .prologue
    .line 595
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 596
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 597
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 598
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 599
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 600
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 601
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 602
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 603
    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .locals 63

    .prologue
    .line 2614
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

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v53

    move-object/from16 v32, v53

    .line 2615
    move-object/from16 v53, v5

    move-object/from16 v54, v15

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v53

    move-object/from16 v33, v53

    .line 2616
    move-object/from16 v53, v5

    move-object/from16 v54, v14

    invoke-virtual/range {v54 .. v54}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v53

    move-object/from16 v34, v53

    .line 2617
    move-object/from16 v53, v5

    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v53

    move-object/from16 v35, v53

    .line 2619
    move-object/from16 v53, v5

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v53

    if-eqz v53, :cond_0

    .line 2620
    move-object/from16 v53, v5

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v53

    move-object/from16 v62, v53

    move-object/from16 v53, v62

    move-object/from16 v54, v62

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x1

    add-long v54, v54, v56

    move-wide/from16 v0, v54

    move-object/from16 v2, v53

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 2623
    :cond_0
    move-object/from16 v53, v14

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v53

    move/from16 v36, v53

    .line 2624
    move-object/from16 v53, v15

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v53

    move/from16 v37, v53

    .line 2625
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v53

    move/from16 v38, v53

    .line 2627
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2629
    const/16 v53, 0x0

    move/from16 v40, v53

    .line 2630
    move/from16 v53, v36

    if-eqz v53, :cond_1

    .line 2631
    add-int/lit8 v40, v40, 0x1

    .line 2633
    :cond_1
    move/from16 v53, v37

    if-eqz v53, :cond_2

    .line 2634
    add-int/lit8 v40, v40, 0x1

    .line 2636
    :cond_2
    move/from16 v53, v38

    if-eqz v53, :cond_3

    .line 2637
    add-int/lit8 v40, v40, 0x1

    .line 2640
    :cond_3
    move/from16 v53, v21

    if-eqz v53, :cond_4

    .line 2641
    const/16 v53, 0x3

    move/from16 v26, v53

    .line 2643
    :cond_4
    sget-object v53, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    move-object/from16 v54, v12

    invoke-virtual/range {v54 .. v54}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v54

    aget v53, v53, v54

    packed-switch v53, :pswitch_data_0

    .line 2662
    :goto_0
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v53, v0

    const/16 v54, 0x8

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_5

    .line 2663
    const/16 v53, 0x0

    move/from16 v17, v53

    .line 2664
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2668
    :cond_5
    move/from16 v53, v31

    if-eqz v53, :cond_6

    .line 2669
    move/from16 v53, v36

    if-nez v53, :cond_e

    move/from16 v53, v37

    if-nez v53, :cond_e

    move/from16 v53, v38

    if-nez v53, :cond_e

    .line 2670
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move/from16 v55, v16

    invoke-virtual/range {v53 .. v55}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2677
    :cond_6
    :goto_1
    move/from16 v53, v39

    if-nez v53, :cond_10

    .line 2678
    move/from16 v53, v13

    if-eqz v53, :cond_f

    .line 2679
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    const/16 v56, 0x0

    const/16 v57, 0x3

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 2680
    move/from16 v53, v18

    if-lez v53, :cond_7

    .line 2681
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v18

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2683
    :cond_7
    move/from16 v53, v19

    const v54, 0x7fffffff

    move/from16 v0, v53

    move/from16 v1, v54

    if-ge v0, v1, :cond_8

    .line 2684
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v19

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2758
    :cond_8
    :goto_2
    move/from16 v53, v31

    if-eqz v53, :cond_9

    move/from16 v53, v23

    if-eqz v53, :cond_23

    .line 2764
    :cond_9
    move/from16 v53, v40

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ge v0, v1, :cond_c

    move/from16 v53, v7

    if-eqz v53, :cond_c

    move/from16 v53, v9

    if-eqz v53, :cond_c

    .line 2765
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v10

    const/16 v56, 0x0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2766
    move/from16 v53, v6

    if-nez v53, :cond_a

    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    if-nez v53, :cond_21

    :cond_a
    const/16 v53, 0x1

    :goto_3
    move/from16 v41, v53

    .line 2767
    move/from16 v53, v6

    if-nez v53, :cond_b

    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    if-eqz v53, :cond_b

    .line 2770
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    move-object/from16 v42, v53

    .line 2771
    move-object/from16 v53, v42

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v53, v0

    const/16 v54, 0x0

    cmpl-float v53, v53, v54

    if-eqz v53, :cond_22

    move-object/from16 v53, v42

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aget-object v53, v53, v54

    sget-object v54, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_22

    move-object/from16 v53, v42

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v53, v0

    const/16 v54, 0x1

    aget-object v53, v53, v54

    sget-object v54, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_22

    .line 2774
    const/16 v53, 0x1

    move/from16 v41, v53

    .line 2779
    :cond_b
    :goto_4
    move/from16 v53, v41

    if-eqz v53, :cond_c

    .line 2783
    move-object/from16 v53, v5

    move-object/from16 v54, v11

    move-object/from16 v55, v33

    const/16 v56, 0x0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 3047
    :cond_c
    :goto_5
    return-void

    .line 2645
    :pswitch_0
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2647
    goto/16 :goto_0

    .line 2649
    :pswitch_1
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2651
    goto/16 :goto_0

    .line 2653
    :pswitch_2
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2655
    goto/16 :goto_0

    .line 2657
    :pswitch_3
    move/from16 v53, v26

    const/16 v54, 0x4

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_d

    const/16 v53, 0x1

    :goto_6
    move/from16 v39, v53

    goto/16 :goto_0

    :cond_d
    const/16 v53, 0x0

    goto :goto_6

    .line 2671
    :cond_e
    move/from16 v53, v36

    if-eqz v53, :cond_6

    move/from16 v53, v37

    if-nez v53, :cond_6

    .line 2672
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    goto/16 :goto_1

    .line 2687
    :cond_f
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    goto/16 :goto_2

    .line 2690
    :cond_10
    move/from16 v53, v40

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_13

    move/from16 v53, v21

    if-nez v53, :cond_13

    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_11

    move/from16 v53, v26

    if-nez v53, :cond_13

    .line 2694
    :cond_11
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2695
    move/from16 v53, v28

    move/from16 v54, v17

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v53

    move/from16 v41, v53

    .line 2696
    move/from16 v53, v29

    if-lez v53, :cond_12

    .line 2697
    move/from16 v53, v29

    move/from16 v54, v41

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    move/from16 v41, v53

    .line 2699
    :cond_12
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v41

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 2700
    goto/16 :goto_2

    .line 2701
    :cond_13
    move/from16 v53, v28

    const/16 v54, -0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_14

    .line 2702
    move/from16 v53, v17

    move/from16 v28, v53

    .line 2704
    :cond_14
    move/from16 v53, v29

    const/16 v54, -0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_15

    .line 2705
    move/from16 v53, v17

    move/from16 v29, v53

    .line 2707
    :cond_15
    move/from16 v53, v17

    if-lez v53, :cond_16

    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_16

    .line 2712
    const/16 v53, 0x0

    move/from16 v17, v53

    .line 2715
    :cond_16
    move/from16 v53, v28

    if-lez v53, :cond_17

    .line 2716
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v28

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2717
    move/from16 v53, v17

    move/from16 v54, v28

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v53

    move/from16 v17, v53

    .line 2719
    :cond_17
    move/from16 v53, v29

    if-lez v53, :cond_1a

    .line 2720
    const/16 v53, 0x1

    move/from16 v41, v53

    .line 2721
    move/from16 v53, v7

    if-eqz v53, :cond_18

    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_18

    .line 2722
    const/16 v53, 0x0

    move/from16 v41, v53

    .line 2724
    :cond_18
    move/from16 v53, v41

    if-eqz v53, :cond_19

    .line 2725
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v29

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2727
    :cond_19
    move/from16 v53, v17

    move/from16 v54, v29

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    move/from16 v17, v53

    .line 2729
    :cond_1a
    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_1d

    .line 2730
    move/from16 v53, v7

    if-eqz v53, :cond_1b

    .line 2731
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    goto/16 :goto_2

    .line 2732
    :cond_1b
    move/from16 v53, v23

    if-eqz v53, :cond_1c

    .line 2733
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x5

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 2734
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_2

    .line 2736
    :cond_1c
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x5

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 2737
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    move/from16 v56, v17

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_2

    .line 2739
    :cond_1d
    move/from16 v53, v26

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_20

    .line 2740
    const/16 v53, 0x0

    move-object/from16 v41, v53

    .line 2741
    const/16 v53, 0x0

    move-object/from16 v42, v53

    .line 2742
    move-object/from16 v53, v14

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v53

    sget-object v54, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_1e

    move-object/from16 v53, v14

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v53

    sget-object v54, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_1f

    .line 2744
    :cond_1e
    move-object/from16 v53, v5

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v54, v0

    sget-object v55, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v54 .. v55}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v53

    move-object/from16 v41, v53

    .line 2745
    move-object/from16 v53, v5

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v54, v0

    sget-object v55, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v54 .. v55}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v53

    move-object/from16 v42, v53

    .line 2750
    :goto_7
    move-object/from16 v53, v5

    move-object/from16 v54, v5

    invoke-virtual/range {v54 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v54

    move-object/from16 v55, v33

    move-object/from16 v56, v32

    move-object/from16 v57, v42

    move-object/from16 v58, v41

    move/from16 v59, v30

    invoke-virtual/range {v54 .. v59}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 2751
    const/16 v53, 0x0

    move/from16 v39, v53

    .line 2752
    goto/16 :goto_2

    .line 2747
    :cond_1f
    move-object/from16 v53, v5

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v54, v0

    sget-object v55, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v54 .. v55}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v53

    move-object/from16 v41, v53

    .line 2748
    move-object/from16 v53, v5

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v54, v0

    sget-object v55, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v54 .. v55}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v53

    move-object/from16 v42, v53

    goto :goto_7

    .line 2753
    :cond_20
    const/16 v53, 0x1

    move/from16 v9, v53

    goto/16 :goto_2

    .line 2766
    :cond_21
    const/16 v53, 0x0

    goto/16 :goto_3

    .line 2776
    :cond_22
    const/16 v53, 0x0

    move/from16 v41, v53

    goto/16 :goto_4

    .line 2791
    :cond_23
    const/16 v53, 0x5

    move/from16 v41, v53

    .line 2793
    move/from16 v53, v36

    if-nez v53, :cond_26

    move/from16 v53, v37

    if-nez v53, :cond_26

    move/from16 v53, v38

    if-nez v53, :cond_26

    .line 3026
    :cond_24
    :goto_8
    move/from16 v53, v7

    if-eqz v53, :cond_57

    move/from16 v53, v9

    if-eqz v53, :cond_57

    .line 3027
    const/16 v53, 0x0

    move/from16 v42, v53

    .line 3028
    move-object/from16 v53, v15

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    if-eqz v53, :cond_25

    .line 3029
    move-object/from16 v53, v15

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v53

    move/from16 v42, v53

    .line 3031
    :cond_25
    move-object/from16 v53, v35

    move-object/from16 v54, v11

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_57

    .line 3032
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    move/from16 v53, v0

    if-eqz v53, :cond_56

    move-object/from16 v53, v33

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_56

    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    if-eqz v53, :cond_56

    .line 3033
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    check-cast v53, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v43, v53

    .line 3034
    move/from16 v53, v6

    if-eqz v53, :cond_55

    .line 3035
    move-object/from16 v53, v43

    move-object/from16 v54, v15

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    .line 3039
    :goto_9
    goto/16 :goto_5

    .line 2795
    :cond_26
    move/from16 v53, v36

    if-eqz v53, :cond_27

    move/from16 v53, v37

    if-nez v53, :cond_27

    goto :goto_8

    .line 2797
    :cond_27
    move/from16 v53, v36

    if-nez v53, :cond_2a

    move/from16 v53, v37

    if-eqz v53, :cond_2a

    .line 2798
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v35

    move-object/from16 v56, v15

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v0, v56

    neg-int v0, v0

    move/from16 v56, v0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 2799
    move/from16 v53, v7

    if-eqz v53, :cond_24

    .line 2800
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    move/from16 v53, v0

    if-eqz v53, :cond_29

    move-object/from16 v53, v32

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_29

    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    if-eqz v53, :cond_29

    .line 2801
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    check-cast v53, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v42, v53

    .line 2802
    move/from16 v53, v6

    if-eqz v53, :cond_28

    .line 2803
    move-object/from16 v53, v42

    move-object/from16 v54, v14

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    .line 2807
    :goto_a
    goto/16 :goto_8

    .line 2805
    :cond_28
    move-object/from16 v53, v42

    move-object/from16 v54, v14

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    goto :goto_a

    .line 2811
    :cond_29
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v10

    const/16 v56, 0x0

    const/16 v57, 0x5

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_8

    .line 2814
    :cond_2a
    move/from16 v53, v36

    if-eqz v53, :cond_24

    move/from16 v53, v37

    if-eqz v53, :cond_24

    .line 2815
    const/16 v53, 0x1

    move/from16 v42, v53

    .line 2816
    const/16 v53, 0x0

    move/from16 v43, v53

    .line 2817
    const/16 v53, 0x0

    move/from16 v44, v53

    .line 2818
    const/16 v53, 0x0

    move/from16 v45, v53

    .line 2819
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2820
    const/16 v53, 0x4

    move/from16 v47, v53

    .line 2821
    const/16 v53, 0x6

    move/from16 v48, v53

    .line 2823
    move/from16 v53, v7

    if-eqz v53, :cond_2b

    .line 2824
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2826
    :cond_2b
    move-object/from16 v53, v14

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    move-object/from16 v49, v53

    .line 2827
    move-object/from16 v53, v15

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    move-object/from16 v50, v53

    .line 2828
    move-object/from16 v53, v4

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v53

    move-object/from16 v51, v53

    .line 2830
    move/from16 v53, v39

    if-eqz v53, :cond_3e

    .line 2831
    move/from16 v53, v26

    if-nez v53, :cond_33

    .line 2832
    move/from16 v53, v29

    if-nez v53, :cond_2c

    move/from16 v53, v28

    if-nez v53, :cond_2c

    .line 2833
    const/16 v53, 0x1

    move/from16 v44, v53

    .line 2834
    const/16 v53, 0x8

    move/from16 v46, v53

    .line 2835
    const/16 v53, 0x8

    move/from16 v47, v53

    .line 2837
    move-object/from16 v53, v34

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_2d

    move-object/from16 v53, v35

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_2d

    .line 2838
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 2839
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v35

    move-object/from16 v56, v15

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v0, v56

    neg-int v0, v0

    move/from16 v56, v0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 2840
    goto/16 :goto_5

    .line 2843
    :cond_2c
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2844
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2845
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2846
    const/16 v53, 0x1

    move/from16 v42, v53

    .line 2847
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2849
    :cond_2d
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_2e

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v53, v0

    if-eqz v53, :cond_2f

    .line 2850
    :cond_2e
    const/16 v53, 0x4

    move/from16 v47, v53

    .line 2928
    :cond_2f
    :goto_b
    move/from16 v53, v45

    if-eqz v53, :cond_30

    move-object/from16 v53, v34

    move-object/from16 v54, v35

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_30

    move-object/from16 v53, v49

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_30

    .line 2930
    const/16 v53, 0x0

    move/from16 v45, v53

    .line 2931
    const/16 v53, 0x0

    move/from16 v42, v53

    .line 2934
    :cond_30
    move/from16 v53, v43

    if-eqz v53, :cond_32

    .line 2935
    move/from16 v53, v39

    if-nez v53, :cond_31

    move/from16 v53, v22

    if-nez v53, :cond_31

    move/from16 v53, v24

    if-nez v53, :cond_31

    move-object/from16 v53, v34

    move-object/from16 v54, v10

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_31

    move-object/from16 v53, v35

    move-object/from16 v54, v11

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_31

    .line 2938
    const/16 v53, 0x8

    move/from16 v48, v53

    .line 2939
    const/16 v53, 0x8

    move/from16 v46, v53

    .line 2940
    const/16 v53, 0x0

    move/from16 v42, v53

    .line 2941
    const/16 v53, 0x0

    move/from16 v7, v53

    .line 2943
    :cond_31
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v57, v20

    move-object/from16 v58, v35

    move-object/from16 v59, v33

    move-object/from16 v60, v15

    .line 2944
    invoke-virtual/range {v60 .. v60}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v60

    move/from16 v61, v48

    .line 2943
    invoke-virtual/range {v53 .. v61}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2947
    :cond_32
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v53, v0

    const/16 v54, 0x8

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_41

    move-object/from16 v53, v15

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v53

    if-nez v53, :cond_41

    .line 2948
    goto/16 :goto_5

    .line 2852
    :cond_33
    move/from16 v53, v26

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_34

    .line 2853
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2854
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2855
    const/16 v53, 0x8

    move/from16 v46, v53

    goto/16 :goto_b

    .line 2856
    :cond_34
    move/from16 v53, v26

    const/16 v54, 0x3

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_2f

    .line 2857
    move-object/from16 v53, v4

    move-object/from16 v0, v53

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v53, v0

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_36

    .line 2858
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2859
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2860
    const/16 v53, 0x1

    move/from16 v44, v53

    .line 2861
    const/16 v53, 0x8

    move/from16 v46, v53

    .line 2862
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2863
    move/from16 v53, v24

    if-eqz v53, :cond_35

    .line 2864
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2865
    const/16 v53, 0x4

    move/from16 v48, v53

    .line 2866
    move/from16 v53, v7

    if-eqz v53, :cond_2f

    .line 2867
    const/16 v53, 0x5

    move/from16 v48, v53

    goto/16 :goto_b

    .line 2870
    :cond_35
    const/16 v53, 0x8

    move/from16 v48, v53

    goto/16 :goto_b

    .line 2873
    :cond_36
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2874
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2875
    const/16 v53, 0x1

    move/from16 v44, v53

    .line 2876
    move/from16 v53, v21

    if-eqz v53, :cond_3a

    .line 2879
    move/from16 v53, v27

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-eq v0, v1, :cond_37

    move/from16 v53, v27

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_39

    :cond_37
    const/16 v53, 0x1

    :goto_c
    move/from16 v52, v53

    .line 2881
    move/from16 v53, v52

    if-nez v53, :cond_38

    .line 2882
    const/16 v53, 0x8

    move/from16 v46, v53

    .line 2883
    const/16 v53, 0x5

    move/from16 v47, v53

    .line 2885
    :cond_38
    goto/16 :goto_b

    .line 2879
    :cond_39
    const/16 v53, 0x0

    goto :goto_c

    .line 2886
    :cond_3a
    const/16 v53, 0x5

    move/from16 v46, v53

    .line 2887
    move/from16 v53, v29

    if-lez v53, :cond_3b

    .line 2888
    const/16 v53, 0x5

    move/from16 v47, v53

    goto/16 :goto_b

    .line 2889
    :cond_3b
    move/from16 v53, v29

    if-nez v53, :cond_2f

    move/from16 v53, v28

    if-nez v53, :cond_2f

    .line 2890
    move/from16 v53, v24

    if-nez v53, :cond_3c

    .line 2891
    const/16 v53, 0x8

    move/from16 v47, v53

    goto/16 :goto_b

    .line 2893
    :cond_3c
    move-object/from16 v53, v49

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_3d

    move-object/from16 v53, v50

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_3d

    .line 2894
    const/16 v53, 0x4

    move/from16 v46, v53

    .line 2898
    :goto_d
    const/16 v53, 0x4

    move/from16 v47, v53

    goto/16 :goto_b

    .line 2896
    :cond_3d
    const/16 v53, 0x5

    move/from16 v46, v53

    goto :goto_d

    .line 2905
    :cond_3e
    const/16 v53, 0x1

    move/from16 v43, v53

    .line 2906
    const/16 v53, 0x1

    move/from16 v45, v53

    .line 2909
    move-object/from16 v53, v34

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_2f

    move-object/from16 v53, v35

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    move/from16 v53, v0

    if-eqz v53, :cond_2f

    .line 2910
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v57, v20

    move-object/from16 v58, v35

    move-object/from16 v59, v33

    move-object/from16 v60, v15

    .line 2911
    invoke-virtual/range {v60 .. v60}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v60

    const/16 v61, 0x8

    .line 2910
    invoke-virtual/range {v53 .. v61}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2912
    move/from16 v53, v7

    if-eqz v53, :cond_40

    move/from16 v53, v9

    if-eqz v53, :cond_40

    .line 2913
    const/16 v53, 0x0

    move/from16 v52, v53

    .line 2914
    move-object/from16 v53, v15

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v53, v0

    if-eqz v53, :cond_3f

    .line 2915
    move-object/from16 v53, v15

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v53

    move/from16 v52, v53

    .line 2917
    :cond_3f
    move-object/from16 v53, v35

    move-object/from16 v54, v11

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_40

    .line 2921
    move-object/from16 v53, v5

    move-object/from16 v54, v11

    move-object/from16 v55, v33

    move/from16 v56, v52

    move/from16 v57, v41

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2924
    :cond_40
    goto/16 :goto_5

    .line 2951
    :cond_41
    move/from16 v53, v45

    if-eqz v53, :cond_44

    .line 2952
    move/from16 v53, v7

    if-eqz v53, :cond_43

    move-object/from16 v53, v34

    move-object/from16 v54, v35

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_43

    move/from16 v53, v39

    if-nez v53, :cond_43

    .line 2954
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_42

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v53, v0

    if-eqz v53, :cond_43

    .line 2955
    :cond_42
    const/16 v53, 0x6

    move/from16 v46, v53

    .line 2958
    :cond_43
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v57, v46

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2959
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v35

    move-object/from16 v56, v15

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v0, v56

    neg-int v0, v0

    move/from16 v56, v0

    move/from16 v57, v46

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2962
    :cond_44
    move/from16 v53, v7

    if-eqz v53, :cond_45

    move/from16 v53, v25

    if-eqz v53, :cond_45

    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_45

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_45

    .line 2966
    const/16 v53, 0x6

    move/from16 v47, v53

    .line 2967
    const/16 v53, 0x6

    move/from16 v46, v53

    .line 2968
    const/16 v53, 0x1

    move/from16 v42, v53

    .line 2971
    :cond_45
    move/from16 v53, v42

    if-eqz v53, :cond_51

    .line 2972
    move/from16 v53, v44

    if-eqz v53, :cond_4e

    move/from16 v53, v24

    if-eqz v53, :cond_46

    move/from16 v53, v8

    if-eqz v53, :cond_4e

    .line 2973
    :cond_46
    move/from16 v53, v47

    move/from16 v52, v53

    .line 2974
    move-object/from16 v53, v49

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_47

    move-object/from16 v53, v50

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_48

    .line 2975
    :cond_47
    const/16 v53, 0x6

    move/from16 v52, v53

    .line 2977
    :cond_48
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    move/from16 v53, v0

    if-nez v53, :cond_49

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    move/from16 v53, v0

    if-eqz v53, :cond_4a

    .line 2978
    :cond_49
    const/16 v53, 0x5

    move/from16 v52, v53

    .line 2980
    :cond_4a
    move-object/from16 v53, v49

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v53, v0

    if-nez v53, :cond_4b

    move-object/from16 v53, v50

    move-object/from16 v0, v53

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    move/from16 v53, v0

    if-eqz v53, :cond_4c

    .line 2981
    :cond_4b
    const/16 v53, 0x5

    move/from16 v52, v53

    .line 2983
    :cond_4c
    move/from16 v53, v24

    if-eqz v53, :cond_4d

    .line 2984
    const/16 v53, 0x5

    move/from16 v52, v53

    .line 2986
    :cond_4d
    move/from16 v53, v52

    move/from16 v54, v47

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->max(II)I

    move-result v53

    move/from16 v47, v53

    .line 2989
    :cond_4e
    move/from16 v53, v7

    if-eqz v53, :cond_50

    .line 2990
    move/from16 v53, v46

    move/from16 v54, v47

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    move/from16 v47, v53

    .line 2991
    move/from16 v53, v21

    if-eqz v53, :cond_50

    move/from16 v53, v24

    if-nez v53, :cond_50

    move-object/from16 v53, v49

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_4f

    move-object/from16 v53, v50

    move-object/from16 v54, v51

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_50

    .line 2994
    :cond_4f
    const/16 v53, 0x4

    move/from16 v47, v53

    .line 2997
    :cond_50
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v34

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v57, v47

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 2998
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v35

    move-object/from16 v56, v15

    invoke-virtual/range {v56 .. v56}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v56

    move/from16 v0, v56

    neg-int v0, v0

    move/from16 v56, v0

    move/from16 v57, v47

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v53

    .line 3001
    :cond_51
    move/from16 v53, v7

    if-eqz v53, :cond_53

    .line 3002
    const/16 v53, 0x0

    move/from16 v52, v53

    .line 3003
    move-object/from16 v53, v10

    move-object/from16 v54, v34

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_52

    .line 3004
    move-object/from16 v53, v14

    invoke-virtual/range {v53 .. v53}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v53

    move/from16 v52, v53

    .line 3006
    :cond_52
    move-object/from16 v53, v34

    move-object/from16 v54, v10

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_53

    .line 3010
    move-object/from16 v53, v5

    move-object/from16 v54, v32

    move-object/from16 v55, v10

    move/from16 v56, v52

    move/from16 v57, v41

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 3014
    :cond_53
    move/from16 v53, v7

    if-eqz v53, :cond_24

    move/from16 v53, v39

    if-eqz v53, :cond_24

    move/from16 v53, v18

    if-nez v53, :cond_24

    move/from16 v53, v28

    if-nez v53, :cond_24

    .line 3018
    move/from16 v53, v39

    if-eqz v53, :cond_54

    move/from16 v53, v26

    const/16 v54, 0x3

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_54

    .line 3019
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    const/16 v56, 0x0

    const/16 v57, 0x8

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_8

    .line 3021
    :cond_54
    move-object/from16 v53, v5

    move-object/from16 v54, v33

    move-object/from16 v55, v32

    const/16 v56, 0x0

    move/from16 v57, v41

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_8

    .line 3037
    :cond_55
    move-object/from16 v53, v43

    move-object/from16 v54, v15

    invoke-virtual/range {v53 .. v54}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    goto/16 :goto_9

    .line 3044
    :cond_56
    move-object/from16 v53, v5

    move-object/from16 v54, v11

    move-object/from16 v55, v33

    move/from16 v56, v42

    move/from16 v57, v41

    invoke-virtual/range {v53 .. v57}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 3047
    :cond_57
    goto/16 :goto_5

    .line 2643
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
    .line 2142
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 2143
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v5, v2

    aget-object v4, v4, v5

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

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
.method public addChildrenToSolverByDependency(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/HashSet;IZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/solver/LinearSystem;",
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 3245
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v9, v5

    if-eqz v9, :cond_1

    .line 3246
    move-object v9, v3

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3287
    :goto_0
    return-void

    .line 3249
    :cond_0
    move-object v9, v1

    move-object v10, v2

    move-object v11, v0

    invoke-static {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 3250
    move-object v9, v3

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 3251
    move-object v9, v0

    move-object v10, v2

    move-object v11, v1

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V

    .line 3253
    :cond_1
    move v9, v4

    if-nez v9, :cond_4

    .line 3254
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3255
    move-object v9, v6

    if-eqz v9, :cond_2

    .line 3256
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

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3257
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3258
    goto :goto_1

    .line 3260
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3261
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 3262
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

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3263
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3264
    goto :goto_2

    .line 3287
    :cond_3
    goto :goto_0

    .line 3267
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3268
    move-object v9, v6

    if-eqz v9, :cond_5

    .line 3269
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

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3270
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3271
    goto :goto_3

    .line 3273
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3274
    move-object v9, v6

    if-eqz v9, :cond_6

    .line 3275
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

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3276
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3277
    goto :goto_4

    .line 3279
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object v9

    move-object v6, v9

    .line 3280
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 3281
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

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v8, v9

    .line 3282
    move-object v9, v8

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 3283
    goto :goto_5
.end method

.method addFirst()Z
    .locals 2

    .prologue
    .line 2518
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;

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

.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V
    .locals 64

    .prologue
    .line 2167
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v6, v35

    .line 2168
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v7, v35

    .line 2169
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v8, v35

    .line 2170
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v9, v35

    .line 2171
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v10, v35

    .line 2173
    const/16 v35, 0x0

    move/from16 v11, v35

    .line 2174
    const/16 v35, 0x0

    move/from16 v12, v35

    .line 2175
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 2176
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1

    const/16 v35, 0x1

    :goto_0
    move/from16 v11, v35

    .line 2177
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_3

    const/16 v35, 0x1

    :goto_1
    move/from16 v12, v35

    .line 2180
    :cond_0
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasDependencies()Z

    move-result v35

    if-nez v35, :cond_5

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-boolean v35, v35, v36

    if-nez v35, :cond_5

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-boolean v35, v35, v36

    if-nez v35, :cond_5

    .line 2511
    :goto_2
    return-void

    .line 2176
    :cond_1
    const/16 v35, 0x0

    goto :goto_0

    :cond_2
    const/16 v35, 0x0

    goto :goto_0

    .line 2177
    :cond_3
    const/16 v35, 0x0

    goto :goto_1

    :cond_4
    const/16 v35, 0x0

    goto :goto_1

    .line 2185
    :cond_5
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    move/from16 v35, v0

    if-nez v35, :cond_6

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    .line 2193
    :cond_6
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    move/from16 v35, v0

    if-eqz v35, :cond_7

    .line 2194
    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2195
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v37, v0

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2196
    move/from16 v35, v11

    if-eqz v35, :cond_7

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    .line 2197
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    move/from16 v35, v0

    if-eqz v35, :cond_a

    .line 2198
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    check-cast v35, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v13, v35

    .line 2199
    move-object/from16 v35, v13

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    .line 2200
    move-object/from16 v35, v13

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    .line 2207
    :cond_7
    :goto_3
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    move/from16 v35, v0

    if-eqz v35, :cond_9

    .line 2208
    move-object/from16 v35, v4

    move-object/from16 v36, v8

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2209
    move-object/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v37, v0

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2210
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v35

    if-eqz v35, :cond_8

    .line 2211
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v37, v0

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2213
    :cond_8
    move/from16 v35, v12

    if-eqz v35, :cond_9

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_9

    .line 2214
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    move/from16 v35, v0

    if-eqz v35, :cond_b

    .line 2215
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    check-cast v35, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v13, v35

    .line 2216
    move-object/from16 v35, v13

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    .line 2217
    move-object/from16 v35, v13

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    .line 2224
    :cond_9
    :goto_4
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    .line 2225
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2226
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2232
    goto/16 :goto_2

    .line 2202
    :cond_a
    const/16 v35, 0x5

    move/from16 v13, v35

    .line 2203
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v36

    move-object/from16 v37, v7

    const/16 v38, 0x0

    move/from16 v39, v13

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_3

    .line 2219
    :cond_b
    const/16 v35, 0x5

    move/from16 v13, v35

    .line 2220
    move-object/from16 v35, v4

    move-object/from16 v36, v4

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v36

    move-object/from16 v37, v9

    const/16 v38, 0x0

    move/from16 v39, v13

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_4

    .line 2236
    :cond_c
    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v35, :cond_d

    .line 2237
    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v63, v35

    move-object/from16 v35, v63

    move-object/from16 v36, v63

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->widgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->widgets:J

    .line 2245
    :cond_d
    move/from16 v35, v5

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11

    .line 2249
    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v35, :cond_e

    .line 2250
    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v63, v35

    move-object/from16 v35, v63

    move-object/from16 v36, v63

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->graphSolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->graphSolved:J

    .line 2252
    :cond_e
    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2253
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2254
    move-object/from16 v35, v4

    move-object/from16 v36, v8

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2255
    move-object/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2256
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2257
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_10

    .line 2258
    move/from16 v35, v11

    if-eqz v35, :cond_f

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-boolean v35, v35, v36

    if-eqz v35, :cond_f

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v35

    if-nez v35, :cond_f

    .line 2259
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v13, v35

    .line 2260
    move-object/from16 v35, v4

    move-object/from16 v36, v13

    move-object/from16 v37, v7

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2262
    :cond_f
    move/from16 v35, v12

    if-eqz v35, :cond_10

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-boolean v35, v35, v36

    if-eqz v35, :cond_10

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v35

    if-nez v35, :cond_10

    .line 2263
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v13, v35

    .line 2264
    move-object/from16 v35, v4

    move-object/from16 v36, v13

    move-object/from16 v37, v9

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2267
    :cond_10
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2268
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2269
    goto/16 :goto_2

    .line 2271
    :cond_11
    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v35, :cond_12

    .line 2272
    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v63, v35

    move-object/from16 v35, v63

    move-object/from16 v36, v63

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->linearSolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->linearSolved:J

    .line 2275
    :cond_12
    const/16 v35, 0x0

    move/from16 v13, v35

    .line 2276
    const/16 v35, 0x0

    move/from16 v14, v35

    .line 2278
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_14

    .line 2280
    move-object/from16 v35, v3

    const/16 v36, 0x0

    invoke-direct/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 2281
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    check-cast v35, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v36, v3

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2282
    const/16 v35, 0x1

    move/from16 v13, v35

    .line 2288
    :goto_5
    move-object/from16 v35, v3

    const/16 v36, 0x1

    invoke-direct/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v35

    if-eqz v35, :cond_2a

    .line 2289
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    check-cast v35, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v36, v3

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2290
    const/16 v35, 0x1

    move/from16 v14, v35

    .line 2295
    :goto_6
    move/from16 v35, v13

    if-nez v35, :cond_13

    move/from16 v35, v11

    if-eqz v35, :cond_13

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_13

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_13

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_13

    .line 2300
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v15, v35

    .line 2301
    move-object/from16 v35, v4

    move-object/from16 v36, v15

    move-object/from16 v37, v7

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2304
    :cond_13
    move/from16 v35, v14

    if-nez v35, :cond_14

    move/from16 v35, v12

    if-eqz v35, :cond_14

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_14

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_14

    .line 2309
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v15, v35

    .line 2310
    move-object/from16 v35, v4

    move-object/from16 v36, v15

    move-object/from16 v37, v9

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2314
    :cond_14
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move/from16 v35, v0

    move/from16 v15, v35

    .line 2315
    move/from16 v35, v15

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_15

    .line 2316
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v35, v0

    move/from16 v15, v35

    .line 2318
    :cond_15
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move/from16 v35, v0

    move/from16 v16, v35

    .line 2319
    move/from16 v35, v16

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_16

    .line 2320
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v35, v0

    move/from16 v16, v35

    .line 2324
    :cond_16
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_2b

    const/16 v35, 0x1

    :goto_7
    move/from16 v17, v35

    .line 2326
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_2c

    const/16 v35, 0x1

    :goto_8
    move/from16 v18, v35

    .line 2331
    const/16 v35, 0x0

    move/from16 v19, v35

    .line 2332
    move-object/from16 v35, v3

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2333
    move-object/from16 v35, v3

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2335
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v35, v0

    move/from16 v20, v35

    .line 2336
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v35, v0

    move/from16 v21, v35

    .line 2338
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-lez v35, :cond_19

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_19

    .line 2339
    const/16 v35, 0x1

    move/from16 v19, v35

    .line 2340
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_17

    move/from16 v35, v20

    if-nez v35, :cond_17

    .line 2342
    const/16 v35, 0x3

    move/from16 v20, v35

    .line 2344
    :cond_17
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_18

    move/from16 v35, v21

    if-nez v35, :cond_18

    .line 2346
    const/16 v35, 0x3

    move/from16 v21, v35

    .line 2349
    :cond_18
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2d

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

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

    .line 2353
    move-object/from16 v35, v3

    move/from16 v36, v11

    move/from16 v37, v12

    move/from16 v38, v17

    move/from16 v39, v18

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    .line 2377
    :cond_19
    :goto_9
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v37, v20

    aput v37, v35, v36

    .line 2378
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v37, v21

    aput v37, v35, v36

    .line 2379
    move-object/from16 v35, v3

    move/from16 v36, v19

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 2381
    move/from16 v35, v19

    if-eqz v35, :cond_30

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    if-eqz v35, :cond_1a

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_30

    :cond_1a
    const/16 v35, 0x1

    :goto_a
    move/from16 v22, v35

    .line 2384
    move/from16 v35, v19

    if-eqz v35, :cond_31

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1b

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_31

    :cond_1b
    const/16 v35, 0x1

    :goto_b
    move/from16 v23, v35

    .line 2388
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_32

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move/from16 v35, v0

    if-eqz v35, :cond_32

    const/16 v35, 0x1

    :goto_c
    move/from16 v24, v35

    .line 2390
    move/from16 v35, v24

    if-eqz v35, :cond_1c

    .line 2391
    const/16 v35, 0x0

    move/from16 v15, v35

    .line 2394
    :cond_1c
    const/16 v35, 0x1

    move/from16 v25, v35

    .line 2395
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 2396
    const/16 v35, 0x0

    move/from16 v25, v35

    .line 2399
    :cond_1d
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-boolean v35, v35, v36

    move/from16 v26, v35

    .line 2400
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-boolean v35, v35, v36

    move/from16 v27, v35

    .line 2402
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1f

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    move/from16 v35, v0

    if-nez v35, :cond_1f

    .line 2403
    move/from16 v35, v5

    if-eqz v35, :cond_1e

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1e

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1e

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-nez v35, :cond_36

    .line 2404
    :cond_1e
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_33

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    :goto_d
    move-object/from16 v28, v35

    .line 2405
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_34

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    :goto_e
    move-object/from16 v29, v35

    .line 2406
    move-object/from16 v35, v3

    move-object/from16 v36, v4

    const/16 v37, 0x1

    move/from16 v38, v11

    move/from16 v39, v12

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget-boolean v40, v40, v41

    move-object/from16 v41, v29

    move-object/from16 v42, v28

    move-object/from16 v43, v3

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget-object v43, v43, v44

    move/from16 v44, v24

    move-object/from16 v45, v3

    move-object/from16 v0, v45

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v45, v0

    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v46, v0

    move-object/from16 v47, v3

    move-object/from16 v0, v47

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v47, v0

    move/from16 v48, v15

    move-object/from16 v49, v3

    move-object/from16 v0, v49

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v49, v0

    move-object/from16 v50, v3

    move-object/from16 v0, v50

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aget v50, v50, v51

    move-object/from16 v51, v3

    move-object/from16 v0, v51

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v51, v0

    move/from16 v52, v22

    move-object/from16 v53, v3

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v53, v0

    const/16 v54, 0x1

    aget-object v53, v53, v54

    sget-object v54, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_35

    const/16 v53, 0x1

    :goto_f
    move/from16 v54, v13

    move/from16 v55, v14

    move/from16 v56, v26

    move/from16 v57, v20

    move/from16 v58, v21

    move-object/from16 v59, v3

    move-object/from16 v0, v59

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v59, v0

    move-object/from16 v60, v3

    move-object/from16 v0, v60

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v60, v0

    move-object/from16 v61, v3

    move-object/from16 v0, v61

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v61, v0

    move/from16 v62, v25

    invoke-direct/range {v35 .. v62}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 2425
    :cond_1f
    :goto_10
    const/16 v35, 0x1

    move/from16 v28, v35

    .line 2426
    move/from16 v35, v5

    if-eqz v35, :cond_21

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    if-eqz v35, :cond_21

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_21

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    move/from16 v35, v0

    if-eqz v35, :cond_21

    .line 2427
    move-object/from16 v35, v4

    move-object/from16 v36, v8

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2428
    move-object/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2429
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2430
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_20

    .line 2431
    move/from16 v35, v14

    if-nez v35, :cond_20

    move/from16 v35, v12

    if-eqz v35, :cond_20

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-boolean v35, v35, v36

    if-eqz v35, :cond_20

    .line 2435
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v29, v35

    .line 2436
    move-object/from16 v35, v4

    move-object/from16 v36, v29

    move-object/from16 v37, v9

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2439
    :cond_20
    const/16 v35, 0x0

    move/from16 v28, v35

    .line 2441
    :cond_21
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_22

    .line 2448
    const/16 v35, 0x0

    move/from16 v28, v35

    .line 2450
    :cond_22
    move/from16 v35, v28

    if-eqz v35, :cond_26

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    move/from16 v35, v0

    if-nez v35, :cond_26

    .line 2452
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_37

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move/from16 v35, v0

    if-eqz v35, :cond_37

    const/16 v35, 0x1

    :goto_11
    move/from16 v24, v35

    .line 2454
    move/from16 v35, v24

    if-eqz v35, :cond_23

    .line 2455
    const/16 v35, 0x0

    move/from16 v16, v35

    .line 2458
    :cond_23
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_38

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    :goto_12
    move-object/from16 v29, v35

    .line 2459
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_39

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    :goto_13
    move-object/from16 v30, v35

    .line 2461
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move/from16 v35, v0

    if-gtz v35, :cond_24

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_25

    .line 2463
    :cond_24
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3a

    .line 2464
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v8

    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v38

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v35

    .line 2465
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v31, v35

    .line 2466
    const/16 v35, 0x0

    move/from16 v32, v35

    .line 2467
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v31

    move/from16 v38, v32

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v35

    .line 2468
    const/16 v35, 0x0

    move/from16 v25, v35

    .line 2469
    move/from16 v35, v12

    if-eqz v35, :cond_25

    .line 2473
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v33, v35

    .line 2474
    const/16 v35, 0x5

    move/from16 v34, v35

    .line 2475
    move-object/from16 v35, v4

    move-object/from16 v36, v29

    move-object/from16 v37, v33

    const/16 v38, 0x0

    move/from16 v39, v34

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2485
    :cond_25
    :goto_14
    move-object/from16 v35, v3

    move-object/from16 v36, v4

    const/16 v37, 0x0

    move/from16 v38, v12

    move/from16 v39, v11

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget-boolean v40, v40, v41

    move-object/from16 v41, v30

    move-object/from16 v42, v29

    move-object/from16 v43, v3

    move-object/from16 v0, v43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget-object v43, v43, v44

    move/from16 v44, v24

    move-object/from16 v45, v3

    move-object/from16 v0, v45

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v45, v0

    move-object/from16 v46, v3

    move-object/from16 v0, v46

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v46, v0

    move-object/from16 v47, v3

    move-object/from16 v0, v47

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v47, v0

    move/from16 v48, v16

    move-object/from16 v49, v3

    move-object/from16 v0, v49

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v49, v0

    move-object/from16 v50, v3

    move-object/from16 v0, v50

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    move-object/from16 v50, v0

    const/16 v51, 0x1

    aget v50, v50, v51

    move-object/from16 v51, v3

    move-object/from16 v0, v51

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v51, v0

    move/from16 v52, v23

    move-object/from16 v53, v3

    move-object/from16 v0, v53

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aget-object v53, v53, v54

    sget-object v54, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_3c

    const/16 v53, 0x1

    :goto_15
    move/from16 v54, v14

    move/from16 v55, v13

    move/from16 v56, v27

    move/from16 v57, v21

    move/from16 v58, v20

    move-object/from16 v59, v3

    move-object/from16 v0, v59

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v59, v0

    move-object/from16 v60, v3

    move-object/from16 v0, v60

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v60, v0

    move-object/from16 v61, v3

    move-object/from16 v0, v61

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v61, v0

    move/from16 v62, v25

    invoke-direct/range {v35 .. v62}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    .line 2491
    :cond_26
    move/from16 v35, v19

    if-eqz v35, :cond_27

    .line 2492
    const/16 v35, 0x8

    move/from16 v29, v35

    .line 2493
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3d

    .line 2494
    move-object/from16 v35, v4

    move-object/from16 v36, v9

    move-object/from16 v37, v8

    move-object/from16 v38, v7

    move-object/from16 v39, v6

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v40, v0

    move/from16 v41, v29

    invoke-virtual/range {v35 .. v41}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    .line 2500
    :cond_27
    :goto_16
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v35

    if-eqz v35, :cond_28

    .line 2501
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v37

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

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

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    .line 2509
    :cond_28
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2510
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 2511
    goto/16 :goto_2

    .line 2284
    :cond_29
    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v35

    move/from16 v13, v35

    goto/16 :goto_5

    .line 2292
    :cond_2a
    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v35

    move/from16 v14, v35

    goto/16 :goto_6

    .line 2324
    :cond_2b
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 2326
    :cond_2c
    const/16 v35, 0x0

    goto/16 :goto_8

    .line 2354
    :cond_2d
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2e

    move/from16 v35, v20

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2e

    .line 2356
    move-object/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2357
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v15, v35

    .line 2358
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_19

    .line 2359
    const/16 v35, 0x4

    move/from16 v20, v35

    .line 2360
    const/16 v35, 0x0

    move/from16 v19, v35

    goto/16 :goto_9

    .line 2362
    :cond_2e
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_19

    move/from16 v35, v21

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    .line 2364
    move-object/from16 v35, v3

    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2365
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2f

    .line 2367
    move-object/from16 v35, v3

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2369
    :cond_2f
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v35, v0

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v16, v35

    .line 2370
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_19

    .line 2371
    const/16 v35, 0x4

    move/from16 v21, v35

    .line 2372
    const/16 v35, 0x0

    move/from16 v19, v35

    goto/16 :goto_9

    .line 2381
    :cond_30
    const/16 v35, 0x0

    goto/16 :goto_a

    .line 2384
    :cond_31
    const/16 v35, 0x0

    goto/16 :goto_b

    .line 2388
    :cond_32
    const/16 v35, 0x0

    goto/16 :goto_c

    .line 2404
    :cond_33
    const/16 v35, 0x0

    goto/16 :goto_d

    .line 2405
    :cond_34
    const/16 v35, 0x0

    goto/16 :goto_e

    .line 2406
    :cond_35
    const/16 v53, 0x0

    goto/16 :goto_f

    .line 2410
    :cond_36
    move/from16 v35, v5

    if-eqz v35, :cond_1f

    .line 2411
    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2412
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2413
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1f

    .line 2414
    move/from16 v35, v11

    if-eqz v35, :cond_1f

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-boolean v35, v35, v36

    if-eqz v35, :cond_1f

    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v35

    if-nez v35, :cond_1f

    .line 2418
    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v35

    move-object/from16 v28, v35

    .line 2419
    move-object/from16 v35, v4

    move-object/from16 v36, v28

    move-object/from16 v37, v7

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_10

    .line 2452
    :cond_37
    const/16 v35, 0x0

    goto/16 :goto_11

    .line 2458
    :cond_38
    const/16 v35, 0x0

    goto/16 :goto_12

    .line 2459
    :cond_39
    const/16 v35, 0x0

    goto/16 :goto_13

    .line 2477
    :cond_3a
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v35, v0

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3b

    .line 2479
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v8

    const/16 v38, 0x0

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v35

    goto/16 :goto_14

    .line 2481
    :cond_3b
    move-object/from16 v35, v4

    move-object/from16 v36, v10

    move-object/from16 v37, v8

    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v38

    const/16 v39, 0x8

    invoke-virtual/range {v35 .. v39}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v35

    goto/16 :goto_14

    .line 2485
    :cond_3c
    const/16 v53, 0x0

    goto/16 :goto_15

    .line 2496
    :cond_3d
    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v6

    move-object/from16 v38, v9

    move-object/from16 v39, v8

    move-object/from16 v40, v3

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move/from16 v40, v0

    move/from16 v41, v29

    invoke-virtual/range {v35 .. v41}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto/16 :goto_16
.end method

.method public allowedInBarrier()Z
    .locals 3

    .prologue
    .line 1601
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

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

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V
    .locals 9

    .prologue
    .line 1651
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1652
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 17

    .prologue
    .line 1665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_d

    .line 1668
    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_9

    .line 1669
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1670
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1671
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1672
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1673
    const/4 v12, 0x0

    move v9, v12

    .line 1674
    const/4 v12, 0x0

    move v10, v12

    .line 1675
    move-object v12, v5

    if-eqz v12, :cond_0

    move-object v12, v5

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    move-object v12, v6

    if-eqz v12, :cond_5

    move-object v12, v6

    .line 1676
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1685
    :cond_1
    :goto_0
    move-object v12, v7

    if-eqz v12, :cond_2

    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    move-object v12, v8

    if-eqz v12, :cond_6

    move-object v12, v8

    .line 1686
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1695
    :cond_3
    :goto_1
    move v12, v9

    if-eqz v12, :cond_7

    move v12, v10

    if-eqz v12, :cond_7

    .line 1696
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v11, v12

    .line 1697
    move-object v12, v11

    move-object v13, v2

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1833
    :cond_4
    :goto_2
    return-void

    .line 1679
    :cond_5
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1681
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1683
    const/4 v12, 0x1

    move v9, v12

    goto :goto_0

    .line 1689
    :cond_6
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1691
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1693
    const/4 v12, 0x1

    move v10, v12

    goto :goto_1

    .line 1698
    :cond_7
    move v12, v9

    if-eqz v12, :cond_8

    .line 1699
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v11, v12

    .line 1700
    move-object v12, v11

    move-object v13, v2

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1701
    goto :goto_2

    :cond_8
    move v12, v10

    if-eqz v12, :cond_4

    .line 1702
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v11, v12

    .line 1703
    move-object v12, v11

    move-object v13, v2

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    goto :goto_2

    .line 1705
    :cond_9
    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_a

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_b

    .line 1707
    :cond_a
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1709
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1711
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1712
    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1713
    goto/16 :goto_2

    :cond_b
    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_c

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_4

    .line 1715
    :cond_c
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1717
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v14, v2

    move-object v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1719
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1720
    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1721
    goto/16 :goto_2

    .line 1722
    :cond_d
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_f

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_e

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_f

    .line 1725
    :cond_e
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1726
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1727
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1728
    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1729
    move-object v12, v7

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1730
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1731
    move-object v12, v8

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1732
    goto/16 :goto_2

    :cond_f
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_11

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_10

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_11

    .line 1735
    :cond_10
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1736
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1737
    move-object v12, v6

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1738
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1739
    move-object v12, v7

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1740
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1741
    move-object v12, v8

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1742
    goto/16 :goto_2

    :cond_11
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_12

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_12

    .line 1745
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1746
    move-object v12, v2

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1747
    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1748
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1749
    move-object v12, v2

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1750
    move-object v12, v7

    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1751
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v9, v12

    .line 1752
    move-object v12, v9

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1753
    goto/16 :goto_2

    :cond_12
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_13

    move-object v12, v3

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_13

    .line 1756
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1757
    move-object v12, v2

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1758
    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1759
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1760
    move-object v12, v2

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1761
    move-object v12, v7

    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1762
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v9, v12

    .line 1763
    move-object v12, v9

    move-object v13, v2

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    .line 1764
    goto/16 :goto_2

    .line 1765
    :cond_13
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v5, v12

    .line 1766
    move-object v12, v2

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v6, v12

    .line 1767
    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1770
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_17

    .line 1771
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1772
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1773
    move-object v12, v7

    if-eqz v12, :cond_14

    .line 1774
    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1776
    :cond_14
    move-object v12, v8

    if-eqz v12, :cond_15

    .line 1777
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1779
    :cond_15
    const/4 v12, 0x0

    move v4, v12

    .line 1830
    :cond_16
    :goto_3
    move-object v12, v5

    move-object v13, v6

    move v14, v4

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v12

    goto/16 :goto_2

    .line 1780
    :cond_17
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_18

    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_1c

    .line 1782
    :cond_18
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1783
    move-object v12, v7

    if-eqz v12, :cond_19

    .line 1784
    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1786
    :cond_19
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1787
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v13, v6

    if-eq v12, v13, :cond_1a

    .line 1788
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1790
    :cond_1a
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v9, v12

    .line 1791
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v10, v12

    .line 1792
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 1793
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1794
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1806
    :cond_1b
    goto :goto_3

    :cond_1c
    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v12, v13, :cond_1d

    move-object v12, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v13, :cond_16

    .line 1808
    :cond_1d
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v7, v12

    .line 1809
    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v13, v6

    if-eq v12, v13, :cond_1e

    .line 1810
    move-object v12, v7

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1812
    :cond_1e
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v8, v12

    .line 1813
    move-object v12, v0

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    move-object v9, v12

    .line 1814
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1815
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1816
    move-object v12, v9

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_3
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 9

    .prologue
    .line 1632
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 1633
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1635
    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 10

    .prologue
    .line 676
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v6, v1

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 678
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 679
    return-void
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
    .line 3090
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 3091
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 3093
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 3094
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 3096
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3097
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3099
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 3100
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 3101
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 3102
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 3103
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 3104
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 3105
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 3107
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 3108
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 3110
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 3111
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 3112
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 3113
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 3118
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 3119
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 3120
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 3121
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 3122
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 3123
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 3124
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 3125
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 3126
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3127
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 3129
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3130
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3131
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 3132
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 3134
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 3135
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 3136
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 3137
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 3139
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 3140
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 3142
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 3143
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 3144
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 3146
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 3147
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 3149
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 3150
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 3151
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 3152
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 3153
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 3155
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToTop:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToTop:I

    .line 3156
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToLeft:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToLeft:I

    .line 3157
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToRight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToRight:I

    .line 3158
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToBottom:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToBottom:I

    .line 3159
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 3160
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 3162
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 3163
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 3165
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 3166
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 3168
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 3169
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 3170
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 3171
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 3172
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3173
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3175
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3176
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3178
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3179
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 3181
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 3182
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 3183
    return-void

    .line 3127
    :cond_0
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto/16 :goto_0

    .line 3181
    :cond_1
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_1

    .line 3182
    :cond_2
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_2
.end method

.method public createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 9

    .prologue
    .line 770
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v2, v7

    .line 771
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v3, v7

    .line 772
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v4, v7

    .line 773
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v5, v7

    .line 774
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v7, :cond_0

    .line 775
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 777
    :cond_0
    return-void
.end method

.method public ensureMeasureRequested()V
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 174
    return-void
.end method

.method public ensureWidgetRuns()V
    .locals 6

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-nez v1, :cond_0

    .line 565
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 567
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-nez v1, :cond_1

    .line 568
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 570
    :cond_1
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 6

    .prologue
    .line 1929
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1957
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1931
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    .line 1955
    :goto_0
    return-object v0

    .line 1934
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1937
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1940
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1943
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1946
    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1949
    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1952
    :pswitch_7
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1955
    :pswitch_8
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 1929
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
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 2

    .prologue
    .line 1055
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move v0, v1

    return v0
.end method

.method public getBiasPercent(I)F
    .locals 4

    .prologue
    .line 1031
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 1032
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v0, v2

    .line 1036
    :goto_0
    return v0

    .line 1033
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1034
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move v0, v2

    goto :goto_0

    .line 1036
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    move v0, v2

    goto :goto_0
.end method

.method public getBottom()I
    .locals 3

    .prologue
    .line 972
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1065
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 2

    .prologue
    .line 1536
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    move v0, v1

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 723
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 4

    .prologue
    .line 1985
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 1986
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object v0, v2

    .line 1990
    :goto_0
    return-object v0

    .line 1987
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1988
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1990
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getDimensionRatio()F
    .locals 2

    .prologue
    .line 1302
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move v0, v1

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 2

    .prologue
    .line 1311
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move v0, v1

    return v0
.end method

.method public getHasBaseline()Z
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    move v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 879
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 880
    const/4 v1, 0x0

    move v0, v1

    .line 882
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move v0, v1

    goto :goto_0
.end method

.method public getHorizontalBiasPercent()F
    .locals 2

    .prologue
    .line 1010
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v0, v1

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 9

    .prologue
    .line 2069
    move-object v0, p0

    const/4 v7, 0x0

    move-object v1, v7

    .line 2070
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2071
    move-object v7, v0

    move-object v2, v7

    .line 2073
    :goto_0
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    .line 2074
    move-object v7, v2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v3, v7

    .line 2075
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    move-object v4, v7

    .line 2076
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v5, v7

    .line 2077
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 2078
    move-object v7, v2

    move-object v1, v7

    .line 2089
    :cond_0
    move-object v7, v1

    move-object v0, v7

    return-object v0

    .line 2075
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_1

    .line 2076
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    goto :goto_2

    .line 2081
    :cond_3
    move-object v7, v5

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move-object v6, v7

    .line 2082
    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v2

    if-eq v7, v8, :cond_5

    .line 2083
    move-object v7, v2

    move-object v1, v7

    .line 2087
    :goto_4
    goto :goto_0

    .line 2081
    :cond_4
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_3

    .line 2085
    :cond_5
    move-object v7, v5

    move-object v2, v7

    goto :goto_4
.end method

.method public getHorizontalChainStyle()I
    .locals 2

    .prologue
    .line 1574
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move v0, v1

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 3

    .prologue
    .line 1966
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method public getHorizontalMargin()I
    .locals 4

    .prologue
    .line 979
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 980
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_0

    .line 981
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v2, v3

    move v1, v2

    .line 983
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    .line 984
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v2, v3

    move v1, v2

    .line 986
    :cond_1
    move v2, v1

    move v0, v2

    return v0
.end method

.method public getLastHorizontalMeasureSpec()I
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    move v0, v1

    return v0
.end method

.method public getLastVerticalMeasureSpec()I
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    move v0, v1

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 945
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLength(I)I
    .locals 4

    .prologue
    .line 892
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 893
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    move v0, v2

    .line 897
    :goto_0
    return v0

    .line 894
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 895
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 897
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 936
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move v0, v1

    return v0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 927
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move v0, v1

    return v0
.end method

.method public getNextChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 4

    .prologue
    .line 2051
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 2052
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 2053
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v2

    .line 2060
    :goto_0
    return-object v0

    .line 2055
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2056
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 2057
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v2

    goto :goto_0

    .line 2060
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .prologue
    .line 856
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move v1, v2

    .line 857
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 858
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 859
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 866
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 867
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v1, v2

    .line 870
    :cond_0
    move v2, v1

    move v0, v2

    return v0

    .line 860
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v2, :cond_2

    .line 861
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v1, v2

    .line 862
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    .line 864
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getOptimizerWrapWidth()I
    .locals 4

    .prologue
    .line 838
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move v1, v2

    .line 839
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 840
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 841
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 848
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 849
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v1, v2

    .line 852
    :cond_0
    move v2, v1

    move v0, v2

    return v0

    .line 842
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v2, :cond_2

    .line 843
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v1, v2

    .line 844
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    .line 846
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 620
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    return-object v0
.end method

.method public getPreviousChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 4

    .prologue
    .line 2032
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 2033
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 2034
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v2

    .line 2041
    :goto_0
    return-object v0

    .line 2036
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2037
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 2038
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v2

    goto :goto_0

    .line 2041
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method getRelativePositioning(I)I
    .locals 4

    .prologue
    .line 1471
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 1472
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    move v0, v2

    .line 1476
    :goto_0
    return v0

    .line 1473
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1474
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    move v0, v2

    goto :goto_0

    .line 1476
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getRight()I
    .locals 3

    .prologue
    .line 963
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method protected getRootX()I
    .locals 3

    .prologue
    .line 908
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 3

    .prologue
    .line 918
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getRun(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 77
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object v0, v2

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 79
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object v0, v2

    goto :goto_0

    .line 81
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 954
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 687
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 2

    .prologue
    .line 1020
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move v0, v1

    return v0
.end method

.method public getVerticalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 9

    .prologue
    .line 2112
    move-object v0, p0

    const/4 v7, 0x0

    move-object v1, v7

    .line 2113
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2114
    move-object v7, v0

    move-object v2, v7

    .line 2115
    :goto_0
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    .line 2116
    move-object v7, v2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v3, v7

    .line 2117
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    move-object v4, v7

    .line 2118
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v5, v7

    .line 2119
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 2120
    move-object v7, v2

    move-object v1, v7

    .line 2132
    :cond_0
    move-object v7, v1

    move-object v0, v7

    return-object v0

    .line 2117
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_1

    .line 2118
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    goto :goto_2

    .line 2123
    :cond_3
    move-object v7, v5

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move-object v6, v7

    .line 2124
    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v2

    if-eq v7, v8, :cond_5

    .line 2125
    move-object v7, v2

    move-object v1, v7

    .line 2129
    :goto_4
    goto :goto_0

    .line 2123
    :cond_4
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_3

    .line 2127
    :cond_5
    move-object v7, v5

    move-object v2, v7

    goto :goto_4
.end method

.method public getVerticalChainStyle()I
    .locals 2

    .prologue
    .line 1594
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move v0, v1

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 3

    .prologue
    .line 1975
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalMargin()I
    .locals 4

    .prologue
    .line 993
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 994
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_0

    .line 995
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v2, v3

    move v1, v2

    .line 997
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1

    .line 998
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1000
    :cond_1
    move v2, v1

    move v0, v2

    return v0
.end method

.method public getVisibility()I
    .locals 2

    .prologue
    .line 714
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 831
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 832
    const/4 v1, 0x0

    move v0, v1

    .line 834
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move v0, v1

    goto :goto_0
.end method

.method public getX()I
    .locals 3

    .prologue
    .line 807
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 808
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    add-int/2addr v1, v2

    move v0, v1

    .line 810
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move v0, v1

    goto :goto_0
.end method

.method public getY()I
    .locals 3

    .prologue
    .line 819
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 820
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    add-int/2addr v1, v2

    move v0, v1

    .line 822
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move v0, v1

    goto :goto_0
.end method

.method public hasBaseline()Z
    .locals 2

    .prologue
    .line 1046
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    move v0, v1

    return v0
.end method

.method public hasDanglingDimension(I)Z
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-nez v3, :cond_3

    .line 188
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v3, v4

    move v2, v3

    .line 189
    move v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 192
    :goto_3
    return v0

    .line 188
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 189
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 191
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_5
    add-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_6
    add-int/2addr v3, v4

    move v2, v3

    .line 192
    move v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    const/4 v3, 0x1

    :goto_7
    move v0, v3

    goto :goto_3

    .line 191
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 192
    :cond_7
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public hasDependencies()Z
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 178
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v4

    .line 179
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    const/4 v4, 0x1

    move v0, v4

    .line 183
    :goto_1
    return v0

    .line 177
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 13

    .prologue
    .line 1619
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v6, v8

    .line 1620
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v7, v8

    .line 1621
    move-object v8, v6

    move-object v9, v7

    move v10, v4

    move v11, v5

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    move-result v8

    .line 1622
    return-void
.end method

.method public isHeightWrapContent()Z
    .locals 2

    .prologue
    .line 665
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    move v0, v1

    return v0
.end method

.method public isInHorizontalChain()Z
    .locals 3

    .prologue
    .line 2018
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_2

    .line 2020
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 2022
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
    .line 296
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    move v0, v1

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 3

    .prologue
    .line 2099
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_2

    .line 2101
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 2103
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
    .line 248
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    move v0, v1

    return v0
.end method

.method public isMeasureRequested()Z
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

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
    .line 156
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

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
    .line 160
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasFinalValue()Z

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
    .line 611
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

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
    .line 280
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

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
    .line 272
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

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
    .line 647
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    move v0, v1

    return v0
.end method

.method public oppositeDimensionDependsOn(I)Z
    .locals 7

    .prologue
    .line 502
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 503
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v6, v1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 504
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v6, v2

    aget-object v5, v5, v6

    move-object v4, v5

    .line 505
    move-object v5, v3

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    move-object v5, v4

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    return v0

    .line 502
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 505
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public oppositeDimensionsTied()Z
    .locals 3

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

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
    .line 437
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 438
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 439
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 440
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 441
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 442
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 443
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 444
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 445
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 446
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 447
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 448
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 449
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 450
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 451
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 452
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 453
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 454
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 455
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 456
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 457
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 458
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 459
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 460
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v1, v2

    .line 461
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v1, v2

    .line 462
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 463
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 464
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 465
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 466
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 467
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 468
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 469
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 470
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 471
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 472
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    .line 473
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    .line 474
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 475
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 476
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x0

    const v3, 0x7fffffff

    aput v3, v1, v2

    .line 477
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v2, 0x1

    const v3, 0x7fffffff

    aput v3, v1, v2

    .line 478
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 479
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 480
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 481
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 482
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 483
    move-object v1, v0

    const v2, 0x7fffffff

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 484
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 485
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 486
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 487
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 488
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 489
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 490
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 491
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 492
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 493
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 494
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 495
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 496
    return-void
.end method

.method public resetAllConstraints()V
    .locals 3

    .prologue
    .line 1838
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1839
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1840
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1841
    return-void
.end method

.method public resetAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 11

    .prologue
    .line 1850
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1851
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v9, :cond_0

    .line 1852
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v2, v9

    .line 1853
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1903
    :goto_0
    return-void

    .line 1858
    :cond_0
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v2, v9

    .line 1859
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v3, v9

    .line 1860
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 1861
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v5, v9

    .line 1862
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v6, v9

    .line 1863
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v7, v9

    .line 1864
    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v8, v9

    .line 1866
    move-object v9, v1

    move-object v10, v6

    if-ne v9, v10, :cond_4

    .line 1867
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    .line 1868
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 1869
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1870
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1872
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v4

    .line 1873
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 1874
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1875
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1877
    :cond_2
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1878
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1902
    :cond_3
    :goto_1
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1903
    goto/16 :goto_0

    .line 1879
    :cond_4
    move-object v9, v1

    move-object v10, v7

    if-ne v9, v10, :cond_6

    .line 1880
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v2

    .line 1881
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 1882
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1883
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1885
    :cond_5
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    .line 1886
    :cond_6
    move-object v9, v1

    move-object v10, v8

    if-ne v9, v10, :cond_8

    .line 1887
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v4

    .line 1888
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    if-ne v9, v10, :cond_7

    .line 1889
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1890
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1892
    :cond_7
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    .line 1893
    :cond_8
    move-object v9, v1

    move-object v10, v2

    if-eq v9, v10, :cond_9

    move-object v9, v1

    move-object v10, v3

    if-ne v9, v10, :cond_a

    .line 1894
    :cond_9
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 1895
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1

    .line 1897
    :cond_a
    move-object v9, v1

    move-object v10, v4

    if-eq v9, v10, :cond_b

    move-object v9, v1

    move-object v10, v5

    if-ne v9, v10, :cond_3

    .line 1898
    :cond_b
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 1899
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1
.end method

.method public resetAnchors()V
    .locals 7

    .prologue
    .line 1909
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    move-object v1, v5

    .line 1910
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    .line 1911
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v2, v5

    .line 1912
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1920
    :goto_0
    return-void

    .line 1916
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    :goto_1
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1917
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v4, v5

    .line 1918
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1916
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1920
    :cond_1
    goto :goto_0
.end method

.method public resetFinalResolution()V
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 165
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 166
    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 167
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v4

    .line 168
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetFinalResolution()V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .locals 4

    .prologue
    .line 581
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 582
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 583
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 584
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 585
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 586
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 587
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 588
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 589
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 4

    .prologue
    .line 1500
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1501
    move-object v2, v0

    move v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 1502
    return-void

    .line 1501
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1511
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1512
    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 4

    .prologue
    .line 1523
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    .line 1524
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1528
    :goto_0
    return-void

    .line 1526
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 731
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 750
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 751
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v3, v8

    .line 752
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v4, v8

    .line 753
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 754
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 755
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

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 756
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

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 757
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

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 758
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

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 759
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v7, v8

    .line 760
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

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public setDimension(II)V
    .locals 5

    .prologue
    .line 1367
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1368
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v3, v4, :cond_0

    .line 1369
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1371
    :cond_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1372
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_1

    .line 1373
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1375
    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 5

    .prologue
    .line 1292
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1293
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1294
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1230
    move-object v0, p0

    move-object v1, p1

    move-object v11, v1

    if-eqz v11, :cond_0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 1231
    :cond_0
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1284
    :goto_0
    return-void

    .line 1234
    :cond_1
    const/4 v11, -0x1

    move v2, v11

    .line 1235
    const/4 v11, 0x0

    move v3, v11

    .line 1236
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v4, v11

    .line 1237
    move-object v11, v1

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v5, v11

    .line 1238
    move v11, v5

    if-lez v11, :cond_6

    move v11, v5

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_6

    .line 1239
    move-object v11, v1

    const/4 v12, 0x0

    move v13, v5

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 1240
    move-object v11, v6

    const-string v12, "W"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1241
    const/4 v11, 0x0

    move v2, v11

    .line 1245
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 1249
    :goto_2
    move-object v11, v1

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v6, v11

    .line 1251
    move v11, v6

    if-ltz v11, :cond_8

    move v11, v6

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_8

    .line 1252
    move-object v11, v1

    move v12, v5

    move v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1253
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 1254
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1256
    move-object v11, v7

    :try_start_0
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v9, v11

    .line 1257
    move-object v11, v8

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v10, v11

    .line 1258
    move v11, v9

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    move v11, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 1259
    move v11, v2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 1260
    move v11, v10

    move v12, v9

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v3, v11

    .line 1280
    :cond_3
    :goto_3
    move v11, v3

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 1281
    move-object v11, v0

    move v12, v3

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1282
    move-object v11, v0

    move v12, v2

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1284
    :cond_4
    goto/16 :goto_0

    .line 1242
    :cond_5
    move-object v11, v6

    const-string v12, "H"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1243
    const/4 v11, 0x1

    move v2, v11

    goto :goto_1

    .line 1247
    :cond_6
    const/4 v11, 0x0

    move v5, v11

    goto :goto_2

    .line 1262
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

    .line 1265
    :catch_0
    move-exception v11

    move-object v9, v11

    goto :goto_3

    .line 1270
    :cond_8
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1271
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1273
    move-object v11, v7

    :try_start_2
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    move v3, v11

    .line 1276
    goto :goto_3

    .line 1274
    :catch_1
    move-exception v11

    move-object v8, v11

    goto :goto_3
.end method

.method public setFinalBaseline(I)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    if-nez v4, :cond_0

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    sub-int/2addr v4, v5

    move v2, v4

    .line 147
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v4, v5

    move v3, v4

    .line 148
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 149
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 150
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v5, v3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 151
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 152
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 153
    goto :goto_0
.end method

.method public setFinalFrame(IIIIII)V
    .locals 12

    .prologue
    .line 88
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

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 89
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 90
    move v7, v6

    if-nez v7, :cond_0

    .line 91
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 92
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 103
    :goto_0
    return-void

    .line 93
    :cond_0
    move v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 94
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 95
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0

    .line 96
    :cond_1
    move v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 97
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 98
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0

    .line 100
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 101
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    goto :goto_0
.end method

.method public setFinalHorizontal(II)V
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 117
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 118
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 119
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 120
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 125
    return-void
.end method

.method public setFinalLeft(I)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 107
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 108
    return-void
.end method

.method public setFinalTop(I)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 112
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 113
    return-void
.end method

.method public setFinalVertical(II)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 129
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 130
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 131
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 132
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    if-eqz v3, :cond_0

    .line 133
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 135
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 140
    return-void
.end method

.method public setFrame(III)V
    .locals 7

    .prologue
    .line 1429
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v3

    if-nez v4, :cond_1

    .line 1430
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1432
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    goto :goto_0
.end method

.method public setFrame(IIII)V
    .locals 9

    .prologue
    .line 1386
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v3

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 1387
    move v7, v4

    move v8, v2

    sub-int/2addr v7, v8

    move v6, v7

    .line 1389
    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1390
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1392
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 1393
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1394
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1419
    :goto_0
    return-void

    .line 1399
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_1

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v7, v8, :cond_1

    .line 1400
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move v5, v7

    .line 1402
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_2

    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v7, v8, :cond_2

    .line 1403
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move v6, v7

    .line 1406
    :cond_2
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1407
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1409
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v7, v8, :cond_3

    .line 1410
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1412
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v7, v8, :cond_4

    .line 1413
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1419
    :cond_4
    goto :goto_0
.end method

.method public setGoneMargin(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 5

    .prologue
    .line 1124
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1148
    :goto_0
    return-void

    .line 1126
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1128
    goto :goto_0

    .line 1130
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1132
    goto :goto_0

    .line 1134
    :pswitch_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1136
    goto :goto_0

    .line 1138
    :pswitch_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1140
    goto :goto_0

    .line 1124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setHasBaseline(Z)V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 289
    return-void
.end method

.method public setHeight(I)V
    .locals 4

    .prologue
    .line 1168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1169
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v3, :cond_0

    .line 1170
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1172
    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 4

    .prologue
    .line 656
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 657
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 4

    .prologue
    .line 1321
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1322
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 4

    .prologue
    .line 1564
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1565
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 6

    .prologue
    .line 1443
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1444
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1445
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v3, v4, :cond_0

    .line 1446
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1448
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 5

    .prologue
    .line 2000
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    move-object v4, v1

    aput-object v4, v2, v3

    .line 2001
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 8

    .prologue
    .line 1197
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1198
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1199
    move-object v5, v0

    move v6, v3

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    :goto_0
    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1200
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1201
    move v5, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v5, :cond_0

    .line 1202
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1204
    :cond_0
    return-void

    .line 1199
    :cond_1
    move v6, v3

    goto :goto_0
.end method

.method public setHorizontalWeight(F)V
    .locals 5

    .prologue
    .line 1545
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v3, 0x0

    move v4, v1

    aput v4, v2, v3

    .line 1546
    return-void
.end method

.method protected setInBarrier(IZ)V
    .locals 6

    .prologue
    .line 304
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsInBarrier:[Z

    move v4, v1

    move v5, v2

    aput-boolean v5, v3, v4

    .line 305
    return-void
.end method

.method public setInPlaceholder(Z)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 301
    return-void
.end method

.method public setInVirtualLayout(Z)V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 253
    return-void
.end method

.method public setLastMeasureSpec(II)V
    .locals 5

    .prologue
    .line 324
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 325
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 326
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    .line 327
    return-void
.end method

.method public setLength(II)V
    .locals 5

    .prologue
    .line 1181
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_1

    .line 1182
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1184
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 5

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x1

    move v4, v1

    aput v4, v2, v3

    .line 269
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x0

    move v4, v1

    aput v4, v2, v3

    .line 265
    return-void
.end method

.method public setMeasureRequested(Z)V
    .locals 4

    .prologue
    .line 308
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 309
    return-void
.end method

.method public setMinHeight(I)V
    .locals 4

    .prologue
    .line 1353
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1354
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1358
    :goto_0
    return-void

    .line 1356
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 4

    .prologue
    .line 1340
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1341
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1345
    :goto_0
    return-void

    .line 1343
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0
.end method

.method public setOffset(II)V
    .locals 5

    .prologue
    .line 1113
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 1114
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 1115
    return-void
.end method

.method public setOrigin(II)V
    .locals 5

    .prologue
    .line 1102
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1103
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1104
    return-void
.end method

.method public setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 629
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 630
    return-void
.end method

.method setRelativePositioning(II)V
    .locals 5

    .prologue
    .line 1487
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_1

    .line 1488
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1489
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1490
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 696
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 4

    .prologue
    .line 1331
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1332
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 4

    .prologue
    .line 1584
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1585
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 6

    .prologue
    .line 1457
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1458
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1459
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_0

    .line 1460
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1462
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 5

    .prologue
    .line 2009
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    move-object v4, v1

    aput-object v4, v2, v3

    .line 2010
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 8

    .prologue
    .line 1215
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1216
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1217
    move-object v5, v0

    move v6, v3

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    :goto_0
    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1218
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1219
    move v5, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v5, :cond_0

    .line 1220
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1222
    :cond_0
    return-void

    .line 1217
    :cond_1
    move v6, v3

    goto :goto_0
.end method

.method public setVerticalWeight(F)V
    .locals 5

    .prologue
    .line 1554
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v3, 0x1

    move v4, v1

    aput v4, v2, v3

    .line 1555
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 705
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 706
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 1156
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1157
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_0

    .line 1158
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1160
    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 4

    .prologue
    .line 638
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 639
    return-void
.end method

.method public setX(I)V
    .locals 4

    .prologue
    .line 1083
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1084
    return-void
.end method

.method public setY(I)V
    .locals 4

    .prologue
    .line 1092
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1093
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 8

    .prologue
    .line 2531
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2532
    move v5, v3

    if-eqz v5, :cond_6

    move v5, v4

    if-nez v5, :cond_6

    .line 2533
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2543
    :cond_0
    :goto_0
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v5, :cond_7

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2544
    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2550
    :cond_2
    :goto_1
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 2551
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2552
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2554
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2555
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2572
    :cond_4
    :goto_2
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 2573
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v5, :cond_a

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v5, :cond_a

    .line 2574
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2585
    :cond_5
    :goto_3
    return-void

    .line 2534
    :cond_6
    move v5, v3

    if-nez v5, :cond_0

    move v5, v4

    if-eqz v5, :cond_0

    .line 2535
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2536
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2538
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    goto/16 :goto_0

    .line 2545
    :cond_7
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2546
    :cond_8
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_1

    .line 2556
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2557
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2558
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2575
    :cond_a
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v5, :cond_5

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v5, :cond_5

    .line 2576
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2577
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 786
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

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

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

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

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

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

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

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

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

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
    .line 3186
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->isResolved()Z

    move-result v10

    and-int/2addr v9, v10

    move v1, v9

    .line 3187
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->isResolved()Z

    move-result v10

    and-int/2addr v9, v10

    move v2, v9

    .line 3188
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v3, v9

    .line 3189
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v4, v9

    .line 3190
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v5, v9

    .line 3191
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v6, v9

    .line 3192
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v7, v9

    .line 3193
    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    move v8, v9

    .line 3194
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

    .line 3199
    :cond_0
    const/4 v9, 0x0

    move v3, v9

    .line 3200
    const/4 v9, 0x0

    move v4, v9

    .line 3201
    const/4 v9, 0x0

    move v5, v9

    .line 3202
    const/4 v9, 0x0

    move v6, v9

    .line 3205
    :cond_1
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v7, v9

    .line 3206
    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    move v8, v9

    .line 3208
    move v9, v1

    if-eqz v9, :cond_2

    .line 3209
    move-object v9, v0

    move v10, v3

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 3211
    :cond_2
    move v9, v2

    if-eqz v9, :cond_3

    .line 3212
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 3215
    :cond_3
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    .line 3216
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3217
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3242
    :goto_0
    return-void

    .line 3222
    :cond_4
    move v9, v1

    if-eqz v9, :cond_6

    .line 3223
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_5

    move v9, v7

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v9, v10, :cond_5

    .line 3224
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move v7, v9

    .line 3226
    :cond_5
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3227
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v9, v10, :cond_6

    .line 3228
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 3232
    :cond_6
    move v9, v2

    if-eqz v9, :cond_8

    .line 3233
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_7

    move v9, v8

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v9, v10, :cond_7

    .line 3234
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move v8, v9

    .line 3236
    :cond_7
    move-object v9, v0

    move v10, v8

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3237
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v9, v10, :cond_8

    .line 3238
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 3242
    :cond_8
    goto :goto_0
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V
    .locals 14

    .prologue
    .line 3056
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v9

    move v3, v9

    .line 3057
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v9

    move v4, v9

    .line 3058
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v9

    move v5, v9

    .line 3059
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v9

    move v6, v9

    .line 3061
    move v9, v2

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v9, :cond_0

    .line 3062
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v3, v9

    .line 3063
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v5, v9

    .line 3065
    :cond_0
    move v9, v2

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v9, :cond_1

    .line 3066
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v4, v9

    .line 3067
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move v6, v9

    .line 3070
    :cond_1
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v7, v9

    .line 3071
    move v9, v6

    move v10, v4

    sub-int/2addr v9, v10

    move v8, v9

    .line 3072
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

    .line 3077
    :cond_2
    const/4 v9, 0x0

    move v3, v9

    .line 3078
    const/4 v9, 0x0

    move v4, v9

    .line 3079
    const/4 v9, 0x0

    move v5, v9

    .line 3080
    const/4 v9, 0x0

    move v6, v9

    .line 3082
    :cond_3
    move-object v9, v0

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 3086
    return-void
.end method
