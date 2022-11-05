.class public Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerRRFormatter;
.super Ljava/lang/Object;
.source "PubMaticBannerRRFormatter.java"

# interfaces
.implements Lcom/pubmatic/sdk/common/RRFormatter;


# static fields
.field private static final kPubMatic_BidTag:Ljava/lang/String; = "PubMatic_Bid"

.field private static final kclick_tracking_url:Ljava/lang/String; = "click_tracking_url"

.field private static final kcreative_tag:Ljava/lang/String; = "creative_tag"

.field private static final kecpm:Ljava/lang/String; = "ecpm"

.field private static final kerror_code:Ljava/lang/String; = "error_code"

.field private static final kerror_message:Ljava/lang/String; = "error_string"

.field private static final klanding_page:Ljava/lang/String; = "landing_page"

.field private static final ktracking_url:Ljava/lang/String; = "tracking_url"


# instance fields
.field private mRequest:Lcom/pubmatic/sdk/common/AdRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatRequest(Lcom/pubmatic/sdk/common/AdRequest;)Lcom/pubmatic/sdk/common/network/HttpRequest;
    .locals 3

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;

    .line 36
    new-instance v1, Lcom/pubmatic/sdk/common/network/HttpRequest;

    sget-object v2, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->URL_ENCODED:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    invoke-direct {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;-><init>(Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;)V

    .line 38
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setUserAgent(Ljava/lang/String;)V

    .line 39
    const-string v2, "close"

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setConnection(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getAdServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 41
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;->PUB_BANNER:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestType(Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;)V

    .line 43
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerAdRequest;->getPostData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setPostData(Ljava/lang/String;)V

    .line 44
    return-object v1
.end method

.method public formatResponse(Lcom/pubmatic/sdk/common/network/HttpResponse;)Lcom/pubmatic/sdk/common/AdResponse;
    .locals 7

    .prologue
    .line 50
    new-instance v0, Lcom/pubmatic/sdk/common/AdResponse;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/AdResponse;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/pubmatic/PubMaticBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/AdResponse;->setRequest(Lcom/pubmatic/sdk/common/AdRequest;)V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    const-string v4, "type"

    const-string v5, "thirdparty"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 67
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpResponse;->getResponseData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    const-string v5, "PubMatic_Bid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 74
    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 77
    const-string v1, "error_code"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/AdResponse;->setErrorCode(Ljava/lang/String;)V

    .line 78
    const-string v1, "error_string"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/AdResponse;->setErrorMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    throw v0

    .line 86
    :cond_1
    :try_start_2
    const-string v5, "creative_tag"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "creative_tag"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "tracking_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "tracking_url"

    .line 88
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 91
    const-string v5, "content"

    const-string v6, "creative_tag"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v5, "tracking_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v5, "ecpm"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 96
    const-string v5, "ecpm"

    const-string v6, "ecpm"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    const-string v5, "click_tracking_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 100
    const-string v5, "click_tracking_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    const-string v5, "landing_page"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 104
    const-string v5, "url"

    const-string v6, "landing_page"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_4
    new-instance v4, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-direct {v4, v1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;-><init>(Ljava/util/Map;)V

    .line 110
    invoke-virtual {v4, v2}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->setImpressionTrackers(Ljava/util/ArrayList;)V

    .line 111
    invoke-virtual {v4, v3}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->setClickTrackers(Ljava/util/ArrayList;)V

    .line 112
    invoke-virtual {v0, v4}, Lcom/pubmatic/sdk/common/AdResponse;->setRenderable(Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
