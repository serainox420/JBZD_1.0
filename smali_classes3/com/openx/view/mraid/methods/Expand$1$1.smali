.class Lcom/openx/view/mraid/methods/Expand$1$1;
.super Landroid/os/Handler;
.source "Expand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Expand$1;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/view/mraid/methods/Expand$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Expand$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iput-object p2, p0, Lcom/openx/view/mraid/methods/Expand$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand$1$1;->this$1:Lcom/openx/view/mraid/methods/Expand$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Expand;->access$000(Lcom/openx/view/mraid/methods/Expand;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/view/mraid/methods/Expand$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/openx/view/mraid/methods/Expand$1$1$1;-><init>(Lcom/openx/view/mraid/methods/Expand$1$1;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method
