.class Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;
.super Lcom/amazon/device/ads/SISDeviceRequest;
.source "SISRequests.java"


# static fields
.field private static final CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

.field private static final LOGTAG:Ljava/lang/String; = "SISUpdateDeviceInfoRequest"

.field private static final PATH:Ljava/lang/String; = "/update_dev_info"


# instance fields
.field private final debugPropertes:Lcom/amazon/device/ads/DebugProperties;

.field private final metrics:Lcom/amazon/device/ads/Metrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/Metrics$MetricType;

    sput-object v0, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;->CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier;)V
    .locals 6

    .prologue
    .line 206
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v2

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v3

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v4

    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Metrics;)V

    .line 208
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Metrics;)V
    .locals 8

    .prologue
    .line 216
    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    const-string v2, "SISUpdateDeviceInfoRequest"

    sget-object v3, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;->CALL_METRIC_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    const-string v4, "/update_dev_info"

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/SISDeviceRequest;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V

    .line 218
    iput-object p4, p0, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;->debugPropertes:Lcom/amazon/device/ads/DebugProperties;

    .line 219
    iput-object p5, p0, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;->metrics:Lcom/amazon/device/ads/Metrics;

    .line 220
    return-void
.end method


# virtual methods
.method public getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;->debugPropertes:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.adid"

    invoke-virtual {p0}, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getSISDeviceIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-super {p0}, Lcom/amazon/device/ads/SISDeviceRequest;->getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    move-result-object v1

    .line 230
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    const-string v2, "adId"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    return-object v1
.end method

.method public onResponseReceived(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/amazon/device/ads/SISDeviceRequest;->onResponseReceived(Lorg/json/JSONObject;)V

    .line 240
    const-string v0, "idChanged"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 241
    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 245
    :cond_0
    return-void
.end method
