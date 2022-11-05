.class Lcom/openx/view/mraid/methods/Expand$1;
.super Ljava/lang/Object;
.source "Expand.java"

# interfaces
.implements Lcom/openx/view/mraid/network/RedirectURLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Expand;->expand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/methods/Expand;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Expand;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {p2}, Lcom/openx/common/utils/helpers/Utils;->isVideoContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->playVideo(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand$1;->this$0:Lcom/openx/view/mraid/methods/Expand;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    new-instance v1, Lcom/openx/view/mraid/methods/Expand$1$1;

    invoke-direct {v1, p0, p1}, Lcom/openx/view/mraid/methods/Expand$1$1;-><init>(Lcom/openx/view/mraid/methods/Expand$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->getState(Landroid/os/Handler;)V

    goto :goto_0
.end method
