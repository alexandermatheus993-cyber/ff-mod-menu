.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mOperation:Landroidx/work/impl/OperationImpl;

.field private final mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 6
    .param p1    # Landroidx/work/impl/WorkContinuationImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 76
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 77
    move-object v2, v0

    new-instance v3, Landroidx/work/impl/OperationImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/work/impl/OperationImpl;-><init>()V

    iput-object v3, v2, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    .line 78
    return-void
.end method

.method private static enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 8
    .param p0    # Landroidx/work/impl/WorkContinuationImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 158
    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v3

    move-object v1, v3

    .line 160
    move-object v3, v0

    .line 161
    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v3

    move-object v4, v0

    .line 162
    invoke-virtual {v4}, Landroidx/work/impl/WorkContinuationImpl;->getWork()Ljava/util/List;

    move-result-object v4

    move-object v5, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 163
    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v6, v0

    .line 164
    invoke-virtual {v6}, Landroidx/work/impl/WorkContinuationImpl;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    .line 165
    invoke-virtual {v7}, Landroidx/work/impl/WorkContinuationImpl;->getExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;

    move-result-object v7

    .line 160
    invoke-static {v3, v4, v5, v6, v7}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z

    move-result v3

    move v2, v3

    .line 167
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->markEnqueued()V

    .line 168
    move v3, v2

    move v0, v3

    return v0
.end method

