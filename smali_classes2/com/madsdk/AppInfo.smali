.class public Lcom/madsdk/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/madsdk/AppInfo$Listener;,
        Lcom/madsdk/AppInfo$DeviceType;
    }
.end annotation


# static fields
.field public static final EDGE:I = 0x1

.field public static final G3:I = 0x3

.field public static final LTE:I = 0x6

.field public static final MOBILE_DATA:I = 0x2

.field public static final OFFLINE:I = 0x0

.field private static final SDK_VERSION:Ljava/lang/String; = "1.0.0"

.field public static final WIFI:I = 0x9

.field private static instance:Lcom/madsdk/AppInfo;


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private androidId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private connectivity:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/madsdk/AppInfo;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/madsdk/AppInfo;->instance:Lcom/madsdk/AppInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/madsdk/AppInfo;)Lcom/madsdk/AppInfo;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/madsdk/AppInfo;->instance:Lcom/madsdk/AppInfo;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madsdk/AppInfo;->connectivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madsdk/AppInfo;->androidId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/madsdk/AppInfo;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madsdk/AppInfo;->advertisingId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/madsdk/AppInfo;->getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madsdk/AppInfo;->carrier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madsdk/AppInfo;->applicationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madsdk/AppInfo;->deviceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madsdk/AppInfo;->sdkVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madsdk/AppInfo;->appVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/madsdk/AppInfo;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 74
    .line 77
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 91
    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "MadSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Advertising ID not available! Unrecoverable error connecting to Google Play services e.g., the old version of the service doesn\'t support getting AdvertisingId.\nError message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 90
    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    const-string v2, "MadSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Advertising ID not available! Encountered a recoverable error connecting to Google Play services.\nError message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 90
    goto :goto_0

    .line 85
    :catch_2
    move-exception v1

    .line 86
    const-string v1, "MadSDK"

    const-string v2, "Google Advertising ID not available! Google Play is not installed on this device."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 90
    goto :goto_0

    .line 88
    :catch_3
    move-exception v1

    .line 89
    const-string v2, "MadSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Advertising ID not available!\nReason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private static getConnectionType(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 118
    const-string v0, "connectivity"

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 121
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 122
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    :cond_1
    const/16 v0, 0x9

    .line 137
    :goto_0
    return v0

    .line 124
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 126
    sparse-switch v0, :sswitch_data_0

    .line 134
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 128
    goto :goto_0

    .line 130
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 132
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Lcom/madsdk/AppInfo;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/madsdk/AppInfo$DeviceType;->TABLET:Lcom/madsdk/AppInfo$DeviceType;

    invoke-virtual {v0}, Lcom/madsdk/AppInfo$DeviceType;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/madsdk/AppInfo$DeviceType;->SMARTPHONE:Lcom/madsdk/AppInfo$DeviceType;

    invoke-virtual {v0}, Lcom/madsdk/AppInfo$DeviceType;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static request(Landroid/content/Context;Lcom/madsdk/AppInfo$Listener;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/madsdk/AppInfo;->instance:Lcom/madsdk/AppInfo;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/madsdk/AppInfo$1;

    invoke-direct {v0, p0, p1}, Lcom/madsdk/AppInfo$1;-><init>(Landroid/content/Context;Lcom/madsdk/AppInfo$Listener;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/madsdk/AppInfo;->instance:Lcom/madsdk/AppInfo;

    invoke-interface {p1, v0}, Lcom/madsdk/AppInfo$Listener;->onAppInfoLoaded(Lcom/madsdk/AppInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/madsdk/AppInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/madsdk/AppInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/madsdk/AppInfo;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/madsdk/AppInfo;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/madsdk/AppInfo;->connectivity:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/madsdk/AppInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/madsdk/AppInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method
