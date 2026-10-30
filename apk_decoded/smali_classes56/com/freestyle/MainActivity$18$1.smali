.class Lcom/freestyle/MainActivity$18$1;
.super Landroid/graphics/drawable/GradientDrawable;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freestyle/MainActivity$18;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$18;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/freestyle/MainActivity$18$1;->this$1:Lcom/freestyle/MainActivity$18;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIns(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 630
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity$18$1;->setCornerRadius(F)V

    invoke-virtual {p0, p2}, Lcom/freestyle/MainActivity$18$1;->setColor(I)V

    return-object p0
.end method
