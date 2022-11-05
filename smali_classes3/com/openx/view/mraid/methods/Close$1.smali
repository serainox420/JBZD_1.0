.class Lcom/openx/view/mraid/methods/Close$1;
.super Landroid/os/Handler;
.source "Close.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Close;->closeThroughJS(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/methods/Close;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Close;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close$1;->this$0:Lcom/openx/view/mraid/methods/Close;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Close;->access$000(Lcom/openx/view/mraid/methods/Close;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/view/mraid/methods/Close$1$1;

    invoke-direct {v1, p0, p1}, Lcom/openx/view/mraid/methods/Close$1$1;-><init>(Lcom/openx/view/mraid/methods/Close$1;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method
