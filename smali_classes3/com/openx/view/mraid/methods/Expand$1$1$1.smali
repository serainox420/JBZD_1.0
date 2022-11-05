.class Lcom/openx/view/mraid/methods/Expand$1$1$1;
.super Ljava/lang/Object;
.source "Expand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Expand$1$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Expand$1$1;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iput-object p2, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 104
    iget-object v1, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->val$msg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "loading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "expanded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v2, "resized"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v1, v0}, Lcom/openx/view/mraid/BaseJSInterface;->closeResizedAdWindow(Z)V

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    iget-object v2, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Expand;->webViewBanner:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2}, Lcom/openx/view/WebViewBase;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/openx/view/mraid/BaseJSInterface;->setDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v1, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    iget-object v2, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Expand$1$1;->val$url:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {v1, v0}, Lcom/openx/view/mraid/BaseJSInterface;->setLaunchWithURL(Z)V

    .line 116
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->isLaunchWithURL()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->setURLForLaunching(Ljava/lang/String;)V

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand;->webViewBanner:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->stoppedLoading()V

    .line 120
    const-string v0, "MRAID"

    const-string v1, "Attempting ExpandDialog"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/openx/dialogs/AdExpandedDialog;

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    invoke-static {v1}, Lcom/openx/view/mraid/methods/Expand;->access$000(Lcom/openx/view/mraid/methods/Expand;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/mraid/methods/Expand$1$1$1;->this$2:Lcom/openx/view/mraid/methods/Expand$1$1;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Expand;->webViewBanner:Lcom/openx/view/WebViewBase;

    invoke-direct {v0, v1, v2}, Lcom/openx/dialogs/AdExpandedDialog;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 123
    invoke-virtual {v0}, Lcom/openx/dialogs/AdBaseDialog;->show()V

    goto/16 :goto_0

    .line 115
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
