.class Lcom/freestyle/MainActivity$FloatingOnTouchListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freestyle/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freestyle/MainActivity;

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lcom/freestyle/MainActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/freestyle/MainActivity$FloatingOnTouchListener;->this$0:Lcom/freestyle/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freestyle/MainActivity;Lcom/freestyle/MainActivity$FloatingOnTouchListener;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/freestyle/MainActivity$FloatingOnTouchListener;-><init>(Lcom/freestyle/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 191
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/freestyle/MainActivity$FloatingOnTouchListener;->x:I

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/freestyle/MainActivity$FloatingOnTouchListener;->y:I

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
