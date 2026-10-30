.class public Lcom/freestyle/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freestyle/MainActivity$FloatingOnTouchListener;
    }
.end annotation


# instance fields
.field private Data:Landroid/content/SharedPreferences;

.field private ID:Ljava/lang/String;

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

.field private Position:D

.field private ValidadeString:Ljava/lang/String;

.field private _timer:Ljava/util/Timer;

.field private b11:D

.field private displayView:Landroid/view/View;

.field private imageview1:Landroid/widget/ImageView;

.field private imageview2:Landroid/widget/ImageView;

.field private imageview3:Landroid/widget/ImageView;

.field private intent:Landroid/content/Intent;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear12:Landroid/widget/LinearLayout;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private linear6:Landroid/widget/LinearLayout;

.field private linear8:Landroid/widget/LinearLayout;

.field private linear9:Landroid/widget/LinearLayout;

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

.field private n1:D

.field private n2:D

.field private n3:D

.field private n4:D

.field private n5:D

.field private n6:D

.field private n7:D

.field private n8:D

.field private n9:D

.field private prog:Landroid/app/ProgressDialog;

.field private progressValue2:D

.field private rot:D

.field private textview1:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview3:Landroid/widget/TextView;

.field private textview4:Landroid/widget/TextView;

.field private textview5:Landroid/widget/TextView;

.field private textview6:Landroid/widget/TextView;

.field private ti:Ljava/util/TimerTask;

.field private timer:Ljava/util/TimerTask;

.field private user:Landroid/widget/EditText;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/freestyle/MainActivity;->_timer:Ljava/util/Timer;

    .line 51
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->Position:D

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/MainActivity;->ID:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freestyle/MainActivity;->Map:Ljava/util/HashMap;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/MainActivity;->Key:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/freestyle/MainActivity;->ValidadeString:Ljava/lang/String;

    .line 56
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->b11:D

    .line 57
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n1:D

    .line 58
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n2:D

    .line 59
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n3:D

    .line 60
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n4:D

    .line 61
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n5:D

    .line 62
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n6:D

    .line 63
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n7:D

    .line 64
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n8:D

    .line 65
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->n9:D

    .line 66
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->rot:D

    .line 67
    iput-wide v2, p0, Lcom/freestyle/MainActivity;->progressValue2:D

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freestyle/MainActivity;->mapList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/freestyle/MainActivity;->intent:Landroid/content/Intent;

    .line 47
    return-void
.end method

