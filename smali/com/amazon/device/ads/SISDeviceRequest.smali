.class abstract Lcom/amazon/device/ads/SISDeviceRequest;
.super Lcom/amazon/device/ads/SISRequest;
.source "SISRequests.java"


# instance fields
.field private advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/SISRequest;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V

    .line 108
    iput-object p5, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 110
    return-void
.end method

.method private static convertOptOutBooleanToStringInt(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method protected getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object v0
.end method

.method public getPostParameters()Ljava/util/HashMap;
    .locals 1
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

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
    .locals 5

    .prologue
    .line 115
    invoke-super {p0}, Lcom/amazon/device/ads/SISRequest;->getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    .line 117
    const-string v2, "ua"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUnencoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    const-string v2, "dinfo"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getDInfoProperty()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUnencoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v0, "idfa"

    iget-object v2, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "oo"

    iget-object v2, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-static {v2}, Lcom/amazon/device/ads/SISDeviceRequest;->convertOptOutBooleanToStringInt(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/SISDeviceRequest;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAndClearTransition()Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "aidts"

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v3, v2, v0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    return-object v1

    .line 132
    :cond_0
    const-string v2, "sha1_mac"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getMacSha1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "sha1_serial"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getSerialSha1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "sha1_udid"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getUdidSha1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "badMac"

    const-string v3, "true"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->isMacBad()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    const-string v2, "badSerial"

    const-string v3, "true"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->isSerialBad()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    const-string v2, "badUdid"

    const-string v3, "true"

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->isUdidBad()Z

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResponseReceived(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 166
    const-string v0, "adId"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/amazon/device/ads/SISDeviceRequest;->mobileAdsInfoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/ads/SISDeviceRequest;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/device/ads/RegistrationInfo;->putAdId(Ljava/lang/String;Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V

    .line 171
    :cond_0
    return-void
.end method
