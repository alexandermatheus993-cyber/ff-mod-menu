.class Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;
.super Ljava/lang/Object;
.source "RunGroup.java"


# static fields
.field public static final BASELINE:I = 0x2

.field public static final END:I = 0x1

.field public static final START:I

.field public static index:I


# instance fields
.field direction:I

.field public dual:Z

.field firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

.field groupIndex:I

.field lastRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

.field public position:I

.field runs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->position:I

    .line 34
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->dual:Z

    .line 36
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 37
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 38
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    .line 40
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->groupIndex:I

    .line 44
    move-object v3, v0

    sget v4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->index:I

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->groupIndex:I

    .line 45
    sget v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->index:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->index:I

    .line 46
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 47
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 48
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->direction:I

    .line 49
    return-void
.end method

.method private defineTerminalWidget(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)Z
    .locals 12

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move v10, v2

    aget-boolean v9, v9, v10

    if-nez v9, :cond_0

    .line 187
    const/4 v9, 0x0

    move v0, v9

    .line 231
    :goto_0
    return v0

    .line 189
    :cond_0
    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_1
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    move-object v4, v9

    .line 190
    move-object v9, v4

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v9, :cond_3

    .line 191
    move-object v9, v4

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v5, v9

    .line 192
    move-object v9, v5

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object v10, v1

    if-ne v9, v10, :cond_1

    .line 193
    goto :goto_1

    .line 195
    :cond_1
    move-object v9, v5

    move-object v10, v5

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v9, v10, :cond_3

    .line 196
    move-object v9, v1

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    if-eqz v9, :cond_4

    .line 197
    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    move-object v6, v9

    .line 198
    move-object v9, v6

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_2
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object v8, v9

    .line 199
    move-object v9, v0

    move-object v10, v8

    move v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)Z

    move-result v9

    .line 200
    goto :goto_2

    .line 206
    :cond_2
    :goto_3
    move-object v9, v0

    move-object v10, v5

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)Z

    move-result v9

    .line 209
    :cond_3
    goto :goto_1

    .line 202
    :cond_4
    move-object v9, v1

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;

    if-nez v9, :cond_2

    .line 203
    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move v10, v2

    const/4 v11, 0x0

    aput-boolean v11, v9, v10

    goto :goto_3

    .line 210
    :cond_5
    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_4
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    move-object v4, v9

    .line 211
    move-object v9, v4

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v9, :cond_8

    .line 212
    move-object v9, v4

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v5, v9

    .line 213
    move-object v9, v5

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object v10, v1

    if-ne v9, v10, :cond_6

    .line 214
    goto :goto_4

    .line 216
    :cond_6
    move-object v9, v5

    move-object v10, v5

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v9, v10, :cond_8

    .line 217
    move-object v9, v1

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    if-eqz v9, :cond_9

    .line 218
    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    move-object v6, v9

    .line 219
    move-object v9, v6

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_5
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object v8, v9

    .line 220
    move-object v9, v0

    move-object v10, v8

    move v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)Z

    move-result v9

    .line 221
    goto :goto_5

    .line 227
    :cond_7
    :goto_6
    move-object v9, v0

    move-object v10, v5

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move v11, v2

    invoke-direct {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)Z

    move-result v9

    .line 230
    :cond_8
    goto :goto_4

    .line 223
    :cond_9
    move-object v9, v1

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;

    if-nez v9, :cond_7

    .line 224
    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    move v10, v2

    const/4 v11, 0x0

    aput-boolean v11, v9, v10

    goto :goto_6

    .line 231
    :cond_a
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0
.end method

