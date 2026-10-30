.class public Lcom/freestyle/RomActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RomActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freestyle/RomActivity$FloatingOnTouchListener;
    }
.end annotation


# static fields
.field static final OLD_REQUEST:I = 0x7d0

.field static final REQUEST_CODE:I = 0x14d

.field private static final new_folder:I = 0x2b


# instance fields
.field private BTN:Landroid/widget/Button;

.field private Data:Landroid/content/SharedPreferences;

.field private Key:Ljava/lang/String;

.field private Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Path:Ljava/lang/String;

.field private PermissionNumber:D

.field private Position:D

.field private Revendedor:Ljava/lang/String;

.field private Status:Ljava/lang/String;

.field private StatusDoUser:Ljava/lang/String;

.field private Timer:Ljava/util/TimerTask;

.field private Usuario:Ljava/lang/String;

.field private UsuarioName:Ljava/lang/String;

.field private ValidadeString:Ljava/lang/String;

.field private Vibrar:Landroid/os/Vibrator;

.field private YourPath:Ljava/lang/String;

.field private _timer:Ljava/util/Timer;

.field private b1:D

.field private b11:D

.field private b2:D

.field private b3:D

.field private b4:D

.field private b5:D

.field private b6:D

.field private calendar:Ljava/util/Calendar;

.field private dFile:Landroidx/documentfile/provider/DocumentFile;

.field private diferenca:D

.field private displayView:Landroid/view/View;

.field private f1:D

.field private f2:D

.field private f3:D

.field private f4:D

.field private f5:D

.field private f6:D

.field private fe:Landroid/content/Intent;

.field private fromStorage:Z

.field private i:Landroid/content/Intent;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private linear57:Landroid/widget/LinearLayout;

.field private linear6:Landroid/widget/LinearLayout;

.field private linear65:Landroid/widget/LinearLayout;

.field private linear66:Landroid/widget/LinearLayout;

.field private linear69:Landroid/widget/LinearLayout;

.field private linear73:Landroid/widget/LinearLayout;

.field private linear74:Landroid/widget/LinearLayout;

.field private linear80:Landroid/widget/LinearLayout;

.field private linear82:Landroid/widget/LinearLayout;

.field private linear83:Landroid/widget/LinearLayout;

.field private linear84:Landroid/widget/LinearLayout;

.field private linear85:Landroid/widget/LinearLayout;

.field private mapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private muri:Landroid/net/Uri;

.field private n:D

.field private nn:D

.field private nnn:D

.field private now:D

.field private progreso:Ljava/util/TimerTask;

.field private sem:D

.field private servidor:Landroid/widget/TextView;

.field private sha:Landroid/content/SharedPreferences;

.field private status:Landroid/widget/TextView;

.field private textview10:Landroid/widget/TextView;

.field private textview12:Landroid/widget/TextView;

.field private textview5:Landroid/widget/TextView;

.field private textview6:Landroid/widget/TextView;

.field private textview9:Landroid/widget/TextView;

.field private ti:Ljava/util/TimerTask;

.field private timer:Ljava/util/TimerTask;

.field private uriFor1:Ljava/lang/String;

.field private uriFor2:Ljava/lang/String;

.field private usuario:Landroid/widget/TextView;

.field private v:Landroid/os/Vibrator;

.field private valid:Landroid/widget/TextView;

