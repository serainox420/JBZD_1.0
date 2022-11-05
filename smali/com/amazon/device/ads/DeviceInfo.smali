.class Lcom/amazon/device/ads/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ORIENTATION_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final dt:Ljava/lang/String; = "android"

.field private static final os:Ljava/lang/String; = "Android"


# instance fields
.field private bad_mac:Z

.field private bad_serial:Z

.field private bad_udid:Z

.field private final buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

.field private carrier:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private landscapeScreenSize:Lcom/amazon/device/ads/Size;

.field private language:Ljava/lang/String;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private macFetched:Z

.field private make:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private portraitScreenSize:Lcom/amazon/device/ads/Size;

.field private scalingFactor:F

.field private scalingFactorAsString:Ljava/lang/String;

.field private serialFetched:Z

.field private sha1_mac:Ljava/lang/String;

.field private sha1_serial:Ljava/lang/String;

.field private sha1_udid:Ljava/lang/String;

.field private udidFetched:Z

.field private userAgentManager:Lcom/amazon/device/ads/UserAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/amazon/device/ads/DeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DeviceInfo;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/UserAgentManager;)V
    .locals 6

    .prologue
    .line 72
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v5}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DeviceInfo;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/UserAgentManager;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AndroidBuildInfo;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/UserAgentManager;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AndroidBuildInfo;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->make:Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->model:Ljava/lang/String;

    .line 37
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/amazon/device/ads/DeviceInfo;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 85
    iput-object p3, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 86
    iput-object p5, p0, Lcom/amazon/device/ads/DeviceInfo;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 87
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setCountry()V

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DeviceInfo;->setCarrier(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setLanguage()V

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DeviceInfo;->setScalingFactor(Landroid/content/Context;)V

    .line 91
    iput-object p2, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    .line 92
    return-void
.end method

.method private setCarrier(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 249
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 250
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->carrier:Ljava/lang/String;

    .line 255
    :cond_0
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCountry()V
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->country:Ljava/lang/String;

    .line 240
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLanguage()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->language:Ljava/lang/String;

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMacAddressIfNotFetched()V
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->macFetched:Z

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->setMacAddress()V

    .line 105
    :cond_0
    return-void
.end method

.method private setScalingFactor(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->make:Ljava/lang/String;

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->model:Ljava/lang/String;

    const-string v1, "MB502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactor:F

    .line 275
    :goto_0
    iget v0, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactor:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactorAsString:Ljava/lang/String;

    .line 276
    return-void

    .line 269
    :cond_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 270
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 272
    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactor:F

    goto :goto_0
.end method

.method private setSerial()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    const/4 v1, 0x0

    .line 171
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 172
    const-class v2, Landroid/os/Build;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    iput-boolean v3, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_serial:Z

    .line 195
    :goto_1
    iput-boolean v3, p0, Lcom/amazon/device/ads/DeviceInfo;->serialFetched:Z

    .line 196
    return-void

    .line 174
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_serial:Ljava/lang/String;

    goto :goto_1
.end method

.method private setSerialIfNotFetched()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->serialFetched:Z

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setSerial()V

    .line 165
    :cond_0
    return-void
.end method

.method private setUdid()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_udid:Ljava/lang/String;

    .line 212
    iput-boolean v2, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_udid:Z

    .line 218
    :goto_0
    iput-boolean v2, p0, Lcom/amazon/device/ads/DeviceInfo;->udidFetched:Z

    .line 219
    return-void

    .line 216
    :cond_1
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_udid:Ljava/lang/String;

    goto :goto_0
.end method

.method private setUdidIfNotFetched()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->udidFetched:Z

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setUdid()V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDInfoProperty()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 430
    const-string v1, "make"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getMake()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "model"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v1, "os"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getOS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "osVersion"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "scalingFactor"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getScalingFactorAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v1, "language"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "country"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "carrier"

    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "android"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMacSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setMacAddressIfNotFetched()V

    .line 302
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->make:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "Android"

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    .line 370
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DeviceInfo;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DisplayUtils;->determineCanonicalScreenOrientation(Landroid/content/Context;Lcom/amazon/device/ads/AndroidBuildInfo;)I

    move-result v0

    .line 371
    sparse-switch v0, :sswitch_data_0

    .line 384
    const-string v0, "unknown"

    .line 386
    :goto_0
    return-object v0

    .line 375
    :sswitch_0
    const-string v0, "portrait"

    goto :goto_0

    .line 380
    :sswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 371
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public getScalingFactorAsFloat()F
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactor:F

    return v0
.end method

.method public getScalingFactorAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->scalingFactorAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize(Ljava/lang/String;)Lcom/amazon/device/ads/Size;
    .locals 3

    .prologue
    .line 391
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->portraitScreenSize:Lcom/amazon/device/ads/Size;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->portraitScreenSize:Lcom/amazon/device/ads/Size;

    .line 418
    :goto_0
    return-object v0

    .line 395
    :cond_0
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->landscapeScreenSize:Lcom/amazon/device/ads/Size;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->landscapeScreenSize:Lcom/amazon/device/ads/Size;

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 401
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 402
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 403
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    new-instance v0, Lcom/amazon/device/ads/Size;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/Size;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->portraitScreenSize:Lcom/amazon/device/ads/Size;

    .line 409
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->portraitScreenSize:Lcom/amazon/device/ads/Size;

    goto :goto_0

    .line 411
    :cond_2
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    new-instance v0, Lcom/amazon/device/ads/Size;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/Size;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->landscapeScreenSize:Lcom/amazon/device/ads/Size;

    .line 414
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->landscapeScreenSize:Lcom/amazon/device/ads/Size;

    goto :goto_0

    .line 418
    :cond_3
    new-instance v0, Lcom/amazon/device/ads/Size;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/Size;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSerialSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setSerialIfNotFetched()V

    .line 312
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_serial:Ljava/lang/String;

    return-object v0
.end method

.method public getUdidSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setUdidIfNotFetched()V

    .line 322
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_udid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/UserAgentManager;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMacBad()Z
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setMacAddressIfNotFetched()V

    .line 307
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_mac:Z

    return v0
.end method

.method public isSerialBad()Z
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setSerialIfNotFetched()V

    .line 317
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_serial:Z

    return v0
.end method

.method public isUdidBad()Z
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/amazon/device/ads/DeviceInfo;->setUdidIfNotFetched()V

    .line 327
    iget-boolean v0, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_udid:Z

    return v0
.end method

.method public populateUserAgentString(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/UserAgentManager;->populateUserAgentString(Landroid/content/Context;)V

    .line 365
    return-void
.end method

.method protected setMacAddress()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 108
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 112
    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 128
    :goto_0
    if-nez v0, :cond_1

    .line 130
    iput-object v1, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    .line 157
    :goto_1
    iput-boolean v5, p0, Lcom/amazon/device/ads/DeviceInfo;->macFetched:Z

    .line 158
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    iget-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Unable to get Wifi connection information: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 125
    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 124
    iget-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Unable to get Wifi connection information: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 138
    :cond_2
    iput-object v1, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    .line 139
    iput-boolean v5, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_mac:Z

    goto :goto_1

    .line 143
    :cond_3
    const-string v2, "((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_4

    .line 148
    iput-object v1, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    .line 149
    iput-boolean v5, p0, Lcom/amazon/device/ads/DeviceInfo;->bad_mac:Z

    goto :goto_1

    .line 153
    :cond_4
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->sha1_mac:Ljava/lang/String;

    goto :goto_1
.end method

.method public setUserAgentManager(Lcom/amazon/device/ads/UserAgentManager;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    .line 97
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazon/device/ads/DeviceInfo;->userAgentManager:Lcom/amazon/device/ads/UserAgentManager;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/UserAgentManager;->setUserAgentString(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getDInfoProperty()Lorg/json/JSONObject;

    move-result-object v0

    .line 460
    const-string v1, "orientation"

    invoke-static {v0, v1, p1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "screenSize"

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DeviceInfo;->getScreenSize(Ljava/lang/String;)Lcom/amazon/device/ads/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v1, Lcom/amazon/device/ads/ConnectionInfo;

    iget-object v2, p0, Lcom/amazon/device/ads/DeviceInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/ConnectionInfo;-><init>(Lcom/amazon/device/ads/MobileAdsInfoStore;)V

    .line 465
    const-string v2, "connectionType"

    invoke-virtual {v1}, Lcom/amazon/device/ads/ConnectionInfo;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/amazon/device/ads/DeviceInfo;->getOrientation()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DeviceInfo;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
