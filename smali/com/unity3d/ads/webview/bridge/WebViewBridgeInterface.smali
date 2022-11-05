.class public Lcom/unity3d/ads/webview/bridge/WebViewBridgeInterface;
.super Ljava/lang/Object;
.source "WebViewBridgeInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getParameters(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-object v1
.end method


# virtual methods
.method public handleCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 39
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 44
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 48
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->handleCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public handleInvocation(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleInvocation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 15
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v7, Lcom/unity3d/ads/webview/bridge/Invocation;

    invoke-direct {v7}, Lcom/unity3d/ads/webview/bridge/Invocation;-><init>()V

    move v4, v5

    .line 18
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 19
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 20
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 23
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-direct {p0, v3}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeInterface;->getParameters(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v3

    new-instance v8, Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    invoke-virtual {v7}, Lcom/unity3d/ads/webview/bridge/Invocation;->getId()I

    move-result v9

    invoke-direct {v8, v0, v9}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v1, v2, v3, v8}, Lcom/unity3d/ads/webview/bridge/Invocation;->addInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 18
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 28
    :cond_0
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 29
    invoke-virtual {v7}, Lcom/unity3d/ads/webview/bridge/Invocation;->nextInvocation()Z

    .line 28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v7}, Lcom/unity3d/ads/webview/bridge/Invocation;->sendInvocationCallback()V

    .line 33
    return-void
.end method
