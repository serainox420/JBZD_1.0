.class Lcom/openx/view/mraid/methods/Resize$1;
.super Landroid/os/Handler;
.source "Resize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Resize;->resize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/methods/Resize;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Resize;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "loading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    const-string v1, "resize_when_expanded"

    invoke-static {v1}, Lcom/openx/common/utils/helpers/Utils;->getMRAIDErrMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resize"

    invoke-virtual {v0, v1, v2}, Lcom/openx/view/mraid/BaseJSInterface;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v1}, Lcom/openx/view/WebViewBase;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->setDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    new-instance v1, Lcom/openx/view/mraid/methods/Resize$1$1;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/methods/Resize$1$1;-><init>(Lcom/openx/view/mraid/methods/Resize$1;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->getResizeProperties(Landroid/os/Handler;)V

    goto :goto_0
.end method