.method private static enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z
    .locals 35
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List",
            "<+",
            "Landroidx/work/WorkRequest;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 183
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/16 v27, 0x0

    move/from16 v9, v27

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v10, v27

    .line 186
    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v27

    move-object/from16 v12, v27

    .line 188
    move-object/from16 v27, v6

    if-eqz v27, :cond_0

    move-object/from16 v27, v6

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_0

    const/16 v27, 0x1

    :goto_0
    move/from16 v13, v27

    .line 189
    const/16 v27, 0x1

    move/from16 v14, v27

    .line 190
    const/16 v27, 0x0

    move/from16 v15, v27

    .line 191
    const/16 v27, 0x0

    move/from16 v16, v27

    .line 193
    move/from16 v27, v13

    if-eqz v27, :cond_5

    .line 197
    move-object/from16 v27, v6

    move-object/from16 v17, v27

    move-object/from16 v27, v17

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v18, v27

    const/16 v27, 0x0

    move/from16 v19, v27

    :goto_1
    move/from16 v27, v19

    move/from16 v28, v18

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    move-object/from16 v27, v17

    move/from16 v28, v19

    aget-object v27, v27, v28

    move-object/from16 v20, v27

    .line 198
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v27

    move-object/from16 v28, v20

    invoke-interface/range {v27 .. v28}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v27

    move-object/from16 v21, v27

    .line 199
    move-object/from16 v27, v21

    if-nez v27, :cond_1

    .line 200
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v27

    sget-object v28, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const-string v29, "Prerequisite %s doesn\'t exist; not enqueuing"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v34, v30

    move-object/from16 v30, v34

    move-object/from16 v31, v34

    const/16 v32, 0x0

    move-object/from16 v33, v20

    aput-object v33, v31, v32

    .line 201
    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Throwable;

    move-object/from16 v30, v0

    .line 200
    invoke-virtual/range {v27 .. v30}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 202
    const/16 v27, 0x0

    move/from16 v4, v27

    .line 326
    :goto_2
    return v4

    .line 188
    :cond_0
    const/16 v27, 0x0

    goto :goto_0

    .line 205
    :cond_1
    move-object/from16 v27, v21

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v27, v0

    move-object/from16 v22, v27

    .line 206
    move/from16 v27, v14

    move-object/from16 v28, v22

    sget-object v29, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3

    const/16 v28, 0x1

    :goto_3
    and-int v27, v27, v28

    move/from16 v14, v27

    .line 207
    move-object/from16 v27, v22

    sget-object v28, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 208
    const/16 v27, 0x1

    move/from16 v15, v27

    .line 197
    :cond_2
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 206
    :cond_3
    const/16 v28, 0x0

    goto :goto_3

    .line 209
    :cond_4
    move-object/from16 v27, v22

    sget-object v28, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 210
    const/16 v27, 0x1

    move/from16 v16, v27

    goto :goto_4

    .line 215
    :cond_5
    move-object/from16 v27, v7

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_8

    const/16 v27, 0x1

    :goto_5
    move/from16 v17, v27

    .line 219
    move/from16 v27, v17

    if-eqz v27, :cond_9

    move/from16 v27, v13

    if-nez v27, :cond_9

    const/16 v27, 0x1

    :goto_6
    move/from16 v18, v27

    .line 220
    move/from16 v27, v18

    if-eqz v27, :cond_d

    .line 222
    move-object/from16 v27, v12

    .line 223
    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v27

    move-object/from16 v28, v7

    invoke-interface/range {v27 .. v28}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v19, v27

    .line 225
    move-object/from16 v27, v19

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_d

    .line 227
    move-object/from16 v27, v8

    sget-object v28, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 228
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v27

    move-object/from16 v20, v27

    .line 229
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v27

    .line 230
    move-object/from16 v27, v19

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v22, v27

    :goto_7
    move-object/from16 v27, v22

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    move-object/from16 v27, v22

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/work/impl/model/WorkSpec$IdAndState;

    move-object/from16 v23, v27

    .line 231
    move-object/from16 v27, v20

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroidx/work/impl/model/DependencyDao;->hasDependents(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 232
    move/from16 v27, v14

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v28, v0

    sget-object v29, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_a

    const/16 v28, 0x1

    :goto_8
    and-int v27, v27, v28

    move/from16 v14, v27

    .line 233
    move-object/from16 v27, v23

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v27, v0

    sget-object v28, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 234
    const/16 v27, 0x1

    move/from16 v15, v27

    .line 238
    :cond_6
    :goto_9
    move-object/from16 v27, v21

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v27

    .line 240
    :cond_7
    goto :goto_7

    .line 215
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 219
    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 232
    :cond_a
    const/16 v28, 0x0

    goto :goto_8

    .line 235
    :cond_b
    move-object/from16 v27, v23

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v27, v0

    sget-object v28, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 236
    const/16 v27, 0x1

    move/from16 v16, v27

    goto :goto_9

    .line 241
    :cond_c
    move-object/from16 v27, v21

    move-object/from16 v28, v6

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Ljava/lang/String;

    move-object/from16 v6, v27

    .line 242
    move-object/from16 v27, v6

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_10

    const/16 v27, 0x1

    :goto_a
    move/from16 v13, v27

    .line 274
    :cond_d
    move-object/from16 v27, v5

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v19, v27

    :goto_b
    move-object/from16 v27, v19

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1d

    move-object/from16 v27, v19

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/work/WorkRequest;

    move-object/from16 v20, v27

    .line 275
    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v27

    move-object/from16 v21, v27

    .line 277
    move/from16 v27, v13

    if-eqz v27, :cond_17

    move/from16 v27, v14

    if-nez v27, :cond_17

    .line 278
    move/from16 v27, v15

    if-eqz v27, :cond_15

    .line 279
    move-object/from16 v27, v21

    sget-object v28, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 296
    :goto_c
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x17

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_19

    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x19

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_19

    .line 298
    move-object/from16 v27, v21

    invoke-static/range {v27 .. v27}, Landroidx/work/impl/utils/EnqueueRunnable;->tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    .line 305
    :cond_e
    :goto_d
    move-object/from16 v27, v21

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v27, v0

    sget-object v28, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 306
    const/16 v27, 0x1

    move/from16 v9, v27

    .line 309
    :cond_f
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v27

    move-object/from16 v28, v21

    invoke-interface/range {v27 .. v28}, Landroidx/work/impl/model/WorkSpecDao;->insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    .line 311
    move/from16 v27, v13

    if-eqz v27, :cond_1a

    .line 312
    move-object/from16 v27, v6

    move-object/from16 v22, v27

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v23, v27

    const/16 v27, 0x0

    move/from16 v24, v27

    :goto_e
    move/from16 v27, v24

    move/from16 v28, v23

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1a

    move-object/from16 v27, v22

    move/from16 v28, v24

    aget-object v27, v27, v28

    move-object/from16 v25, v27

    .line 313
    new-instance v27, Landroidx/work/impl/model/Dependency;

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    move-object/from16 v29, v20

    invoke-virtual/range {v29 .. v29}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v25

    invoke-direct/range {v28 .. v30}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v26, v27

    .line 314
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v27

    move-object/from16 v28, v26

    invoke-interface/range {v27 .. v28}, Landroidx/work/impl/model/DependencyDao;->insertDependency(Landroidx/work/impl/model/Dependency;)V

    .line 312
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 242
    :cond_10
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 246
    :cond_11
    move-object/from16 v27, v8

    sget-object v28, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 247
    move-object/from16 v27, v19

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v20, v27

    :goto_f
    move-object/from16 v27, v20

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_14

    move-object/from16 v27, v20

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/work/impl/model/WorkSpec$IdAndState;

    move-object/from16 v21, v27

    .line 248
    move-object/from16 v27, v21

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v27, v0

    sget-object v28, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_12

    move-object/from16 v27, v21

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v27, v0

    sget-object v28, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 249
    :cond_12
    const/16 v27, 0x0

    move/from16 v4, v27

    goto/16 :goto_2

    .line 251
    :cond_13
    goto :goto_f

    .line 259
    :cond_14
    move-object/from16 v27, v7

    move-object/from16 v28, v4

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;Z)Landroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 263
    const/16 v27, 0x1

    move/from16 v9, v27

    .line 266
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v27

    move-object/from16 v20, v27

    .line 267
    move-object/from16 v27, v19

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v21, v27

    :goto_10
    move-object/from16 v27, v21

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_d

    move-object/from16 v27, v21

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/work/impl/model/WorkSpec$IdAndState;

    move-object/from16 v22, v27

    .line 268
    move-object/from16 v27, v20

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    .line 269
    goto :goto_10

    .line 280
    :cond_15
    move/from16 v27, v16

    if-eqz v27, :cond_16

    .line 281
    move-object/from16 v27, v21

    sget-object v28, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto/16 :goto_c

    .line 283
    :cond_16
    move-object/from16 v27, v21

    sget-object v28, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto/16 :goto_c

    .line 289
    :cond_17
    move-object/from16 v27, v21

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v27

    if-nez v27, :cond_18

    .line 290
    move-object/from16 v27, v21

    move-wide/from16 v28, v10

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    goto/16 :goto_c

    .line 292
    :cond_18
    move-object/from16 v27, v21

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    goto/16 :goto_c

    .line 299
    :cond_19
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x16

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_e

    move-object/from16 v27, v4

    const-string v28, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 300
    invoke-static/range {v27 .. v28}, Landroidx/work/impl/utils/EnqueueRunnable;->usesScheduler(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 301
    move-object/from16 v27, v21

    invoke-static/range {v27 .. v27}, Landroidx/work/impl/utils/EnqueueRunnable;->tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    goto/16 :goto_d

    .line 318
    :cond_1a
    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Landroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v22, v27

    :goto_11
    move-object/from16 v27, v22

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v27, v22

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v23, v27

    .line 319
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v27

    new-instance v28, Landroidx/work/impl/model/WorkTag;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    move-object/from16 v30, v23

    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v27 .. v28}, Landroidx/work/impl/model/WorkTagDao;->insert(Landroidx/work/impl/model/WorkTag;)V

    .line 320
    goto :goto_11

    .line 322
    :cond_1b
    move/from16 v27, v17

    if-eqz v27, :cond_1c

    .line 323
    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v27

    new-instance v28, Landroidx/work/impl/model/WorkName;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    move-object/from16 v30, v7

    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v27 .. v28}, Landroidx/work/impl/model/WorkNameDao;->insert(Landroidx/work/impl/model/WorkName;)V

    .line 325
    :cond_1c
    goto/16 :goto_b

    .line 326
    :cond_1d
    move/from16 v27, v9

    move/from16 v4, v27

    goto/16 :goto_2
