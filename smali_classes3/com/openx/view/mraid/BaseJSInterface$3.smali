.class Lcom/openx/view/mraid/BaseJSInterface$3;
.super Ljava/lang/Object;
.source "BaseJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/BaseJSInterface;->evaluateJavaScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/BaseJSInterface;

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/BaseJSInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface$3;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    iput-object p2, p0, Lcom/openx/view/mraid/BaseJSInterface$3;->val$script:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/openx/view/mraid/BaseJSInterface$3;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-static {v0}, Lcom/openx/view/mraid/BaseJSInterface;->access$000(Lcom/openx/view/mraid/BaseJSInterface;)Lcom/openx/view/WebViewBase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: if (window.mraid && (window.mraid.getState() != \'loading\' ) && ( window.mraid.getState() != \'hidden\') ) { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/mraid/BaseJSInterface$3;->val$script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 723
    return-void
.end method
