.class Lcom/amazon/device/ads/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final WIFI_NAME:Ljava/lang/String; = "Wifi"


# instance fields
.field private connectionType:Ljava/lang/String;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/amazon/device/ads/ConnectionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ConnectionInfo;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/ConnectionInfo;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ConnectionInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/ConnectionInfo;->initialize(Landroid/net/ConnectivityManager;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsInfoStore;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/ConnectionInfo;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ConnectionInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 29
    invoke-virtual {p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ConnectionInfo;->initialize(Landroid/net/ConnectivityManager;)V

    .line 32
    return-void
.end method

.method private generateConnectionType()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/ConnectionInfo;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/amazon/device/ads/ConnectionInfo;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 72
    const-string v0, "Wifi"

    iput-object v0, p0, Lcom/amazon/device/ads/ConnectionInfo;->connectionType:Ljava/lang/String;

    .line 85
    :goto_1
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 65
    iget-object v2, p0, Lcom/amazon/device/ads/ConnectionInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Unable to get active network information: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ConnectionInfo;->connectionType:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ConnectionInfo;->connectionType:Ljava/lang/String;

    goto :goto_1
.end method

.method private initialize(Landroid/net/ConnectivityManager;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amazon/device/ads/ConnectionInfo;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 41
    invoke-virtual {p0}, Lcom/amazon/device/ads/ConnectionInfo;->refresh()V

    .line 42
    return-void
.end method


# virtual methods
.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/device/ads/ConnectionInfo;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public isWiFi()Z
    .locals 2

    .prologue
    .line 98
    const-string v0, "Wifi"

    invoke-virtual {p0}, Lcom/amazon/device/ads/ConnectionInfo;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/amazon/device/ads/ConnectionInfo;->generateConnectionType()V

    .line 47
    return-void
.end method
