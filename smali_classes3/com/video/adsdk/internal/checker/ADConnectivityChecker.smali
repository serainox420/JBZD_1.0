.class public Lcom/video/adsdk/internal/checker/ADConnectivityChecker;
.super Ljava/lang/Object;
.source "ADConnectivityChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;


# instance fields
.field canBeUsed:Z

.field connectionType:I

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;->canBeUsed:Z

    .line 17
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;->context:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private getConnectionTypeUnsafe()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 42
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 43
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 44
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 45
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 46
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :cond_1
    const/16 v0, 0x9

    .line 61
    :goto_0
    return v0

    .line 48
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 49
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 50
    sparse-switch v0, :sswitch_data_0

    .line 58
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 56
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 61
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getConnectionType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;->connectionType:I

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;->getConnectionType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readCurrentValues()Z
    .locals 1

    .prologue
    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;->getConnectionTypeUnsafe()I

    move-result v0

    iput v0, p0, Lcom/video/adsdk/internal/checker/ADConnectivityChecker;->connectionType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method
