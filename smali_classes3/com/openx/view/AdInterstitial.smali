.class public Lcom/openx/view/AdInterstitial;
.super Lcom/openx/view/AdBase;
.source "AdInterstitial.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/SDKInitListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/AdInterstitial$2;,
        Lcom/openx/view/AdInterstitial$GenerateURLCallback;,
        Lcom/openx/view/AdInterstitial$ClosePosition;
    }
.end annotation


# static fields
.field private static adVideoView:Lcom/openx/view/video/AdVideoView;


# instance fields
.field private adBaseView:Lcom/openx/view/WebViewBase;

.field private autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

.field private customVideoDetails:Lcom/openx/model/video/CustomVideoAdProperties;

.field private dimAmount:F

.field private dimColor:I

.field private fallbackAdWebview:Lcom/openx/view/WebViewInterstitial;

.field private hasLoaded:Z

.field private hasStartedLoading:Z

.field private hasTwoAds:Z

.field private isVideo:Z

.field private mClosePosition:Lcom/openx/view/AdInterstitial$ClosePosition;

.field private playFullscreen:Z

.field private preloadAdVideos:Z

.field private vastTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/Ad;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1, v0, v0}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v0, 0x99

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    .line 43
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    .line 48
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->playFullscreen:Z

    .line 52
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasTwoAds:Z

    .line 56
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasStartedLoading:Z

    .line 67
    sget-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->WifiOnlyAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    iput-object v0, p0, Lcom/openx/view/AdInterstitial;->autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 174
    invoke-direct {p0, p2}, Lcom/openx/view/AdInterstitial;->initWebViewInterstitial(Lcom/openx/model/Ad;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;)V

    .line 42
    const/16 v0, 0x99

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    .line 43
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    .line 47
    iput-boolean v2, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    .line 48
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->playFullscreen:Z

    .line 52
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasTwoAds:Z

    .line 56
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasStartedLoading:Z

    .line 67
    sget-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->WifiOnlyAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    iput-object v0, p0, Lcom/openx/view/AdInterstitial;->autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 129
    iput-object p2, p0, Lcom/openx/view/AdInterstitial;->vastTag:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/openx/view/AdInterstitial;->isVideo:Z

    .line 131
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/openx/core/sdk/OXSettings;->initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V

    .line 132
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v0, 0x99

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    .line 43
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    .line 48
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->playFullscreen:Z

    .line 52
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasTwoAds:Z

    .line 56
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasStartedLoading:Z

    .line 67
    sget-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->WifiOnlyAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    iput-object v0, p0, Lcom/openx/view/AdInterstitial;->autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 96
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/openx/core/sdk/OXSettings;->initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/openx/view/tp/chain/parser/ChainItem;)V

    .line 42
    const/16 v0, 0x99

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    .line 43
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    .line 48
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->playFullscreen:Z

    .line 52
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasTwoAds:Z

    .line 56
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasStartedLoading:Z

    .line 67
    sget-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->WifiOnlyAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    iput-object v0, p0, Lcom/openx/view/AdInterstitial;->autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 107
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/openx/core/sdk/OXSettings;->initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V

    .line 108
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;)V

    .line 42
    const/16 v0, 0x99

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    .line 43
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    .line 47
    iput-boolean v2, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    .line 48
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->playFullscreen:Z

    .line 52
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasTwoAds:Z

    .line 56
    iput-boolean v1, p0, Lcom/openx/view/AdInterstitial;->hasStartedLoading:Z

    .line 67
    sget-object v0, Lcom/openx/view/AutoVideoPreloadConfigs;->WifiOnlyAutoPreload:Lcom/openx/view/AutoVideoPreloadConfigs;

    iput-object v0, p0, Lcom/openx/view/AdInterstitial;->autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 158
    iput-object p2, p0, Lcom/openx/view/AdInterstitial;->vastTag:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lcom/openx/view/AdInterstitial;->isVideo:Z

    .line 160
    invoke-virtual {p0, p3}, Lcom/openx/view/AdInterstitial;->setDomain(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p4}, Lcom/openx/view/AdInterstitial;->setAdUnitID(Ljava/lang/String;)V

    .line 162
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/openx/core/sdk/OXSettings;->initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V

    .line 163
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/AdInterstitial;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/openx/view/AdInterstitial;->preloadedVideo()V

    return-void
