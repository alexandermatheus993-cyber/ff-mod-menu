.class Lcom/freestyle/MainActivity$9$1$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$9$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/freestyle/MainActivity$9$1$2;

.field private final synthetic val$img1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$9$1$2;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/freestyle/MainActivity$9$1$2$1;->this$3:Lcom/freestyle/MainActivity$9$1$2;

    iput-object p2, p0, Lcom/freestyle/MainActivity$9$1$2$1;->val$img1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/freestyle/MainActivity$9$1$2$1;->val$img1:Landroid/widget/ImageView;

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    return-void
.end method
