.class public Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerRRFormatter;
.super Ljava/lang/Object;
.source "PhoenixBannerRRFormatter.java"

# interfaces
.implements Lcom/pubmatic/sdk/common/RRFormatter;


# static fields
.field private static final kBid_Tag:Ljava/lang/String; = "bids"

.field private static final kadunit_id_tag:Ljava/lang/String; = "AdUnit ID"

.field private static final kclick_tracking_url:Ljava/lang/String; = "cltr"

.field private static final kcreative_height_tag:Ljava/lang/String; = "h"

.field private static final kcreative_id_tag:Ljava/lang/String; = "Creative ID"

.field private static final kcreative_tag:Ljava/lang/String; = "ct"

.field private static final kcreative_type_tag:Ljava/lang/String; = "crTy"

.field private static final kcreative_width_tag:Ljava/lang/String; = "w"

.field private static final kecpm:Ljava/lang/String; = "ecpm"

.field private static final kid_tag:Ljava/lang/String; = "id"

.field private static final kline_item_tag:Ljava/lang/String; = "LineItem ID"

.field private static final korder_id_tag:Ljava/lang/String; = "Order ID"

.field private static final kprefetch_data_tag:Ljava/lang/String; = "pd"

.field private static final krefresh_time_tag:Ljava/lang/String; = "at"

.field private static final ktracking_url:Ljava/lang/String; = "tr"


# instance fields
.field private mRequest:Lcom/pubmatic/sdk/common/AdRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatRequest(Lcom/pubmatic/sdk/common/AdRequest;)Lcom/pubmatic/sdk/common/network/HttpRequest;
    .locals 3

    .prologue
    .line 49
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;

    .line 51
    new-instance v1, Lcom/pubmatic/sdk/common/network/HttpRequest;

    sget-object v2, Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;->URL_ENCODED:Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;

    invoke-direct {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;-><init>(Lcom/pubmatic/sdk/common/CommonConstants$CONTENT_TYPE;)V

    .line 53
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setUserAgent(Ljava/lang/String;)V

    .line 54
    const-string v2, "close"

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setConnection(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getAdServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 56
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 57
    sget-object v2, Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;->PHOENIX_BANNER:Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setRequestType(Lcom/pubmatic/sdk/common/CommonConstants$AD_REQUEST_TYPE;)V

    .line 58
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerAdRequest;->getPostData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->setPostData(Ljava/lang/String;)V

    .line 59
    return-object v1
.end method

.method public formatResponse(Lcom/pubmatic/sdk/common/network/HttpResponse;)Lcom/pubmatic/sdk/common/AdResponse;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v1, Lcom/pubmatic/sdk/common/AdResponse;

    invoke-direct {v1}, Lcom/pubmatic/sdk/common/AdResponse;-><init>()V

    .line 66
    iget-object v3, p0, Lcom/pubmatic/sdk/banner/phoenix/PhoenixBannerRRFormatter;->mRequest:Lcom/pubmatic/sdk/common/AdRequest;

    invoke-virtual {v1, v3}, Lcom/pubmatic/sdk/common/AdResponse;->setRequest(Lcom/pubmatic/sdk/common/AdRequest;)V

    .line 68
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const-string v3, "type"

    const-string v7, "thirdparty"

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-object v0

    .line 82
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpResponse;->getResponseData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v3, "bids"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 89
    if-eqz v7, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    :cond_1
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/AdResponse;->setErrorCode(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/AdResponse;->setErrorMessage(Ljava/lang/String;)V

    move-object v0, v1

    .line 153
    goto :goto_0

    :cond_2
    move v3, v2

    .line 100
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 101
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 103
    const-string v0, "ct"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v11, :cond_3

    const-string v0, "ct"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tr"

    .line 104
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v11, :cond_3

    const-string v0, "tr"

    .line 105
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 108
    :cond_3
    const-string v0, "ecpm"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    const-string v0, "ecpm"

    const-string v9, "ecpm"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_4
    :try_start_1
    const-string v0, "ct"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v9, "content"

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_2
    :try_start_2
    const-string v0, "tr"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v0, v2

    .line 120
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_6

    .line 121
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 122
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 126
    :cond_6
    const-string v0, "cltr"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v0, v2

    .line 127
    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_8

    .line 128
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 129
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 140
    :cond_8
    const-string v0, "crTy"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 141
    const-string v0, "url"

    const-string v9, "crTy"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 146
    :cond_a
    new-instance v0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-direct {v0, v4}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;-><init>(Ljava/util/Map;)V

    .line 147
    invoke-virtual {v0, v5}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->setImpressionTrackers(Ljava/util/ArrayList;)V

    .line 148
    invoke-virtual {v0, v6}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->setClickTrackers(Ljava/util/ArrayList;)V

    .line 149
    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/common/AdResponse;->setRenderable(Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    move-object v0, v1

    .line 155
    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 153
    :catchall_0
    move-exception v0

    throw v0

    .line 115
    :catch_1
    move-exception v0

    goto :goto_2
.end method
