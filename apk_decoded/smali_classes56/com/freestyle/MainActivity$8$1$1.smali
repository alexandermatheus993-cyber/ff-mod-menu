.class Lcom/freestyle/MainActivity$8$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/freestyle/MainActivity$8$1;

.field private final synthetic val$img:Landroid/widget/ImageView;

.field private final synthetic val$nao:Landroid/widget/Button;

.field private final synthetic val$sim:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$8$1;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/freestyle/MainActivity$8$1$1;->this$2:Lcom/freestyle/MainActivity$8$1;

    iput-object p2, p0, Lcom/freestyle/MainActivity$8$1$1;->val$img:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/freestyle/MainActivity$8$1$1;->val$nao:Landroid/widget/Button;

    iput-object p4, p0, Lcom/freestyle/MainActivity$8$1$1;->val$sim:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 446
    iget-object v0, p0, Lcom/freestyle/MainActivity$8$1$1;->val$img:Landroid/widget/ImageView;

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    iget-object v0, p0, Lcom/freestyle/MainActivity$8$1$1;->val$nao:Landroid/widget/Button;

    new-instance v1, Lcom/freestyle/MainActivity$8$1$1$1;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$8$1$1$1;-><init>(Lcom/freestyle/MainActivity$8$1$1;)V

    const v2, -0xfd8843

    invoke-virtual {v1, v3, v2}, Lcom/freestyle/MainActivity$8$1$1$1;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v0, p0, Lcom/freestyle/MainActivity$8$1$1;->val$sim:Landroid/widget/Button;

    new-instance v1, Lcom/freestyle/MainActivity$8$1$1$2;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$8$1$1$2;-><init>(Lcom/freestyle/MainActivity$8$1$1;)V

    const v2, -0xb350b0

    invoke-virtual {v1, v3, v2}, Lcom/freestyle/MainActivity$8$1$1$2;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 449
    return-void
.end method
