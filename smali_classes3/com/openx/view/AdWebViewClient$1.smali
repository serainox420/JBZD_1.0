.class Lcom/openx/view/AdWebViewClient$1;
.super Ljava/lang/Object;
.source "AdWebViewClient.java"

# interfaces
.implements Lcom/openx/sdk/event/OXMEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/AdWebViewClient;-><init>(Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/AdWebViewClient;


# direct methods
.method constructor <init>(Lcom/openx/view/AdWebViewClient;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/openx/view/AdWebViewClient$1;->this$0:Lcom/openx/view/AdWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPerform(Lcom/openx/sdk/event/OXMEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v0, "AdWebViewClient"

    const-string v1, "######## Closing"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient$1;->this$0:Lcom/openx/view/AdWebViewClient;

    invoke-static {v0}, Lcom/openx/view/AdWebViewClient;->access$000(Lcom/openx/view/AdWebViewClient;)Lcom/openx/view/WebViewBase;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/openx/view/WebViewBase;->setIsClicked(Z)V

    .line 74
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient$1;->this$0:Lcom/openx/view/AdWebViewClient;

    invoke-static {v0}, Lcom/openx/view/AdWebViewClient;->access$200(Lcom/openx/view/AdWebViewClient;)Lcom/openx/sdk/event/OXMEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CLOSE_ACTIVE_INTERNAL_WINDOW:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    iget-object v2, p0, Lcom/openx/view/AdWebViewClient$1;->this$0:Lcom/openx/view/AdWebViewClient;

    invoke-static {v2}, Lcom/openx/view/AdWebViewClient;->access$100(Lcom/openx/view/AdWebViewClient;)Lcom/openx/sdk/event/OXMEventsHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/openx/sdk/event/OXMEventsListener;->unregisterEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V

    .line 75
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient$1;->this$0:Lcom/openx/view/AdWebViewClient;

    invoke-static {v0, v3}, Lcom/openx/view/AdWebViewClient;->access$302(Lcom/openx/view/AdWebViewClient;Z)Z

    .line 76
    return-void
.end method