.method private _reCall()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xa

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MT0nQVcyAC5IVTA="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 213
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    .line 215
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 217
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {p0, v6}, Lcom/freestyle/MainActivity;->setFinishOnTouchOutside(Z)V

    .line 222
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 224
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 225
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, -0xf8f8f9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 227
    :cond_1
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 230
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 232
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 235
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 236
    neg-int v1, v1

    int-to-float v1, v1

    .line 235
    invoke-direct {v2, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 238
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 241
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x10a0000

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 242
    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 245
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 246
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 247
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 249
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v0, p0, Lcom/freestyle/MainActivity;->linear2:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$2;-><init>(Lcom/freestyle/MainActivity;)V

    const v2, -0xefeff0

    invoke-virtual {v1, v7, v2}, Lcom/freestyle/MainActivity$2;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/freestyle/MainActivity;->linear9:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$3;-><init>(Lcom/freestyle/MainActivity;)V

    const v2, -0xececed

    invoke-virtual {v1, v7, v2}, Lcom/freestyle/MainActivity$3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/freestyle/MainActivity;->linear12:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$4;-><init>(Lcom/freestyle/MainActivity;)V

    const v2, -0xb350b0

    invoke-virtual {v1, v7, v2}, Lcom/freestyle/MainActivity$4;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    const-string v1, "NDoiX1c8MBlEXA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    iput-object v0, p0, Lcom/freestyle/MainActivity;->ID:Ljava/lang/String;

    .line 258
    return-void
.end method

.method static synthetic access$0(Lcom/freestyle/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/freestyle/MainActivity;->user:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/freestyle/MainActivity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/freestyle/MainActivity;->ti:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$10(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->n3:D

    return-wide v0
.end method

.method static synthetic access$11(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->n3:D

    return-void
.end method

.method static synthetic access$12(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->n4:D

    return-wide v0
.end method

.method static synthetic access$13(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->n4:D

    return-void
.end method

.method static synthetic access$14(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->n5:D

    return-wide v0
.end method

.method static synthetic access$15(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->n5:D

    return-void
.end method

.method static synthetic access$16(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->n6:D

    return-wide v0
.end method

.method static synthetic access$17(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->n6:D

    return-void
.end method

.method static synthetic access$18(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->n7:D

    return-wide v0
.end method

.method static synthetic access$19(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->n7:D

    return-void
.end method

.method static synthetic access$2(Lcom/freestyle/MainActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/freestyle/MainActivity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$20(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->n8:D

    return-wide v0
.end method

.method static synthetic access$21(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->n8:D

    return-void
.end method

.method static synthetic access$22(Lcom/freestyle/MainActivity;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/freestyle/MainActivity;->showFloatingWindow()V

    return-void
.end method

.method static synthetic access$3(Lcom/freestyle/MainActivity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/freestyle/MainActivity;->ti:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$4(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->rot:D

    return-wide v0
.end method

.method static synthetic access$5(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->rot:D

    return-void
.end method

.method static synthetic access$6(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->n1:D

    return-wide v0
.end method

.method static synthetic access$7(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->n1:D

    return-void
.end method

.method static synthetic access$8(Lcom/freestyle/MainActivity;)D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/freestyle/MainActivity;->n2:D

    return-wide v0
.end method

.method static synthetic access$9(Lcom/freestyle/MainActivity;D)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/freestyle/MainActivity;->n2:D

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 105
    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear1:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear2:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear3:Landroid/widget/LinearLayout;

    .line 108
    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear5:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear4:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear6:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->imageview1:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f080231

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->textview1:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f080237

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->textview2:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->imageview2:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->textview3:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear8:Landroid/widget/LinearLayout;

    .line 117
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear9:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->linear12:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->textview4:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f080251

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->textview5:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->imageview3:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->user:Landroid/widget/EditText;

    .line 123
    const v0, 0x7f080252

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->textview6:Landroid/widget/TextView;

    .line 124
    const-string v0, "ETUyTA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freestyle/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/MainActivity;->Data:Landroid/content/SharedPreferences;

    .line 126
    iget-object v0, p0, Lcom/freestyle/MainActivity;->linear12:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/freestyle/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/freestyle/MainActivity$1;-><init>(Lcom/freestyle/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method private initializeLogic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 139
    const-string v0, "Ij0oSVci"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/freestyle/MainActivity;->windowManager:Landroid/view/WindowManager;

    .line 140
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 150
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 152
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7dd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 156
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 158
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 159
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 163
    invoke-direct {p0}, Lcom/freestyle/MainActivity;->_reCall()V

    .line 165
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method private showFloatingWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 176
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freestyle/MainActivity;->displayView:Landroid/view/View;

    iget-object v0, p0, Lcom/freestyle/MainActivity;->displayView:Landroid/view/View;

    new-instance v1, Lcom/freestyle/MainActivity$FloatingOnTouchListener;

    invoke-direct {v1, p0, v2}, Lcom/freestyle/MainActivity$FloatingOnTouchListener;-><init>(Lcom/freestyle/MainActivity;Lcom/freestyle/MainActivity$FloatingOnTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object v0, p0, Lcom/freestyle/MainActivity;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/freestyle/MainActivity;->displayView:Landroid/view/View;

    iget-object v2, p0, Lcom/freestyle/MainActivity;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    return-void
.end method


# virtual methods
.method public _Onclick()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public _ProgresbarDimiss()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/freestyle/MainActivity;->prog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/freestyle/MainActivity;->prog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 278
    :cond_0
    return-void
.end method

.method public _ProgresbarShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 264
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freestyle/MainActivity;->prog:Landroid/app/ProgressDialog;

    .line 265
    iget-object v0, p0, Lcom/freestyle/MainActivity;->prog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 266
    iget-object v0, p0, Lcom/freestyle/MainActivity;->prog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/freestyle/MainActivity;->prog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 268
    iget-object v0, p0, Lcom/freestyle/MainActivity;->prog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 269
    iget-object v0, p0, Lcom/freestyle/MainActivity;->prog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 270
    return-void
.end method

.method public _dialogTheme()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public _llucas7e7()V
    .locals 39

    .prologue
    .line 311
    invoke-static/range {p0 .. p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    new-instance v4, Landroid/content/Intent;

    const-string v5, "NDoiX1c8MGheXSEgL0NfJnonTkw8OygDdRQaB2p9ChsQaGoZFR9yaBAGC2RrBh0JYw=="

    invoke-static {v5}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "JTUlRlkyMXw="

    invoke-static {v7}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/freestyle/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 314
    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/freestyle/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 318
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 319
    new-instance v4, Landroid/content/Intent;

    const-string v5, "NDoiX1c8MGheXSEgL0NfJnonTkw8OygDdRQaB2p9ChsQaGoZFR9yaBAGC2RrBh0JYw=="

    invoke-static {v5}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "JTUlRlkyMXw="

    invoke-static {v7}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/freestyle/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 320
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/freestyle/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 953
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "NDoiX1c8MGhEViExKFkWNDcyRFc7egtscRs="

    invoke-static {v5}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    .line 327
    const/16 v7, 0x7f6

    .line 333
    :goto_1
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    .line 334
    const/4 v5, -0x2

    .line 335
    const/4 v6, -0x2

    .line 338
    const/16 v8, 0x28

    .line 341
    const/4 v9, -0x2

    .line 333
    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 343
    const-string v5, "Ij0oSVci"

    invoke-static {v5}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/freestyle/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/view/WindowManager;

    .line 344
    const-string v5, "OTU/Qk0hCy9DXjk1MkhK"

    invoke-static {v5}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/freestyle/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/freestyle/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b002d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v38

    .line 350
    const v5, 0x7f080167

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 351
    new-instance v6, Lcom/freestyle/MainActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/freestyle/MainActivity$5;-><init>(Lcom/freestyle/MainActivity;)V

    const/16 v7, 0x168

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/freestyle/MainActivity$5;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 353
    new-instance v6, Lcom/freestyle/MainActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-direct {v6, v0, v4, v1, v2}, Lcom/freestyle/MainActivity$6;-><init>(Lcom/freestyle/MainActivity;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 381
    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 382
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 383
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 385
    const v5, 0x7f0800ea

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 386
    const v6, 0x7f080115

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Landroid/widget/LinearLayout;

    .line 387
    const v6, 0x7f0801a3

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Landroid/widget/ImageView;

    .line 388
    const v6, 0x7f0801a4

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Landroid/widget/ImageView;

    .line 389
    const v6, 0x7f0801a5

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v21, v6

    check-cast v21, Landroid/widget/ImageView;

    .line 390
    const v6, 0x7f0801a6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v22, v6

    check-cast v22, Landroid/widget/ImageView;

    .line 391
    const v6, 0x7f0801a7

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v23, v6

    check-cast v23, Landroid/widget/ImageView;

    .line 392
    const v6, 0x7f0801a8

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Landroid/widget/ImageView;

    .line 393
    const v6, 0x7f0801a9

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v25, v6

    check-cast v25, Landroid/widget/ImageView;

    .line 394
    const v6, 0x7f0801aa

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v26, v6

    check-cast v26, Landroid/widget/ImageView;

    .line 395
    const v6, 0x7f0800f9

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 396
    const v7, 0x7f0800fa

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 397
    const v8, 0x7f0800fb

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v27, v8

    check-cast v27, Landroid/widget/ImageView;

    .line 398
    const v8, 0x7f0800fc

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v28, v8

    check-cast v28, Landroid/widget/ImageView;

    .line 399
    const v8, 0x7f080221

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v29, v8

    check-cast v29, Landroid/widget/TextView;

    .line 400
    const v8, 0x7f080172

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 401
    const v8, 0x7f08026c

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 402
    const v9, 0x7f08026d

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 403
    const v10, 0x7f0801bf

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 404
    const v10, 0x7f0800e7

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 405
    const v10, 0x7f08006a

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 406
    const v10, 0x7f08004a

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 407
    const v10, 0x7f080100

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 408
    const v10, 0x7f080049

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v30, v10

    check-cast v30, Landroid/widget/LinearLayout;

    .line 409
    const v10, 0x7f0801be

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v31, v10

    check-cast v31, Landroid/widget/LinearLayout;

    .line 410
    const v10, 0x7f080048

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v32, v10

    check-cast v32, Landroid/widget/LinearLayout;

    .line 411
    const v10, 0x7f080069

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v33, v10

    check-cast v33, Landroid/widget/LinearLayout;

    .line 412
    const v10, 0x7f0800ff

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v34, v10

    check-cast v34, Landroid/widget/LinearLayout;

    .line 413
    const v10, 0x7f080277

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v35, v10

    check-cast v35, Landroid/widget/ScrollView;

    .line 414
    const v10, 0x7f0801ec

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v36, v10

    check-cast v36, Landroid/widget/Button;

    .line 415
    const v10, 0x7f08018b

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v37, v10

    check-cast v37, Landroid/widget/Button;

    .line 416
    const-string v10, "NzUyWV0nLStMVjQzI18="

    invoke-static {v10}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/freestyle/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryManager;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "FDoiX1c8MHwN"

    invoke-static {v10}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    new-instance v8, Lcom/freestyle/MainActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v8, v0, v6, v1, v2}, Lcom/freestyle/MainActivity$7;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v8, Lcom/freestyle/MainActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-direct {v8, v0, v6, v1, v2}, Lcom/freestyle/MainActivity$8;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    new-instance v6, Lcom/freestyle/MainActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/freestyle/MainActivity$9;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/freestyle/MainActivity;->ti:Ljava/util/TimerTask;

    .line 526
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/freestyle/MainActivity;->_timer:Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/freestyle/MainActivity;->ti:Ljava/util/TimerTask;

    const-wide/16 v8, 0x64

    const-wide/16 v10, 0x12c

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 527
    const v6, 0x7f080167

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 528
    new-instance v7, Lcom/freestyle/MainActivity$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1, v5}, Lcom/freestyle/MainActivity$10;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    const/16 v6, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    const/16 v6, 0x8

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    const/16 v6, 0x8

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    const/16 v6, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    const/16 v6, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    new-instance v6, Lcom/freestyle/MainActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/freestyle/MainActivity$11;-><init>(Lcom/freestyle/MainActivity;)V

    const/16 v7, 0xa

    const v8, -0xf7f7f8

    invoke-virtual {v6, v7, v8}, Lcom/freestyle/MainActivity$11;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 541
    new-instance v6, Lcom/freestyle/MainActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/freestyle/MainActivity$12;-><init>(Lcom/freestyle/MainActivity;)V

    const/16 v7, 0xa

    const v8, -0xfd8843

    invoke-virtual {v6, v7, v8}, Lcom/freestyle/MainActivity$12;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 542
    new-instance v6, Lcom/freestyle/MainActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/freestyle/MainActivity$13;-><init>(Lcom/freestyle/MainActivity;)V

    const/16 v7, 0xa

    const v8, -0xb350b0

    invoke-virtual {v6, v7, v8}, Lcom/freestyle/MainActivity$13;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 543
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/freestyle/MainActivity;->rot:D

    .line 544
    new-instance v6, Lcom/freestyle/MainActivity$14;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v6, v0, v1}, Lcom/freestyle/MainActivity$14;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/freestyle/MainActivity;->ti:Ljava/util/TimerTask;

    .line 556
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/freestyle/MainActivity;->_timer:Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/freestyle/MainActivity;->ti:Ljava/util/TimerTask;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x14

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 557
    const v6, 0x7f0800e1

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 559
    new-instance v7, Lcom/freestyle/MainActivity$15;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v5, v1}, Lcom/freestyle/MainActivity$15;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    const v5, 0x7f080084

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 567
    new-instance v6, Lcom/freestyle/MainActivity$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-direct {v6, v0, v1, v2}, Lcom/freestyle/MainActivity$16;-><init>(Lcom/freestyle/MainActivity;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 573
    const-string v6, "dhIAGXsUEnMd"

    invoke-static {v6}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 574
    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 575
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 576
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 577
    const-string v6, "dhIAHQhlZHYd"

    invoke-static {v6}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 578
    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 579
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 580
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 581
    const-string v6, "dhIAHQhlZHYd"

    invoke-static {v6}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 582
    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 583
    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 584
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 585
    const-string v6, "dhIAHQhlZHYd"

    invoke-static {v6}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 586
    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_3

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 587
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 588
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 589
    const-string v6, "dhIAHQhlZHYd"

    invoke-static {v6}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 590
    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_4

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 591
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 592
    new-instance v5, Lcom/freestyle/MainActivity$17;

    move-object/from16 v6, p0

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v9, v34

    move-object/from16 v10, v33

    move-object/from16 v11, v30

    invoke-direct/range {v5 .. v16}, Lcom/freestyle/MainActivity$17;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    new-instance v5, Lcom/freestyle/MainActivity$18;

    move-object/from16 v6, p0

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    invoke-direct/range {v5 .. v16}, Lcom/freestyle/MainActivity$18;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    new-instance v5, Lcom/freestyle/MainActivity$19;

    move-object/from16 v6, p0

    move-object/from16 v7, v33

    move-object/from16 v8, v30

    move-object/from16 v9, v34

    move-object/from16 v10, v32

    move-object/from16 v11, v31

    invoke-direct/range {v5 .. v16}, Lcom/freestyle/MainActivity$19;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    new-instance v5, Lcom/freestyle/MainActivity$20;

    move-object/from16 v6, p0

    move-object/from16 v7, v30

    move-object/from16 v8, v33

    move-object/from16 v9, v32

    move-object/from16 v10, v34

    move-object/from16 v11, v31

    invoke-direct/range {v5 .. v16}, Lcom/freestyle/MainActivity$20;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    new-instance v5, Lcom/freestyle/MainActivity$21;

    move-object/from16 v6, p0

    move-object/from16 v7, v34

    move-object/from16 v8, v33

    move-object/from16 v9, v30

    move-object/from16 v10, v32

    move-object/from16 v11, v31

    invoke-direct/range {v5 .. v16}, Lcom/freestyle/MainActivity$21;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    new-instance v5, Lcom/freestyle/MainActivity$22;

    move-object/from16 v6, p0

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v27

    invoke-direct/range {v5 .. v10}, Lcom/freestyle/MainActivity$22;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    new-instance v5, Lcom/freestyle/MainActivity$23;

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move-object/from16 v8, v19

    move-object/from16 v9, v21

    move-object/from16 v10, v27

    invoke-direct/range {v5 .. v10}, Lcom/freestyle/MainActivity$23;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    new-instance v5, Lcom/freestyle/MainActivity$24;

    move-object/from16 v6, p0

    move-object/from16 v7, v21

    move-object/from16 v8, v20

    move-object/from16 v9, v19

    move-object/from16 v10, v27

    invoke-direct/range {v5 .. v10}, Lcom/freestyle/MainActivity$24;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    new-instance v5, Lcom/freestyle/MainActivity$25;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v35

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/freestyle/MainActivity$25;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ScrollView;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    new-instance v5, Lcom/freestyle/MainActivity$26;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lcom/freestyle/MainActivity$26;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    new-instance v5, Lcom/freestyle/MainActivity$27;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lcom/freestyle/MainActivity$27;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    new-instance v5, Lcom/freestyle/MainActivity$28;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Lcom/freestyle/MainActivity$28;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    new-instance v5, Lcom/freestyle/MainActivity$29;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v5, v0, v1}, Lcom/freestyle/MainActivity$29;-><init>(Lcom/freestyle/MainActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 330
    :cond_2
    const/16 v7, 0x7d2

    goto/16 :goto_1

    .line 574
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 578
    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 582
    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 586
    :array_3
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 590
    :array_4
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public closes()V
    .locals 2

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/freestyle/MainActivity;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/freestyle/MainActivity;->displayView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
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
    .line 983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 984
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 985
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 989
    return-object v1

    .line 986
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 987
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 994
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 1004
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 999
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 963
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 964
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 965
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 970
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 971
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 972
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 977
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 978
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/freestyle/MainActivity;->setContentView(I)V

    .line 100
    invoke-direct {p0, p1}, Lcom/freestyle/MainActivity;->initialize(Landroid/os/Bundle;)V

    .line 101
    invoke-direct {p0}, Lcom/freestyle/MainActivity;->initializeLogic()V

    .line 102
    return-void
.end method

.method public setContentView(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 291
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MT0nQVcyAC5IVTA="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {p0, v4}, Lcom/freestyle/MainActivity;->supportRequestWindowFeature(I)Z

    .line 293
    const v2, 0x7f10020d

    invoke-virtual {p0, v2}, Lcom/freestyle/MainActivity;->setTheme(I)V

    .line 294
    invoke-virtual {p0, v4}, Lcom/freestyle/MainActivity;->setFinishOnTouchOutside(Z)V

    .line 298
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

    .line 299
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    .line 300
    array-length v5, v4

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_1

    .line 301
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

    .line 304
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 305
    return-void

    .line 300
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
    .line 958
    invoke-virtual {p0}, Lcom/freestyle/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 959
    return-void
.end method
