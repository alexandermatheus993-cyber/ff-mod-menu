.class Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2138
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    .prologue
    .line 2203
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2204
    move-object v5, v1

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    move-object v3, v5

    .line 2205
    move-object v5, v2

    const-class v6, Landroid/widget/ScrollView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2206
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 2207
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2208
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2209
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2210
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2211
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2212
    return-void

    .line 2206
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .prologue
    .line 2178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2179
    move-object v5, v1

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    move-object v3, v5

    .line 2180
    move-object v5, v2

    const-class v6, Landroid/widget/ScrollView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2181
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2182
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    move v4, v5

    .line 2183
    move v5, v4

    if-lez v5, :cond_1

    .line 2184
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2185
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    if-lez v5, :cond_0

    .line 2186
    move-object v5, v2

    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2188
    move-object v5, v2

    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2191
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 2192
    move-object v5, v2

    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2194
    move-object v5, v2

    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2199
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 11

    .prologue
    .line 2141
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2142
    const/4 v7, 0x1

    move v0, v7

    .line 2173
    :goto_0
    return v0

    .line 2144
    :cond_0
    move-object v7, v1

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    move-object v4, v7

    .line 2145
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2146
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2148
    :cond_1
    move v7, v2

    sparse-switch v7, :sswitch_data_0

    .line 2173
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2151
    :sswitch_0
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v4

    .line 2152
    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 2153
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v8, v5

    add-int/2addr v7, v8

    move-object v8, v4

    .line 2154
    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 2153
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 2155
    move v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2156
    move-object v7, v4

    const/4 v8, 0x0

    move v9, v6

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIZ)V

    .line 2157
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 2160
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 2163
    :sswitch_1
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v4

    .line 2164
    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 2165
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    move v8, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v6, v7

    .line 2166
    move v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 2167
    move-object v7, v4

    const/4 v8, 0x0

    move v9, v6

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIZ)V

    .line 2168
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 2171
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 2148
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method
