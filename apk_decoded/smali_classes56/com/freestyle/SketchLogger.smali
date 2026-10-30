.class public Lcom/freestyle/SketchLogger;
.super Ljava/lang/Object;
.source "SketchLogger.java"


# static fields
.field private static volatile isRunning:Z

.field private static loggerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/freestyle/SketchLogger;->isRunning:Z

    .line 22
    new-instance v0, Lcom/freestyle/SketchLogger$1;

    invoke-direct {v0}, Lcom/freestyle/SketchLogger$1;-><init>()V

    sput-object v0, Lcom/freestyle/SketchLogger;->loggerThread:Ljava/lang/Thread;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 21
    sput-boolean p0, Lcom/freestyle/SketchLogger;->isRunning:Z

    return-void
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/freestyle/SketchLogger;->isRunning:Z

    return v0
.end method

.method public static broadcastLog(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/freestyle/SketchApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string v2, "JSYpA0s+MTJOUCI1NEgWFBcSZHcbCwhobwoQA29tEgsKYn8="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v2, "OTsh"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v2, "JTUlRlkyMQhMVTA="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public static declared-synchronized startLogging()V
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/freestyle/SketchLogger;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/freestyle/SketchLogger;->isRunning:Z

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/freestyle/SketchLogger;->loggerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit v1

    return-void

    .line 54
    :cond_0
    :try_start_1
    const-string v0, "GTshSl0ndCdBSjA1IlQYJyEoQ1E7Mw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/SketchLogger;->broadcastLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stopLogging()V
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/freestyle/SketchLogger;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/freestyle/SketchLogger;->isRunning:Z

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/freestyle/SketchLogger;->isRunning:Z

    .line 61
    const-string v0, "BiApXUg8OiENVDozIUhKdTY/DU0mMTQNSjAlM0hLIXo="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/SketchLogger;->broadcastLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit v1

    return-void

    .line 63
    :cond_0
    :try_start_1
    const-string v0, "GTshSl0ndChCTHUmM0NWPDoh"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/SketchLogger;->broadcastLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
