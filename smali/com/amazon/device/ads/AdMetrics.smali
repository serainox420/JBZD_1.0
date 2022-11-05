.class Lcom/amazon/device/ads/AdMetrics;
.super Ljava/lang/Object;
.source "AdMetrics.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;


# instance fields
.field private globalMetrics:Lcom/amazon/device/ads/MetricsCollector;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final submitter:Lcom/amazon/device/ads/Metrics$MetricsSubmitter;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/amazon/device/ads/AdMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdMetrics;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricsSubmitter;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdMetrics;-><init>(Lcom/amazon/device/ads/Metrics$MetricsSubmitter;Lcom/amazon/device/ads/MobileAdsInfoStore;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/Metrics$MetricsSubmitter;Lcom/amazon/device/ads/MobileAdsInfoStore;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdMetrics;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdMetrics;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 35
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdMetrics;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 45
    iput-object p1, p0, Lcom/amazon/device/ads/AdMetrics;->submitter:Lcom/amazon/device/ads/Metrics$MetricsSubmitter;

    .line 46
    iput-object p2, p0, Lcom/amazon/device/ads/AdMetrics;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 47
    return-void
.end method

.method protected static addMetricsToJSON(Lorg/json/JSONObject;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 14

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 213
    :cond_0
    return-void

    .line 145
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 146
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/amazon/device/ads/MetricsCollector;->getAdTypeMetricTag()Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_b

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 158
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/MetricsCollector;->getMetricHits()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/ads/MetricsCollector;->getMetricHits()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/device/ads/MetricsCollector$MetricHit;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/MetricsCollector$MetricHit;

    .line 161
    array-length v8, v0

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v8, :cond_8

    aget-object v2, v0, v5

    .line 163
    iget-object v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics$MetricType;->getAaxName()Ljava/lang/String;

    move-result-object v1

    .line 164
    if-eqz v4, :cond_a

    iget-object v3, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3}, Lcom/amazon/device/ads/Metrics$MetricType;->isAdTypeSpecific()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 168
    :goto_2
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;

    if-eqz v1, :cond_3

    move-object v1, v2

    .line 170
    check-cast v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;

    .line 171
    iget-object v2, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    iget-wide v10, v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;->startTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_2
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 173
    :cond_3
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;

    if-eqz v1, :cond_4

    move-object v1, v2

    .line 175
    check-cast v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;

    .line 176
    iget-object v2, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 177
    if-eqz v2, :cond_2

    .line 179
    const-wide/16 v10, 0x0

    invoke-static {p0, v3, v10, v11}, Lcom/amazon/device/ads/JSONUtils;->getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v10

    .line 180
    iget-wide v12, v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;->stopTime:J

    add-long/2addr v10, v12

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 181
    invoke-static {p0, v3, v10, v11}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;J)V

    goto :goto_3

    .line 184
    :cond_4
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;

    if-eqz v1, :cond_5

    .line 186
    check-cast v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;

    .line 187
    iget-wide v10, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;->totalTime:J

    invoke-static {p0, v3, v10, v11}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;J)V

    goto :goto_3

    .line 189
    :cond_5
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;

    if-eqz v1, :cond_7

    move-object v1, v2

    .line 191
    check-cast v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;

    .line 192
    iget-object v3, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 193
    if-nez v3, :cond_6

    iget v1, v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;->increment:I

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 194
    iget-object v2, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 193
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v1, v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;->increment:I

    add-int/2addr v1, v3

    goto :goto_4

    .line 196
    :cond_7
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;

    if-eqz v1, :cond_2

    .line 198
    check-cast v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;

    .line 199
    iget-object v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;->text:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 204
    :cond_8
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics$MetricType;->getAaxName()Ljava/lang/String;

    move-result-object v2

    .line 207
    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics$MetricType;->isAdTypeSpecific()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 211
    :cond_9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v2, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_5

    :cond_a
    move-object v3, v1

    goto/16 :goto_2

    :cond_b
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private getAaxUrlAndResetAdMetrics()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdMetrics;->getAaxJson()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/device/ads/AdMetrics;->submitter:Lcom/amazon/device/ads/Metrics$MetricsSubmitter;

    invoke-interface {v2}, Lcom/amazon/device/ads/Metrics$MetricsSubmitter;->getInstrumentationPixelUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->submitter:Lcom/amazon/device/ads/Metrics$MetricsSubmitter;

    invoke-interface {v1}, Lcom/amazon/device/ads/Metrics$MetricsSubmitter;->resetMetricsCollector()V

    .line 65
    return-object v0
.end method


# virtual methods
.method public addGlobalMetrics(Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazon/device/ads/AdMetrics;->globalMetrics:Lcom/amazon/device/ads/MetricsCollector;

    .line 104
    return-void
.end method

.method public canSubmit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->submitter:Lcom/amazon/device/ads/Metrics$MetricsSubmitter;

    invoke-interface {v1}, Lcom/amazon/device/ads/Metrics$MetricsSubmitter;->getInstrumentationPixelUrl()Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 92
    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Not submitting metrics because the AppKey is not set."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getAaxJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 115
    const-string v1, "c"

    const-string v2, "msdk"

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "v"

    invoke-static {}, Lcom/amazon/device/ads/Version;->getRawSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->submitter:Lcom/amazon/device/ads/Metrics$MetricsSubmitter;

    invoke-interface {v1}, Lcom/amazon/device/ads/Metrics$MetricsSubmitter;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdMetrics;->addMetricsToJSON(Lorg/json/JSONObject;Lcom/amazon/device/ads/MetricsCollector;)V

    .line 120
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->globalMetrics:Lcom/amazon/device/ads/MetricsCollector;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdMetrics;->addMetricsToJSON(Lorg/json/JSONObject;Lcom/amazon/device/ads/MetricsCollector;)V

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 124
    return-object v0
.end method

.method public getAaxWebRequestAndResetAdMetrics()Lcom/amazon/device/ads/WebRequest;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/device/ads/AdMetrics;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 76
    invoke-direct {p0}, Lcom/amazon/device/ads/AdMetrics;->getAaxUrlAndResetAdMetrics()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 77
    return-object v0
.end method
