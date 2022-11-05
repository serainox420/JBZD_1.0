.class public final Lcom/unity3d/ads/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/UnityAds$UnityAdsError;,
        Lcom/unity3d/ads/UnityAds$PlacementState;,
        Lcom/unity3d/ads/UnityAds$FinishState;
    }
.end annotation


# static fields
.field private static _configurationInitialized:Z

.field private static _debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    .line 23
    sput-boolean v0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    return-void
.end method

.method public static getDebugMode()Z
    .locals 1

    .prologue
    .line 361
    sget-boolean v0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    return v0
.end method

.method public static getListener()Lcom/unity3d/ads/IUnityAdsListener;
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    goto :goto_0
.end method

.method public static getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 259
    invoke-static {p0}, Lcom/unity3d/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads show failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_0

    .line 330
    new-instance v2, Lcom/unity3d/ads/UnityAds$2;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/unity3d/ads/UnityAds$2;-><init>(Lcom/unity3d/ads/IUnityAdsListener;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    :cond_0
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V

    .line 95
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 106
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 109
    sget-boolean v0, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sput-boolean v4, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    .line 114
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 115
    :cond_2
    const-string v0, "Error while initializing Unity Ads: empty game ID, halting Unity Ads init"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 116
    if-eqz p2, :cond_0

    .line 117
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Empty game ID"

    invoke-interface {p2, v0, v1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    if-nez p0, :cond_4

    .line 123
    const-string v0, "Error while initializing Unity Ads: null activity, halting Unity Ads init"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 124
    if-eqz p2, :cond_0

    .line 125
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Null activity"

    invoke-interface {p2, v0, v1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    if-eqz p3, :cond_5

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing Unity Ads "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with game id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in test mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 136
    :goto_1
    sget-boolean v0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 138
    invoke-static {p1}, Lcom/unity3d/ads/properties/ClientProperties;->setGameId(Ljava/lang/String;)V

    .line 139
    invoke-static {p2}, Lcom/unity3d/ads/properties/ClientProperties;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    .line 141
    invoke-static {p3}, Lcom/unity3d/ads/properties/SdkProperties;->setTestMode(Z)V

    .line 143
    invoke-static {}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->isEnvironmentOk()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    const-string v0, "Unity Ads environment check OK"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v0}, Lcom/unity3d/ads/configuration/Configuration;-><init>()V

    .line 154
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/unity3d/ads/api/AdUnit;

    aput-object v3, v1, v2

    const-class v2, Lcom/unity3d/ads/api/Broadcast;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Lcom/unity3d/ads/api/Cache;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/unity3d/ads/api/Connectivity;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/unity3d/ads/api/DeviceInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/unity3d/ads/api/Listener;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/unity3d/ads/api/Storage;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/unity3d/ads/api/Sdk;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/unity3d/ads/api/Request;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/unity3d/ads/api/Resolve;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/unity3d/ads/api/VideoPlayer;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/unity3d/ads/api/Placement;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lcom/unity3d/ads/api/Intent;

    aput-object v3, v1, v2

    .line 170
    invoke-virtual {v0, v1}, Lcom/unity3d/ads/configuration/Configuration;->setWebAppApiClassList([Ljava/lang/Class;)V

    .line 171
    invoke-static {v0}, Lcom/unity3d/ads/configuration/InitializeThread;->initialize(Lcom/unity3d/ads/configuration/Configuration;)V

    goto/16 :goto_0

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing Unity Ads "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with game id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in production mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    :cond_6
    const-string v0, "Error during Unity Ads environment check, halting Unity Ads init"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 147
    if-eqz p2, :cond_0

    .line 148
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads init environment check failed"

    invoke-interface {p2, v0, v1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isReady()Z
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/unity3d/ads/placement/Placement;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 346
    sput-boolean p0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    .line 348
    if-eqz p0, :cond_0

    .line 349
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->setLogLevel(I)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->setLogLevel(I)V

    goto :goto_0
.end method

.method public static setListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0

    .prologue
    .line 189
    invoke-static {p0}, Lcom/unity3d/ads/properties/ClientProperties;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 190
    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 281
    if-nez p0, :cond_0

    .line 282
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Activity must not be null"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads opening new ad unit for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 288
    invoke-static {p0}, Lcom/unity3d/ads/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    .line 289
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/ads/UnityAds$1;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/ads/UnityAds$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads is not supported for this device"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads is not initialized"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_3
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0
.end method
