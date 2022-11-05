.class public Lcom/unity3d/ads/api/Sdk;
.super Ljava/lang/Object;
.source "Sdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugMode(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getDebugMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public static initComplete(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 37
    const-string v0, "Web Application initialized"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 38
    invoke-static {v1}, Lcom/unity3d/ads/properties/SdkProperties;->setInitialized(Z)V

    .line 39
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webview/WebViewApp;->setWebAppInitialized(Z)V

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public static loadComplete(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 15
    const-string v0, "Web Application loaded"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/unity3d/ads/webview/WebViewApp;->setWebAppLoaded(Z)V

    .line 18
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 19
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 20
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->isTestMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 21
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getAppName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 22
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 23
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 24
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 25
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->isAppDebuggable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 26
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 27
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 28
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 29
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 32
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static logError(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static logWarning(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public static reinitialize(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/configuration/InitializeThread;->initialize(Lcom/unity3d/ads/configuration/Configuration;)V

    .line 89
    return-void
.end method

.method public static setDebugMode(Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static setShowTimeout(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unity3d/ads/properties/SdkProperties;->setShowTimeout(I)V

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 82
    return-void
.end method
