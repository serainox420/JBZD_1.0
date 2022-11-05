.class Lcom/amazon/device/ads/DebugProperties;
.super Ljava/lang/Object;
.source "DebugProperties.java"


# static fields
.field public static final DEBUG_AAX_AD_PARAMS:Ljava/lang/String; = "debug.aaxAdParams"

.field public static final DEBUG_AAX_CONFIG_HOSTNAME:Ljava/lang/String; = "debug.aaxConfigHostname"

.field public static final DEBUG_AAX_CONFIG_PARAMS:Ljava/lang/String; = "debug.aaxConfigParams"

.field public static final DEBUG_AAX_CONFIG_USE_SECURE:Ljava/lang/String; = "debug.aaxConfigUseSecure"

.field public static final DEBUG_ADID:Ljava/lang/String; = "debug.adid"

.field public static final DEBUG_ADVTARGETING:Ljava/lang/String; = "debug.advTargeting"

.field public static final DEBUG_APPID:Ljava/lang/String; = "debug.appid"

.field public static final DEBUG_CAN_TIMEOUT:Ljava/lang/String; = "debug.canTimeout"

.field public static final DEBUG_CHANNEL:Ljava/lang/String; = "debug.channel"

.field public static final DEBUG_CONFIG_FEATURE_USE_GPS_ADVERTISING_ID:Ljava/lang/String; = "debug.fUseGPSAID"

.field public static final DEBUG_DINFO:Ljava/lang/String; = "debug.dinfo"

.field public static final DEBUG_DIRECTEDID:Ljava/lang/String; = "debug.directedId"

.field public static final DEBUG_ECPM:Ljava/lang/String; = "debug.ec"

.field public static final DEBUG_GEOLOC:Ljava/lang/String; = "debug.geoloc"

.field public static final DEBUG_IDFA:Ljava/lang/String; = "debug.idfa"

.field public static final DEBUG_LOGGING:Ljava/lang/String; = "debug.logging"

.field public static final DEBUG_MADS_USE_SECURE:Ljava/lang/String; = "debug.madsUseSecure"

.field public static final DEBUG_MD5UDID:Ljava/lang/String; = "debug.md5udid"

.field public static final DEBUG_MXSZ:Ljava/lang/String; = "debug.mxsz"

.field public static final DEBUG_NORETRYTTL:Ljava/lang/String; = "debug.noRetryTTL"

.field public static final DEBUG_NORETRYTTL_MAX:Ljava/lang/String; = "debug.noRetryTTLMax"

.field public static final DEBUG_OPT_OUT:Ljava/lang/String; = "debug.optOut"

.field public static final DEBUG_PA:Ljava/lang/String; = "debug.pa"

.field public static final DEBUG_PJ:Ljava/lang/String; = "debug.pj"

.field public static final DEBUG_PK:Ljava/lang/String; = "debug.pk"

.field public static final DEBUG_PKG:Ljava/lang/String; = "debug.pkg"

.field public static final DEBUG_PT:Ljava/lang/String; = "debug.pt"

.field public static final DEBUG_SHA1UDID:Ljava/lang/String; = "debug.sha1udid"

.field public static final DEBUG_SHOULD_FETCH_CONFIG:Ljava/lang/String; = "debug.shouldFetchConfig"

.field public static final DEBUG_SHOULD_IDENTIFY_USER:Ljava/lang/String; = "debug.shouldIdentifyUser"

.field public static final DEBUG_SHOULD_REGISTER_SIS:Ljava/lang/String; = "debug.shouldRegisterSIS"

.field public static final DEBUG_SIS_CHECKIN_INTERVAL:Ljava/lang/String; = "debug.sisCheckinInterval"

.field public static final DEBUG_SIZE:Ljava/lang/String; = "debug.size"

.field public static final DEBUG_SLOT:Ljava/lang/String; = "debug.slot"

.field public static final DEBUG_SLOTS:Ljava/lang/String; = "debug.slots"

.field public static final DEBUG_SLOT_ID:Ljava/lang/String; = "debug.slotId"

.field public static final DEBUG_SP:Ljava/lang/String; = "debug.sp"

.field public static final DEBUG_SUPPORTED_MEDIA_TYPES:Ljava/lang/String; = "debug.supportedMediaTypes"

.field public static final DEBUG_TEST:Ljava/lang/String; = "debug.test"

.field public static final DEBUG_UA:Ljava/lang/String; = "debug.ua"

.field public static final DEBUG_USESECURE:Ljava/lang/String; = "debug.useSecure"

.field public static final DEBUG_VER:Ljava/lang/String; = "debug.ver"

.field public static final DEBUG_VIDEO_OPTIONS:Ljava/lang/String; = "debug.videoOptions"

.field public static final DEBUG_VIEWABLE_INTERVAL:Ljava/lang/String; = "debug.viewableInterval"

.field public static final DEBUG_WEBVIEWS:Ljava/lang/String; = "debug.webViews"

.field private static final LOGTAG:Ljava/lang/String;

.field private static final instance:Lcom/amazon/device/ads/DebugProperties;


# instance fields
.field private final debugProperties:Ljava/util/Properties;

.field private final jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/amazon/device/ads/DebugProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/DebugProperties;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->instance:Lcom/amazon/device/ads/DebugProperties;

    .line 20
    const-class v0, Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/DebugProperties;-><init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    .line 79
    iput-object p1, p0, Lcom/amazon/device/ads/DebugProperties;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    .line 80
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 81
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/DebugProperties;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->instance:Lcom/amazon/device/ads/DebugProperties;

    return-object v0
.end method


# virtual methods
.method public clearDebugProperties()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 179
    return-void
.end method

.method public containsDebugProperty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-object p2

    .line 125
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 129
    iget-object v1, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Unable to parse boolean debug property - property: %s, value: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-object p2

    .line 104
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 108
    iget-object v1, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Unable to parse integer debug property - property: %s, value: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDebugPropertyAsJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-object p2

    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/DebugProperties;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0
.end method

.method public getDebugPropertyAsLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-object p2

    .line 146
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 150
    iget-object v1, p0, Lcom/amazon/device/ads/DebugProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Unable to parse long debug property - property: %s, value: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public overwriteDebugProperties(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/amazon/device/ads/DebugProperties;->clearDebugProperties()V

    .line 184
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->createMapFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 186
    return-void
.end method

.method public setDebugProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method
