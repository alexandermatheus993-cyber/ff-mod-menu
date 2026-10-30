.class Lcom/freestyle/MainActivity$16;
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

.field private final synthetic val$myView:Landroid/view/View;

.field private final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/freestyle/MainActivity$16;->this$0:Lcom/freestyle/MainActivity;

    iput-object p2, p0, Lcom/freestyle/MainActivity$16;->val$wm:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/freestyle/MainActivity$16;->val$myView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/freestyle/MainActivity$16;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/freestyle/MainActivity$16;->val$myView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 571
    return-void
.end method
