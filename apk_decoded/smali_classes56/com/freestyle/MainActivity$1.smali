.class Lcom/freestyle/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freestyle/MainActivity;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/freestyle/MainActivity$1;->this$0:Lcom/freestyle/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/freestyle/MainActivity$1;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$0(Lcom/freestyle/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyYjSEshLSpI"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/freestyle/MainActivity$1;->this$0:Lcom/freestyle/MainActivity;

    invoke-virtual {v0}, Lcom/freestyle/MainActivity;->_llucas7e7()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/freestyle/MainActivity$1;->this$0:Lcom/freestyle/MainActivity;

    invoke-virtual {v0}, Lcom/freestyle/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HjE/DVaW9ykNXTs3KUNMJzUiTA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freestyle/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
