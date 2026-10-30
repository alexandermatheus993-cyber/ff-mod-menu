.class Lcom/freestyle/MainActivity$25$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$25;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freestyle/MainActivity$25;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$linhas:Ljava/util/LinkedList;

.field private final synthetic val$random:Ljava/util/Random;

.field private final synthetic val$text:Landroid/widget/TextView;

.field private final synthetic val$vscroll1:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$25;Ljava/util/Random;Ljava/util/LinkedList;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/freestyle/MainActivity$25$1;->this$1:Lcom/freestyle/MainActivity$25;

    iput-object p2, p0, Lcom/freestyle/MainActivity$25$1;->val$random:Ljava/util/Random;

    iput-object p3, p0, Lcom/freestyle/MainActivity$25$1;->val$linhas:Ljava/util/LinkedList;

    iput-object p4, p0, Lcom/freestyle/MainActivity$25$1;->val$text:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/freestyle/MainActivity$25$1;->val$vscroll1:Landroid/widget/ScrollView;

    iput-object p6, p0, Lcom/freestyle/MainActivity$25$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x19

    if-lt v0, v2, :cond_1

    .line 815
    iget-object v0, p0, Lcom/freestyle/MainActivity$25$1;->val$linhas:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v0, p0, Lcom/freestyle/MainActivity$25$1;->val$linhas:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 819
    iget-object v0, p0, Lcom/freestyle/MainActivity$25$1;->val$linhas:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 823
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    iget-object v0, p0, Lcom/freestyle/MainActivity$25$1;->val$linhas:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/freestyle/MainActivity$25$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v0, p0, Lcom/freestyle/MainActivity$25$1;->val$vscroll1:Landroid/widget/ScrollView;

    new-instance v1, Lcom/freestyle/MainActivity$25$1$1;

    iget-object v2, p0, Lcom/freestyle/MainActivity$25$1;->val$vscroll1:Landroid/widget/ScrollView;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$25$1$1;-><init>(Lcom/freestyle/MainActivity$25$1;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 840
    iget-object v0, p0, Lcom/freestyle/MainActivity$25$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    return-void

    .line 811
    :cond_1
    const-string v2, "bGV+GgtiZ3EVUj8hGQt4c3Bxd1NsGD4MWQVmBg4PcTkWXG9tYCBmeGdtGXIAIh4uDBlnYideXDgacRUcHz4ZclMkFGAJCWJmKUIbAGZ+YVUiCzddSXR1BhwbdnAfVEkkBHYcZ2RmHlV4FW1vFgk+"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freestyle/MainActivity$25$1;->val$random:Ljava/util/Random;

    const-string v4, "bGV+GgtiZ3EVUj8hGQt4c3Bxd1NsGD4MWQVmBg4PcTkWXG9tYCBmeGdtGXIAIh4uDBlnYideXDgacRUcHz4ZclMkFGAJCWJmKUIbAGZ+YVUiCzddSXR1BhwbdnAfVEkkBHYcZ2RmHlV4FW1vFgk+"

    invoke-static {v4}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 825
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
