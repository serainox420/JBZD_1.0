.class public Lcom/video/adsdk/internal/checker/ADMacAddressChecker;
.super Ljava/lang/Object;
.source "ADMacAddressChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/MacAddressChecker;


# instance fields
.field private final context:Landroid/content/Context;

.field private macAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADMacAddressChecker;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADMacAddressChecker;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public readCurrentValues()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADMacAddressChecker;->context:Landroid/content/Context;

    const-string v2, "wifi"

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 22
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADMacAddressChecker;->macAddress:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADMacAddressChecker;->macAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 29
    goto :goto_0
.end method
