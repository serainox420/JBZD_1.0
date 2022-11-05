.class public Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;
.super Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
.source "GreenServerAdapter.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;)Lcom/millennialmedia/internal/PlayList;
    .locals 4

    .prologue
    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/millennialmedia/internal/PlayList;

    invoke-direct {v1}, Lcom/millennialmedia/internal/PlayList;-><init>()V

    .line 323
    const-string v2, "1"

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->playListVersion:Ljava/lang/String;

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handshakeId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placementId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->placementId:Ljava/lang/String;

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placementName_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/internal/PlayList;->placementName:Ljava/lang/String;

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "siteId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    .line 330
    new-instance v0, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;

    const-string v2, "itemId"

    invoke-direct {v0, v2, p0, p1}, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;)V

    .line 333
    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V

    .line 335
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add parameter due to empty value for key <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> and value <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_2
    :goto_0
    return-void

    .line 261
    :cond_3
    :try_start_0
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 265
    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    sget-object v1, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a:Ljava/lang/String;

    const-string v2, "Error occurred when trying to inject ad url request parameter"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v0, "dm"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v0, "dv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v0, "ua"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAdInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_14

    .line 56
    const-string v4, "aaid"

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v1, "ate"

    .line 58
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isLimitAdTrackingEnabled(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_1
    const-string v0, "density"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v0, "hpx"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v0, "wpx"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v0, "do"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "olock"

    const-string v1, "false"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v0, "sk"

    const-string v1, "false"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v0, "vol"

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v0, "headphones"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->areHeadphonesPluggedIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "mic"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophonePermission()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :cond_1
    const-string v0, "language"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v0, "country"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v0, "pkid"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v0, "pknm"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v0, "bl"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v0, "plugged"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isDevicePlugged()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "space"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableStorageSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v0, "conn"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v0, "celldbm"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCellSignalDbm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMcc()Ljava/lang/Integer;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    const-string v1, "mcc"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMnc()Ljava/lang/Integer;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    const-string v1, "mnc"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_3
    const-string v0, "pip"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    const-string v1, "cn"

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_15

    sget-boolean v1, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    if-eqz v1, :cond_15

    .line 112
    const-string v1, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v1, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    const-string v1, "ha"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    const-string v1, "spd"

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_6
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 124
    const-string v1, "brg"

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_7
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 128
    const-string v1, "alt"

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    :cond_8
    const-string v1, "tslr"

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v1, "loc"

    const-string v4, "true"

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v1, "lsrc"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    :goto_2
    const-string v0, "sdkversion"

    const-string v1, "6.3.1-4006cb2.a"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v0, "video"

    const-string v1, "true"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v0, "cachedvideo"

    const-string v1, "true"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getAppInfo()Lcom/millennialmedia/AppInfo;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_9

    .line 148
    const-string v1, "vendor"

    invoke-virtual {v0}, Lcom/millennialmedia/AppInfo;->getMediator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v1, "coppa"

    invoke-virtual {v0}, Lcom/millennialmedia/AppInfo;->getCoppa()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :cond_9
    const-string v0, "placementId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 155
    const-string v1, "apid"

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_a
    const-string v0, "placementType"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_16

    check-cast v0, Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 160
    const-string v0, "at"

    const-string v1, "i"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string v0, "reqtype"

    const-string v1, "fetch"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :goto_3
    const-string v0, "width"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    .line 171
    const-string v0, "hswd"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    :cond_b
    const-string v0, "height"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 175
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_c

    .line 177
    const-string v0, "hsht"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    :cond_c
    const-string v0, "refreshrate"

    const-string v1, "refreshRate"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    const-string v0, "keywords"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_d

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 186
    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_d
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getUserData()Lcom/millennialmedia/UserData;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_10

    .line 192
    const-string v1, "age"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getAge()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v1, "children"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getChildren()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string v1, "education"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getEducation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string v1, "ethnicity"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getEthnicity()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v1, "gender"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getGender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string v1, "income"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getIncome()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v1, "marital"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getMarital()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string v1, "politics"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getPolitics()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v1, "zip"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v1, "state"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 204
    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_e
    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getDob()Ljava/util/Date;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_f

    .line 209
    const-string v5, "dob"

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v5, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    :cond_f
    const-string v1, "dma"

    invoke-virtual {v0}, Lcom/millennialmedia/UserData;->getDma()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    :cond_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 217
    const-string v0, "keywords"

    const-string v1, ","

    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_11
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getExistingIds()Ljava/util/List;

    move-result-object v0

    .line 222
    const-string v1, "appsids"

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getTestInfo()Lcom/millennialmedia/TestInfo;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_12

    .line 226
    const-string v1, "acid"

    iget-object v0, v0, Lcom/millennialmedia/TestInfo;->creativeId:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    :cond_12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v0, v2

    .line 241
    :goto_4
    return-object v0

    .line 58
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 61
    :cond_14
    const-string v0, "MD5"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "SHA1"

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 65
    const-string v4, "mmdid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmh_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 138
    :cond_15
    const-string v0, "loc"

    const-string v1, "false"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 164
    :cond_16
    const-string v0, "at"

    const-string v1, "b"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v0, "reqtype"

    const-string v1, "getad"

    invoke-static {v3, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 234
    :cond_17
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlaylistServerBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 235
    if-nez v1, :cond_18

    move-object v0, v2

    .line 236
    goto :goto_4

    .line 241
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;-><init>(Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method
