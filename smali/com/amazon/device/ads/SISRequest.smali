.class abstract Lcom/amazon/device/ads/SISRequest;
.super Ljava/lang/Object;
.source "SISRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/SISRequest$1;,
        Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;,
        Lcom/amazon/device/ads/SISRequest$SISRequestFactory;
    }
.end annotation


# instance fields
.field private final callMetricType:Lcom/amazon/device/ads/Metrics$MetricType;

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final logTag:Ljava/lang/String;

.field protected final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field protected mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/amazon/device/ads/SISRequest;->logTag:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/SISRequest;->logTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/SISRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 33
    iput-object p3, p0, Lcom/amazon/device/ads/SISRequest;->callMetricType:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 34
    iput-object p4, p0, Lcom/amazon/device/ads/SISRequest;->path:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/amazon/device/ads/SISRequest;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 36
    iput-object p6, p0, Lcom/amazon/device/ads/SISRequest;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 37
    return-void
.end method


# virtual methods
.method getCallMetricType()Lcom/amazon/device/ads/Metrics$MetricType;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/SISRequest;->callMetricType:Lcom/amazon/device/ads/Metrics$MetricType;

    return-object v0
.end method

.method getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/device/ads/SISRequest;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/SISRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/SISRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method abstract getPostParameters()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;-><init>()V

    .line 58
    const-string v1, "dt"

    iget-object v2, p0, Lcom/amazon/device/ads/SISRequest;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "app"

    iget-object v2, p0, Lcom/amazon/device/ads/SISRequest;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/RegistrationInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "appId"

    iget-object v2, p0, Lcom/amazon/device/ads/SISRequest;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "sdkVer"

    invoke-static {}, Lcom/amazon/device/ads/Version;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "aud"

    iget-object v2, p0, Lcom/amazon/device/ads/SISRequest;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/amazon/device/ads/SISRequest;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getAppInfo()Lcom/amazon/device/ads/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AppInfo;->getPackageInfoJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUnencoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    return-object v0
.end method

.method abstract onResponseReceived(Lorg/json/JSONObject;)V
.end method
