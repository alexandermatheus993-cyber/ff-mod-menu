.class Lcom/freestyle/MainActivity$9$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freestyle/MainActivity$9;

.field private final synthetic val$img1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$9;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    iput-object p2, p0, Lcom/freestyle/MainActivity$9$1;->val$img1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/freestyle/MainActivity$9$1;)Lcom/freestyle/MainActivity$9;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    .line 462
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/MainActivity$9$1$1;

    iget-object v2, p0, Lcom/freestyle/MainActivity$9$1;->val$img1:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$9$1$1;-><init>(Lcom/freestyle/MainActivity$9$1;Landroid/widget/ImageView;)V

    invoke-static {v0, v1}, Lcom/freestyle/MainActivity;->access$1(Lcom/freestyle/MainActivity;Ljava/util/TimerTask;)V

    .line 473
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$2(Lcom/freestyle/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v1}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/freestyle/MainActivity;->access$3(Lcom/freestyle/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 474
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/MainActivity$9$1$2;

    iget-object v2, p0, Lcom/freestyle/MainActivity$9$1;->val$img1:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$9$1$2;-><init>(Lcom/freestyle/MainActivity$9$1;Landroid/widget/ImageView;)V

    invoke-static {v0, v1}, Lcom/freestyle/MainActivity;->access$1(Lcom/freestyle/MainActivity;Ljava/util/TimerTask;)V

    .line 485
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$2(Lcom/freestyle/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v1}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/freestyle/MainActivity;->access$3(Lcom/freestyle/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 486
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/MainActivity$9$1$3;

    iget-object v2, p0, Lcom/freestyle/MainActivity$9$1;->val$img1:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$9$1$3;-><init>(Lcom/freestyle/MainActivity$9$1;Landroid/widget/ImageView;)V

    invoke-static {v0, v1}, Lcom/freestyle/MainActivity;->access$1(Lcom/freestyle/MainActivity;Ljava/util/TimerTask;)V

    .line 497
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$2(Lcom/freestyle/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v1}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/freestyle/MainActivity;->access$3(Lcom/freestyle/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 498
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/MainActivity$9$1$4;

    iget-object v2, p0, Lcom/freestyle/MainActivity$9$1;->val$img1:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$9$1$4;-><init>(Lcom/freestyle/MainActivity$9$1;Landroid/widget/ImageView;)V

    invoke-static {v0, v1}, Lcom/freestyle/MainActivity;->access$1(Lcom/freestyle/MainActivity;Ljava/util/TimerTask;)V

    .line 509
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$2(Lcom/freestyle/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v1}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/freestyle/MainActivity;->access$3(Lcom/freestyle/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 510
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/MainActivity$9$1$5;

    iget-object v2, p0, Lcom/freestyle/MainActivity$9$1;->val$img1:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$9$1$5;-><init>(Lcom/freestyle/MainActivity$9$1;Landroid/widget/ImageView;)V

    invoke-static {v0, v1}, Lcom/freestyle/MainActivity;->access$1(Lcom/freestyle/MainActivity;Ljava/util/TimerTask;)V

    .line 521
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$2(Lcom/freestyle/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/MainActivity$9$1;->this$1:Lcom/freestyle/MainActivity$9;

    invoke-static {v1}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/freestyle/MainActivity;->access$3(Lcom/freestyle/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 522
    return-void
.end method
