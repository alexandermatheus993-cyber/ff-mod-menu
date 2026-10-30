.class Lcom/freestyle/MainActivity$25$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$25$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/freestyle/MainActivity$25$2;

.field private final synthetic val$vscroll1:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$25$2;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/freestyle/MainActivity$25$2$1;->this$2:Lcom/freestyle/MainActivity$25$2;

    iput-object p2, p0, Lcom/freestyle/MainActivity$25$2$1;->val$vscroll1:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/freestyle/MainActivity$25$2$1;->val$vscroll1:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 887
    return-void
.end method
