.class final Lcom/unity3d/ads/webview/WebViewApp$1;
.super Ljava/lang/Object;
.source "WebViewApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/webview/WebViewApp;->create(Lcom/unity3d/ads/configuration/Configuration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 247
    new-instance v6, Lcom/unity3d/ads/webview/WebViewApp;

    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v6, v0, v5}, Lcom/unity3d/ads/webview/WebViewApp;-><init>(Lcom/unity3d/ads/configuration/Configuration;Lcom/unity3d/ads/webview/WebViewApp$1;)V

    .line 249
    const-string v0, "?platform=android"

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&origin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 267
    :goto_1
    invoke-virtual {v6}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/webview/WebViewApp$1;->val$configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/webview/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {v6}, Lcom/unity3d/ads/webview/WebViewApp;->setCurrentApp(Lcom/unity3d/ads/webview/WebViewApp;)V

    .line 270
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    const-string v2, "Unsupported charset when encoding origin url"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 263
    :catch_1
    move-exception v1

    .line 264
    const-string v2, "Unsupported charset when encoding webview version"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v0

    goto :goto_1
.end method
