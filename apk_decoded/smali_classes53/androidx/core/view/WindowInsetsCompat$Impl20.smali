.class Landroidx/core/view/WindowInsetsCompat$Impl20;
.super Landroidx/core/view/WindowInsetsCompat$Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# static fields
.field private static sAttachInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sAttachInfoField:Ljava/lang/reflect/Field;

.field private static sGetViewRootImplMethod:Ljava/lang/reflect/Method;

.field private static sViewRootImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sVisibleInsetsField:Ljava/lang/reflect/Field;

.field private static sVisibleRectReflectionFetched:Z


# instance fields
.field final mPlatformInsets:Landroid/view/WindowInsets;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

.field private mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mSystemWindowInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .locals 5
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 884
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    .line 891
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 892
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V
    .locals 9
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/WindowInsetsCompat$Impl20;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 895
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    new-instance v5, Landroid/view/WindowInsets;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    iget-object v7, v7, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-direct {v6, v7}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {v3, v4, v5}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    .line 896
    return-void
.end method

.method private getInsets(IZ)Landroidx/core/graphics/Insets;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 932
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v5, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    move-object v3, v5

    .line 933
    const/4 v5, 0x1

    move v4, v5

    :goto_0
    move v5, v4

    const/16 v6, 0x100

    if-gt v5, v6, :cond_1

    .line 934
    move v5, v1

    move v6, v4

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    .line 933
    :goto_1
    move v5, v4

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v4, v5

    goto :goto_0

    .line 937
    :cond_0
    move-object v5, v3

    move-object v6, v0

    move v7, v4

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Landroidx/core/graphics/Insets;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    .line 939
    :cond_1
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method private getRootStableInsets()Landroidx/core/graphics/Insets;
    .locals 2

    .prologue
    .line 1088
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    .line 1089
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    move-object v0, v1

    .line 1091
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    move-object v0, v1

    goto :goto_0
.end method

