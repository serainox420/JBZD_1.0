.class final Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;
.super Lcom/amazon/device/ads/AAXParameterGroup;
.source "AAXParameterGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameterGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublisherExtraParametersAAXParameterGroup"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Lcom/amazon/device/ads/LogcatLogger;

    invoke-direct {v1}, Lcom/amazon/device/ads/LogcatLogger;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;-><init>(Lcom/amazon/device/ads/Logger;)V

    sget-object v1, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;-><init>(Lcom/amazon/device/ads/MobileAdsLogger;Lcom/amazon/device/ads/DebugProperties;)V

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLogger;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/amazon/device/ads/AAXParameterGroup;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 100
    iput-object p2, p0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 101
    return-void
.end method

.method private processPJInputOrDebugParameterIfPresent(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->getInternalAdvancedOptions()Ljava/util/Map;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    const-string v1, "pj"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "pj"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.pj"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Error creating JSON object for pj from advanced option. Ignoring advanced option."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->processPJInputOrDebugParameterIfPresent(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    if-nez v0, :cond_1

    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 113
    sget-object v0, Lcom/amazon/device/ads/AAXParameter;->PUBLISHER_ASINS:Lcom/amazon/device/ads/AAXParameter;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AAXParameter;->getValueDoNotRemove(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 114
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 119
    :try_start_0
    const-string v2, "asins"

    const-string v3, ","

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/device/ads/AAXParameter;->PUBLISHER_KEYWORDS:Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;->getValueDoNotRemove(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 128
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 132
    :try_start_1
    const-string v2, "tk"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v2, "q"

    const-string v3, " "

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 143
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 147
    :try_start_2
    const-string v1, "pj"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    :cond_2
    :goto_2
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 123
    iget-object v2, p0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Error putting asins into pj, continuing but not including asins with pj"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 138
    iget-object v2, p0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Error putting either tk or q into pj, continuing but not including keywords with pj"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 149
    :catch_2
    move-exception v0

    .line 151
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameterGroup$PublisherExtraParametersAAXParameterGroup;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Error storing pj created from asins and keywords, not including pj in request"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
