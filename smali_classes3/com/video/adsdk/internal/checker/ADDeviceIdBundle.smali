.class public Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;
.super Ljava/lang/Object;
.source "ADDeviceIdBundle.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;
    }
.end annotation


# instance fields
.field private advertisingId:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private androidId:Ljava/lang/String;

.field private identification:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;

.field private mac:Ljava/lang/String;

.field private macSHA1:Ljava/lang/String;

.field private openUDID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->readDeviceIds(Landroid/content/Context;Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->advertisingId:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-object v0
.end method

.method static synthetic access$002(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->advertisingId:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->idIsValid(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;)Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->identification:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;

    return-object p1
.end method

.method private static androidIdIsValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 53
    invoke-static {p0}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->idIsValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNormalizedMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 154
    const-string v1, ""

    .line 156
    :try_start_0
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 157
    array-length v4, v3

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 159
    const-string v0, "0"

    .line 161
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_1
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static idIsValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readAdvertisingId(Landroid/content/Context;Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;)V
    .locals 1

    .prologue
    .line 106
    :try_start_0
    new-instance v0, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-interface {v0, p2}, Lcom/video/adsdk/interfaces/checker/AdvertisingIdChecker;->requestAdvertisingId(Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readAndroidId(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/video/adsdk/internal/checker/ADAndroidDeviceIdChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADAndroidDeviceIdChecker;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/AndroidDeviceIdChecker;->readCurrentValues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/AndroidDeviceIdChecker;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->androidId:Ljava/lang/String;

    .line 102
    :cond_0
    return-void
.end method

.method private readDeviceIds(Landroid/content/Context;Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->readOpenUDID(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->readMac(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->readAndroidId(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;

    invoke-direct {v0, p0, p2}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;-><init>(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;)V

    invoke-direct {p0, p1, v0}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->readAdvertisingId(Landroid/content/Context;Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;)V

    .line 74
    return-void
.end method

.method private readMac(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    new-instance v0, Lcom/video/adsdk/internal/checker/ADMacAddressChecker;

    invoke-direct {v0, p1}, Lcom/video/adsdk/internal/checker/ADMacAddressChecker;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/MacAddressChecker;->readCurrentValues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/MacAddressChecker;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->getNormalizedMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->mac:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/video/adsdk/internal/Helper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->macSHA1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readOpenUDID(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    :try_start_0
    invoke-static {p1}, Lnet/openudid/android/OpenUDID;->syncContext(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lnet/openudid/android/OpenUDID;->getOpenUDIDInContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->openUDID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAdvertisingId()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->advertisingId:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->identification:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;

    iget-object v0, v0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentificationType()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->identification:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;

    iget v0, v0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;->identificationType:I

    return v0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMacSHA1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->macSHA1:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->openUDID:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
