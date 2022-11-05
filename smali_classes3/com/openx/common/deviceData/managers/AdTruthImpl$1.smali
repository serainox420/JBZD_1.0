.class Lcom/openx/common/deviceData/managers/AdTruthImpl$1;
.super Landroid/webkit/WebViewClient;
.source "AdTruthImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/common/deviceData/managers/AdTruthImpl;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/common/deviceData/managers/AdTruthImpl;


# direct methods
.method constructor <init>(Lcom/openx/common/deviceData/managers/AdTruthImpl;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl$1;->this$0:Lcom/openx/common/deviceData/managers/AdTruthImpl;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl$1;->this$0:Lcom/openx/common/deviceData/managers/AdTruthImpl;

    invoke-static {v0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->access$000(Lcom/openx/common/deviceData/managers/AdTruthImpl;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl$1;->this$0:Lcom/openx/common/deviceData/managers/AdTruthImpl;

    invoke-static {v0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->access$000(Lcom/openx/common/deviceData/managers/AdTruthImpl;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript: OX.tp_adtruth.getData(function() { jsBridge.handleResponse(JSON.stringify(OX.tp_adtruth.data)); });"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method
