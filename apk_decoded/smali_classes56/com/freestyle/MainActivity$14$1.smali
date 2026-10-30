.class Lcom/freestyle/MainActivity$14$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freestyle/MainActivity$14;

.field private final synthetic val$img3:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$14;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/freestyle/MainActivity$14$1;->this$1:Lcom/freestyle/MainActivity$14;

    iput-object p2, p0, Lcom/freestyle/MainActivity$14$1;->val$img3:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 550
    iget-object v0, p0, Lcom/freestyle/MainActivity$14$1;->this$1:Lcom/freestyle/MainActivity$14;

    invoke-static {v0}, Lcom/freestyle/MainActivity$14;->access$0(Lcom/freestyle/MainActivity$14;)Lcom/freestyle/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$4(Lcom/freestyle/MainActivity;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/freestyle/MainActivity;->access$5(Lcom/freestyle/MainActivity;D)V

    .line 551
    iget-object v0, p0, Lcom/freestyle/MainActivity$14$1;->val$img3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freestyle/MainActivity$14$1;->this$1:Lcom/freestyle/MainActivity$14;

    invoke-static {v1}, Lcom/freestyle/MainActivity$14;->access$0(Lcom/freestyle/MainActivity$14;)Lcom/freestyle/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/freestyle/MainActivity;->access$4(Lcom/freestyle/MainActivity;)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 552
    return-void
.end method
