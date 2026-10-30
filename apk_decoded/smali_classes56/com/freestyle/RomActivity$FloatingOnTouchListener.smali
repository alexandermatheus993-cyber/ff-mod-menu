.class Lcom/freestyle/RomActivity$FloatingOnTouchListener;
.super Ljava/lang/Object;
.source "RomActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freestyle/RomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freestyle/RomActivity;

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lcom/freestyle/RomActivity;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/freestyle/RomActivity$FloatingOnTouchListener;->this$0:Lcom/freestyle/RomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method
