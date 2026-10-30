.class public Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/WidgetContainer;
.source "ConstraintWidgetContainer.java"


# static fields
.field private static final DEBUG:Z = false

.field static final DEBUG_GRAPH:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final MAX_ITERATIONS:I = 0x8

.field static mycounter:I


# instance fields
.field private horizontalWrapMax:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalWrapMin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

.field mDebugSolverPassCount:I

.field public mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public mGroupsWrapOptimized:Z

.field private mHeightMeasuredTooSmall:Z

.field mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mHorizontalWrapOptimized:Z

.field private mIsRtl:Z

.field public mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field protected mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field public mMetrics:Landroidx/constraintlayout/core/Metrics;

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mSkipSolver:Z

.field protected mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mVerticalWrapOptimized:Z

.field private mWidthMeasuredTooSmall:Z

.field public mWrapFixedHeight:I

.field public mWrapFixedWidth:I

.field private verticalWrapMax:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private verticalWrapMin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    sput v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mycounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>()V

    .line 48
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 54
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 127
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 138
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 146
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 153
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 156
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 157
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 159
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 160
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 161
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 162
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 163
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 165
    move-object v1, v0

    const/16 v2, 0x101

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 166
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 168
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 169
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 272
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 274
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 275
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 276
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 277
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 485
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 179
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 200
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    .line 48
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 54
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 127
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 138
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 146
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/core/LinearSystem;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 153
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 154
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 156
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 157
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 159
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 160
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 161
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 162
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 163
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 165
    move-object v3, v0

    const/16 v4, 0x101

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 166
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 168
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 169
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 272
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 274
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 275
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 276
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 277
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 485
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 201
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(IIII)V

    .line 48
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 54
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 127
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 138
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 146
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/LinearSystem;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 153
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 154
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 156
    move-object v5, v0

    const/4 v6, 0x4

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 157
    move-object v5, v0

    const/4 v6, 0x4

    new-array v6, v6, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 159
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 160
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 161
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 162
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 163
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 165
    move-object v5, v0

    const/16 v6, 0x101

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 166
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 168
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 169
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 272
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 274
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 275
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 276
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 277
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 485
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 9

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    .line 48
    move-object v4, v0

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 54
    move-object v4, v0

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 127
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 138
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 146
    move-object v4, v0

    new-instance v5, Landroidx/constraintlayout/core/LinearSystem;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 153
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 154
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 156
    move-object v4, v0

    const/4 v5, 0x4

    new-array v5, v5, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 157
    move-object v4, v0

    const/4 v5, 0x4

    new-array v5, v5, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 159
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 160
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 161
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 162
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 163
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 165
    move-object v4, v0

    const/16 v5, 0x101

    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 166
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 168
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 169
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 272
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 274
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 275
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 276
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 277
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 485
    move-object v4, v0

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 205
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setDebugName(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private addHorizontalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 10

    .prologue
    .line 1020
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 1021
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    .line 1022
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 1024
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    new-instance v4, Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v4, v2, v3

    .line 1025
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1026
    return-void
.end method

.method private addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 10

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    move-object v3, v5

    .line 315
    const/4 v5, 0x5

    move v4, v5

    .line 316
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 317
    return-void
.end method

.method private addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 10

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    move-object v3, v5

    .line 309
    const/4 v5, 0x5

    move v4, v5

    .line 310
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 311
    return-void
.end method

.method private addVerticalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 10

    .prologue
    .line 1035
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 1036
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    .line 1037
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 1039
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-instance v4, Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v4, v2, v3

    .line 1040
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1041
    return-void
.end method

.method public static measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z
    .locals 12

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v9, v1

    if-nez v9, :cond_0

    .line 492
    const/4 v9, 0x0

    move v0, v9

    .line 595
    :goto_0
    return v0

    .line 495
    :cond_0
    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 496
    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 497
    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    iput v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 498
    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    iput v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 499
    move-object v9, v2

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 500
    move-object v9, v2

    move v10, v3

    iput v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 502
    move-object v9, v2

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_7

    const/4 v9, 0x1

    :goto_1
    move v4, v9

    .line 503
    move-object v9, v2

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    :goto_2
    move v5, v9

    .line 505
    move v9, v4

    if-eqz v9, :cond_9

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 506
    move v9, v5

    if-eqz v9, :cond_a

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_a

    const/4 v9, 0x1

    :goto_4
    move v7, v9

    .line 508
    move v9, v4

    if-eqz v9, :cond_1

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v9, :cond_1

    move v9, v6

    if-nez v9, :cond_1

    .line 511
    const/4 v9, 0x0

    move v4, v9

    .line 512
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 513
    move v9, v5

    if-eqz v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v9, :cond_1

    .line 515
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 519
    :cond_1
    move v9, v5

    if-eqz v9, :cond_2

    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v9, :cond_2

    move v9, v7

    if-nez v9, :cond_2

    .line 522
    const/4 v9, 0x0

    move v5, v9

    .line 523
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 524
    move v9, v4

    if-eqz v9, :cond_2

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v9, :cond_2

    .line 526
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 530
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 531
    const/4 v9, 0x0

    move v4, v9

    .line 532
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 534
    :cond_3
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 535
    const/4 v9, 0x0

    move v5, v9

    .line 536
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 539
    :cond_4
    move v9, v6

    if-eqz v9, :cond_5

    .line 540
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x4

    if-ne v9, v10, :cond_b

    .line 541
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 561
    :cond_5
    :goto_5
    move v9, v7

    if-eqz v9, :cond_6

    .line 562
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x4

    if-ne v9, v10, :cond_d

    .line 563
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 584
    :cond_6
    :goto_6
    move-object v9, v1

    move-object v10, v0

    move-object v11, v2

    invoke-interface {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 585
    move-object v9, v0

    move-object v10, v2

    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 586
    move-object v9, v0

    move-object v10, v2

    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 587
    move-object v9, v0

    move-object v10, v2

    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 588
    move-object v9, v0

    move-object v10, v2

    iget v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 589
    move-object v9, v2

    sget v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    iput v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 595
    move-object v9, v2

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    move v0, v9

    goto/16 :goto_0

    .line 502
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 503
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 505
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 506
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 542
    :cond_b
    move v9, v5

    if-nez v9, :cond_5

    .line 545
    move-object v9, v2

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_c

    .line 546
    move-object v9, v2

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    move v8, v9

    .line 552
    :goto_7
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 555
    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v10

    move v11, v8

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    goto :goto_5

    .line 548
    :cond_c
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 549
    move-object v9, v1

    move-object v10, v0

    move-object v11, v2

    invoke-interface {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 550
    move-object v9, v2

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    move v8, v9

    goto :goto_7

    .line 564
    :cond_d
    move v9, v4

    if-nez v9, :cond_6

    .line 567
    move-object v9, v2

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_e

    .line 568
    move-object v9, v2

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    move v8, v9

    .line 574
    :goto_8
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 577
    move-object v9, v2

    move v10, v8

    int-to-float v10, v10

    move-object v11, v0

    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v11

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    goto/16 :goto_6

    .line 570
    :cond_e
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 571
    move-object v9, v1

    move-object v10, v0

    move-object v11, v2

    invoke-interface {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 572
    move-object v9, v2

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    move v8, v9

    goto :goto_8
.end method

.method private resetChains()V
    .locals 3

    .prologue
    .line 994
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 995
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 996
    return-void
.end method


# virtual methods
.method addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 6

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    move-object v3, v4

    .line 1006
    move v4, v2

    if-nez v4, :cond_1

    .line 1007
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1009
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_0
.end method

.method public addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)Z
    .locals 16

    .prologue
    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    const/16 v10, 0x40

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v9

    move v2, v9

    .line 333
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 334
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    .line 336
    const/4 v9, 0x0

    move v4, v9

    .line 337
    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 338
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v6, v9

    .line 339
    move-object v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    .line 340
    move-object v9, v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    .line 341
    move-object v9, v6

    instance-of v9, v9, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v9, :cond_0

    .line 342
    const/4 v9, 0x1

    move v4, v9

    .line 337
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 346
    :cond_1
    move v9, v4

    if-eqz v9, :cond_3

    .line 347
    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_3

    .line 348
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v6, v9

    .line 349
    move-object v9, v6

    instance-of v9, v9, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v9, :cond_2

    .line 350
    move-object v9, v6

    check-cast v9, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Barrier;->markWidgets()V

    .line 347
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 355
    :cond_3
    const/4 v9, 0x0

    move v5, v9

    :goto_2
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_5

    .line 356
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v6, v9

    .line 357
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 358
    move-object v9, v6

    move-object v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 355
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 362
    :cond_5
    sget-boolean v9, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    if-eqz v9, :cond_c

    .line 363
    new-instance v9, Ljava/util/HashSet;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v5, v9

    .line 364
    const/4 v9, 0x0

    move v6, v9

    :goto_3
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_7

    .line 365
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v7, v9

    .line 366
    move-object v9, v7

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    move-result v9

    if-nez v9, :cond_6

    .line 367
    move-object v9, v5

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 364
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 370
    :cond_7
    const/4 v9, 0x1

    move v6, v9

    .line 371
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_8

    .line 372
    const/4 v9, 0x0

    move v6, v9

    .line 374
    :cond_8
    move-object v9, v0

    move-object v10, v0

    move-object v11, v1

    move-object v12, v5

    move v13, v6

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 375
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_4
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v8, v9

    .line 376
    move-object v9, v0

    move-object v10, v1

    move-object v11, v8

    invoke-static {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 377
    move-object v9, v8

    move-object v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 378
    goto :goto_4

    .line 408
    :cond_9
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez v9, :cond_a

    .line 409
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 411
    :cond_a
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v9, :cond_b

    .line 412
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 414
    :cond_b
    const/4 v9, 0x1

    move v0, v9

    return v0

    .line 381
    :cond_c
    const/4 v9, 0x0

    move v5, v9

    :goto_5
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_9

    .line 382
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v6, v9

    .line 383
    move-object v9, v6

    instance-of v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v9, :cond_11

    .line 384
    move-object v9, v6

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v7, v9

    .line 385
    move-object v9, v6

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    move-object v8, v9

    .line 386
    move-object v9, v7

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_d

    .line 387
    move-object v9, v6

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 389
    :cond_d
    move-object v9, v8

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_e

    .line 390
    move-object v9, v6

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 392
    :cond_e
    move-object v9, v6

    move-object v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 393
    move-object v9, v7

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_f

    .line 394
    move-object v9, v6

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 396
    :cond_f
    move-object v9, v8

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_10

    .line 397
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 381
    :cond_10
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 400
    :cond_11
    move-object v9, v0

    move-object v10, v1

    move-object v11, v6

    invoke-static {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 401
    move-object v9, v6

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    move-result v9

    if-nez v9, :cond_10

    .line 402
    move-object v9, v6

    move-object v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_6
.end method

.method public addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 7

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 302
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 303
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 305
    :cond_1
    return-void
.end method

.method public addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 7

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 288
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 289
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 291
    :cond_1
    return-void
.end method

.method addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 7

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 295
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 296
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 298
    :cond_1
    return-void
.end method

.method addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 281
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 282
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 284
    :cond_1
    return-void
.end method

.method public defineTerminalWidgets()V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->defineTerminalWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 100
    return-void
.end method

.method public directMeasure(Z)Z
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasure(Z)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public directMeasureSetup(Z)Z
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasureSetup(Z)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public directMeasureWithOrientation(ZI)Z
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasureWithOrientation(ZI)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public fillMetrics(Landroidx/constraintlayout/core/Metrics;)V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 143
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->fillMetrics(Landroidx/constraintlayout/core/Metrics;)V

    .line 144
    return-void
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    move-object v0, p0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 970
    const/4 v6, 0x0

    move v2, v6

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 971
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v4, v6

    .line 972
    move-object v6, v4

    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_0

    .line 973
    move-object v6, v4

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v5, v6

    .line 974
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v6

    if-nez v6, :cond_0

    .line 975
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 970
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    :cond_1
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method

.method public getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-object v0, v1

    return-object v0
.end method

.method public getOptimizationLevel()I
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    move v0, v1

    return v0
.end method

.method public getSystem()Landroidx/constraintlayout/core/LinearSystem;
    .locals 2

    .prologue
    .line 983
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object v0, v1

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    const-string v1, "ConstraintLayout"

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/core/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    move-object v0, p0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 951
    const/4 v6, 0x0

    move v2, v6

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 952
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v4, v6

    .line 953
    move-object v6, v4

    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_0

    .line 954
    move-object v6, v4

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    move-object v5, v6

    .line 955
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 956
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 951
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 960
    :cond_1
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 2

    .prologue
    .line 937
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public invalidateGraph()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->invalidateGraph()V

    .line 61
    return-void
.end method

.method public invalidateMeasures()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->invalidateMeasures()V

    .line 68
    return-void
.end method

.method public isHeightMeasuredTooSmall()Z
    .locals 2

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    move v0, v1

    return v0
.end method

.method public isRtl()Z
    .locals 2

    .prologue
    .line 478
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    move v0, v1

    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    move v0, v1

    return v0
.end method

.method public layout()V
    .locals 27

    .prologue
    .line 612
    move-object/from16 v4, p0

    move-object/from16 v21, v4

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mX:I

    .line 613
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mY:I

    .line 615
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 616
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 617
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v5, v21

    .line 619
    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v6, v21

    .line 620
    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v7, v21

    .line 621
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v8, v21

    .line 622
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v9, v21

    .line 629
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 630
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/constraintlayout/core/Metrics;->layouts:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroidx/constraintlayout/core/Metrics;->layouts:J

    .line 634
    :cond_0
    const/16 v21, 0x0

    move/from16 v10, v21

    .line 639
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 643
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 647
    const/16 v21, 0x0

    move/from16 v11, v21

    :goto_0
    move/from16 v21, v11

    move/from16 v22, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 648
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v12, v21

    .line 669
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    move/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    move/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    move/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v21, v12

    .line 673
    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v21

    if-nez v21, :cond_1

    .line 674
    move-object/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    move-object/from16 v13, v21

    .line 675
    move-object/from16 v21, v12

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    move-object/from16 v14, v21

    .line 677
    move-object/from16 v21, v13

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v21, v14

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v21, 0x1

    :goto_1
    move/from16 v15, v21

    .line 681
    move/from16 v21, v15

    if-nez v21, :cond_1

    .line 682
    new-instance v21, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    move-object/from16 v16, v21

    .line 683
    move-object/from16 v21, v12

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-object/from16 v22, v0

    move-object/from16 v23, v16

    sget v24, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static/range {v21 .. v24}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    move-result v21

    .line 647
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 677
    :cond_2
    const/16 v21, 0x0

    goto :goto_1

    .line 697
    :cond_3
    move/from16 v21, v5

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    move-object/from16 v21, v9

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v21, v8

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    :cond_4
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    move/from16 v21, v0

    const/16 v22, 0x400

    .line 699
    invoke-static/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 700
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->simpleSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 701
    move-object/from16 v21, v9

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 702
    move/from16 v21, v6

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    move/from16 v21, v6

    if-lez v21, :cond_c

    .line 706
    move-object/from16 v21, v4

    move/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 707
    move-object/from16 v21, v4

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 712
    :cond_5
    :goto_2
    move-object/from16 v21, v8

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 713
    move/from16 v21, v7

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    move/from16 v21, v7

    if-lez v21, :cond_d

    .line 717
    move-object/from16 v21, v4

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 718
    move-object/from16 v21, v4

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 723
    :cond_6
    :goto_3
    const/16 v21, 0x1

    move/from16 v10, v21

    .line 731
    :cond_7
    move-object/from16 v21, v4

    const/16 v22, 0x40

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v21, v4

    const/16 v22, 0x80

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v21

    if-eqz v21, :cond_e

    :cond_8
    const/16 v21, 0x1

    :goto_4
    move/from16 v11, v21

    .line 733
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    .line 734
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 736
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move/from16 v21, v11

    if-eqz v21, :cond_9

    .line 738
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    .line 741
    :cond_9
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 742
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 743
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_a

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    :cond_a
    const/16 v21, 0x1

    :goto_5
    move/from16 v14, v21

    .line 746
    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 747
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 751
    const/16 v21, 0x0

    move/from16 v15, v21

    :goto_6
    move/from16 v21, v15

    move/from16 v22, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 752
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v16, v21

    .line 753
    move-object/from16 v21, v16

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 754
    move-object/from16 v21, v16

    check-cast v21, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->layout()V

    .line 751
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 709
    :cond_c
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v21

    move/from16 v6, v21

    goto/16 :goto_2

    .line 720
    :cond_d
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v21

    move/from16 v7, v21

    goto/16 :goto_3

    .line 731
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 743
    :cond_f
    const/16 v21, 0x0

    goto :goto_5

    .line 757
    :cond_10
    move-object/from16 v21, v4

    const/16 v22, 0x40

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v21

    move/from16 v15, v21

    .line 760
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 761
    :goto_7
    move/from16 v21, v16

    if-eqz v21, :cond_20

    .line 762
    add-int/lit8 v12, v12, 0x1

    .line 764
    move-object/from16 v21, v4

    :try_start_0
    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 765
    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 779
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 780
    const/16 v21, 0x0

    move/from16 v17, v21

    :goto_8
    move/from16 v21, v17

    move/from16 v22, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 781
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v18, v21

    .line 782
    move-object/from16 v21, v18

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    .line 780
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 785
    :cond_11
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v21

    move/from16 v16, v21

    .line 786
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_12

    .line 787
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 788
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 790
    :cond_12
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_13

    .line 791
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 792
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 794
    :cond_13
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_14

    .line 795
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 796
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 798
    :cond_14
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_15

    .line 799
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 800
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 802
    :cond_15
    move/from16 v21, v16

    if-eqz v21, :cond_16

    .line 803
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :cond_16
    :goto_9
    move/from16 v21, v16

    if-eqz v21, :cond_17

    .line 810
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v22, v0

    sget-object v23, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroidx/constraintlayout/core/LinearSystem;[Z)Z

    move-result v21

    move/from16 v16, v21

    .line 820
    :goto_a
    move/from16 v21, v14

    if-eqz v21, :cond_1b

    move/from16 v21, v12

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1b

    sget-object v21, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    const/16 v22, 0x2

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_1b

    .line 823
    const/16 v21, 0x0

    move/from16 v17, v21

    .line 824
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 825
    const/16 v21, 0x0

    move/from16 v19, v21

    :goto_b
    move/from16 v21, v19

    move/from16 v22, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    .line 826
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v20, v21

    .line 827
    move/from16 v21, v17

    move-object/from16 v22, v20

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move/from16 v22, v0

    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 828
    move/from16 v21, v18

    move-object/from16 v22, v20

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    move/from16 v22, v0

    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v23

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 825
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 805
    :catch_0
    move-exception v21

    move-object/from16 v17, v21

    .line 806
    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 807
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EXCEPTION : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 812
    :cond_17
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v22, v0

    move/from16 v23, v15

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 813
    const/16 v21, 0x0

    move/from16 v17, v21

    :goto_c
    move/from16 v21, v17

    move/from16 v22, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_18

    .line 814
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v18, v21

    .line 815
    move-object/from16 v21, v18

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v22, v0

    move/from16 v23, v15

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 813
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 817
    :cond_18
    const/16 v21, 0x0

    move/from16 v16, v21

    goto/16 :goto_a

    .line 830
    :cond_19
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinWidth:I

    move/from16 v21, v0

    move/from16 v22, v17

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 831
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinHeight:I

    move/from16 v21, v0

    move/from16 v22, v18

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 832
    move-object/from16 v21, v9

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 833
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v21

    move/from16 v22, v17

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1a

    .line 838
    move-object/from16 v21, v4

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 839
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 840
    const/16 v21, 0x1

    move/from16 v10, v21

    .line 841
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 844
    :cond_1a
    move-object/from16 v21, v8

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1b

    .line 845
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v21

    move/from16 v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1b

    .line 850
    move-object/from16 v21, v4

    move/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 851
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    sget-object v23, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 852
    const/16 v21, 0x1

    move/from16 v10, v21

    .line 853
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 858
    :cond_1b
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinWidth:I

    move/from16 v21, v0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 859
    move/from16 v21, v17

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1c

    .line 864
    move-object/from16 v21, v4

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 865
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 866
    const/16 v21, 0x1

    move/from16 v10, v21

    .line 867
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 869
    :cond_1c
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinHeight:I

    move/from16 v21, v0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 870
    move/from16 v21, v18

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1d

    .line 875
    move-object/from16 v21, v4

    move/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 876
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    sget-object v23, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 877
    const/16 v21, 0x1

    move/from16 v10, v21

    .line 878
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 881
    :cond_1d
    move/from16 v21, v10

    if-nez v21, :cond_1f

    .line 882
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1e

    move/from16 v21, v6

    if-lez v21, :cond_1e

    .line 884
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v21

    move/from16 v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1e

    .line 890
    move-object/from16 v21, v4

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 891
    const/16 v21, 0x1

    move/from16 v10, v21

    .line 892
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 893
    move-object/from16 v21, v4

    move/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 894
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 897
    :cond_1e
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1f

    move/from16 v21, v7

    if-lez v21, :cond_1f

    .line 899
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v21

    move/from16 v22, v7

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1f

    .line 905
    move-object/from16 v21, v4

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 906
    const/16 v21, 0x1

    move/from16 v10, v21

    .line 907
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    sget-object v23, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 908
    move-object/from16 v21, v4

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 909
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 913
    :cond_1f
    goto/16 :goto_7

    .line 921
    :cond_20
    move-object/from16 v21, v4

    move-object/from16 v22, v13

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 923
    move/from16 v21, v10

    if-eqz v21, :cond_21

    .line 924
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, v9

    aput-object v23, v21, v22

    .line 925
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v23, v8

    aput-object v23, v21, v22

    .line 928
    :cond_21
    move-object/from16 v21, v4

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/core/LinearSystem;->getCache()Landroidx/constraintlayout/core/Cache;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V

    .line 929
    return-void
.end method

.method public measure(IIIIIIIII)J
    .locals 21

    .prologue
    .line 117
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v0

    move v11, v8

    iput v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 118
    move-object v10, v0

    move v11, v9

    iput v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 119
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    move-object v11, v0

    move v12, v1

    move v13, v8

    move v14, v9

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v10 .. v20}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solverMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J

    move-result-wide v10

    move-wide v0, v10

    return-wide v0
.end method

.method public optimizeFor(I)Z
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    move v3, v1

    and-int/2addr v2, v3

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 250
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 251
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 252
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 253
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 254
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 255
    move-object v1, v0

    invoke-super {v1}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->reset()V

    .line 256
    return-void
.end method

.method public setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 131
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 132
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 215
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    move-object v2, v0

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v2

    sput-boolean v2, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 216
    return-void
.end method

.method public setPadding(IIII)V
    .locals 7

    .prologue
    .line 457
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 458
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 459
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 460
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 461
    return-void
.end method

.method public setRtl(Z)V
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 470
    return-void
.end method

.method public updateChildrenFromSolver(Landroidx/constraintlayout/core/LinearSystem;[Z)Z
    .locals 11

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v2

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 424
    move-object v8, v0

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v8

    move v3, v8

    .line 425
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 426
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v8

    .line 427
    const/4 v8, 0x0

    move v5, v8

    .line 428
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 429
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v7, v8

    .line 430
    move-object v8, v7

    move-object v9, v1

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 431
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDimensionOverride()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 432
    const/4 v8, 0x1

    move v5, v8

    .line 428
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 435
    :cond_1
    move v8, v5

    move v0, v8

    return v0
.end method

.method public updateFromRuns(ZZ)V
    .locals 9

    .prologue
    .line 440
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->updateFromRuns(ZZ)V

    .line 441
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 442
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 443
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object v5, v6

    .line 444
    move-object v6, v5

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method

.method public updateHierarchy()V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 125
    return-void
.end method
