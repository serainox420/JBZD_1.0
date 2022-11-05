.class public Lcom/unity3d/ads/api/Request;
.super Ljava/lang/Object;
.source "Request.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 9
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 28
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object p2, v3

    .line 34
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/unity3d/ads/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 42
    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->GET:Lcom/unity3d/ads/request/WebRequest$RequestType;

    new-instance v6, Lcom/unity3d/ads/api/Request$1;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/api/Request$1;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/unity3d/ads/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V

    .line 63
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-virtual {p5, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "Error mapping headers for the request"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    sget-object v0, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 170
    const/4 v0, 0x0

    .line 172
    if-eqz p0, :cond_2

    .line 173
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v3

    .line 174
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 175
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 176
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 177
    if-nez v1, :cond_0

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 186
    :cond_2
    return-object v0
.end method

.method public static getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 152
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 153
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    const/4 v2, 0x0

    .line 156
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 158
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 159
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v2

    .line 160
    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 166
    :cond_1
    return-object v3
.end method

.method public static head(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 8
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 p2, 0x0

    .line 117
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/unity3d/ads/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->HEAD:Lcom/unity3d/ads/request/WebRequest$RequestType;

    new-instance v5, Lcom/unity3d/ads/api/Request$3;

    invoke-direct {v5, p0}, Lcom/unity3d/ads/api/Request$3;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/unity3d/ads/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V

    .line 146
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v6

    invoke-virtual {p5, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 147
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "Error mapping headers for the request"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    sget-object v0, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 9
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v3, v0

    .line 71
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object p3, v0

    .line 77
    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/unity3d/ads/api/Request;->getHeadersMap(Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->POST:Lcom/unity3d/ads/request/WebRequest$RequestType;

    new-instance v6, Lcom/unity3d/ads/api/Request$2;

    invoke-direct {v6, p0}, Lcom/unity3d/ads/api/Request$2;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/unity3d/ads/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V

    .line 106
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p0, v0, v7

    invoke-virtual {p6, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 107
    :goto_1
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "Error mapping headers for the request"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    sget-object v0, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-virtual {p6, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v3, p2

    goto :goto_0
.end method
