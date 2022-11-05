.class public Lcom/openx/view/MediatedAdView;
.super Lcom/openx/view/AdBase;
.source "MediatedAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/MediatedAdView$1;,
        Lcom/openx/view/MediatedAdView$GenerateURLCallback;,
        Lcom/openx/view/MediatedAdView$sdkChainCallBack;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adType:Lcom/openx/model/AdType;

.field protected chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

.field private chainManager:Lcom/openx/view/tp/chain/ChainManager;

.field private tpSDK:Ljava/lang/String;

.field private urlGenerator:Lcom/openx/model/adParams/URLGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, "MediatedAdView"

    iput-object v0, p0, Lcom/openx/view/MediatedAdView;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/openx/core/sdk/OXSettings;->getTpJarList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/MediatedAdView;->tpSDK:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p2}, Lcom/openx/view/MediatedAdView;->reflectAttrs(Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-string v0, "MediatedAdView"

    iput-object v0, p0, Lcom/openx/view/MediatedAdView;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/openx/core/sdk/OXSettings;->getTpJarList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/MediatedAdView;->tpSDK:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p2}, Lcom/openx/view/MediatedAdView;->reflectAttrs(Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/AdType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p3, p4}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "MediatedAdView"

    iput-object v0, p0, Lcom/openx/view/MediatedAdView;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/openx/core/sdk/OXSettings;->getTpJarList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/MediatedAdView;->tpSDK:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    .line 70
    return-void
.end method

.method static synthetic access$200(Lcom/openx/view/MediatedAdView;)Lcom/openx/view/tp/chain/ChainManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/openx/view/MediatedAdView;)Lcom/openx/model/AdType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    return-object v0
.end method

