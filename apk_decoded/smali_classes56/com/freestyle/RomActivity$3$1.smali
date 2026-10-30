.class Lcom/freestyle/RomActivity$3$1;
.super Ljava/lang/Object;
.source "RomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freestyle/RomActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freestyle/RomActivity$3;


# direct methods
.method constructor <init>(Lcom/freestyle/RomActivity$3;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/freestyle/RomActivity$3$1;)Lcom/freestyle/RomActivity$3;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v0}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v0

    const-string v1, "eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSE="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freestyle/RomActivity;->access$0(Lcom/freestyle/RomActivity;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v0}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v1}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v2}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/freestyle/RomActivity;->access$1(Lcom/freestyle/RomActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freestyle/RomActivity;->pathToRealUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freestyle/RomActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v0}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v0

    const-string v1, "FAJoYmoc"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v2}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/freestyle/RomActivity;->access$1(Lcom/freestyle/RomActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freestyle/RomActivity;->access$2(Lcom/freestyle/RomActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v0}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v0

    new-instance v1, Lcom/freestyle/RomActivity$3$1$1;

    invoke-direct {v1, p0}, Lcom/freestyle/RomActivity$3$1$1;-><init>(Lcom/freestyle/RomActivity$3$1;)V

    invoke-static {v0, v1}, Lcom/freestyle/RomActivity;->access$3(Lcom/freestyle/RomActivity;Ljava/util/TimerTask;)V

    .line 345
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v0}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/RomActivity;->access$4(Lcom/freestyle/RomActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v1}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/freestyle/RomActivity;->access$5(Lcom/freestyle/RomActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 346
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v0}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v1}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/freestyle/RomActivity$3$1;->this$1:Lcom/freestyle/RomActivity$3;

    invoke-static {v2}, Lcom/freestyle/RomActivity$3;->access$0(Lcom/freestyle/RomActivity$3;)Lcom/freestyle/RomActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/freestyle/RomActivity;->access$1(Lcom/freestyle/RomActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freestyle/RomActivity;->pathToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freestyle/RomActivity;->askPermission(Ljava/lang/String;)V

    goto :goto_0
.end method
