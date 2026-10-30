.class Lcom/freestyle/MainActivity$9$1$5;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/freestyle/MainActivity$9$1;

.field private final synthetic val$img1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$9$1;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/freestyle/MainActivity$9$1$5;->this$2:Lcom/freestyle/MainActivity$9$1;

    iput-object p2, p0, Lcom/freestyle/MainActivity$9$1$5;->val$img1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1$5;->this$2:Lcom/freestyle/MainActivity$9$1;

    invoke-static {v0}, Lcom/freestyle/MainActivity$9$1;->access$0(Lcom/freestyle/MainActivity$9$1;)Lcom/freestyle/MainActivity$9;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/MainActivity$9;->access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/MainActivity$9$1$5$1;

    iget-object v2, p0, Lcom/freestyle/MainActivity$9$1$5;->val$img1:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$9$1$5$1;-><init>(Lcom/freestyle/MainActivity$9$1$5;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/freestyle/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method
