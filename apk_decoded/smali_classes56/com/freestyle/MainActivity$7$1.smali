.class Lcom/freestyle/MainActivity$7$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freestyle/MainActivity$7;

.field private final synthetic val$img:Landroid/widget/ImageView;

.field private final synthetic val$nao:Landroid/widget/Button;

.field private final synthetic val$sim:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$7;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/freestyle/MainActivity$7$1;->this$1:Lcom/freestyle/MainActivity$7;

    iput-object p2, p0, Lcom/freestyle/MainActivity$7$1;->val$img:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/freestyle/MainActivity$7$1;->val$sim:Landroid/widget/Button;

    iput-object p4, p0, Lcom/freestyle/MainActivity$7$1;->val$nao:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 424
    iget-object v0, p0, Lcom/freestyle/MainActivity$7$1;->this$1:Lcom/freestyle/MainActivity$7;

    invoke-static {v0}, Lcom/freestyle/MainActivity$7;->access$0(Lcom/freestyle/MainActivity$7;)Lcom/freestyle/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/MainActivity$7$1$1;

    iget-object v2, p0, Lcom/freestyle/MainActivity$7$1;->val$img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/freestyle/MainActivity$7$1;->val$sim:Landroid/widget/Button;

    iget-object v4, p0, Lcom/freestyle/MainActivity$7$1;->val$nao:Landroid/widget/Button;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/freestyle/MainActivity$7$1$1;-><init>(Lcom/freestyle/MainActivity$7$1;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Lcom/freestyle/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method
