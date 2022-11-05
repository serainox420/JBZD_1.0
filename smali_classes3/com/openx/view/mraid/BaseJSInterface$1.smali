.class Lcom/openx/view/mraid/BaseJSInterface$1;
.super Ljava/lang/Object;
.source "BaseJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/BaseJSInterface;->expand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/BaseJSInterface;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/BaseJSInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface$1;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    iput-object p2, p0, Lcom/openx/view/mraid/BaseJSInterface$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "MRAID"

    const-string v1, "stopping loading and calling mraidExpand 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$1;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-static {v0}, Lcom/openx/view/mraid/BaseJSInterface;->access$000(Lcom/openx/view/mraid/BaseJSInterface;)Lcom/openx/view/WebViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->stoppedLoading()V

    .line 273
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$1;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-static {v0}, Lcom/openx/view/mraid/BaseJSInterface;->access$100(Lcom/openx/view/mraid/BaseJSInterface;)Lcom/openx/view/mraid/methods/Expand;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/methods/Expand;->expand(Ljava/lang/String;)V

    .line 274
    return-void
.end method
