.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateAdBlockerCheck"
.end annotation


# instance fields
.field private _address:Ljava/net/InetAddress;

.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 122
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 123
    return-void
.end method

.method static synthetic access$102(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    return-object p1
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 4

    .prologue
    .line 131
    const-string v0, "Unity Ads init: checking for ad blockers"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 135
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 141
    new-instance v2, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 152
    invoke-virtual {v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->start()V

    .line 155
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    .line 156
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const-string v0, "Unity Ads init: halting init because Unity Ads config resolves to loopback address (due to ad blocker?)"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Lcom/unity3d/ads/IUnityAdsListener;)V

    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;

    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;

    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method