.method private traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J
    .locals 22

    .prologue
    .line 89
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object v14, v4

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object v7, v14

    .line 90
    move-object v14, v7

    instance-of v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;

    if-eqz v14, :cond_0

    .line 91
    move-wide v14, v5

    move-wide v3, v14

    .line 117
    :goto_0
    return-wide v3

    .line 93
    :cond_0
    move-wide v14, v5

    move-wide v8, v14

    .line 97
    move-object v14, v4

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v10, v14

    .line 98
    const/4 v14, 0x0

    move v11, v14

    :goto_1
    move v14, v11

    move v15, v10

    if-ge v14, v15, :cond_3

    .line 99
    move-object v14, v4

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move v15, v11

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    move-object v12, v14

    .line 100
    move-object v14, v12

    instance-of v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v14, :cond_1

    .line 101
    move-object v14, v12

    check-cast v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v13, v14

    .line 102
    move-object v14, v13

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object v15, v7

    if-ne v14, v15, :cond_2

    .line 98
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 106
    :cond_2
    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v13

    move-wide/from16 v18, v5

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    invoke-direct/range {v16 .. v19}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move-wide v8, v14

    goto :goto_2

    .line 110
    :cond_3
    move-object v14, v4

    move-object v15, v7

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v14, v15, :cond_4

    .line 112
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v14

    move-wide v11, v14

    .line 113
    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v17, v0

    move-wide/from16 v18, v5

    move-wide/from16 v20, v11

    sub-long v18, v18, v20

    invoke-direct/range {v16 .. v19}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move-wide v8, v14

    .line 114
    move-wide v14, v8

    move-wide/from16 v16, v5

    move-wide/from16 v18, v11

    sub-long v16, v16, v18

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move-wide v8, v14

    .line 117
    :cond_4
    move-wide v14, v8

    move-wide v3, v14

    goto/16 :goto_0
.end method

.method private traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J
    .locals 22

    .prologue
    .line 57
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object v14, v4

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object v7, v14

    .line 58
    move-object v14, v7

    instance-of v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;

    if-eqz v14, :cond_0

    .line 59
    move-wide v14, v5

    move-wide v3, v14

    .line 85
    :goto_0
    return-wide v3

    .line 61
    :cond_0
    move-wide v14, v5

    move-wide v8, v14

    .line 65
    move-object v14, v4

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v10, v14

    .line 66
    const/4 v14, 0x0

    move v11, v14

    :goto_1
    move v14, v11

    move v15, v10

    if-ge v14, v15, :cond_3

    .line 67
    move-object v14, v4

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    move v15, v11

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    move-object v12, v14

    .line 68
    move-object v14, v12

    instance-of v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-eqz v14, :cond_1

    .line 69
    move-object v14, v12

    check-cast v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object v13, v14

    .line 70
    move-object v14, v13

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object v15, v7

    if-ne v14, v15, :cond_2

    .line 66
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 74
    :cond_2
    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v13

    move-wide/from16 v18, v5

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    invoke-direct/range {v16 .. v19}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-wide v8, v14

    goto :goto_2

    .line 78
    :cond_3
    move-object v14, v4

    move-object v15, v7

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    if-ne v14, v15, :cond_4

    .line 80
    move-object v14, v7

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v14

    move-wide v11, v14

    .line 81
    move-wide v14, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v17, v0

    move-wide/from16 v18, v5

    move-wide/from16 v20, v11

    add-long v18, v18, v20

    invoke-direct/range {v16 .. v19}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-wide v8, v14

    .line 82
    move-wide v14, v8

    move-wide/from16 v16, v5

    move-wide/from16 v18, v11

    add-long v16, v16, v18

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-wide v8, v14

    .line 85
    :cond_4
    move-wide v14, v8

    move-wide v3, v14

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 54
    return-void
.end method

