.class public Lcom/freestyle/SketchApplication;
.super Landroid/app/Application;
.source "SketchApplication.java"


# static fields
.field private static mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/freestyle/SketchApplication;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/freestyle/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/freestyle/SketchApplication;->mApplicationContext:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/freestyle/SketchApplication$1;

    invoke-direct {v0, p0}, Lcom/freestyle/SketchApplication$1;-><init>(Lcom/freestyle/SketchApplication;)V

    .line 21
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 34
    invoke-static {}, Lcom/freestyle/SketchLogger;->startLogging()V

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    return-void
.end method
