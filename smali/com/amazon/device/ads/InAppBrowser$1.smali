.class Lcom/amazon/device/ads/InAppBrowser$1;
.super Landroid/webkit/WebViewClient;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InAppBrowser;->initializeWebView(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InAppBrowser;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InAppBrowser;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$000(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "InApp Browser error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-static {p2}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$100(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/WebUtils2;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/amazon/device/ads/WebUtils2;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$100(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/WebUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/amazon/device/ads/WebUtils2;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