.end method

.method static synthetic access$102(Lcom/openx/view/AdInterstitial;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/openx/view/AdInterstitial;->isVideo:Z

    return p1
.end method

.method static synthetic access$200(Lcom/openx/view/AdInterstitial;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/openx/view/AdInterstitial;->fallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/openx/view/AdInterstitial;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->vastTag:Ljava/lang/String;

    return-object v0
.end method

.method private fallback()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lcom/openx/view/AdBase;->init()V

    .line 385
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-super {p0, v0}, Lcom/openx/view/AdBase;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 386
    return-void
.end method

.method private generateVideoTagURL()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 339
    .line 343
    new-instance v1, Lcom/openx/model/adParams/URLGenerator;

    new-instance v2, Lcom/openx/view/AdInterstitial$GenerateURLCallback;

    invoke-direct {v2, p0, v0}, Lcom/openx/view/AdInterstitial$GenerateURLCallback;-><init>(Lcom/openx/view/AdInterstitial;Lcom/openx/view/AdInterstitial$1;)V

    invoke-direct {v1, v2, p0}, Lcom/openx/model/adParams/URLGenerator;-><init>(Lcom/openx/core/network/GenerateURLListener;Lcom/openx/core/network/BaseResponseHandler;)V

    .line 346
    iget-object v2, p0, Lcom/openx/view/AdInterstitial;->adRequest:Lcom/openx/core/network/OXAdRequest;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v0, v0, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/openx/model/adParams/URLGenerator;->setURLParams(Lcom/openx/model/adParams/AdCallParameters;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {v1}, Lcom/openx/model/adParams/URLGenerator;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/adParams/AdCallParameters;->getParameters()Ljava/util/Hashtable;

    move-result-object v2

    .line 350
    const-string v3, "mimetype"

    const-string v4, "video/mp4"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v3, "dr"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {v1, v0, v2}, Lcom/openx/model/adParams/URLGenerator;->getURL(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 356
    return-object v0
.end method

.method private initVideo(Lcom/openx/core/network/OXAdRequest;)V
    .locals 4

    .prologue
    .line 294
    iput-object p1, p0, Lcom/openx/view/AdInterstitial;->adRequest:Lcom/openx/core/network/OXAdRequest;

    .line 296
    invoke-direct {p0}, Lcom/openx/view/AdInterstitial;->generateVideoTagURL()Ljava/lang/String;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    if-eqz v1, :cond_0

    .line 300
    sget-object v1, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    invoke-virtual {v1}, Lcom/openx/view/video/AdVideoView;->cancelDownload()V

    .line 301
    const/4 v1, 0x0

    sput-object v1, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    .line 304
    :cond_0
    new-instance v1, Lcom/openx/view/video/AdVideoView;

    iget-object v2, p0, Lcom/openx/view/AdInterstitial;->context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/openx/view/video/AdVideoView;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v1, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    .line 305
    sget-object v0, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    new-instance v1, Lcom/openx/view/AdInterstitial$1;

    invoke-direct {v1, p0}, Lcom/openx/view/AdInterstitial$1;-><init>(Lcom/openx/view/AdInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/video/AdVideoView;->setAdVideoPreloadedListener(Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;)V

    .line 333
    sget-object v0, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    invoke-virtual {v0}, Lcom/openx/view/video/AdVideoView;->preload()V

    .line 334
    return-void
.end method

.method private initWebViewInterstitial(Lcom/openx/model/Ad;)V
    .locals 6

    .prologue
    .line 179
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 181
    new-instance v0, Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x1

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/openx/view/WebViewInterstitial;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    iput-object v0, p0, Lcom/openx/view/AdInterstitial;->fallbackAdWebview:Lcom/openx/view/WebViewInterstitial;

    .line 183
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->fallbackAdWebview:Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {v0, v3}, Lcom/openx/view/WebViewInterstitial;->setParentId(Ljava/util/UUID;)V

    .line 185
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->incrementNumRequests()V

    .line 186
    return-void
.end method

.method private loadInterstitialAd(Lcom/openx/model/AdGroup;Ljava/util/UUID;I)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 450
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openx/model/Ad;

    move-object v3, p2

    move-object v5, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/openx/view/WebViewInterstitial;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;Z)V

    .line 454
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 455
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->incrementNumRequests()V

    .line 463
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openx/model/Ad;

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/openx/view/WebViewInterstitial;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    .line 460
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 461
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->incrementNumRequests()V

    goto :goto_0
.end method

.method private preloadedVideo()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/openx/view/AdInterstitial;->setAdLoadedHandler()V

    .line 576
    return-void
.end method

.method private setAdLoadedHandler()V
    .locals 2

    .prologue
    .line 580
    monitor-enter p0

    .line 583
    :try_start_0
    iget-boolean v0, p0, Lcom/openx/view/AdInterstitial;->hasLoaded:Z

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->adEventsListener:Lcom/openx/view/AdEventsListener;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->adEventsListener:Lcom/openx/view/AdEventsListener;

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdDidLoad()V

    .line 597
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdInterstitial;->hasLoaded:Z

    .line 600
    return-void

    .line 592
    :cond_1
    :try_start_1
    const-string v0, "AdInterstitial"

    const-string v1, "WARNING: Did you forget to set the AdEventsListener?"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public adModelLoadAdFail(Lcom/openx/errors/AdError;)V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->adModelLoadAdFail(Lcom/openx/errors/AdError;)V

    .line 393
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->stoppedLoading()V

    .line 394
    return-void
.end method

.method public adModelLoadAdSuccess(Lcom/openx/model/AdGroup;)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 400
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->adModelLoadAdSuccess(Lcom/openx/model/AdGroup;)V

    .line 402
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->stoppedLoading()V

    .line 404
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 407
    const/4 v3, 0x0

    .line 409
    iput-boolean v5, p0, Lcom/openx/view/AdInterstitial;->hasTwoAds:Z

    .line 410
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 412
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 413
    iput-boolean v4, p0, Lcom/openx/view/AdInterstitial;->hasTwoAds:Z

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 418
    invoke-direct {p0, p1, v3, v5}, Lcom/openx/view/AdInterstitial;->loadInterstitialAd(Lcom/openx/model/AdGroup;Ljava/util/UUID;I)V

    .line 421
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 423
    invoke-direct {p0, p1, v3, v4}, Lcom/openx/view/AdInterstitial;->loadInterstitialAd(Lcom/openx/model/AdGroup;Ljava/util/UUID;I)V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    new-instance v0, Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openx/model/Ad;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/openx/view/WebViewInterstitial;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    .line 431
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 432
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->incrementNumRequests()V

    .line 434
    invoke-virtual {v0}, Lcom/openx/view/WebViewInterstitial;->loadAd()V

    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->adEventsListener:Lcom/openx/view/AdEventsListener;

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Lcom/openx/errors/UnknownError;

    const-string v1, "Empty Ad"

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/openx/view/AdInterstitial;->adEventsListener:Lcom/openx/view/AdEventsListener;

    invoke-interface {v1, v0}, Lcom/openx/view/AdEventsListener;->onAdFailedToLoad(Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method

.method public canAutoVideoPreload()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 724
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

    if-eqz v0, :cond_1

    .line 727
    sget-object v0, Lcom/openx/view/AdInterstitial$2;->$SwitchMap$com$openx$view$AutoVideoPreloadConfigs:[I

    iget-object v3, p0, Lcom/openx/view/AdInterstitial;->autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

    invoke-virtual {v3}, Lcom/openx/view/AutoVideoPreloadConfigs;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 753
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 731
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 733
    goto :goto_0

    .line 735
    :pswitch_2
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 736
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 740
    goto :goto_0

    :cond_0
    move v0, v1

    .line 744
    goto :goto_0

    :cond_1
    move v0, v2

    .line 753
    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public displayAdViewPlacement(Lcom/openx/view/WebViewBase;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->displayAdViewPlacement(Lcom/openx/view/WebViewBase;)V

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAdWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 481
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAdHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 483
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBackgroundOpacity()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    return v0
.end method

.method public getClosePosition()Lcom/openx/view/AdInterstitial$ClosePosition;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->mClosePosition:Lcom/openx/view/AdInterstitial$ClosePosition;

    if-nez v0, :cond_0

    .line 615
    sget-object v0, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_RIGHT:Lcom/openx/view/AdInterstitial$ClosePosition;

    .line 618
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->mClosePosition:Lcom/openx/view/AdInterstitial$ClosePosition;

    goto :goto_0
.end method

.method public getCustomVideoStrings()Lcom/openx/model/video/CustomVideoAdProperties;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->customVideoDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    return-object v0
.end method

.method public hasTwoAds()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/openx/view/AdInterstitial;->hasTwoAds:Z

    return v0
.end method

.method public isPreloadedVideo()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    return v0
.end method

.method public load(Lcom/openx/core/network/OXAdRequest;)V
    .locals 1

    .prologue
    .line 268
    iput-object p1, p0, Lcom/openx/view/AdInterstitial;->adRequest:Lcom/openx/core/network/OXAdRequest;

    .line 269
    sget-boolean v0, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    if-nez v0, :cond_1

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdInterstitial;->hasStartedLoading:Z

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-boolean v0, p0, Lcom/openx/view/AdInterstitial;->isVideo:Z

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->canAutoVideoPreload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, p1}, Lcom/openx/view/AdInterstitial;->initVideo(Lcom/openx/core/network/OXAdRequest;)V

    goto :goto_0

    .line 287
    :cond_2
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->load(Lcom/openx/core/network/OXAdRequest;)V

    goto :goto_0
.end method

.method public loadFallback()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->fallbackAdWebview:Lcom/openx/view/WebViewInterstitial;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->fallbackAdWebview:Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 197
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->fallbackAdWebview:Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/WebViewInterstitial;->loadAd()V

    .line 199
    :cond_0
    return-void
.end method

.method public onSDKInit()V
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/openx/view/AdInterstitial;->hasStartedLoading:Z

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-virtual {p0, v0}, Lcom/openx/view/AdInterstitial;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/AdInterstitial;->hasStartedLoading:Z

    .line 699
    :cond_0
    return-void
.end method

.method public preloaded(Lcom/openx/view/WebViewBase;)V
    .locals 2

    .prologue
    .line 553
    iget v0, p0, Lcom/openx/view/AdInterstitial;->adPreloads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/AdInterstitial;->adPreloads:I

    .line 555
    iget v0, p0, Lcom/openx/view/AdInterstitial;->numRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/openx/view/AdInterstitial;->numRequests:I

    .line 557
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getAdModel()Lcom/openx/model/AdModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openx/view/WebViewBase;->setAdModel(Lcom/openx/model/AdModel;)V

    .line 558
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openx/view/WebViewBase;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    move-object v0, p1

    .line 560
    check-cast v0, Lcom/openx/view/WebViewInterstitial;

    iget v1, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewInterstitial;->setDimColor(I)V

    .line 562
    iput-object p1, p0, Lcom/openx/view/AdInterstitial;->adBaseView:Lcom/openx/view/WebViewBase;

    .line 564
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->hasTwoAds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/openx/view/AdInterstitial;->adPreloads:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->stoppedLoading()V

    .line 568
    invoke-direct {p0}, Lcom/openx/view/AdInterstitial;->setAdLoadedHandler()V

    .line 571
    :cond_1
    return-void
.end method

.method public setAutoVideoPreloadConfigs(Lcom/openx/view/AutoVideoPreloadConfigs;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/openx/view/AdInterstitial;->autoLoadConfig:Lcom/openx/view/AutoVideoPreloadConfigs;

    .line 713
    return-void
.end method

.method public setBackgroundOpacity(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 648
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 649
    iput v1, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    .line 655
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 657
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    .line 658
    return-void

    .line 650
    :cond_0
    cmpl-float v0, p1, v3

    if-lez v0, :cond_1

    .line 651
    iput v3, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    goto :goto_0

    .line 653
    :cond_1
    iput p1, p0, Lcom/openx/view/AdInterstitial;->dimAmount:F

    goto :goto_0
.end method

.method public setBackgroundOpacity(I)V
    .locals 0

    .prologue
    .line 673
    iput p1, p0, Lcom/openx/view/AdInterstitial;->dimColor:I

    .line 674
    return-void
.end method

.method public setClosePosition(Lcom/openx/view/AdInterstitial$ClosePosition;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/openx/view/AdInterstitial;->mClosePosition:Lcom/openx/view/AdInterstitial$ClosePosition;

    .line 631
    return-void
.end method

.method public setCustomVideoStrings(Lcom/openx/model/video/CustomVideoAdProperties;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/openx/view/AdInterstitial;->customVideoDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    .line 242
    return-void
.end method

.method public setPlayFullscreen(Z)V
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/openx/view/AdInterstitial;->playFullscreen:Z

    .line 213
    return-void
.end method

.method public setPreloadAdVideos(Z)V
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    .line 228
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/openx/view/AdInterstitial;->isVideo:Z

    if-eqz v0, :cond_2

    .line 502
    iget-boolean v0, p0, Lcom/openx/view/AdInterstitial;->preloadAdVideos:Z

    if-eqz v0, :cond_1

    .line 505
    new-instance v0, Lcom/openx/model/video/AdVideoDialog;

    iget-object v1, p0, Lcom/openx/view/AdInterstitial;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/view/AdInterstitial;->vastTag:Ljava/lang/String;

    sget-object v4, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    invoke-virtual {v4}, Lcom/openx/view/video/AdVideoView;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    invoke-virtual {v5}, Lcom/openx/view/video/AdVideoView;->getVASTXml()Lcom/openx/model/vast/VASTParser;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/openx/view/AdInterstitial;->customVideoDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    iget-boolean v8, p0, Lcom/openx/view/AdInterstitial;->playFullscreen:Z

    iget-object v9, p0, Lcom/openx/view/AdInterstitial;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-direct/range {v0 .. v9}, Lcom/openx/model/video/AdVideoDialog;-><init>(Landroid/content/Context;Lcom/openx/view/AdEventsListener;Ljava/lang/String;Ljava/lang/String;Lcom/openx/model/vast/VASTParser;ZLcom/openx/model/video/CustomVideoAdProperties;ZLcom/openx/core/network/OXAdRequest;)V

    .line 513
    :goto_0
    invoke-virtual {v0}, Lcom/openx/model/video/AdVideoDialog;->show()V

    .line 528
    :cond_0
    :goto_1
    return-void

    .line 509
    :cond_1
    new-instance v0, Lcom/openx/model/video/AdVideoDialog;

    iget-object v1, p0, Lcom/openx/view/AdInterstitial;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/openx/view/AdInterstitial;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/view/AdInterstitial;->vastTag:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/openx/view/AdInterstitial;->adVideoView:Lcom/openx/view/video/AdVideoView;

    invoke-virtual {v5}, Lcom/openx/view/video/AdVideoView;->getVASTXml()Lcom/openx/model/vast/VASTParser;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/openx/view/AdInterstitial;->customVideoDetails:Lcom/openx/model/video/CustomVideoAdProperties;

    iget-boolean v8, p0, Lcom/openx/view/AdInterstitial;->playFullscreen:Z

    iget-object v9, p0, Lcom/openx/view/AdInterstitial;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-direct/range {v0 .. v9}, Lcom/openx/model/video/AdVideoDialog;-><init>(Landroid/content/Context;Lcom/openx/view/AdEventsListener;Ljava/lang/String;Ljava/lang/String;Lcom/openx/model/vast/VASTParser;ZLcom/openx/model/video/CustomVideoAdProperties;ZLcom/openx/core/network/OXAdRequest;)V

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/openx/view/AdInterstitial;->adBaseView:Lcom/openx/view/WebViewBase;

    check-cast v0, Lcom/openx/view/WebViewInterstitial;

    .line 521
    if-eqz v0, :cond_0

    .line 523
    new-instance v1, Lcom/openx/dialogs/AdInterstitialDialog;

    iget-object v2, p0, Lcom/openx/view/AdInterstitial;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/openx/dialogs/AdInterstitialDialog;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 525
    invoke-virtual {v1}, Lcom/openx/dialogs/AdInterstitialDialog;->show()V

    goto :goto_1
.end method