.method private getVisibleInsets(Landroid/view/View;)Landroidx/core/graphics/Insets;
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1112
    move-object v0, p0

    move-object v1, p1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_0

    .line 1113
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1117
    :cond_0
    sget-boolean v5, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    if-nez v5, :cond_1

    .line 1118
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl20;->loadReflectionField()V

    .line 1121
    :cond_1
    sget-object v5, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_3

    .line 1124
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    .line 1145
    :goto_0
    return-object v0

    .line 1128
    :cond_3
    :try_start_0
    sget-object v5, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    move-object v6, v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 1129
    move-object v5, v2

    if-nez v5, :cond_4

    .line 1130
    const-string v5, "WindowInsetsCompat"

    const-string v6, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v7, Ljava/lang/NullPointerException;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 1134
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 1136
    :cond_4
    sget-object v5, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1137
    sget-object v5, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    move-object v4, v5

    .line 1138
    move-object v5, v4

    if-eqz v5, :cond_5

    move-object v5, v4

    invoke-static {v5}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1140
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1141
    move-object v5, v2

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    .line 1145
    :goto_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 1142
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 1143
    move-object v5, v2

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private static loadReflectionField()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    .line 1151
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    .line 1152
    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sViewRootImplClass:Ljava/lang/Class;

    .line 1153
    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    .line 1154
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    .line 1155
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sViewRootImplClass:Ljava/lang/Class;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    .line 1156
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1157
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1165
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    .line 1166
    return-void

    .line 1158
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1159
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    .line 1164
    goto :goto_0

    .line 1160
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1161
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    .line 1164
    goto :goto_0

    .line 1162
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 1163
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static logReflectionError(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 1169
    move-object v0, p0

    const-string v1, "WindowInsetsCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 1170
    return-void
.end method


# virtual methods
.method copyRootViewBounds(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1097
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getVisibleInsets(Landroid/view/View;)Landroidx/core/graphics/Insets;

    move-result-object v3

    move-object v2, v3

    .line 1098
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1099
    sget-object v3, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    move-object v2, v3

    .line 1101
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl20;->setRootViewData(Landroidx/core/graphics/Insets;)V

    .line 1102
    return-void
.end method

.method copyWindowDataInto(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1072
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1073
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsCompat;->setRootViewData(Landroidx/core/graphics/Insets;)V

    .line 1074
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1174
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 1176
    :goto_0
    return v0

    .line 1175
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/core/view/WindowInsetsCompat$Impl20;

    move-object v2, v3

    .line 1176
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getInsets(I)Landroidx/core/graphics/Insets;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 906
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Landroidx/core/graphics/Insets;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected getInsetsForType(IZ)Landroidx/core/graphics/Insets;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 944
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v1

    sparse-switch v6, :sswitch_data_0

    .line 1028
    sget-object v6, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    move-object v0, v6

    :goto_0
    return-object v0

    .line 946
    :sswitch_0
    move v6, v2

    if-eqz v6, :cond_0

    .line 947
    move-object v6, v0

    invoke-direct {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v3, v6

    .line 948
    const/4 v6, 0x0

    move-object v7, v3

    iget v7, v7, Landroidx/core/graphics/Insets;->top:I

    move-object v8, v0

    .line 949
    invoke-virtual {v8}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v8

    iget v8, v8, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 948
    invoke-static {v6, v7, v8, v9}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 951
    :cond_0
    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v7

    iget v7, v7, Landroidx/core/graphics/Insets;->top:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 955
    :sswitch_1
    move v6, v2

    if-eqz v6, :cond_1

    .line 956
    move-object v6, v0

    invoke-direct {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v3, v6

    .line 957
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v4, v6

    .line 958
    move-object v6, v3

    iget v6, v6, Landroidx/core/graphics/Insets;->left:I

    move-object v7, v4

    iget v7, v7, Landroidx/core/graphics/Insets;->left:I

    .line 959
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v3

    iget v8, v8, Landroidx/core/graphics/Insets;->right:I

    move-object v9, v4

    iget v9, v9, Landroidx/core/graphics/Insets;->right:I

    .line 961
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroidx/core/graphics/Insets;->bottom:I

    move-object v10, v4

    iget v10, v10, Landroidx/core/graphics/Insets;->bottom:I

    .line 962
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 958
    invoke-static {v6, v7, v8, v9}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 965
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v3, v6

    .line 966
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v6, :cond_3

    .line 967
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    .line 968
    :goto_1
    move-object v4, v6

    .line 970
    move-object v6, v3

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    move v5, v6

    .line 971
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 975
    move v6, v5

    move-object v7, v4

    iget v7, v7, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 977
    :cond_2
    move-object v6, v3

    iget v6, v6, Landroidx/core/graphics/Insets;->left:I

    const/4 v7, 0x0

    move-object v8, v3

    iget v8, v8, Landroidx/core/graphics/Insets;->right:I

    move v9, v5

    invoke-static {v6, v7, v8, v9}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 968
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 986
    :sswitch_2
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v3, v6

    .line 987
    move-object v6, v0

    invoke-direct {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v4, v6

    .line 989
    move-object v6, v3

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    move-object v7, v4

    iget v7, v7, Landroidx/core/graphics/Insets;->bottom:I

    if-le v6, v7, :cond_4

    .line 992
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v3

    iget v9, v9, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v6, v7, v8, v9}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 993
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    sget-object v7, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 994
    invoke-virtual {v6, v7}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 997
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    move-object v7, v4

    iget v7, v7, Landroidx/core/graphics/Insets;->bottom:I

    if-le v6, v7, :cond_5

    .line 998
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget v9, v9, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v6, v7, v8, v9}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 1001
    :cond_5
    sget-object v6, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    move-object v0, v6

    goto/16 :goto_0

    .line 1005
    :sswitch_3
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 1009
    :sswitch_4
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 1013
    :sswitch_5
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getTappableElementInsets()Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 1017
    :sswitch_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v6, :cond_6

    .line 1018
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v6

    .line 1019
    :goto_2
    move-object v3, v6

    .line 1020
    move-object v6, v3

    if-eqz v6, :cond_7

    .line 1021
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    move-result v7

    move-object v8, v3

    .line 1022
    invoke-virtual {v8}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    move-result v8

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result v9

    .line 1021
    invoke-static {v6, v7, v8, v9}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 1019
    :cond_6
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v6

    goto :goto_2

    .line 1024
    :cond_7
    sget-object v6, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    move-object v0, v6

    goto/16 :goto_0

    .line 944
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method public getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 912
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Landroidx/core/graphics/Insets;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method final getSystemWindowInsets()Landroidx/core/graphics/Insets;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1050
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    if-nez v1, :cond_0

    .line 1051
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1052
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1053
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1054
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1055
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    .line 1051
    invoke-static {v2, v3, v4, v5}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    .line 1057
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    move-object v0, v1

    return-object v0
.end method

.method inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1064
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v6, Landroidx/core/view/WindowInsetsCompat$Builder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v8}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    move-object v5, v6

    .line 1065
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v7

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v6

    .line 1066
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v7

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v6

    .line 1067
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method isRound()Z
    .locals 2

    .prologue
    .line 900
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected isTypeVisible(I)Z
    .locals 5

    .prologue
    .line 1033
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 1043
    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    .line 1038
    :sswitch_0
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Landroidx/core/graphics/Insets;

    move-result-object v2

    sget-object v3, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v2, v3}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1041
    :sswitch_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 1033
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method isVisible(I)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 918
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v2, v3

    :goto_0
    move v3, v2

    const/16 v4, 0x100

    if-gt v3, v4, :cond_2

    .line 919
    move v3, v1

    move v4, v2

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 918
    :cond_0
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 922
    :cond_1
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsCompat$Impl20;->isTypeVisible(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 923
    const/4 v3, 0x0

    move v0, v3

    .line 926
    :goto_1
    return v0

    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method setRootViewData(Landroidx/core/graphics/Insets;)V
    .locals 4
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1083
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    .line 1084
    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1078
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 1079
    return-void
.end method
