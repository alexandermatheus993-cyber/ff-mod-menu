.class Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsList"
.end annotation


# instance fields
.field private biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field biggestDimension:I

.field private mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCount:I

.field private mHeight:I

.field private mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mMax:I

.field private mNbMatchConstraintsWidgets:I

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mStartIndex:I

.field private mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 10

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 334
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 335
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 336
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 341
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 342
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 343
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 344
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 345
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 346
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 347
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 348
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 349
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 350
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 356
    move-object v8, v0

    move v9, v2

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 357
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 358
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 359
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 360
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 361
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 362
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 363
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 364
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 365
    move-object v8, v0

    move v9, v7

    iput v9, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 366
    return-void
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    return-object v0
.end method

.method private recomputeDimensions()V
    .locals 12

    .prologue
    .line 723
    move-object v0, p0

    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 724
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 725
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 726
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 727
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    move v1, v7

    .line 728
    const/4 v7, 0x0

    move v2, v7

    :goto_0
    move v7, v2

    move v8, v1

    if-ge v7, v8, :cond_0

    .line 729
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move v8, v2

    add-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v8}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 761
    :cond_0
    return-void

    .line 732
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v7}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move v9, v2

    add-int/2addr v8, v9

    aget-object v7, v7, v8

    move-object v3, v7

    .line 733
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v7, :cond_5

    .line 734
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    move v4, v7

    .line 735
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v7}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v7

    move v5, v7

    .line 736
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 737
    const/4 v7, 0x0

    move v5, v7

    .line 739
    :cond_2
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    move v9, v4

    move v10, v5

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 740
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v7

    move v6, v7

    .line 741
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    move v8, v6

    if-ge v7, v8, :cond_4

    .line 742
    :cond_3
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 743
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 744
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 728
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v7

    move v4, v7

    .line 748
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v7

    move v5, v7

    .line 749
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v7}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v7

    move v6, v7

    .line 750
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    .line 751
    const/4 v7, 0x0

    move v6, v7

    .line 753
    :cond_6
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 754
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v7, :cond_7

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    move v8, v4

    if-ge v7, v8, :cond_4

    .line 755
    :cond_7
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 756
    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 757
    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    goto :goto_1
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 10

    .prologue
    .line 411
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v5, :cond_4

    .line 412
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v5

    move v2, v5

    .line 413
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_0

    .line 414
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 415
    const/4 v5, 0x0

    move v2, v5

    .line 417
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v5}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v5

    move v3, v5

    .line 418
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 419
    const/4 v5, 0x0

    move v3, v5

    .line 421
    :cond_1
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 422
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v5

    move v4, v5

    .line 423
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    move v6, v4

    if-ge v5, v6, :cond_3

    .line 424
    :cond_2
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 425
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 426
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 446
    :cond_3
    :goto_0
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 447
    return-void

    .line 429
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v5

    move v2, v5

    .line 430
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v5

    move v3, v5

    .line 431
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_5

    .line 432
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 433
    const/4 v5, 0x0

    move v3, v5

    .line 435
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v5}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v5

    move v4, v5

    .line 436
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 437
    const/4 v5, 0x0

    move v4, v5

    .line 439
    :cond_6
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 440
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_7

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 441
    :cond_7
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 442
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 443
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 385
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 386
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 387
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 388
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 389
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 390
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 391
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 392
    return-void
.end method