.field private validade:D

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/freestyle/RomActivity;->_timer:Ljava/util/Timer;

    .line 56
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->now:D

    .line 57
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->validade:D

    .line 58
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->diferenca:D

    .line 59
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->Position:D

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Usuario:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Status:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->UsuarioName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->ValidadeString:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Path:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Map:Ljava/util/HashMap;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Key:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->StatusDoUser:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Revendedor:Ljava/lang/String;

    .line 69
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->nnn:D

    .line 70
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->b1:D

    .line 71
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->b2:D

    .line 72
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->b3:D

    .line 73
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->b5:D

    .line 74
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->n:D

    .line 75
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->nn:D

    .line 76
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->b4:D

    .line 77
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->b6:D

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->YourPath:Ljava/lang/String;

    .line 79
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->f1:D

    .line 80
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->f2:D

    .line 81
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->f3:D

    .line 82
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->f4:D

    .line 83
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->f5:D

    .line 84
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->f6:D

    .line 85
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->sem:D

    .line 86
    iput-wide v2, p0, Lcom/freestyle/RomActivity;->b11:D

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freestyle/RomActivity;->mapList:Ljava/util/ArrayList;

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->calendar:Ljava/util/Calendar;

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/freestyle/RomActivity;->fe:Landroid/content/Intent;

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freestyle/RomActivity;->fromStorage:Z

    .line 732
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/freestyle/RomActivity;->i:Landroid/content/Intent;

    .line 734
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    .line 735
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private _reCall()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method static synthetic access$0(Lcom/freestyle/RomActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/freestyle/RomActivity;->Path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/freestyle/RomActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/freestyle/RomActivity;->Path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/freestyle/RomActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0, p1, p2}, Lcom/freestyle/RomActivity;->copyAssetFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/freestyle/RomActivity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/freestyle/RomActivity;->Timer:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$4(Lcom/freestyle/RomActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/freestyle/RomActivity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/freestyle/RomActivity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/freestyle/RomActivity;->Timer:Ljava/util/TimerTask;

    return-object v0
.end method

.method private copyAsset(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 562
    .line 565
    :try_start_0
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 567
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 569
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 572
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 573
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 576
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 577
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 578
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 586
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 574
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v1

    .line 582
    const-string v2, "eiciTlknMGlBVzJ6MlVM"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "X2dmDRg="

    invoke-static {v4}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freestyle/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/freestyle/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private copyAssetFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 596
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 598
    const/4 v0, 0x0

    .line 600
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 605
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v2

    move v3, v2

    .line 610
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 660
    :goto_2
    return-void

    .line 613
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/freestyle/RomActivity;->pathToRealUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 615
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 616
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 618
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    .line 619
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "cGY="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 620
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 626
    :try_start_2
    invoke-virtual {v5, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v6

    .line 627
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 629
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 638
    :goto_3
    :try_start_3
    const-string v2, "f3ts"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 639
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 643
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "eg=="

    invoke-static {v6}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/freestyle/RomActivity;->copyAsset(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    :goto_4
    add-int/lit8 v2, v3, 0x1

    .line 610
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v2

    goto/16 :goto_1

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "EzUqRVk="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freestyle/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto :goto_3

    .line 632
    :catch_3
    move-exception v2

    goto :goto_3
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 149
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear74:Landroid/widget/LinearLayout;

    .line 150
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear2:Landroid/widget/LinearLayout;

    .line 151
    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear5:Landroid/widget/LinearLayout;

    .line 152
    const v0, 0x7f080136

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear66:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear69:Landroid/widget/LinearLayout;

    .line 154
    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear73:Landroid/widget/LinearLayout;

    .line 155
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear84:Landroid/widget/LinearLayout;

    .line 156
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear6:Landroid/widget/LinearLayout;

    .line 157
    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear85:Landroid/widget/LinearLayout;

    .line 158
    const v0, 0x7f080233

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->textview12:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear57:Landroid/widget/LinearLayout;

    .line 160
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear80:Landroid/widget/LinearLayout;

    .line 161
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->BTN:Landroid/widget/Button;

    .line 162
    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear65:Landroid/widget/LinearLayout;

    .line 163
    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear3:Landroid/widget/LinearLayout;

    .line 164
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear82:Landroid/widget/LinearLayout;

    .line 165
    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear4:Landroid/widget/LinearLayout;

    .line 166
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->linear83:Landroid/widget/LinearLayout;

    .line 167
    const v0, 0x7f080251

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->textview5:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f08026b

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->usuario:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f080253

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->textview9:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f080209

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->status:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f080252

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->textview6:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f08026e

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->valid:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f080232

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->textview10:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0801e5

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->servidor:Landroid/widget/TextView;

    .line 175
    const-string v0, "ETUyTA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freestyle/RomActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Data:Landroid/content/SharedPreferences;

    .line 176
    const-string v0, "Iz0kX1khOzQ="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->v:Landroid/os/Vibrator;

    .line 177
    const-string v0, "Iz0kX1khOzQ="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Vibrar:Landroid/os/Vibrator;

    .line 179
    iget-object v0, p0, Lcom/freestyle/RomActivity;->BTN:Landroid/widget/Button;

    new-instance v1, Lcom/freestyle/RomActivity$1;

    invoke-direct {v1, p0}, Lcom/freestyle/RomActivity$1;-><init>(Lcom/freestyle/RomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method private initializeLogic()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MT0nQVcyAC5IVTA="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 193
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    .line 195
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 197
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {p0, v3}, Lcom/freestyle/RomActivity;->setFinishOnTouchOutside(Z)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 204
    const/16 v1, 0x1002

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 206
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 207
    const/4 v1, 0x2

    new-array v1, v1, [I

    const-string v2, "dhIAHn5gZQQY"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v3

    const-string v2, "dhIAHwlsYgAe"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 208
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 209
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 210
    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 211
    iget-object v1, p0, Lcom/freestyle/RomActivity;->BTN:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    const-string v0, "Ij0oSVci"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/freestyle/RomActivity;->windowManager:Landroid/view/WindowManager;

    .line 213
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 222
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 223
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 224
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 225
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 226
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 227
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 228
    invoke-direct {p0}, Lcom/freestyle/RomActivity;->_reCall()V

    .line 230
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 210
    nop

    :array_0
    .array-data 4
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
    .end array-data
.end method

.method private showFloatingWindow()V
    .locals 3

    .prologue
    .line 239
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 241
    const v1, 0x7f0b002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->displayView:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/freestyle/RomActivity;->displayView:Landroid/view/View;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 247
    new-instance v1, Lcom/freestyle/RomActivity$2;

    invoke-direct {v1, p0}, Lcom/freestyle/RomActivity$2;-><init>(Lcom/freestyle/RomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/freestyle/RomActivity;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->displayView:Landroid/view/View;

    iget-object v2, p0, Lcom/freestyle/RomActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    return-void
.end method


# virtual methods
.method public RequestPermission_Dialog()V
    .locals 6

    .prologue
    const/16 v5, 0x7d0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 428
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NDoiX1c8MGheXSEgL0NfJnoLbHYUEwNyeRkYGWtxGREVcnkWFwN+awoEA391HAcVZHcb"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v1, "NDoiX1c8MGhEViExKFkWNjUySF86Jj8DfBASB3h0AQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "JTUlRlkyMXwN"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 431
    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/freestyle/RomActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 434
    const-string v1, "NDoiX1c8MGheXSEgL0NfJnoLbHYUEwNyeRkYGWtxGREVcnkWFwN+awoEA391HAcVZHcb"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v0, v5}, Lcom/freestyle/RomActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 438
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxAMEmhqGxUKcmsBGxRsfxA="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x14d

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public _Library()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public _clickAnimation(Landroid/view/View;)V
    .locals 9

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    .line 745
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    const v8, 0x3f333333    # 0.7f

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 746
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 747
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 748
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 749
    return-void
.end method

.method public _dialogTheme()V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public askPermission(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/freestyle/RomActivity;->i:Landroid/content/Intent;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    iget-object v0, p0, Lcom/freestyle/RomActivity;->i:Landroid/content/Intent;

    const-string v1, "NDoiX1c8MGhEViExKFkWNDcyRFc7egl9fRsLAmJ7ABkDY2wKABRofQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/freestyle/RomActivity;->i:Landroid/content/Intent;

    const-string v1, "NDoiX1c8MGhdSjoiL0ldJ3ojVUwnNWhkdhwAD2x0CgEUZA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    iget-object v0, p0, Lcom/freestyle/RomActivity;->i:Landroid/content/Intent;

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Lcom/freestyle/RomActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 464
    return-void
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 470
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 471
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->dFile:Landroidx/documentfile/provider/DocumentFile;

    .line 473
    iget-object v0, p0, Lcom/freestyle/RomActivity;->dFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freestyle/RomActivity;->dFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closes()V
    .locals 2

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/freestyle/RomActivity;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->displayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public copy(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 665
    .line 667
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/freestyle/RomActivity;->pathToRealUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    .line 671
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-virtual {v3, v2}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 674
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/freestyle/RomActivity;->mime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 682
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 685
    const/16 v2, 0x4000

    :try_start_3
    new-array v2, v2, [B

    .line 687
    :goto_1
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 698
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 700
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 710
    :goto_2
    return v0

    .line 676
    :catch_0
    move-exception v2

    .line 677
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 688
    :cond_0
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v3, v2, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 691
    :catch_1
    move-exception v2

    .line 692
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 698
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 700
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 706
    :catch_2
    move-exception v0

    .line 707
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    move v0, v1

    .line 710
    goto :goto_2

    .line 693
    :catch_3
    move-exception v2

    move-object v3, v4

    move-object v5, v4

    .line 694
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 698
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 700
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 706
    :catch_4
    move-exception v0

    .line 707
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 695
    :catchall_0
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    .line 698
    :goto_6
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 700
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 706
    :catch_5
    move-exception v0

    .line 707
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 709
    throw v1

    .line 706
    :catch_6
    move-exception v0

    .line 707
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 695
    :catchall_1
    move-exception v1

    move-object v3, v4

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_6

    .line 693
    :catch_7
    move-exception v2

    move-object v3, v4

    goto :goto_5

    :catch_8
    move-exception v2

    goto :goto_5

    .line 691
    :catch_9
    move-exception v2

    move-object v3, v4

    move-object v5, v4

    goto :goto_3

    :catch_a
    move-exception v2

    move-object v3, v4

    goto :goto_3
.end method

.method public getCheckedItemPositionsToArray(Landroid/widget/ListView;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 803
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 804
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 805
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 809
    return-object v1

    .line 806
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 807
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 814
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public getDisplayHeightPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplayWidthPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getLocationX(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 783
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 784
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 785
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 790
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 792
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 797
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 798
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public mime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 716
    const-string v0, ""

    .line 717
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    if-eqz v1, :cond_0

    .line 719
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 371
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 373
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_0

    .line 374
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 375
    if-eqz p3, :cond_0

    .line 376
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bw=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "GiQjX1mW84WOV3UyJ0FQOiE="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freestyle/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->askPermission(Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 407
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    .line 420
    :cond_1
    return-void

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/freestyle/RomActivity;->i:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 386
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->setContentView(I)V

    .line 131
    invoke-direct {p0, p1}, Lcom/freestyle/RomActivity;->initialize(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/freestyle/RomActivity;->initializeLogic()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 143
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/freestyle/RomActivity;->initializeLogic()V

    .line 146
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 289
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 290
    const-string v0, "eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSECSyU4L1ldMSYjXls6OiBeFw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freestyle/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSECSyU4L1ldMSYjXls6OiBeFw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Path:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/freestyle/RomActivity;->Path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->pathToRealUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    const-string v0, "eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kX"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->YourPath:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/freestyle/RomActivity;->YourPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->pathToRealUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    const-string v0, "eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSEC"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->YourPath:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/freestyle/RomActivity;->YourPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->pathToRealUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Lcom/freestyle/RomActivity$3;

    invoke-direct {v0, p0}, Lcom/freestyle/RomActivity$3;-><init>(Lcom/freestyle/RomActivity;)V

    iput-object v0, p0, Lcom/freestyle/RomActivity;->Timer:Ljava/util/TimerTask;

    .line 350
    iget-object v0, p0, Lcom/freestyle/RomActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->Timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/freestyle/RomActivity;->YourPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->pathToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->askPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/freestyle/RomActivity;->YourPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->pathToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->askPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/freestyle/RomActivity;->Path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->pathToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/RomActivity;->askPermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pathToRealUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 483
    const-string v0, "NjsoWV07IHwCFzY7KwNZOzA0QlExeiNVTDAmKExUJiApX1kyMWhJVzYhK0hWISdpWUowMWldSjw5J19BcGcH"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    .line 485
    const-string v0, "eg=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 490
    :cond_0
    const-string v0, "eiciTlknMGk="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    const-string v0, "eiciTlknMGk="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cGYA"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    .line 515
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    return-object v0

    .line 501
    :cond_2
    const-string v0, "eicyQko0MyMC"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ejErWFQ0ICNJFw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const-string v0, "eicyQko0MyMCXTghKkxMMDBpHRc="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cGYA"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    goto :goto_0
.end method

.method public pathToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    const-string v0, "NjsoWV07IHwCFzY7KwNZOzA0QlExeiNVTDAmKExUJiApX1kyMWhJVzYhK0hWISdpWUowMWldSjw5J19BcGcHbFYxJilEXHowKU5NODEoWRclJi9AWSctYx55"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    .line 524
    const-string v0, "eg=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 528
    :cond_0
    const-string v0, "eiciTlknMGk="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    const-string v0, "eiciTlknMGk="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cGYA"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    .line 554
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    return-object v0

    .line 540
    :cond_2
    const-string v0, "eicyQko0MyMC"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ejErWFQ0ICNJFw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    const-string v0, "eicyQko0MyMCXTghKkxMMDBpHRc="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cGYA"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    iget-object v1, p0, Lcom/freestyle/RomActivity;->uriFor1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/RomActivity;->uriFor2:Ljava/lang/String;

    goto :goto_0
.end method

.method public permission()Z
    .locals 3

    .prologue
    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 444
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    .line 449
    :goto_0
    return v0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxAMEmhqGxUKcmsBGxRsfxA="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 447
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 449
    if-nez v0, :cond_1

    .line 450
    if-nez v1, :cond_1

    .line 449
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 757
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MT0nQVcyAC5IVTA="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    invoke-virtual {p0, v4}, Lcom/freestyle/RomActivity;->supportRequestWindowFeature(I)Z

    .line 759
    const v2, 0x7f10020d

    invoke-virtual {p0, v2}, Lcom/freestyle/RomActivity;->setTheme(I)V

    .line 760
    invoke-virtual {p0, v4}, Lcom/freestyle/RomActivity;->setFinishOnTouchOutside(Z)V

    .line 764
    :try_start_0
    const-class v2, Landroid/app/Activity;

    const-string v3, "MjEybFshPTBETCwbNllROjo1"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 765
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    .line 766
    array-length v5, v4

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_1

    .line 767
    const-class v0, Landroid/app/Activity;

    const-string v2, "NjsoW10nIBJCbCc1KF5UIDcjQ0w="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-class v5, Landroid/app/ActivityOptions;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 771
    return-void

    .line 766
    :cond_1
    :try_start_1
    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ASYnQ0s5ISVIViEXKUNOMCY1RFc7GC9eTDA6I18="

    invoke-static {v7}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/freestyle/RomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 779
    return-void
.end method