.method private loadModelSendSDKChainRequest(Lcom/openx/view/tp/chain/network/SDKChainLoadListener;)V
    .locals 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/openx/view/MediatedAdView;->chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    .line 235
    iget v0, p0, Lcom/openx/view/MediatedAdView;->adModelRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/MediatedAdView;->adModelRequests:I

    .line 237
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->domain:Ljava/lang/String;

    iget-object v1, p0, Lcom/openx/view/MediatedAdView;->auid:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/openx/view/MediatedAdView;->sendChainRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private sendChainRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getNetworkManager()Lcom/openx/common/deviceData/listeners/NetworkListener;

    move-result-object v0

    .line 244
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v1

    .line 246
    const-string v2, "android.permission.INTERNET"

    invoke-interface {v1, v2}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-direct {p0, p1, p2, v0}, Lcom/openx/view/MediatedAdView;->sendChainRequest(Ljava/lang/String;Ljava/lang/String;Lcom/openx/common/deviceData/listeners/NetworkListener;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v0, "MediatedAdView"

    const-string v1, "chainURL is: PermissionDeniedForApplication"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/openx/errors/PermissionDeniedForApplication;

    const-string v1, "android.permission.INTERNET"

    invoke-direct {v0, v1}, Lcom/openx/errors/PermissionDeniedForApplication;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/openx/errors/PermissionDeniedForApplication;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/openx/view/MediatedAdView;->chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/openx/view/MediatedAdView;->chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    invoke-interface {v1, v0}, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;->onSDKChainLoadFail(Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method

.method private sendChainRequest(Ljava/lang/String;Ljava/lang/String;Lcom/openx/common/deviceData/listeners/NetworkListener;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-interface {p3}, Lcom/openx/common/deviceData/listeners/NetworkListener;->getConnectionType()Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    move-result-object v1

    sget-object v2, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->OFFLINE:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    if-eq v1, v2, :cond_3

    .line 269
    const-string v1, "MediatedAdView"

    const-string v2, "AdModel :  generating_sdk_url"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v1, Lcom/openx/model/adParams/URLGenerator;

    new-instance v2, Lcom/openx/view/MediatedAdView$GenerateURLCallback;

    invoke-direct {v2, p0, v0}, Lcom/openx/view/MediatedAdView$GenerateURLCallback;-><init>(Lcom/openx/view/MediatedAdView;Lcom/openx/view/MediatedAdView$1;)V

    iget-object v3, p0, Lcom/openx/view/MediatedAdView;->chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    invoke-direct {v1, v2, v3}, Lcom/openx/model/adParams/URLGenerator;-><init>(Lcom/openx/core/network/GenerateURLListener;Lcom/openx/core/network/BaseResponseHandler;)V

    iput-object v1, p0, Lcom/openx/view/MediatedAdView;->urlGenerator:Lcom/openx/model/adParams/URLGenerator;

    .line 275
    iget-object v1, p0, Lcom/openx/view/MediatedAdView;->urlGenerator:Lcom/openx/model/adParams/URLGenerator;

    iget-object v2, p0, Lcom/openx/view/MediatedAdView;->adRequest:Lcom/openx/core/network/OXAdRequest;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v0, v0, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/openx/model/adParams/URLGenerator;->setURLParams(Lcom/openx/model/adParams/AdCallParameters;)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/openx/view/MediatedAdView;->urlGenerator:Lcom/openx/model/adParams/URLGenerator;

    iget-object v2, p0, Lcom/openx/view/MediatedAdView;->urlGenerator:Lcom/openx/model/adParams/URLGenerator;

    invoke-virtual {v2}, Lcom/openx/model/adParams/URLGenerator;->getAdCallParams()Lcom/openx/model/adParams/AdCallParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/adParams/AdCallParameters;->getParameters()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/openx/model/adParams/URLGenerator;->getURL(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "MediatedAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chainURL is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    const-string v1, "sdk url_generated"

    invoke-static {v1}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    new-instance v1, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;

    iget-object v2, p0, Lcom/openx/view/MediatedAdView;->chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    invoke-direct {v1, v0, v2}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;-><init>(Ljava/lang/String;Lcom/openx/view/tp/chain/network/SDKChainLoadListener;)V

    .line 286
    invoke-virtual {v1}, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->sendChainLoadRequest()V

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    const-string v0, "sdk url_wasnot_generated"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    new-instance v0, Lcom/openx/errors/UnknownError;

    const-string v1, "URL was not created"

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/openx/view/MediatedAdView;->chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    invoke-interface {v1, v0}, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;->onSDKChainLoadFail(Lcom/openx/errors/AdError;)V

    goto :goto_0

    .line 297
    :cond_3
    const-string v0, "MediatedAdView"

    const-string v1, "chainURL is: DeviceIsOffline"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v0, Lcom/openx/errors/DeviceIsOffline;

    invoke-direct {v0}, Lcom/openx/errors/DeviceIsOffline;-><init>()V

    .line 299
    invoke-virtual {v0}, Lcom/openx/errors/DeviceIsOffline;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/openx/view/MediatedAdView;->chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/openx/view/MediatedAdView;->chainListener:Lcom/openx/view/tp/chain/network/SDKChainLoadListener;

    invoke-interface {v1, v0}, Lcom/openx/view/tp/chain/network/SDKChainLoadListener;->onSDKChainLoadFail(Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "MediatedAdView"

    const-string v1, "adView: destroy();: cleanUp: called : yay!"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/ChainManager;->cleanUp()V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/MediatedAdView;->stoppedLoading()V

    .line 133
    return-void
.end method

.method public load(Lcom/openx/core/network/OXAdRequest;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openx/view/MediatedAdView;->scheduleTimer(I)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 375
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->load(Lcom/openx/core/network/OXAdRequest;)V

    goto :goto_0
.end method

.method protected loadView()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {p0}, Lcom/openx/view/MediatedAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/MediatedAdView;->adEventsListener:Lcom/openx/view/AdEventsListener;

    iget-object v3, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/openx/view/tp/chain/ChainManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/openx/view/AdEventsListener;Lcom/openx/model/AdType;)V

    iput-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    .line 228
    :cond_0
    new-instance v0, Lcom/openx/view/MediatedAdView$sdkChainCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openx/view/MediatedAdView$sdkChainCallBack;-><init>(Lcom/openx/view/MediatedAdView;Lcom/openx/view/MediatedAdView$1;)V

    invoke-direct {p0, v0}, Lcom/openx/view/MediatedAdView;->loadModelSendSDKChainRequest(Lcom/openx/view/tp/chain/network/SDKChainLoadListener;)V

    .line 230
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/openx/view/AdBase;->onAttachedToWindow()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/MediatedAdView;->isPaused:Z

    .line 117
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->onWindowFocusChanged(Z)V

    .line 160
    if-nez p1, :cond_3

    .line 163
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/ChainManager;->cleanUp()V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/MediatedAdView;->stoppedLoading()V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/ChainManager;->destroyAdViews()V

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/openx/view/MediatedAdView;->stoppedLoading()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "MediatedAdView"

    const-string v1, "adView:  pause();: cleanUp: not called"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/ChainManager;->stopTimeout()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/MediatedAdView;->stoppedLoading()V

    .line 148
    return-void
.end method

.method protected reflectAttrs(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->reflectAttrs(Landroid/util/AttributeSet;)V

    .line 96
    if-eqz p1, :cond_1

    .line 98
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    .line 99
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 101
    iget-object v2, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    if-nez v2, :cond_0

    .line 103
    const-string v2, "adType"

    invoke-super {p0, p1, v0, v2}, Lcom/openx/view/AdBase;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/openx/model/AdType;->valueOf(Ljava/lang/String;)Lcom/openx/model/AdType;

    move-result-object v2

    iput-object v2, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method public setAdType(Lcom/openx/model/AdType;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/openx/view/MediatedAdView;->adType:Lcom/openx/model/AdType;

    .line 201
    return-void
.end method

.method public varargs setTestDevices([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    sput-object p1, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    .line 217
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/openx/view/MediatedAdView;->chainManager:Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/ChainManager;->show()V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v0, "MediatedAdView"

    const-string v1, "You must call load first and receive a callback to indicate that you can actually show. "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