.method public createConstraints(ZIZ)V
    .locals 23

    .prologue
    .line 450
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 451
    const/16 v19, 0x0

    move/from16 v7, v19

    :goto_0
    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 452
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v19, v0

    move/from16 v20, v7

    add-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 460
    :cond_0
    move/from16 v19, v6

    if-eqz v19, :cond_1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 692
    :cond_1
    :goto_1
    return-void

    .line 455
    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v20, v0

    move/from16 v21, v7

    add-int v20, v20, v21

    aget-object v19, v19, v20

    move-object/from16 v8, v19

    .line 456
    move-object/from16 v19, v8

    if-eqz v19, :cond_3

    .line 457
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 451
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 464
    :cond_4
    move/from16 v19, v5

    if-eqz v19, :cond_e

    move/from16 v19, v4

    if-nez v19, :cond_e

    const/16 v19, 0x1

    :goto_2
    move/from16 v7, v19

    .line 465
    const/16 v19, -0x1

    move/from16 v8, v19

    .line 466
    const/16 v19, -0x1

    move/from16 v9, v19

    .line 467
    const/16 v19, 0x0

    move/from16 v10, v19

    :goto_3
    move/from16 v19, v10

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 468
    move/from16 v19, v10

    move/from16 v11, v19

    .line 469
    move/from16 v19, v3

    if-eqz v19, :cond_5

    .line 470
    move/from16 v19, v6

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v11, v19

    .line 472
    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v19, v0

    move/from16 v20, v11

    add-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_f

    .line 484
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v10, v19

    .line 485
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    move/from16 v19, v0

    if-nez v19, :cond_1f

    .line 486
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .line 487
    move-object/from16 v19, v11

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 488
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    move/from16 v19, v0

    move/from16 v12, v19

    .line 489
    move/from16 v19, v4

    if-lez v19, :cond_7

    .line 490
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 492
    :cond_7
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move/from16 v21, v12

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 493
    move/from16 v19, v5

    if-eqz v19, :cond_8

    .line 494
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 496
    :cond_8
    move/from16 v19, v4

    if-lez v19, :cond_9

    .line 497
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 498
    move-object/from16 v19, v13

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 501
    :cond_9
    move-object/from16 v19, v11

    move-object/from16 v13, v19

    .line 502
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v19

    if-nez v19, :cond_b

    .line 503
    const/16 v19, 0x0

    move/from16 v14, v19

    :goto_4
    move/from16 v19, v14

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 504
    move/from16 v19, v14

    move/from16 v15, v19

    .line 505
    move/from16 v19, v3

    if-eqz v19, :cond_a

    .line 506
    move/from16 v19, v6

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 508
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v19, v0

    move/from16 v20, v15

    add-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_12

    .line 519
    :cond_b
    :goto_5
    const/16 v19, 0x0

    move/from16 v14, v19

    :goto_6
    move/from16 v19, v14

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 520
    move/from16 v19, v14

    move/from16 v15, v19

    .line 521
    move/from16 v19, v3

    if-eqz v19, :cond_c

    .line 522
    move/from16 v19, v6

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 524
    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v19, v0

    move/from16 v20, v15

    add-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    .line 692
    :cond_d
    :goto_7
    goto/16 :goto_1

    .line 464
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 475
    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v20, v0

    move/from16 v21, v11

    add-int v20, v20, v21

    aget-object v19, v19, v20

    move-object/from16 v12, v19

    .line 476
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v19

    if-nez v19, :cond_11

    .line 477
    move/from16 v19, v8

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 478
    move/from16 v19, v10

    move/from16 v8, v19

    .line 480
    :cond_10
    move/from16 v19, v10

    move/from16 v9, v19

    .line 467
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 511
    :cond_12
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v20, v0

    move/from16 v21, v15

    add-int v20, v20, v21

    aget-object v19, v19, v20

    move-object/from16 v16, v19

    .line 512
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 513
    move-object/from16 v19, v16

    move-object/from16 v13, v19

    .line 514
    goto/16 :goto_5

    .line 503
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 527
    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v20, v0

    move/from16 v21, v15

    add-int v20, v20, v21

    aget-object v19, v19, v20

    move-object/from16 v16, v19

    .line 528
    move/from16 v19, v14

    if-nez v19, :cond_15

    .line 529
    move-object/from16 v19, v16

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    move/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 534
    :cond_15
    move/from16 v19, v15

    if-nez v19, :cond_17

    .line 535
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    move/from16 v17, v19

    .line 536
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$900(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v19

    move/from16 v18, v19

    .line 537
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v19, v0

    if-nez v19, :cond_1c

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1c

    .line 538
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    move/from16 v17, v19

    .line 539
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v19

    move/from16 v18, v19

    .line 544
    :cond_16
    :goto_8
    move-object/from16 v19, v16

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 545
    move-object/from16 v19, v16

    move/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 547
    :cond_17
    move/from16 v19, v14

    move/from16 v20, v6

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 548
    move-object/from16 v19, v16

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    move/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 550
    :cond_18
    move-object/from16 v19, v10

    if-eqz v19, :cond_1a

    .line 551
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 552
    move/from16 v19, v14

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 553
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 555
    :cond_19
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 556
    move/from16 v19, v14

    move/from16 v20, v9

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 557
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 560
    :cond_1a
    move-object/from16 v19, v16

    move-object/from16 v20, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1b

    .line 561
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    move-object/from16 v19, v13

    .line 562
    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v19

    if-eqz v19, :cond_1d

    move-object/from16 v19, v16

    move-object/from16 v20, v13

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1d

    move-object/from16 v19, v16

    .line 564
    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 565
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 589
    :cond_1b
    :goto_9
    move-object/from16 v19, v16

    move-object/from16 v10, v19

    .line 519
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 540
    :cond_1c
    move/from16 v19, v5

    if-eqz v19, :cond_16

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_16

    .line 541
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    move/from16 v17, v19

    .line 542
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v19

    move/from16 v18, v19

    goto/16 :goto_8

    .line 567
    :cond_1d
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 578
    move/from16 v19, v7

    if-eqz v19, :cond_1e

    .line 579
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 580
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    goto/16 :goto_9

    .line 569
    :pswitch_0
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 571
    goto/16 :goto_9

    .line 573
    :pswitch_1
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 575
    goto/16 :goto_9

    .line 582
    :cond_1e
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 583
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    goto/16 :goto_9

    .line 592
    :cond_1f
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .line 593
    move-object/from16 v19, v11

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 594
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    move/from16 v19, v0

    move/from16 v12, v19

    .line 595
    move/from16 v19, v4

    if-lez v19, :cond_20

    .line 596
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 598
    :cond_20
    move/from16 v19, v3

    if-eqz v19, :cond_23

    .line 599
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move/from16 v21, v12

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 600
    move/from16 v19, v5

    if-eqz v19, :cond_21

    .line 601
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 603
    :cond_21
    move/from16 v19, v4

    if-lez v19, :cond_22

    .line 604
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 605
    move-object/from16 v19, v13

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 617
    :cond_22
    :goto_a
    const/16 v19, 0x0

    move/from16 v13, v19

    :goto_b
    move/from16 v19, v13

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 618
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v19, v0

    move/from16 v20, v13

    add-int v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_25

    .line 619
    goto/16 :goto_7

    .line 608
    :cond_23
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move/from16 v21, v12

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 609
    move/from16 v19, v5

    if-eqz v19, :cond_24

    .line 610
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 612
    :cond_24
    move/from16 v19, v4

    if-lez v19, :cond_22

    .line 613
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 614
    move-object/from16 v19, v13

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    goto/16 :goto_a

    .line 621
    :cond_25
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v20, v0

    move/from16 v21, v13

    add-int v20, v20, v21

    aget-object v19, v19, v20

    move-object/from16 v14, v19

    .line 622
    move/from16 v19, v13

    if-nez v19, :cond_27

    .line 623
    move-object/from16 v19, v14

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    move/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 624
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    move/from16 v15, v19

    .line 625
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v19

    move/from16 v16, v19

    .line 626
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move/from16 v19, v0

    if-nez v19, :cond_2c

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2c

    .line 627
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    move/from16 v15, v19

    .line 628
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v19

    move/from16 v16, v19

    .line 633
    :cond_26
    :goto_c
    move-object/from16 v19, v14

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 634
    move-object/from16 v19, v14

    move/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 636
    :cond_27
    move/from16 v19, v13

    move/from16 v20, v6

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    .line 637
    move-object/from16 v19, v14

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    move/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 639
    :cond_28
    move-object/from16 v19, v10

    if-eqz v19, :cond_2a

    .line 640
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 641
    move/from16 v19, v13

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    .line 642
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 644
    :cond_29
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 645
    move/from16 v19, v13

    move/from16 v20, v9

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a

    .line 646
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 649
    :cond_2a
    move-object/from16 v19, v14

    move-object/from16 v20, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2b

    .line 650
    move/from16 v19, v3

    if-eqz v19, :cond_2d

    .line 651
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    packed-switch v19, :pswitch_data_1

    .line 689
    :cond_2b
    :goto_d
    move-object/from16 v19, v14

    move-object/from16 v10, v19

    .line 617
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 629
    :cond_2c
    move/from16 v19, v5

    if-eqz v19, :cond_26

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_26

    .line 630
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    move/from16 v15, v19

    .line 631
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v19

    move/from16 v16, v19

    goto/16 :goto_c

    .line 653
    :pswitch_2
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 655
    goto :goto_d

    .line 657
    :pswitch_3
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 658
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 660
    goto/16 :goto_d

    .line 662
    :pswitch_4
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    goto/16 :goto_d

    .line 667
    :cond_2d
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v19

    packed-switch v19, :pswitch_data_2

    goto/16 :goto_d

    .line 669
    :pswitch_5
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 671
    goto/16 :goto_d

    .line 673
    :pswitch_6
    move/from16 v19, v7

    if-eqz v19, :cond_2e

    .line 674
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 675
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    goto/16 :goto_d

    .line 677
    :cond_2e
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 678
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    .line 681
    goto/16 :goto_d

    .line 683
    :pswitch_7
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v19

    goto/16 :goto_d

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 651
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 667
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 405
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .line 407
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    move v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v1, :cond_0

    .line 398
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .line 400
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    move v0, v1

    goto :goto_0
.end method

.method public measureMatchConstraints(I)V
    .locals 12

    .prologue
    .line 695
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    if-nez v6, :cond_0

    .line 720
    :goto_0
    return-void

    .line 698
    :cond_0
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    move v2, v6

    .line 699
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    div-int/2addr v6, v7

    move v3, v6

    .line 700
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 701
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move v7, v4

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v7}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 719
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->recomputeDimensions()V

    .line 720
    goto :goto_0

    .line 704
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    move v8, v4

    add-int/2addr v7, v8

    aget-object v6, v6, v7

    move-object v5, v6

    .line 705
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v6, :cond_4

    .line 706
    move-object v6, v5

    if-eqz v6, :cond_3

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3

    .line 707
    move-object v6, v5

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v6, :cond_3

    .line 708
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v9, v3

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 700
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 712
    :cond_4
    move-object v6, v5

    if-eqz v6, :cond_3

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3

    .line 713
    move-object v6, v5

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v6, :cond_3

    .line 714
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    move-object v7, v5

    move-object v8, v5

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v11, v3

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_2
.end method

.method public setStartIndex(I)V
    .locals 4

    .prologue
    .line 394
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    return-void
.end method

.method public setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V
    .locals 13

    .prologue
    .line 372
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v11, v0

    move v12, v1

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 373
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 374
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 375
    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 376
    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 377
    move-object v11, v0

    move v12, v6

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 378
    move-object v11, v0

    move v12, v7

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 379
    move-object v11, v0

    move v12, v8

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 380
    move-object v11, v0

    move v12, v9

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 381
    move-object v11, v0

    move v12, v10

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 382
    return-void
.end method
