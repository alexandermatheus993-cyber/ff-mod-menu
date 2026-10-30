.class Lcom/freestyle/MainActivity$9;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


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

.field private final synthetic val$img1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/freestyle/MainActivity$9;->this$0:Lcom/freestyle/MainActivity;

    iput-object p2, p0, Lcom/freestyle/MainActivity$9;->val$img1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/freestyle/MainActivity$9;)Lcom/freestyle/MainActivity;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/freestyle/MainActivity$9;->this$0:Lcom/freestyle/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/freestyle/MainActivity$9;->this$0:Lcom/freestyle/MainActivity;

    new-instance v1, Lcom/freestyle/MainActivity$9$1;

    iget-object v2, p0, Lcom/freestyle/MainActivity$9;->val$img1:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$9$1;-><init>(Lcom/freestyle/MainActivity$9;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/freestyle/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 524
    return-void
.end method
