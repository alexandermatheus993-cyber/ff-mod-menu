.class final Landroidx/core/view/ViewGroupKt$descendants$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ViewGroup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Lkotlin/sequences/SequenceScope",
        "<-",
        "Landroid/view/View;",
        ">;",
        "Lkotlin/coroutines/Continuation",
        "<-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewGroup.kt\nandroidx/core/view/ViewGroupKt$descendants$1\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,147:1\n54#2,4:148\n*E\n*S KotlinDebug\n*F\n+ 1 ViewGroup.kt\nandroidx/core/view/ViewGroupKt$descendants$1\n*L\n96#1,4:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Landroid/view/View;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.core.view.ViewGroupKt$descendants$1"
    f = "ViewGroup.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x61,
        0x63
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "$this$forEach$iv",
        "child",
        "index$iv",
        "$this$sequence",
        "$this$forEach$iv",
        "index$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $this_descendants:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    move-object v3, v0

    const/4 v4, 0x2

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation",
            "<*>;)",
            "Lkotlin/coroutines/Continuation",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    const-string v5, "completion"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/core/view/ViewGroupKt$descendants$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    move-object v6, v1

    iput-object v6, v5, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/ViewGroupKt$descendants$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    check-cast v3, Landroidx/core/view/ViewGroupKt$descendants$1;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewGroupKt$descendants$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 95
    move-object v9, v10

    move-object v10, v0

    iget v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    packed-switch v10, :pswitch_data_0

    .line 102
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 95
    :pswitch_0
    move-object v10, v1

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/sequences/SequenceScope;

    move-object v2, v10

    .line 96
    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    move-object v3, v10

    const/4 v10, 0x0

    move v4, v10

    .line 148
    const/4 v10, 0x0

    move v5, v10

    move-object v10, v3

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    move v6, v10

    :goto_0
    move v10, v5

    move v11, v6

    if-ge v10, v11, :cond_2

    .line 149
    move-object v10, v3

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "getChildAt(index)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v10

    const/4 v10, 0x0

    move v8, v10

    .line 97
    move-object v10, v2

    move-object v11, v7

    move-object v12, v0

    move-object v13, v0

    move-object v14, v2

    iput-object v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    move-object v13, v0

    move-object v14, v3

    iput-object v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    move-object v13, v0

    move-object v14, v7

    iput-object v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    move-object v13, v0

    move v14, v5

    iput v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    move-object v13, v0

    move v14, v6

    iput v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    move-object v13, v0

    const/4 v14, 0x1

    iput v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    invoke-virtual {v10, v11, v12}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v9

    if-ne v11, v12, :cond_0

    .line 95
    move-object v11, v9

    move-object v0, v11

    .line 102
    :goto_1
    return-object v0

    .line 95
    :pswitch_1
    const/4 v10, 0x0

    move v4, v10

    const/4 v10, 0x0

    move v8, v10

    move-object v10, v0

    iget v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    move v6, v10

    move-object v10, v0

    iget v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    move v5, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    move-object v7, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    check-cast v10, Landroid/view/ViewGroup;

    move-object v3, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/sequences/SequenceScope;

    move-object v2, v10

    move-object v10, v1

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v1

    .line 98
    :cond_0
    move-object v10, v7

    instance-of v10, v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_1

    .line 99
    move-object v10, v2

    move-object v11, v7

    check-cast v11, Landroid/view/ViewGroup;

    invoke-static {v11}, Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v11

    move-object v12, v0

    move-object v13, v0

    move-object v14, v2

    iput-object v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    move-object v13, v0

    move-object v14, v3

    iput-object v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    move-object v13, v0

    move v14, v5

    iput v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    move-object v13, v0

    move v14, v6

    iput v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    move-object v13, v0

    const/4 v14, 0x2

    iput v14, v13, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    invoke-virtual {v10, v11, v12}, Lkotlin/sequences/SequenceScope;->yieldAll(Lkotlin/sequences/Sequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v9

    if-ne v11, v12, :cond_1

    .line 95
    move-object v11, v9

    move-object v0, v11

    goto :goto_1

    :pswitch_2
    const/4 v10, 0x0

    move v4, v10

    const/4 v10, 0x0

    move v8, v10

    move-object v10, v0

    iget v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    move v6, v10

    move-object v10, v0

    iget v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    move v5, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    check-cast v10, Landroid/view/ViewGroup;

    move-object v3, v10

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/sequences/SequenceScope;

    move-object v2, v10

    move-object v10, v1

    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v1

    .line 148
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 151
    :cond_2
    nop

    .line 102
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v10

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
