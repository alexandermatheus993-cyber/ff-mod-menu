.class Lcom/freestyle/MainActivity$7$1$1$1;
.super Landroid/graphics/drawable/GradientDrawable;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/MainActivity$7$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/freestyle/MainActivity$7$1$1;


# direct methods
.method constructor <init>(Lcom/freestyle/MainActivity$7$1$1;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/freestyle/MainActivity$7$1$1$1;->this$3:Lcom/freestyle/MainActivity$7$1$1;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIns(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 428
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity$7$1$1$1;->setCornerRadius(F)V

    invoke-virtual {p0, p2}, Lcom/freestyle/MainActivity$7$1$1$1;->setColor(I)V

    return-object p0
.end method
