.class Lcom/openx/view/mraid/methods/Resize$2$2;
.super Ljava/lang/Object;
.source "Resize.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Resize$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/view/mraid/methods/Resize$2;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Resize$2;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Resize$2$2;->this$1:Lcom/openx/view/mraid/methods/Resize$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2$2;->this$1:Lcom/openx/view/mraid/methods/Resize$2;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->hasRestoreStateFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2$2;->this$1:Lcom/openx/view/mraid/methods/Resize$2;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getMRAIDClose()Lcom/openx/view/mraid/methods/Close;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Resize$2$2;->this$1:Lcom/openx/view/mraid/methods/Resize$2;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v1}, Lcom/openx/view/mraid/BaseJSInterface;->getRestoreStateOnPopupClose()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/methods/Close;->closeThroughJS(Z)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2$2;->this$1:Lcom/openx/view/mraid/methods/Resize$2;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->setResizedAdWindow(Landroid/widget/PopupWindow;)V

    .line 205
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$2$2;->this$1:Lcom/openx/view/mraid/methods/Resize$2;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$2;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getMRAIDClose()Lcom/openx/view/mraid/methods/Close;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/methods/Close;->closeThroughJS(Z)V

    goto :goto_0
.end method
