.class public Lcom/video/adsdk/internal/ADRequest;
.super Ljava/lang/Object;
.source "ADRequest.java"


# static fields
.field private static final AD_FORMAT:Ljava/lang/String; = "_f"

.field private static final ALTERNATIVE:Ljava/lang/String; = "alternative"

.field private static final ANDROID_DEVICE_ID:Ljava/lang/String; = "androiddid"

.field private static final APP_DOMAIN:Ljava/lang/String; = "ref"

.field private static final APP_VERSION:Ljava/lang/String; = "appv"

.field private static final CARRIER_NAME:Ljava/lang/String; = "carrier"

.field private static final CONNECTIVITY:Ljava/lang/String; = "con"

.field private static final DEVICE_ID:Ljava/lang/String; = "did"

.field private static final DEVICE_TYPE:Ljava/lang/String; = "dvt"

.field private static final FORCE_NATIVE:Ljava/lang/String; = "force_native"

.field private static final GEOLOCATION:Ljava/lang/String; = "latlon"

.field private static final IDENTIFICATION_TYPE:Ljava/lang/String; = "idt"

.field private static final LIVE_URL:Ljava/lang/String; = "https://ads.smartstream.tv/r/"

.field private static final OPTOUT:Ljava/lang/String; = "pfilter[optout]"

.field private static final OS:Ljava/lang/String; = "aos"

.field private static final OS_CODENAME:Ljava/lang/String; = "aosc"

.field private static final OS_RELEASE:Ljava/lang/String; = "aosr"

.field private static final OS_VERSION:Ljava/lang/String; = "aosv"

.field private static final PREFETCHING:Ljava/lang/String; = "prefetching"

.field private static final PREFETCHING_CHOICE:Ljava/lang/String; = "choice"

.field private static final PROFILE_DETAILS:Ljava/lang/String; = "det"

.field private static final PUBLISHER_PLACEMENT_ID:Ljava/lang/String; = "_ps"

.field private static final SCREEN_HEIGHT:Ljava/lang/String; = "srh"

.field private static final SCREEN_WIDTH:Ljava/lang/String; = "srw"

.field private static final SDK_NAME:Ljava/lang/String; = "_s"

.field private static final SDK_REVISION:Ljava/lang/String; = "rev"

.field private static final SDK_VERSION:Ljava/lang/String; = "android_sdk_version"

.field private static final THIRD_PARTY_ID:Ljava/lang/String; = "3pid"

.field private static final TIMESTAMP:Ljava/lang/String; = "r"

.field private static final TOPIC_ID:Ljava/lang/String; = "tpc"

.field private static final USER_AGENT:Ljava/lang/String; = "ua"

.field private static final VOLUME:Ljava/lang/String; = "volume"


# instance fields
.field private carrierChecker:Lcom/video/adsdk/interfaces/checker/CarrierChecker;

.field private connectivityChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

.field private customParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

.field private deviceTypeChecker:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker;

.field private geolocationChecker:Lcom/video/adsdk/interfaces/checker/GeolocationChecker;

.field private packageNameChecker:Lcom/video/adsdk/interfaces/checker/PackageNameChecker;

.field private packageVersionChecker:Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;

.field private publisherId:Ljava/lang/String;

.field private resolutionChecker:Lcom/video/adsdk/interfaces/checker/ResolutionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->customParameters:Ljava/util/Map;

    .line 93
    iput-object p3, p0, Lcom/video/adsdk/internal/ADRequest;->publisherId:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    .line 96
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/ADRequest;->initCheckers(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public static createRequest(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/interfaces/ADRequestPreparedAction;)V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;

    new-instance v1, Lcom/video/adsdk/internal/ADRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/video/adsdk/internal/ADRequest$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/interfaces/ADRequestPreparedAction;)V

    invoke-direct {v0, p0, v1}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;-><init>(Landroid/content/Context;Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;)V

    .line 90
    return-void
.end method

