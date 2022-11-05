.class public Lcom/mopub/nativeads/PositioningRequest;
.super Lcom/mopub/volley/toolbox/JsonRequest;
.source "PositioningRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/toolbox/JsonRequest",
        "<",
        "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mopub/volley/Response$Listener",
            "<",
            "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
            ">;",
            "Lcom/mopub/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 36
    return-void
.end method

.method private a(Lorg/json/JSONArray;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 101
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 103
    const-string v3, "section"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 104
    if-gez v3, :cond_0

    .line 105
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid section "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in JSON response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    if-lez v3, :cond_1

    .line 101
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const-string v3, "position"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 112
    if-ltz v2, :cond_2

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_3

    .line 113
    :cond_2
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in JSON response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    invoke-virtual {p2, v2}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->addFixedPosition(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    goto :goto_1

    .line 117
    :cond_4
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_1

    .line 123
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in JSON response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_1
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->enableRepeatingPositions(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .line 126
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/mopub/network/MoPubNetworkError;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v1, "error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    const-string v0, "WARMING_UP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1}, Lcom/mopub/network/MoPubNetworkError;-><init>(Lcom/mopub/network/MoPubNetworkError$Reason;)V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 84
    const-string v2, "repeating"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Must contain fixed or repeating positions"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    new-instance v2, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-direct {v2}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;-><init>()V

    .line 90
    if-eqz v1, :cond_3

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/mopub/nativeads/PositioningRequest;->a(Lorg/json/JSONArray;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 93
    :cond_3
    if-eqz v0, :cond_4

    .line 94
    invoke-direct {p0, v0, v2}, Lcom/mopub/nativeads/PositioningRequest;->a(Lorg/json/JSONObject;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 96
    :cond_4
    return-object v2
.end method

.method protected a(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget v0, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 47
    new-instance v0, Lcom/mopub/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lcom/mopub/volley/VolleyError;

    const-string v1, "Empty positioning response"

    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Empty response"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PositioningRequest;->a(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    move-result-object v0

    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mopub/network/MoPubNetworkError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lcom/mopub/volley/VolleyError;

    const-string v2, "Couldn\'t parse JSON from Charset"

    invoke-direct {v1, v2, v0}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Lcom/mopub/volley/VolleyError;

    const-string v2, "JSON Parsing Error"

    invoke-direct {v1, v2, v0}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 63
    :catch_2
    move-exception v0

    .line 64
    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/mopub/volley/toolbox/JsonRequest;->deliverResponse(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PositioningRequest;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method
