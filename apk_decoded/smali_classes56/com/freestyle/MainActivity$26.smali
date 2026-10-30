.class Lcom/freestyle/MainActivity$26;
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

.field private final synthetic val$op5:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/freestyle/MainActivity$26;->this$0:Lcom/freestyle/MainActivity;

    iput-object p2, p0, Lcom/freestyle/MainActivity$26;->val$op5:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 902
    iget-object v0, p0, Lcom/freestyle/MainActivity$26;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$14(Lcom/freestyle/MainActivity;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/freestyle/MainActivity$26;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$14(Lcom/freestyle/MainActivity;)D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/freestyle/MainActivity;->access$15(Lcom/freestyle/MainActivity;D)V

    .line 904
    iget-object v0, p0, Lcom/freestyle/MainActivity$26;->val$op5:Landroid/widget/ImageView;

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 910
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/freestyle/MainActivity$26;->this$0:Lcom/freestyle/MainActivity;

    invoke-static {v0}, Lcom/freestyle/MainActivity;->access$14(Lcom/freestyle/MainActivity;)D

    move-result-wide v2

    sub-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/freestyle/MainActivity;->access$15(Lcom/freestyle/MainActivity;D)V

    .line 908
    iget-object v0, p0, Lcom/freestyle/MainActivity$26;->val$op5:Landroid/widget/ImageView;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
