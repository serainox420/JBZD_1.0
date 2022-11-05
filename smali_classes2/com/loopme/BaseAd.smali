.class public abstract Lcom/loopme/BaseAd;
.super Ljava/lang/Object;
.source "BaseAd.java"

# interfaces
.implements Lcom/loopme/request/AdTargeting;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected volatile mAdController:Lcom/loopme/AdController;

.field protected volatile mAdFetcherListener:Lcom/loopme/tasks/AdFetcher$Listener;

.field protected mAdLoadingTimer:J

.field private mAdParams:Lcom/loopme/common/AdParams;

.field protected volatile mAdState:I

.field private mAdTargetingData:Lcom/loopme/request/AdTargetingData;

.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mExpirationListener:Lcom/loopme/common/ExpirationTimer$Listener;

.field protected mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

.field protected mFetcherTimer:Lcom/loopme/common/AdFetcherTimer;

.field protected mFetcherTimerListener:Lcom/loopme/common/AdFetcherTimer$Listener;

.field protected mFuture:Ljava/util/concurrent/Future;

.field protected mHandler:Landroid/os/Handler;

.field protected volatile mIsReady:Z

.field protected mRequestUrl:Ljava/lang/String;

.field protected mShowWhenAdNotReadyCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/BaseAd;->mAdState:I

    .line 59
    new-instance v0, Lcom/loopme/request/AdTargetingData;

    invoke-direct {v0}, Lcom/loopme/request/AdTargetingData;-><init>()V

    iput-object v0, p0, Lcom/loopme/BaseAd;->mAdTargetingData:Lcom/loopme/request/AdTargetingData;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loopme/BaseAd;->mHandler:Landroid/os/Handler;

    .line 64
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/loopme/BaseAd;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/loopme/BaseAd;->mAppKey:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/BaseAd;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loopme/request/AdRequestParametersProvider;->setAppKey(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/BaseAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loopme/request/AdRequestParametersProvider;->detectPackage(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/BaseAd;Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/loopme/BaseAd;->completeRequest(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    return-void
.end method

.method private completeRequest(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/loopme/BaseAd;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/loopme/BaseAd$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/loopme/BaseAd$2;-><init>(Lcom/loopme/BaseAd;Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method private detectGoogleAdvertisingId()V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Lcom/loopme/tasks/AdvIdFetcher;

    iget-object v1, p0, Lcom/loopme/BaseAd;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/loopme/BaseAd$3;

    invoke-direct {v2, p0}, Lcom/loopme/BaseAd$3;-><init>(Lcom/loopme/BaseAd;)V

    invoke-direct {v0, v1, v2}, Lcom/loopme/tasks/AdvIdFetcher;-><init>(Landroid/content/Context;Lcom/loopme/tasks/AdvIdFetcher$Listener;)V

    .line 320
    invoke-static {}, Lcom/loopme/common/ExecutorHelper;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/BaseAd;->mFuture:Ljava/util/concurrent/Future;

    .line 321
    return-void
.end method

.method private preloadHtmlInWebview(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "Broken response"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 243
    const-string v0, "Broken response (empty html)"

    const-string v1, "server"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->initControllers()V

    .line 247
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0, p1}, Lcom/loopme/AdController;->preloadHtml(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "Html loading error"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0
.end method

.method private proceedLoad()V
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/request/AdRequestParametersProvider;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 302
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start initialization google adv id"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/loopme/BaseAd;->detectGoogleAdvertisingId()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->fetchAd()V

    goto :goto_0
.end method


# virtual methods
.method public addCustomParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdTargetingData:Lcom/loopme/request/AdTargetingData;

    invoke-virtual {v0, p1, p2}, Lcom/loopme/request/AdTargetingData;->setCustomParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method protected cancelFetcher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cancel ad fether"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iput-object v2, p0, Lcom/loopme/BaseAd;->mAdFetcherListener:Lcom/loopme/tasks/AdFetcher$Listener;

    .line 181
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->releaseViewController()V

    .line 183
    iget-object v0, p0, Lcom/loopme/BaseAd;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/loopme/BaseAd;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/loopme/BaseAd;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/loopme/BaseAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 189
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad will be destroyed"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iput-object v2, p0, Lcom/loopme/BaseAd;->mAdFetcherListener:Lcom/loopme/tasks/AdFetcher$Listener;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/BaseAd;->mIsReady:Z

    .line 156
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->stopExpirationTimer()V

    .line 157
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->stopFetcherTimer()V

    .line 158
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/BaseAd;->mAdState:I

    .line 159
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getAdTargetingData()Lcom/loopme/request/AdTargetingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/request/AdTargetingData;->clear()V

    .line 160
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/request/AdRequestParametersProvider;->reset()V

    .line 161
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->releaseViewController()V

    .line 163
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getAdFormat()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/loopme/LoopMeAdHolder;->removeInterstitial(Ljava/lang/String;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/loopme/BaseAd;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/loopme/BaseAd;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/loopme/BaseAd;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/loopme/BaseAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    :cond_1
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/loopme/LoopMeAdHolder;->removeBanner(Ljava/lang/String;)V

    goto :goto_0
.end method

.method abstract detectHeight()I
.end method

.method abstract detectWidth()I
.end method

.method public abstract dismiss()V
.end method

.method protected fetchAd()V
    .locals 4

    .prologue
    .line 387
    invoke-static {p0}, Lcom/loopme/LoopMeAdHolder;->putAd(Lcom/loopme/BaseAd;)V

    .line 388
    new-instance v0, Lcom/loopme/request/AdRequestUrlBuilder;

    iget-object v1, p0, Lcom/loopme/BaseAd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loopme/request/AdRequestUrlBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/loopme/BaseAd;->mAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/loopme/BaseAd;->mAdTargetingData:Lcom/loopme/request/AdTargetingData;

    invoke-virtual {v0, v1, v2}, Lcom/loopme/request/AdRequestUrlBuilder;->buildRequestUrl(Ljava/lang/String;Lcom/loopme/request/AdTargetingData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/BaseAd;->mRequestUrl:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/loopme/BaseAd;->mRequestUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "Error during building ad request url"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->initAdFetcherListener()Lcom/loopme/tasks/AdFetcher$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/BaseAd;->mAdFetcherListener:Lcom/loopme/tasks/AdFetcher$Listener;

    .line 395
    new-instance v0, Lcom/loopme/tasks/AdFetcher;

    iget-object v1, p0, Lcom/loopme/BaseAd;->mRequestUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/loopme/BaseAd;->mAdFetcherListener:Lcom/loopme/tasks/AdFetcher$Listener;

    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getAdFormat()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/loopme/tasks/AdFetcher;-><init>(Ljava/lang/String;Lcom/loopme/tasks/AdFetcher$Listener;I)V

    .line 396
    invoke-static {}, Lcom/loopme/common/ExecutorHelper;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/BaseAd;->mFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method protected fetchAdComplete(Lcom/loopme/common/AdParams;)V
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/loopme/BaseAd;->setAdParams(Lcom/loopme/common/AdParams;)V

    .line 237
    invoke-virtual {p1}, Lcom/loopme/common/AdParams;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loopme/BaseAd;->preloadHtmlInWebview(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method getAdController()Lcom/loopme/AdController;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    return-object v0
.end method

.method public abstract getAdFormat()I
.end method

.method protected getAdParams()Lcom/loopme/common/AdParams;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdParams:Lcom/loopme/common/AdParams;

    return-object v0
.end method

.method protected getAdTargetingData()Lcom/loopme/request/AdTargetingData;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdTargetingData:Lcom/loopme/request/AdTargetingData;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/loopme/BaseAd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected initAdFetcherListener()Lcom/loopme/tasks/AdFetcher$Listener;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/loopme/BaseAd$1;

    invoke-direct {v0, p0}, Lcom/loopme/BaseAd$1;-><init>(Lcom/loopme/BaseAd;)V

    return-object v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/loopme/BaseAd;->mAdState:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/loopme/BaseAd;->mIsReady:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/loopme/BaseAd;->mAdState:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 4

    .prologue
    const/16 v3, 0xc9

    .line 114
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start loading ad with app key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/BaseAd;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/loopme/BaseAd;->mAdState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/loopme/BaseAd;->mAdState:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    .line 116
    :cond_0
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad already loading or showing"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    if-nez v0, :cond_2

    .line 121
    new-instance v0, Lcom/loopme/AdController;

    invoke-direct {v0, p0}, Lcom/loopme/AdController;-><init>(Lcom/loopme/BaseAd;)V

    iput-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    .line 124
    :cond_2
    iput v3, p0, Lcom/loopme/BaseAd;->mAdState:I

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loopme/BaseAd;->mAdLoadingTimer:J

    .line 126
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->startFetcherTimer()V

    .line 128
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad already loaded"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->onAdLoadSuccess()V

    goto :goto_0

    .line 134
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 135
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "Not supported Android version. Expected Android 4.4+"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loopme/common/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    invoke-direct {p0}, Lcom/loopme/BaseAd;->proceedLoad()V

    goto :goto_0

    .line 142
    :cond_5
    new-instance v0, Lcom/loopme/common/LoopMeError;

    const-string v1, "No connection"

    invoke-direct {v0, v1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0
.end method

.method abstract onAdClicked()V
.end method

.method abstract onAdExpired()V
.end method

.method abstract onAdLeaveApp()V
.end method

.method abstract onAdLoadFail(Lcom/loopme/common/LoopMeError;)V
.end method

.method abstract onAdLoadSuccess()V
.end method

.method abstract onAdVideoDidReachEnd()V
.end method

.method protected releaseViewController()V
    .locals 2

    .prologue
    .line 324
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Release ViewController"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->destroy()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    .line 330
    :cond_0
    return-void
.end method

.method protected setAdParams(Lcom/loopme/common/AdParams;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/loopme/BaseAd;->mAdParams:Lcom/loopme/common/AdParams;

    .line 233
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .prologue
    .line 427
    sput-boolean p1, Lcom/loopme/common/StaticParams;->DEBUG_MODE:Z

    .line 428
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdTargetingData:Lcom/loopme/request/AdTargetingData;

    invoke-virtual {v0, p1}, Lcom/loopme/request/AdTargetingData;->setGender(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdTargetingData:Lcom/loopme/request/AdTargetingData;

    invoke-virtual {v0, p1}, Lcom/loopme/request/AdTargetingData;->setKeywords(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public setVideoCacheTimeInterval(J)V
    .locals 3

    .prologue
    .line 404
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 405
    sput-wide p1, Lcom/loopme/common/StaticParams;->CACHED_VIDEO_LIFE_TIME:J

    .line 407
    :cond_0
    return-void
.end method

.method public setYearOfBirth(I)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdTargetingData:Lcom/loopme/request/AdTargetingData;

    invoke-virtual {v0, p1}, Lcom/loopme/request/AdTargetingData;->setYob(I)V

    .line 443
    return-void
.end method

.method protected startExpirationTimer()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/loopme/BaseAd;->mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdParams:Lcom/loopme/common/AdParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdController:Lcom/loopme/AdController;

    .line 334
    invoke-virtual {v0}, Lcom/loopme/AdController;->isVideoPresented()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/loopme/BaseAd;->mAdParams:Lcom/loopme/common/AdParams;

    invoke-virtual {v0}, Lcom/loopme/common/AdParams;->getExpiredTime()I

    move-result v0

    .line 338
    new-instance v1, Lcom/loopme/BaseAd$4;

    invoke-direct {v1, p0}, Lcom/loopme/BaseAd$4;-><init>(Lcom/loopme/BaseAd;)V

    iput-object v1, p0, Lcom/loopme/BaseAd;->mExpirationListener:Lcom/loopme/common/ExpirationTimer$Listener;

    .line 345
    new-instance v1, Lcom/loopme/common/ExpirationTimer;

    int-to-long v2, v0

    iget-object v0, p0, Lcom/loopme/BaseAd;->mExpirationListener:Lcom/loopme/common/ExpirationTimer$Listener;

    invoke-direct {v1, v2, v3, v0}, Lcom/loopme/common/ExpirationTimer;-><init>(JLcom/loopme/common/ExpirationTimer$Listener;)V

    iput-object v1, p0, Lcom/loopme/BaseAd;->mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

    .line 346
    iget-object v0, p0, Lcom/loopme/BaseAd;->mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

    invoke-virtual {v0}, Lcom/loopme/common/ExpirationTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method protected startFetcherTimer()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/loopme/BaseAd;->mFetcherTimer:Lcom/loopme/common/AdFetcherTimer;

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Lcom/loopme/BaseAd$5;

    invoke-direct {v0, p0}, Lcom/loopme/BaseAd$5;-><init>(Lcom/loopme/BaseAd;)V

    iput-object v0, p0, Lcom/loopme/BaseAd;->mFetcherTimerListener:Lcom/loopme/common/AdFetcherTimer$Listener;

    .line 370
    new-instance v0, Lcom/loopme/common/AdFetcherTimer;

    const-wide/32 v2, 0x2bf20

    iget-object v1, p0, Lcom/loopme/BaseAd;->mFetcherTimerListener:Lcom/loopme/common/AdFetcherTimer$Listener;

    invoke-direct {v0, v2, v3, v1}, Lcom/loopme/common/AdFetcherTimer;-><init>(JLcom/loopme/common/AdFetcherTimer$Listener;)V

    iput-object v0, p0, Lcom/loopme/BaseAd;->mFetcherTimer:Lcom/loopme/common/AdFetcherTimer;

    .line 372
    const/high16 v0, 0x40400000    # 3.0f

    .line 373
    sget-object v1, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetch timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " minutes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/loopme/BaseAd;->mFetcherTimer:Lcom/loopme/common/AdFetcherTimer;

    invoke-virtual {v0}, Lcom/loopme/common/AdFetcherTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method protected stopExpirationTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/loopme/BaseAd;->mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop schedule expiration"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/loopme/BaseAd;->mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

    invoke-virtual {v0}, Lcom/loopme/common/ExpirationTimer;->cancel()V

    .line 353
    iput-object v2, p0, Lcom/loopme/BaseAd;->mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

    .line 355
    :cond_0
    iput-object v2, p0, Lcom/loopme/BaseAd;->mExpirationListener:Lcom/loopme/common/ExpirationTimer$Listener;

    .line 356
    return-void
.end method

.method protected stopFetcherTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    sget-object v0, Lcom/loopme/BaseAd;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stop fetcher timer"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/loopme/BaseAd;->mFetcherTimer:Lcom/loopme/common/AdFetcherTimer;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/loopme/BaseAd;->mFetcherTimer:Lcom/loopme/common/AdFetcherTimer;

    invoke-virtual {v0}, Lcom/loopme/common/AdFetcherTimer;->cancel()V

    .line 381
    iput-object v2, p0, Lcom/loopme/BaseAd;->mFetcherTimer:Lcom/loopme/common/AdFetcherTimer;

    .line 383
    :cond_0
    iput-object v2, p0, Lcom/loopme/BaseAd;->mFetcherTimerListener:Lcom/loopme/common/AdFetcherTimer$Listener;

    .line 384
    return-void
.end method

.method public useMobileNetworkForCaching(Z)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method
