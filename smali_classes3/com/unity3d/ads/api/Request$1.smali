.class final Lcom/unity3d/ads/api/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/unity3d/ads/request/IWebRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Request;->get(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/unity3d/ads/api/Request$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    :try_start_0
    invoke-static {p4}, Lcom/unity3d/ads/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/request/WebRequestEvent;->COMPLETE:Lcom/unity3d/ads/request/WebRequestEvent;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/ads/api/Request$1;->val$id:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x4

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 55
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "Error parsing response headers"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 51
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/request/WebRequestEvent;->FAILED:Lcom/unity3d/ads/request/WebRequestEvent;

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/ads/api/Request$1;->val$id:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    const-string v4, "Error parsing response headers"

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 59
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/request/WebRequestEvent;->FAILED:Lcom/unity3d/ads/request/WebRequestEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/api/Request$1;->val$id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
