.class public Lcom/unity3d/ads/api/Broadcast;
.super Ljava/lang/Object;
.source "Broadcast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBroadcastListener(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 21
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 22
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 23
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->addBroadcastListener(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 33
    :goto_1
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastError;->JSON_ERROR:Lcom/unity3d/ads/broadcast/BroadcastError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static addBroadcastListener(Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/unity3d/ads/api/Broadcast;->addBroadcastListener(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 15
    return-void
.end method

.method public static removeAllBroadcastListeners(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->removeAllBroadcastListeners()V

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static removeBroadcastListener(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->removeBroadcastListener(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 39
    return-void
.end method
