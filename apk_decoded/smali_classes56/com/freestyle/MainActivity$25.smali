.class Lcom/freestyle/MainActivity$25;
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

.field private final synthetic val$op4:Landroid/widget/ImageView;

.field private final synthetic val$text:Landroid/widget/TextView;

.field private final synthetic val$vscroll1:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/freestyle/MainActivity$25;->this$0:Lcom/freestyle/MainActivity;

    iput-object p2, p0, Lcom/freestyle/MainActivity$25;->val$op4:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/freestyle/MainActivity$25;->val$text:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/freestyle/MainActivity$25;->val$vscroll1:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    .line 795
    iget-object v0, p0, Lcom/freestyle/MainActivity$25;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$12(Lcom/freestyle/MainActivity;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/freestyle/MainActivity$25;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$12(Lcom/freestyle/MainActivity;)D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/freestyle/MainActivity;->access$13(Lcom/freestyle/MainActivity;D)V

    .line 797
    iget-object v0, p0, Lcom/freestyle/MainActivity$25;->val$op4:Landroid/widget/ImageView;

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 798
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 800
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 801
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 803
    new-array v7, v7, [Ljava/lang/Runnable;

    .line 805
    new-instance v0, Lcom/freestyle/MainActivity$25$1;

    iget-object v4, p0, Lcom/freestyle/MainActivity$25;->val$text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/freestyle/MainActivity$25;->val$vscroll1:Landroid/widget/ScrollView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/freestyle/MainActivity$25$1;-><init>(Lcom/freestyle/MainActivity$25;Ljava/util/Random;Ljava/util/LinkedList;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/os/Handler;)V

    aput-object v0, v7, v8

    .line 844
    aget-object v0, v7, v8

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 898
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/freestyle/MainActivity$25;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$12(Lcom/freestyle/MainActivity;)D

    move-result-wide v2

    sub-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/freestyle/MainActivity;->access$13(Lcom/freestyle/MainActivity;D)V

    .line 848
    iget-object v0, p0, Lcom/freestyle/MainActivity$25;->val$op4:Landroid/widget/ImageView;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 849
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 851
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 852
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 854
    new-array v7, v7, [Ljava/lang/Runnable;

    .line 856
    new-instance v0, Lcom/freestyle/MainActivity$25$2;

    iget-object v4, p0, Lcom/freestyle/MainActivity$25;->val$text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/freestyle/MainActivity$25;->val$vscroll1:Landroid/widget/ScrollView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/freestyle/MainActivity$25$2;-><init>(Lcom/freestyle/MainActivity$25;Ljava/util/Random;Ljava/util/LinkedList;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/os/Handler;)V

    aput-object v0, v7, v8

    .line 895
    aget-object v0, v7, v8

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 896
    iget-object v0, p0, Lcom/freestyle/MainActivity$25;->val$text:Landroid/widget/TextView;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