.end method

.method private static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 14
    .param p0    # Landroidx/work/impl/WorkContinuationImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 140
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 141
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 142
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/WorkContinuationImpl;

    move-object v4, v5

    .line 145
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/work/impl/WorkContinuationImpl;->isEnqueued()Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    move v5, v1

    move-object v6, v4

    invoke-static {v6}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v6

    or-int/2addr v5, v6

    move v1, v5

    .line 151
    :goto_1
    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const-string v7, "Already enqueued work ids (%s)."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const-string v11, ", "

    move-object v12, v4

    .line 149
    invoke-virtual {v12}, Landroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 148
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    .line 153
    :cond_1
    move v5, v1

    move-object v6, v0

    invoke-static {v6}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v6

    or-int/2addr v5, v6

    move v1, v5

    .line 154
    move v5, v1

    move v0, v5

    return v0
.end method

.method private static tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 8

    .prologue
    .line 332
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move-object v1, v4

    .line 333
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object v2, v4

    .line 335
    new-instance v4, Landroidx/work/Data$Builder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/work/Data$Builder;-><init>()V

    move-object v3, v4

    .line 337
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v4, v5}, Landroidx/work/Data$Builder;->putAll(Landroidx/work/Data;)Landroidx/work/Data$Builder;

    move-result-object v4

    const-string v5, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    move-object v6, v2

    .line 338
    invoke-virtual {v4, v5, v6}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v4

    .line 339
    move-object v4, v0

    const-class v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 340
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v5

    iput-object v5, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 342
    :cond_1
    return-void
