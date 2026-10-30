.class Lcom/freestyle/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity;->_llucas7e7()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freestyle/MainActivity;

.field private final synthetic val$img:Landroid/widget/ImageView;

.field private final synthetic val$nao:Landroid/widget/Button;

.field private final synthetic val$sim:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/freestyle/MainActivity$7;->this$0:Lcom/freestyle/MainActivity;

    iput-object p2, p0, Lcom/freestyle/MainActivity$7;->val$img:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/freestyle/MainActivity$7;->val$sim:Landroid/widget/Button;

    iput-object p4, p0, Lcom/freestyle/MainActivity$7;->val$nao:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/freestyle/MainActivity$7;)Lcom/freestyle/MainActivity;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/freestyle/MainActivity$7;->this$0:Lcom/freestyle/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 421
    iget-object v0, p0, Lcom/freestyle/MainActivity$7;->this$0:Lcom/freestyle/MainActivity;

    new-instance v1, Lcom/freestyle/MainActivity$7$1;

    iget-object v2, p0, Lcom/freestyle/MainActivity$7;->val$img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/freestyle/MainActivity$7;->val$sim:Landroid/widget/Button;

    iget-object v4, p0, Lcom/freestyle/MainActivity$7;->val$nao:Landroid/widget/Button;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/freestyle/MainActivity$7$1;-><init>(Lcom/freestyle/MainActivity$7;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-static {v0, v1}, Lcom/freestyle/MainActivity;->access$1(Lcom/freestyle/MainActivity;Ljava/util/TimerTask;)V

    .line 434
    iget-object v0, p0, Lcom/freestyle/MainActivity$7;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$2(Lcom/freestyle/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/MainActivity$7;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v1}, Lcom/freestyle/MainActivity;->access$3(Lcom/freestyle/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 435
    return-void
.end method
