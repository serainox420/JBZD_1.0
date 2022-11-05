.class public Lcom/mopub/network/AdRequest;
.super Lcom/mopub/volley/Request;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/Request",
        "<",
        "Lcom/mopub/network/AdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/network/AdRequest$Listener;

.field private final b:Lcom/mopub/common/AdFormat;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, v4, p1, p5}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 63
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    iput-object p3, p0, Lcom/mopub/network/AdRequest;->c:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/mopub/network/AdRequest;->a:Lcom/mopub/network/AdRequest$Listener;

    .line 67
    iput-object p2, p0, Lcom/mopub/network/AdRequest;->b:Lcom/mopub/common/AdFormat;

    .line 68
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdRequest;->d:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 v1, 0x9c4

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/mopub/network/AdRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 74
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 75
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 292
    const-string v0, "mraid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "interstitial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "rewarded_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Lcom/mopub/network/AdResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 111
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Lcom/mopub/network/MoPubNetworkError;

    const-string v3, "Ad Unit is warming up."

    sget-object v4, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v2, v3, v4}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v2}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    .line 286
    :goto_0
    return-object v2

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/network/AdRequest;->d:Landroid/content/Context;

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v4

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v4

    .line 120
    new-instance v5, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v5}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/network/AdRequest;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 123
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    .line 124
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {v5, v6}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 126
    invoke-virtual {v5, v7}, Lcom/mopub/network/AdResponse$Builder;->setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 130
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v2

    .line 132
    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 135
    :goto_1
    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 137
    const-string v8, "clear"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 138
    invoke-virtual {v5}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v3

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1, v4}, Lcom/mopub/network/AdRequest;->a(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V

    .line 140
    new-instance v3, Lcom/mopub/network/MoPubNetworkError;

    const-string v4, "No ads found for ad unit."

    sget-object v5, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v3, v4, v5, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    invoke-static {v3}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 149
    :cond_2
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {v5, v8}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 152
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-virtual {v5, v9}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 155
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v10

    .line 156
    invoke-virtual {v5, v10}, Lcom/mopub/network/AdResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 160
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v11

    .line 161
    invoke-virtual {v5, v11}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 163
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 165
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mopub/network/AdRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 169
    invoke-virtual {v5, v12}, Lcom/mopub/network/AdResponse$Builder;->setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 171
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->SCROLLABLE:Lcom/mopub/common/util/ResponseHeader;

    const/4 v13, 0x0

    invoke-static {v3, v2, v13}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v13

    .line 172
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;

    .line 174
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v14

    .line 175
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v15

    .line 176
    invoke-virtual {v5, v14, v15}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 178
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    if-nez v2, :cond_9

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 185
    invoke-virtual/range {p0 .. p1}, Lcom/mopub/network/AdRequest;->b(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v16

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 187
    const-string v2, "json"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "json_video"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    :cond_3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/network/AdRequest;->b:Lcom/mopub/common/AdFormat;

    invoke-static {v2, v6, v7, v3}, Lcom/mopub/mobileads/AdTypeTranslator;->getCustomEventName(Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 203
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 207
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v2

    .line 212
    :cond_5
    :try_start_1
    invoke-static {v2}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 219
    if-eqz v10, :cond_6

    .line 220
    const-string v2, "Redirect-Url"

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_6
    if-eqz v11, :cond_7

    .line 225
    const-string v2, "Clickthrough-Url"

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/mopub/network/AdRequest;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 229
    const-string v2, "Html-Response-Body"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "Scrollable"

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v2, "com_mopub_orientation"

    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v7}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_8
    const-string v2, "json_video"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 234
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v2, v7, :cond_a

    .line 235
    new-instance v2, Lcom/mopub/network/MoPubNetworkError;

    const-string v3, "Native Video ads are only supported for Android API Level 16 (JellyBean) and above."

    sget-object v4, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v2, v3, v4}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v2}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto/16 :goto_0

    .line 179
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_2

    .line 190
    :catch_0
    move-exception v2

    .line 191
    new-instance v3, Lcom/mopub/network/MoPubNetworkError;

    const-string v4, "Failed to decode body JSON for native ad format"

    sget-object v5, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v3, v4, v2, v5}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v3}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto/16 :goto_0

    .line 213
    :catch_1
    move-exception v2

    .line 214
    new-instance v3, Lcom/mopub/network/MoPubNetworkError;

    const-string v4, "Failed to decode server extras for custom event data."

    sget-object v5, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v3, v4, v2, v5}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v3}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto/16 :goto_0

    .line 240
    :cond_a
    const-string v2, "Play-Visible-Percent"

    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v7}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v2, "Pause-Visible-Percent"

    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v7}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "Impression-Min-Visible-Percent"

    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v7}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v2, "Impression-Visible-Ms"

    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v7}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v2, "Max-Buffer-Ms"

    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v7}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v2, Lcom/mopub/common/event/EventDetails$Builder;

    invoke-direct {v2}, Lcom/mopub/common/event/EventDetails$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mopub/network/AdRequest;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/mopub/common/event/EventDetails$Builder;->adUnitId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mopub/common/event/EventDetails$Builder;->adType(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/mopub/common/event/EventDetails$Builder;->adNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/mopub/common/event/EventDetails$Builder;->adWidthPx(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/mopub/common/event/EventDetails$Builder;->adHeightPx(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/mopub/common/event/EventDetails$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v7

    if-nez v4, :cond_e

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v7, v2}, Lcom/mopub/common/event/EventDetails$Builder;->geoLatitude(Ljava/lang/Double;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v7

    if-nez v4, :cond_f

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v7, v2}, Lcom/mopub/common/event/EventDetails$Builder;->geoLongitude(Ljava/lang/Double;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v7

    if-nez v4, :cond_10

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v7, v2}, Lcom/mopub/common/event/EventDetails$Builder;->geoAccuracy(Ljava/lang/Float;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/mopub/volley/NetworkResponse;->networkTimeMs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mopub/common/event/EventDetails$Builder;->performanceDurationMs(Ljava/lang/Long;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/mopub/common/event/EventDetails$Builder;->requestId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v7, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mopub/common/event/EventDetails$Builder;->requestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mopub/common/event/EventDetails$Builder;->requestUri(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/common/event/EventDetails$Builder;->build()Lcom/mopub/common/event/EventDetails;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setEventDetails(Lcom/mopub/common/event/EventDetails;)Lcom/mopub/network/AdResponse$Builder;

    .line 269
    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    .line 271
    const-string v2, "rewarded_video"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "custom"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 272
    :cond_c
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v2

    .line 274
    sget-object v6, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v6}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    .line 276
    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v3, v7}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v5, v2}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 279
    invoke-virtual {v5, v6}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 280
    invoke-virtual {v5, v3}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 283
    :cond_d
    invoke-virtual {v5}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v2

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1, v4}, Lcom/mopub/network/AdRequest;->a(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V

    .line 286
    invoke-virtual {v5}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto/16 :goto_0

    .line 252
    :cond_e
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_5
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 316
    if-nez p1, :cond_0

    .line 328
    :goto_0
    return-object v0

    .line 321
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 323
    :try_start_0
    const-string v2, "request_id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    const-string v1, "Unable to obtain request id from fail url."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/mopub/network/AdResponse;)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->a:Lcom/mopub/network/AdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/AdRequest$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    .line 311
    return-void
.end method

.method a(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 335
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 337
    new-instance v0, Lcom/mopub/common/event/Event$Builder;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v3, Lcom/mopub/common/event/BaseEvent$Category;->REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v4, Lcom/mopub/common/event/BaseEvent$SamplingRate;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    invoke-virtual {v4}, Lcom/mopub/common/event/BaseEvent$SamplingRate;->getSamplingRate()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mopub/common/event/Event$Builder;-><init>(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;D)V

    iget-object v2, p0, Lcom/mopub/network/AdRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/Event$Builder;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdWidthPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdHeightPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoLat(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoLon(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoAccuracy(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    iget-wide v2, p2, Lcom/mopub/volley/NetworkResponse;->networkTimeMs:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withPerformanceDurationMs(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    iget v1, p2, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestUri(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/event/BaseEvent$Builder;->build()Lcom/mopub/common/event/BaseEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 359
    return-void

    :cond_1
    move-object v0, v1

    .line 337
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method protected b(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-object v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method protected synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/mopub/network/AdResponse;

    invoke-virtual {p0, p1}, Lcom/mopub/network/AdRequest;->a(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/mopub/network/AdRequest;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1
    return-object v1
.end method

.method public getListener()Lcom/mopub/network/AdRequest$Listener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->a:Lcom/mopub/network/AdRequest$Listener;

    return-object v0
.end method
