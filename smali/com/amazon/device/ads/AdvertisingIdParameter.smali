.class Lcom/amazon/device/ads/AdvertisingIdParameter;
.super Ljava/lang/Object;
.source "AdvertisingIdParameter.java"

# interfaces
.implements Lcom/amazon/device/ads/UserIdParameter;


# static fields
.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "deviceId"


# instance fields
.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v2

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/device/ads/AdvertisingIdParameter;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/DeviceInfo;)V

    .line 22
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/DeviceInfo;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 27
    iput-object p2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->settings:Lcom/amazon/device/ads/Settings;

    .line 28
    iput-object p3, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 29
    iput-object p4, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    .line 30
    return-void
.end method

.method private canIdentify()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    if-nez v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "configVersion"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->setShouldSetCurrentAdvertisingIdentifier(Z)Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    if-nez v0, :cond_2

    .line 41
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public evaluate(Lcom/amazon/device/ads/WebRequest;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdParameter;->canIdentify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.idfa"

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->advertisingIndentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "idfa"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    :goto_0
    return v4

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->deviceInfo:Lcom/amazon/device/ads/DeviceInfo;

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUdidSha1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdParameter;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.sha1udid"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
