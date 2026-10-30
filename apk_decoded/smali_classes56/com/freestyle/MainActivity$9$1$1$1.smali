.class Lcom/freestyle/MainActivity$9$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$9$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/freestyle/MainActivity$9$1$1;

.field private final synthetic val$img1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$9$1$1;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/freestyle/MainActivity$9$1$1$1;->this$3:Lcom/freestyle/MainActivity$9$1$1;

    iput-object p2, p0, Lcom/freestyle/MainActivity$9$1$1$1;->val$img1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1$1$1;->val$img1:Landroid/widget/ImageView;

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    return-void
.end method
