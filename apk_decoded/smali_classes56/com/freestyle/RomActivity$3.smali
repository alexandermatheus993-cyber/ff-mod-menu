.class Lcom/freestyle/RomActivity$3;
.super Ljava/util/TimerTask;
.source "RomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/RomActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freestyle/RomActivity;


# direct methods
.method constructor <init>(Lcom/freestyle/RomActivity;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/freestyle/RomActivity$3;->this$0:Lcom/freestyle/RomActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/freestyle/RomActivity$3;->this$0:Lcom/freestyle/RomActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/freestyle/RomActivity$3;->this$0:Lcom/freestyle/RomActivity;

    new-instance v1, Lcom/freestyle/RomActivity$3$1;

    invoke-direct {v1, p0}, Lcom/freestyle/RomActivity$3$1;-><init>(Lcom/freestyle/RomActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/freestyle/RomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method