.method private getCommonUrl()Landroid/net/Uri$Builder;
    .locals 6

    .prologue
    .line 136
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 138
    const-string v0, "_s"

    const-string v1, "asdk1"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    const-string v0, "rev"

    const-string v1, "1.4.7"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    :try_start_0
    const-string v0, "_ps"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->publisherId:Ljava/lang/String;

    const-string v3, "UTF-8"

    .line 144
    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->connectivityChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;->readCurrentValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "con"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->connectivityChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

    .line 151
    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;->getConnectionType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->resolutionChecker:Lcom/video/adsdk/interfaces/checker/ResolutionChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/ResolutionChecker;->readCurrentValues()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "srh"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->resolutionChecker:Lcom/video/adsdk/interfaces/checker/ResolutionChecker;

    .line 156
    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/ResolutionChecker;->getScreenHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    const-string v0, "srw"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->resolutionChecker:Lcom/video/adsdk/interfaces/checker/ResolutionChecker;

    .line 158
    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/ResolutionChecker;->getScreenWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->geolocationChecker:Lcom/video/adsdk/interfaces/checker/GeolocationChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/GeolocationChecker;->readCurrentValues()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "latlon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/video/adsdk/internal/ADRequest;->geolocationChecker:Lcom/video/adsdk/interfaces/checker/GeolocationChecker;

    .line 163
    invoke-interface {v3}, Lcom/video/adsdk/interfaces/checker/GeolocationChecker;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/video/adsdk/internal/ADRequest;->geolocationChecker:Lcom/video/adsdk/interfaces/checker/GeolocationChecker;

    .line 166
    invoke-interface {v3}, Lcom/video/adsdk/interfaces/checker/GeolocationChecker;->getLongitude()D

    move-result-wide v4

    .line 165
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    :cond_2
    const-string v0, "_f"

    const-string v1, "h5"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->deviceTypeChecker:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker;->readCurrentValues()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    const-string v0, "dvt"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->deviceTypeChecker:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker;

    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getIdentificationType()I

    move-result v0

    .line 177
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 178
    const/4 v0, 0x0

    .line 220
    :goto_1
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 179
    :cond_4
    const-string v1, "idt"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    const-string v0, "did"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getAdvertisingId()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    const-string v0, "pfilter[optout]"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->packageNameChecker:Lcom/video/adsdk/interfaces/checker/PackageNameChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/PackageNameChecker;->readCurrentValues()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    const-string v0, "ref"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->packageNameChecker:Lcom/video/adsdk/interfaces/checker/PackageNameChecker;

    .line 189
    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/PackageNameChecker;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->packageVersionChecker:Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;->readCurrentValues()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    const-string v0, "appv"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->packageVersionChecker:Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;

    .line 193
    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;->getPackageVersion()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->carrierChecker:Lcom/video/adsdk/interfaces/checker/CarrierChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/CarrierChecker;->readCurrentValues()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 196
    const-string v0, "carrier"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->carrierChecker:Lcom/video/adsdk/interfaces/checker/CarrierChecker;

    .line 197
    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/CarrierChecker;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 199
    :cond_8
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 200
    const-string v0, "androiddid"

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    invoke-interface {v1}, Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 204
    :cond_9
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 205
    const-string v3, "r"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :goto_2
    const-string v0, "alternative"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 211
    const-string v0, "force_native"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->customParameters:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 214
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->customParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest;->customParameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 206
    :catch_1
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_a
    move-object v0, v2

    .line 220
    goto/16 :goto_1
.end method

.method private getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "https://ads.smartstream.tv/r/"

    return-object v0
.end method

.method private initCheckers(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/video/adsdk/internal/checker/ADCarrierChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADCarrierChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->carrierChecker:Lcom/video/adsdk/interfaces/checker/CarrierChecker;

    .line 101
    new-instance v0, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->connectivityChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

    .line 102
    new-instance v0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->geolocationChecker:Lcom/video/adsdk/interfaces/checker/GeolocationChecker;

    .line 103
    new-instance v0, Lcom/video/adsdk/internal/checker/ADPackageVersionChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADPackageVersionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->packageVersionChecker:Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;

    .line 104
    new-instance v0, Lcom/video/adsdk/internal/checker/ADPackageNameChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADPackageNameChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->packageNameChecker:Lcom/video/adsdk/interfaces/checker/PackageNameChecker;

    .line 105
    new-instance v0, Lcom/video/adsdk/internal/checker/ADResolutionChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADResolutionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->resolutionChecker:Lcom/video/adsdk/interfaces/checker/ResolutionChecker;

    .line 106
    new-instance v0, Lcom/video/adsdk/internal/checker/ADDeviceTypeChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADDeviceTypeChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->deviceTypeChecker:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker;

    .line 107
    return-void
.end method


# virtual methods
.method public getDeviceIdBundle()Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    return-object v0
.end method

.method public getUrlForPlay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADRequest;->getCommonUrl()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const-string v1, "prefetching"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/video/adsdk/internal/ADRequest;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlForPrefetching(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADRequest;->getCommonUrl()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string v1, "prefetching"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    const-string v1, "choice"

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/video/adsdk/internal/ADRequest;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCarrierChecker(Lcom/video/adsdk/interfaces/checker/CarrierChecker;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest;->carrierChecker:Lcom/video/adsdk/interfaces/checker/CarrierChecker;

    .line 229
    return-void
.end method

.method public setConnectivityChecker(Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest;->connectivityChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

    .line 233
    return-void
.end method

.method public setCustomParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest;->customParameters:Ljava/util/Map;

    .line 111
    return-void
.end method

.method public setDeviceIdBundle(Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest;->deviceIdBundle:Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;

    .line 245
    return-void
.end method

.method public setGeolocationChecker(Lcom/video/adsdk/interfaces/checker/GeolocationChecker;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest;->geolocationChecker:Lcom/video/adsdk/interfaces/checker/GeolocationChecker;

    .line 237
    return-void
.end method

.method public setPackageNameChecker(Lcom/video/adsdk/interfaces/checker/PackageNameChecker;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest;->packageNameChecker:Lcom/video/adsdk/interfaces/checker/PackageNameChecker;

    .line 249
    return-void
.end method

.method public setPackageVersionChecker(Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest;->packageVersionChecker:Lcom/video/adsdk/interfaces/checker/PackageVersionChecker;

    .line 241
    return-void
.end method

.method public setResolutionChecker(Lcom/video/adsdk/interfaces/checker/ResolutionChecker;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest;->resolutionChecker:Lcom/video/adsdk/interfaces/checker/ResolutionChecker;

    .line 253
    return-void
.end method
