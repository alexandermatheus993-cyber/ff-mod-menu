.class Lcom/freestyle/MainActivity$10;
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

.field private final synthetic val$icone:Landroid/widget/LinearLayout;

.field private final synthetic val$linear1:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/freestyle/MainActivity$10;->this$0:Lcom/freestyle/MainActivity;

    iput-object p2, p0, Lcom/freestyle/MainActivity$10;->val$linear1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/freestyle/MainActivity$10;->val$icone:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/freestyle/MainActivity$10;->val$linear1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/freestyle/MainActivity$10;->val$icone:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    return-void
.end method
