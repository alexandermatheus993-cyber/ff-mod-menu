.class Lcom/freestyle/MainActivity$18;
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

.field private final synthetic val$ai:Landroid/widget/LinearLayout;

.field private final synthetic val$aim:Landroid/widget/LinearLayout;

.field private final synthetic val$aimbot:Landroid/widget/LinearLayout;

.field private final synthetic val$by:Landroid/widget/LinearLayout;

.field private final synthetic val$bypass:Landroid/widget/LinearLayout;

.field private final synthetic val$ia:Landroid/widget/LinearLayout;

.field private final synthetic val$inf:Landroid/widget/LinearLayout;

.field private final synthetic val$info:Landroid/widget/LinearLayout;

.field private final synthetic val$pr:Landroid/widget/LinearLayout;

.field private final synthetic val$principal:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/freestyle/MainActivity$18;->this$0:Lcom/freestyle/MainActivity;

    iput-object p2, p0, Lcom/freestyle/MainActivity$18;->val$ai:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/freestyle/MainActivity$18;->val$by:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/freestyle/MainActivity$18;->val$inf:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/freestyle/MainActivity$18;->val$aim:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/freestyle/MainActivity$18;->val$pr:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/freestyle/MainActivity$18;->val$principal:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/freestyle/MainActivity$18;->val$ia:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/freestyle/MainActivity$18;->val$bypass:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lcom/freestyle/MainActivity$18;->val$aimbot:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lcom/freestyle/MainActivity$18;->val$info:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 625
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$ai:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$by:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$inf:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$aim:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$pr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$principal:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$18$1;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$18$1;-><init>(Lcom/freestyle/MainActivity$18;)V

    invoke-virtual {v1, v5, v4}, Lcom/freestyle/MainActivity$18$1;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 631
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$ia:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$18$2;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$18$2;-><init>(Lcom/freestyle/MainActivity$18;)V

    const v2, -0xb350b0

    invoke-virtual {v1, v5, v2}, Lcom/freestyle/MainActivity$18$2;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$bypass:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$18$3;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$18$3;-><init>(Lcom/freestyle/MainActivity$18;)V

    invoke-virtual {v1, v5, v4}, Lcom/freestyle/MainActivity$18$3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 633
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$aimbot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$18$4;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$18$4;-><init>(Lcom/freestyle/MainActivity$18;)V

    invoke-virtual {v1, v5, v4}, Lcom/freestyle/MainActivity$18$4;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 634
    iget-object v0, p0, Lcom/freestyle/MainActivity$18;->val$info:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$18$5;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$18$5;-><init>(Lcom/freestyle/MainActivity$18;)V

    invoke-virtual {v1, v5, v4}, Lcom/freestyle/MainActivity$18$5;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 635
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 636
    const-string v1, "dhIAHQhlZHYd"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 637
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 638
    iget-object v1, p0, Lcom/freestyle/MainActivity$18;->val$principal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 639
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 640
    const-string v1, "dhIAGXsUEnMd"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 641
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 642
    iget-object v1, p0, Lcom/freestyle/MainActivity$18;->val$ia:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 643
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 644
    const-string v1, "dhIAHQhlZHYd"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 645
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 646
    iget-object v1, p0, Lcom/freestyle/MainActivity$18;->val$bypass:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 647
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 648
    const-string v1, "dhIAHQhlZHYd"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 649
    new-array v1, v3, [F

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 650
    iget-object v1, p0, Lcom/freestyle/MainActivity$18;->val$aimbot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 651
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 652
    const-string v1, "dhIAHQhlZHYd"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 653
    new-array v1, v3, [F

    fill-array-data v1, :array_4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 654
    iget-object v1, p0, Lcom/freestyle/MainActivity$18;->val$info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 655
    return-void

    .line 637
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 641
    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 645
    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 649
    :array_3
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 653
    :array_4
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
