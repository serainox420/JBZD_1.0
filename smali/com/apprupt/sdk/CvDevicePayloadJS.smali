.class Lcom/apprupt/sdk/CvDevicePayloadJS;
.super Ljava/lang/Object;
.source "CvDevicePayloadJS.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;,
        Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;
    }
.end annotation


# instance fields
.field private a:Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;

.field private b:Landroid/webkit/WebView;

.field private c:Z

.field private final d:Lcom/apprupt/sdk/Logger$log;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v6, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->c:Z

    .line 19
    const-string v0, "DEVICE_PAYLOAD"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    .line 54
    iput-object p3, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->a:Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;

    .line 56
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    .line 57
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/apprupt/sdk/CvDevicePayloadJS$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvDevicePayloadJS$1;-><init>(Lcom/apprupt/sdk/CvDevicePayloadJS;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvDevicePayloadJS$ChromeClient;-><init>(Lcom/apprupt/sdk/CvDevicePayloadJS;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    const-string v1, "jsb"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const-string v0, "<!DOCTYPE html>\n<html>\n <head>\n  <meta charset=\"utf-8\" />\n  <title>pg</title>\n  <script type=\"text/javascript\">\n//<![CDATA[\n%s\n(function () {\n    var loader = function () {\n        var getPayload = function () {\n            try { \n                if (cv && cv.payload) { \n                    return cv.payload(); \n                } else { \n                    return \'\'; \n                } \n            } catch (e) { \n                return \'\'; \n            }\n        };\n        window.removeEventListener(\'load\',loader,false);\n        jsb.loaded();\n        jsb.onPayload(getPayload());\n    };\n    window.addEventListener(\'load\',loader,false);\n}());\n//]]>\n  </script>\n </head>\n <body>\n dummy body\n </body>\n</html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    const-string v1, "http://cv.apprupt.com"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "Error creating webview"

    aput-object v3, v2, v6

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvDevicePayloadJS;->onPayload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvDevicePayloadJS;Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;)Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->a:Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvDevicePayloadJS;)Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->a:Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;

    return-object v0
.end method


# virtual methods
.method public loaded()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SCRIPT LOADED"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public onPayload(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->c:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Second payload received"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    .line 99
    monitor-exit p0

    .line 133
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->c:Z

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "GOT PAYLOAD FROM JS"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 106
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvCrypto;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Got device payload"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 113
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/apprupt/sdk/CvDevicePayloadJS$2;

    invoke-direct {v2, p0, v0}, Lcom/apprupt/sdk/CvDevicePayloadJS$2;-><init>(Lcom/apprupt/sdk/CvDevicePayloadJS;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    iput-object v5, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 110
    :cond_1
    :try_start_3
    const-string v0, ""

    .line 111
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Device payload empty"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_4
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->d:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Error trying to prepare payload listener callback"

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    iput-object v5, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-object v5, p0, Lcom/apprupt/sdk/CvDevicePayloadJS;->b:Landroid/webkit/WebView;

    throw v0
.end method
