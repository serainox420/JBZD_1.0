.class Lcom/openx/view/mraid/methods/Resize$2;
.super Ljava/lang/Object;
.source "Resize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Resize;->showExpandDialog(IIIILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/methods/Resize;

.field final synthetic val$allowOffscreen:Z

.field final synthetic val$customClosePosition:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Resize;IIIILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iput p2, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$x:I

    iput p3, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$y:I

    iput p4, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$width:I

    iput p5, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$height:I

    iput-object p6, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$customClosePosition:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$allowOffscreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 138
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->isResizedAdWindowOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iget v1, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$x:I

    iget v2, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$y:I

    iget v3, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$width:I

    iget v4, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 147
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$customClosePosition:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openx/view/mraid/methods/Resize;->access$300(Lcom/openx/view/mraid/methods/Resize;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->detachFromParent()Landroid/view/ViewGroup;

    .line 155
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->stoppedLoading()V

    .line 157
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Resize;->access$400(Lcom/openx/view/mraid/methods/Resize;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 160
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    iget-object v4, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v4, v4, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v3, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Resize;->access$500(Lcom/openx/view/mraid/methods/Resize;)Lcom/openx/view/AdCloseButton;

    move-result-object v0

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    new-instance v4, Lcom/openx/view/AdCloseButton;

    iget-object v5, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-static {v5}, Lcom/openx/view/mraid/methods/Resize;->access$400(Lcom/openx/view/mraid/methods/Resize;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/openx/view/AdCloseButton;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Lcom/openx/view/mraid/methods/Resize;->access$502(Lcom/openx/view/mraid/methods/Resize;Lcom/openx/view/AdCloseButton;)Lcom/openx/view/AdCloseButton;

    .line 170
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Resize;->access$500(Lcom/openx/view/mraid/methods/Resize;)Lcom/openx/view/AdCloseButton;

    move-result-object v0

    new-instance v4, Lcom/openx/view/mraid/methods/Resize$2$1;

    invoke-direct {v4, p0}, Lcom/openx/view/mraid/methods/Resize$2$1;-><init>(Lcom/openx/view/mraid/methods/Resize$2;)V

    invoke-virtual {v0, v4}, Lcom/openx/view/AdCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v4, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$customClosePosition:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/openx/view/mraid/methods/Resize;->access$300(Lcom/openx/view/mraid/methods/Resize;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Resize;->access$500(Lcom/openx/view/mraid/methods/Resize;)Lcom/openx/view/AdCloseButton;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 185
    iget-object v4, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v4, v4, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v4, v0}, Lcom/openx/view/mraid/BaseJSInterface;->setResizedAdWindow(Landroid/widget/PopupWindow;)V

    .line 186
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 187
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v4

    iget-boolean v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$allowOffscreen:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iget v4, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$width:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 189
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iget v4, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$height:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 190
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    new-instance v4, Lcom/openx/view/mraid/methods/Resize$2$2;

    invoke-direct {v4, p0}, Lcom/openx/view/mraid/methods/Resize$2$2;-><init>(Lcom/openx/view/mraid/methods/Resize$2;)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 210
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 214
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getResizedAdWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v4, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$x:I

    iget v5, p0, Lcom/openx/view/mraid/methods/Resize$2;->val$y:I

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 215
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Resize;->access$500(Lcom/openx/view/mraid/methods/Resize;)Lcom/openx/view/AdCloseButton;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 187
    goto :goto_1
.end method
