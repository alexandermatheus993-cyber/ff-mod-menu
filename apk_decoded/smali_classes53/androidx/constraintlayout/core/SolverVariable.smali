.class public Landroidx/constraintlayout/core/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x9

.field public static final STRENGTH_BARRIER:I = 0x6

.field public static final STRENGTH_CENTERING:I = 0x7

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_FIXED:I = 0x8

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I

.field private static final VAR_USE_HASH:Z

.field private static uniqueConstantId:I

.field private static uniqueErrorId:I

.field private static uniqueId:I

.field private static uniqueSlackId:I

.field private static uniqueUnrestrictedId:I


# instance fields
.field public computedValue:F

.field definitionId:I

.field goalStrengthVector:[F

.field public id:I

.field public inGoal:Z

.field inRows:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/core/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field public isFinalValue:Z

.field isSynonym:Z

.field mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field synonym:I

.field synonymDelta:F

.field public usageInRowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueSlackId:I

    .line 45
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    .line 46
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueUnrestrictedId:I

    .line 47
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueConstantId:I

    .line 48
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueId:I

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 54
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 55
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 57
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 60
    move-object v3, v0

    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    .line 61
    move-object v3, v0

    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    .line 65
    move-object v3, v0

    const/16 v4, 0x10

    new-array v4, v4, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    .line 66
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    .line 67
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 69
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    .line 172
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->inRows:Ljava/util/HashSet;

    .line 130
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)V
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 54
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 55
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 57
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 60
    move-object v3, v0

    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    .line 61
    move-object v3, v0

    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    .line 65
    move-object v3, v0

    const/16 v4, 0x10

    new-array v4, v4, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    .line 66
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    .line 67
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 69
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    .line 172
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->inRows:Ljava/util/HashSet;

    .line 125
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    .line 126
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 127
    return-void
.end method

.method private static getUniqueName(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 114
    :goto_0
    return-object v0

    .line 106
    :cond_0
    sget-object v2, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/core/SolverVariable$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 116
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/SolverVariable$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 107
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/core/SolverVariable;->uniqueUnrestrictedId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/core/SolverVariable;->uniqueUnrestrictedId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/core/SolverVariable;->uniqueConstantId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/core/SolverVariable;->uniqueConstantId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 109
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/core/SolverVariable;->uniqueSlackId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/core/SolverVariable;->uniqueSlackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 111
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 114
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/core/SolverVariable;->uniqueId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/core/SolverVariable;->uniqueId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static increaseErrorId()V
    .locals 2

    .prologue
    .line 99
    sget v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    .line 100
    return-void
.end method


# virtual methods
.method public final addToRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 8

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    if-ge v3, v4, :cond_1

    .line 179
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 189
    :goto_1
    return-void

    .line 178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 184
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    .line 186
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 187
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    .line 189
    goto :goto_1
.end method

.method clearStrengths()V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 138
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 11

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move v2, v5

    .line 196
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 197
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 198
    move v5, v3

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 199
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 201
    :cond_0
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    .line 206
    :goto_2
    return-void

    .line 196
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_2
    goto :goto_2
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 257
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    .line 258
    move-object v3, v0

    sget-object v4, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 259
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    .line 260
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 261
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 262
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 263
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 264
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 265
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 266
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    .line 270
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move v1, v3

    .line 271
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 272
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    .line 276
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 277
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    .line 278
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 279
    return-void
.end method

.method public setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V
    .locals 9

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 228
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    .line 229
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 230
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 231
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    .line 232
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move v3, v5

    .line 233
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 234
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 235
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v1

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    .line 238
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSynonym(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;F)V
    .locals 10

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    .line 245
    move-object v6, v0

    move-object v7, v2

    iget v7, v7, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iput v7, v6, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    .line 246
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    .line 247
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move v4, v6

    .line 248
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 249
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 250
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v1

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    .line 249
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 252
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    .line 253
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/constraintlayout/core/LinearSystem;->displayReadableRows()V

    .line 254
    return-void
.end method

.method public setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 296
    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 143
    move-object v0, p0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 144
    const/4 v5, 0x0

    move v2, v5

    .line 145
    const/4 v5, 0x1

    move v3, v5

    .line 146
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    move v7, v4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 148
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    move v6, v4

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 149
    const/4 v5, 0x0

    move v2, v5

    .line 153
    :cond_0
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    move v6, v4

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 154
    const/4 v5, 0x0

    move v3, v5

    .line 156
    :cond_1
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 146
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    move v6, v4

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 151
    const/4 v5, 0x1

    move v2, v5

    goto :goto_1

    .line 159
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_2

    .line 162
    :cond_4
    move v5, v2

    if-eqz v5, :cond_5

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (-)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 165
    :cond_5
    move v5, v3

    if-eqz v5, :cond_6

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (*)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 169
    :cond_6
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 303
    move-object v0, p0

    const-string v2, ""

    move-object v1, v2

    .line 313
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 319
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 316
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/core/SolverVariable;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public final updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 9

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move v3, v5

    .line 216
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 217
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/core/ArrayRow;->updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    .line 221
    return-void
.end method