.method public computeWrapSize(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;I)J
    .locals 28

    .prologue
    .line 121
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 122
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    check-cast v24, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    move-object/from16 v5, v24

    .line 123
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    move/from16 v24, v0

    move/from16 v25, v4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 124
    const-wide/16 v24, 0x0

    move-wide/from16 v2, v24

    .line 182
    :goto_0
    return-wide v2

    .line 137
    :cond_0
    move/from16 v24, v4

    if-nez v24, :cond_6

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    :goto_1
    move-object/from16 v5, v24

    .line 138
    move/from16 v24, v4

    if-nez v24, :cond_7

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    :goto_2
    move-object/from16 v6, v24

    .line 140
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v7, v24

    .line 141
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v25, v6

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v8, v24

    .line 143
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v24

    move-wide/from16 v9, v24

    .line 145
    move/from16 v24, v7

    if-eqz v24, :cond_8

    move/from16 v24, v8

    if-eqz v24, :cond_8

    .line 146
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    invoke-direct/range {v24 .. v27}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v24

    move-wide/from16 v11, v24

    .line 147
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    invoke-direct/range {v24 .. v27}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v24

    move-wide/from16 v13, v24

    .line 150
    move-wide/from16 v24, v11

    move-wide/from16 v26, v9

    sub-long v24, v24, v26

    move-wide/from16 v15, v24

    .line 151
    move-wide/from16 v24, v15

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_1

    .line 152
    move-wide/from16 v24, v15

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v15, v24

    .line 154
    :cond_1
    move-wide/from16 v24, v13

    move-wide/from16 v0, v24

    neg-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v9

    sub-long v24, v24, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v17, v24

    .line 155
    move-wide/from16 v24, v17

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_2

    .line 156
    move-wide/from16 v24, v17

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v17, v24

    .line 158
    :cond_2
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v24, v0

    move/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v24

    move/from16 v19, v24

    .line 159
    const-wide/16 v24, 0x0

    move-wide/from16 v20, v24

    .line 160
    move/from16 v24, v19

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_3

    .line 161
    move-wide/from16 v24, v17

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v19

    div-float v24, v24, v25

    move-wide/from16 v25, v15

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v27, v19

    sub-float v26, v26, v27

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v20, v24

    .line 164
    :cond_3
    const/high16 v24, 0x3f000000    # 0.5f

    move-wide/from16 v25, v20

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v19

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v17, v24

    .line 165
    const/high16 v24, 0x3f000000    # 0.5f

    move-wide/from16 v25, v20

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v27, v19

    sub-float v26, v26, v27

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v15, v24

    .line 167
    move-wide/from16 v24, v17

    move-wide/from16 v26, v9

    add-long v24, v24, v26

    move-wide/from16 v26, v15

    add-long v24, v24, v26

    move-wide/from16 v22, v24

    .line 168
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v22

    add-long v24, v24, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v9, v24

    .line 182
    :goto_3
    move-wide/from16 v24, v9

    move-wide/from16 v2, v24

    goto/16 :goto_0

    .line 127
    :cond_4
    move/from16 v24, v4

    if-nez v24, :cond_5

    .line 128
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 129
    const-wide/16 v24, 0x0

    move-wide/from16 v2, v24

    goto/16 :goto_0

    .line 132
    :cond_5
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 133
    const-wide/16 v24, 0x0

    move-wide/from16 v2, v24

    goto/16 :goto_0

    .line 137
    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    goto/16 :goto_1

    .line 138
    :cond_7
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    goto/16 :goto_2

    .line 170
    :cond_8
    move/from16 v24, v7

    if-eqz v24, :cond_9

    .line 171
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-direct/range {v24 .. v27}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v24

    move-wide/from16 v11, v24

    .line 172
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v9

    add-long v24, v24, v26

    move-wide/from16 v13, v24

    .line 173
    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v9, v24

    .line 174
    goto/16 :goto_3

    :cond_9
    move/from16 v24, v8

    if-eqz v24, :cond_a

    .line 175
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-direct/range {v24 .. v27}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;J)J

    move-result-wide v24

    move-wide/from16 v11, v24

    .line 176
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v9

    add-long v24, v24, v26

    move-wide/from16 v13, v24

    .line 177
    move-wide/from16 v24, v11

    move-wide/from16 v0, v24

    neg-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v13

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v9, v24

    .line 178
    goto/16 :goto_3

    .line 179
    :cond_a
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v9, v24

    goto/16 :goto_3
.end method

.method public defineTerminalWidgets(ZZ)V
    .locals 6

    .prologue
    .line 236
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v3, :cond_0

    .line 237
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)Z

    move-result v3

    .line 239
    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v3, :cond_1

    .line 240
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;I)Z

    move-result v3

    .line 242
    :cond_1
    return-void
.end method
