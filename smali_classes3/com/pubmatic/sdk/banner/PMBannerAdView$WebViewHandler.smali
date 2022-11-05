.class Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V
    .locals 0

    .prologue
    .line 2325
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    return-void
.end method


# virtual methods
.method public webViewPageFinished(Lcom/pubmatic/sdk/banner/mraid/WebView;)V
    .locals 2

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    if-ne v0, p1, :cond_1

    .line 2334
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2200(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    .line 2338
    :cond_0
    :goto_0
    return-void

    .line 2335
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    if-ne v0, p1, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2200(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto :goto_0
.end method

.method public webViewPageStarted(Lcom/pubmatic/sdk/banner/mraid/WebView;)V
    .locals 0

    .prologue
    .line 2329
    return-void
.end method

.method public webViewReceivedError(Lcom/pubmatic/sdk/banner/mraid/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading rich media ad content.  Error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 2350
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2351
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onFailedToReceiveAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Exception;)V

    .line 2354
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->removeContent()V

    .line 2355
    return-void
.end method

.method public webViewShouldOverrideUrlLoading(Lcom/pubmatic/sdk/banner/mraid/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1600(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;Z)V

    .line 2360
    const/4 v0, 0x1

    return v0
.end method
