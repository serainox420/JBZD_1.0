.class Lcom/openx/view/mraid/methods/Close$1$1;
.super Ljava/lang/Object;
.source "Close.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Close$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/view/mraid/methods/Close$1;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Close$1;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iput-object p2, p0, Lcom/openx/view/mraid/methods/Close$1$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->val$msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "loading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->onStateChange(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Close;->access$000(Lcom/openx/view/mraid/methods/Close;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 59
    instance-of v1, v0, Lcom/openx/sdk/browser/AdBrowserActivity;

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close;->webViewBase:Lcom/openx/view/WebViewBase;

    instance-of v0, v0, Lcom/openx/view/WebViewBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close;->webViewBase:Lcom/openx/view/WebViewBase;

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Close;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v1}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/view/mraid/BaseJSInterface;->getDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getDialog()Lcom/openx/dialogs/AdBaseDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getDialog()Lcom/openx/dialogs/AdBaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/dialogs/AdBaseDialog;->cancel()V

    goto :goto_1

    .line 70
    :cond_4
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->onStateChange(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1$1;->this$1:Lcom/openx/view/mraid/methods/Close$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Close;->access$100(Lcom/openx/view/mraid/methods/Close;)V

    goto :goto_1
.end method
