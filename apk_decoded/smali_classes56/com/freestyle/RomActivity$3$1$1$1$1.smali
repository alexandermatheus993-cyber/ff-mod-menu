.class Lcom/freestyle/RomActivity$3$1$1$1$1;
.super Ljava/util/TimerTask;
.source "RomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/RomActivity$3$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/freestyle/RomActivity$3$1$1$1;


# direct methods
.method constructor <init>(Lcom/freestyle/RomActivity$3$1$1$1;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/freestyle/RomActivity$3$1$1$1$1;->this$4:Lcom/freestyle/RomActivity$3$1$1$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/freestyle/RomActivity$3$1$1$1$1;)Lcom/freestyle/RomActivity$3$1$1$1;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1$1$1$1;->this$4:Lcom/freestyle/RomActivity$3$1$1$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1$1$1$1;->this$4:Lcom/freestyle/RomActivity$3$1$1$1;

    invoke-static {v0}, Lcom/freestyle/RomActivity$3$1$1$1;->access$0(Lcom/freestyle/RomActivity$3$1$1$1;)Lcom/freestyle/RomActivity$3$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/RomActivity$3$1$1;->access$0(Lcom/freestyle/RomActivity$3$1$1;)Lcom/freestyle/RomActivity$3$1;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/RomActivity$3$1;->access$0(Lcom/freestyle/RomActivity$3$1;)Lcom/freestyle/RomActivity$3;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/RomActivity$3$1$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/freestyle/RomActivity$3$1$1$1$1$1;-><init>(Lcom/freestyle/RomActivity$3$1$1$1$1;)V

    invoke-virtual {v0, v1}, Lcom/freestyle/RomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method
