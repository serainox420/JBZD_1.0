.class abstract Lcom/amazon/device/ads/AAXParameterGroupParameter;
.super Ljava/lang/Object;
.source "AAXParameterGroupParameter.java"


# static fields
.field static final ADVERTISING_IDENTIFIER:Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;

.field static final DIRECTED_ID:Lcom/amazon/device/ads/DirectedIdAAXParameter;

.field private static final LOG_TAG:Ljava/lang/String;

.field static final SHA1_UDID:Lcom/amazon/device/ads/SHA1UDIDAAXParameter;

.field static final SIS_DEVICE_IDENTIFIER:Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;


# instance fields
.field private final debugName:Ljava/lang/String;

.field protected final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final key:Ljava/lang/String;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/amazon/device/ads/AAXParameterGroupParameter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->LOG_TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->ADVERTISING_IDENTIFIER:Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;

    .line 57
    new-instance v0, Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->SIS_DEVICE_IDENTIFIER:Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;

    .line 58
    new-instance v0, Lcom/amazon/device/ads/SHA1UDIDAAXParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/SHA1UDIDAAXParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->SHA1_UDID:Lcom/amazon/device/ads/SHA1UDIDAAXParameter;

    .line 59
    new-instance v0, Lcom/amazon/device/ads/DirectedIdAAXParameter;

    invoke-direct {v0}, Lcom/amazon/device/ads/DirectedIdAAXParameter;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->DIRECTED_ID:Lcom/amazon/device/ads/DirectedIdAAXParameter;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 26
    iput-object p2, p0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->key:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->debugName:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 29
    return-void
.end method


# virtual methods
.method evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->debugName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameterGroupParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->key:Ljava/lang/String;

    invoke-virtual {p0, p2, v1, v0}, Lcom/amazon/device/ads/AAXParameterGroupParameter;->putIntoJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
.end method

.method protected putIntoJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-static {p3}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return v0

    .line 48
    :catch_0
    move-exception v2

    .line 50
    iget-object v2, p0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Could not add parameter to JSON %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0
.end method