.end method

.method private static usesScheduler(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Z
    .locals 7
    .param p0    # Landroidx/work/impl/WorkManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v2, v5

    .line 354
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/Scheduler;

    move-object v4, v5

    .line 355
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 356
    const/4 v5, 0x1

    move v0, v5

    .line 361
    :goto_1
    return v0

    .line 358
    :cond_0
    goto :goto_0

    .line 359
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 360
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 361
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public addToDatabase()Z
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v6}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v6

    move-object v1, v6

    .line 115
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v6

    move-object v2, v6

    .line 116
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 118
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v6}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v6

    move v3, v6

    .line 119
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    move v6, v3

    move v4, v6

    .line 122
    move-object v6, v2

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 120
    move v6, v4

    move v0, v6

    return v0

    .line 122
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 123
    move-object v6, v5

    throw v6
.end method

.method public getOperation()Landroidx/work/Operation;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    move-object v0, v1

    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 83
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string v5, "WorkContinuation has cycles (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    aput-object v9, v7, v8

    .line 85
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 97
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    new-instance v4, Landroidx/work/Operation$State$FAILURE;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V

    .line 99
    :goto_0
    return-void

    .line 87
    :cond_0
    move-object v3, v0

    :try_start_1
    invoke-virtual {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->addToDatabase()Z

    move-result v3

    move v1, v3

    .line 88
    move v3, v1

    if-eqz v3, :cond_1

    .line 90
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    .line 91
    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 92
    move-object v3, v2

    const-class v4, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 93
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->scheduleWorkInBackground()V

    .line 95
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    sget-object v4, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v3, v4}, Landroidx/work/impl/OperationImpl;->setState(Landroidx/work/Operation$State;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    goto :goto_0
.end method

.method public scheduleWorkInBackground()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v2

    move-object v1, v2

    .line 132
    move-object v2, v1

    .line 133
    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v2

    move-object v3, v1

    .line 134
    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v3

    move-object v4, v1

    .line 135
    invoke-virtual {v4}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v4

    .line 132
    invoke-static {v2, v3, v4}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 136
    return-void
.end method
