.class Lcom/intentsoftware/addapptr/j;
.super Lcom/intentsoftware/addapptr/s;
.source "BannerPlacement.java"


# static fields
.field private static final LEGITIMATE_RELOAD_INTERVAL:I = 0x2710

.field private static final MIN_ESTIMATED_AD_LOAD_TIME:I = 0x1388


# instance fields
.field private adspaceAwaitingAd:Z

.field private final adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

.field private adspaceTimerWasActive:Z

.field private final bannerReloader:Lcom/intentsoftware/addapptr/l;

.field gravity:I

.field private lastAdLoadFailed:Z

.field private lastAdReloadTime:J

.field private lastAdspaceReportTime:J

.field private lastImpressionTime:J

.field private lastLoadStartTime:J

.field newAd:Lcom/intentsoftware/addapptr/ad/a;

.field placementView:Lcom/intentsoftware/addapptr/k;

.field private shouldForceShowBanner:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/intentsoftware/addapptr/s;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V

    .line 29
    const/16 v0, 0x11

    iput v0, p0, Lcom/intentsoftware/addapptr/j;->gravity:I

    .line 43
    invoke-virtual {p2}, Lcom/intentsoftware/addapptr/PlacementSize;->getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/BannerSize;->getWidth()I

    move-result v1

    .line 44
    invoke-virtual {p2}, Lcom/intentsoftware/addapptr/PlacementSize;->getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/BannerSize;->getHeight()I

    move-result v2

    .line 46
    new-instance v0, Lcom/intentsoftware/addapptr/k;

    iget v3, p0, Lcom/intentsoftware/addapptr/j;->gravity:I

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/k;-><init>(IIILandroid/content/Context;Z)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/j;->placementView:Lcom/intentsoftware/addapptr/k;

    .line 48
    new-instance v0, Lcom/intentsoftware/addapptr/l;

    new-instance v1, Lcom/intentsoftware/addapptr/j$1;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/j$1;-><init>(Lcom/intentsoftware/addapptr/j;)V

    invoke-direct {v0, v1}, Lcom/intentsoftware/addapptr/l;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    .line 55
    new-instance v1, Lcom/intentsoftware/addapptr/c/l;

    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v2

    new-instance v4, Lcom/intentsoftware/addapptr/j$2;

    invoke-direct {v4, p0}, Lcom/intentsoftware/addapptr/j$2;-><init>(Lcom/intentsoftware/addapptr/j;)V

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/intentsoftware/addapptr/c/l;-><init>(JLjava/lang/Runnable;ZZ)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    .line 61
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/j;->addListener(Lcom/intentsoftware/addapptr/u;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/j;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/j;->handleNewAdspace()V

    return-void
.end method

.method private getEstimatedTimeForAdLoad()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x1388

    .line 281
    iget-wide v2, p0, Lcom/intentsoftware/addapptr/j;->lastAdReloadTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 287
    :goto_0
    return-wide v0

    .line 284
    :cond_0
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/j;->lastAdReloadTime:J

    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v0

    goto :goto_0

    .line 287
    :cond_1
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/j;->lastAdReloadTime:J

    goto :goto_0
.end method

.method private handleNewAdspace()V
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->reportAdSpace()V

    .line 248
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->presentNewAd()V

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 254
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->isAutoreloaderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 258
    :cond_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceAwaitingAd:Z

    goto :goto_0
.end method

.method private setTimers()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 203
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/intentsoftware/addapptr/j;->lastImpressionTime:J

    sub-long/2addr v2, v4

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/j;->getEstimatedTimeForAdLoad()J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 204
    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/intentsoftware/addapptr/j;->lastAdspaceReportTime:J

    iget-wide v8, p0, Lcom/intentsoftware/addapptr/j;->lastImpressionTime:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 205
    iget-object v4, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v4, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 206
    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v2, v0, v1}, Lcom/intentsoftware/addapptr/l;->setNextReloadDelay(J)V

    .line 207
    return-void
.end method


# virtual methods
.method public configsFinishedDownloading()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->configsFinishedDownloading()V

    .line 153
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->isAutoreloaderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->reloadInternal()Z

    .line 156
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->destroy()V

    .line 320
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->destroy()V

    .line 321
    return-void
.end method

.method public getAdType()Lcom/intentsoftware/addapptr/AdType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    return-object v0
.end method

.method public getPlacementView()Landroid/view/View;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->placementView:Lcom/intentsoftware/addapptr/k;

    return-object v0
.end method

.method protected handleAdClick(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/s;->handleAdClick(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 299
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->handlePauseForAd()V

    .line 301
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/v;->afterBannerClick(Lcom/intentsoftware/addapptr/b;)V

    .line 302
    return-void
.end method

.method protected handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded banner for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    :cond_0
    iput-boolean v4, p0, Lcom/intentsoftware/addapptr/j;->lastAdLoadFailed:Z

    .line 231
    iput-object p1, p0, Lcom/intentsoftware/addapptr/j;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 234
    iget-wide v2, p0, Lcom/intentsoftware/addapptr/j;->lastLoadStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/j;->lastAdReloadTime:J

    .line 236
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceAwaitingAd:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/j;->shouldForceShowBanner:Z

    if-eqz v0, :cond_2

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 238
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->presentNewAd()V

    .line 239
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0, v4}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->isAutoreloaderActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 244
    :cond_2
    return-void
.end method

.method protected handleAdLoadFail()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/j;->lastAdLoadFailed:Z

    .line 293
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->handleAdLoadFail()V

    .line 294
    return-void
.end method

.method public isAutoreloaderActive()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->isAutoreloadingActive()Z

    move-result v0

    return v0
.end method

.method public onConfigDownloaded(Lcom/intentsoftware/addapptr/t;)V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/s;->onConfigDownloaded(Lcom/intentsoftware/addapptr/t;)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/t;->getRefreshTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/l;->onServerReloadIntervalChanged(J)V

    .line 145
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 148
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimerWasActive:Z

    .line 136
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 138
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/s;->onResume(Landroid/app/Activity;)V

    .line 126
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->onResume()V

    .line 127
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimerWasActive:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 130
    :cond_0
    return-void
.end method

.method presentNewAd()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 261
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Presenting new banner on placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    :cond_0
    iput-boolean v2, p0, Lcom/intentsoftware/addapptr/j;->shouldForceShowBanner:Z

    .line 265
    iput-boolean v2, p0, Lcom/intentsoftware/addapptr/j;->adspaceAwaitingAd:Z

    .line 267
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/j;->getEstimatedTimeForAdLoad()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/l;->setEstimatedTimeForNextAdLoad(J)V

    .line 269
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->placementView:Lcom/intentsoftware/addapptr/k;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/k;->destroy()V

    .line 271
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-super {p0, v0}, Lcom/intentsoftware/addapptr/s;->handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 273
    iget-object v1, p0, Lcom/intentsoftware/addapptr/j;->placementView:Lcom/intentsoftware/addapptr/k;

    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    check-cast v0, Lcom/intentsoftware/addapptr/ad/BannerAd;

    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/k;->presentAd(Lcom/intentsoftware/addapptr/ad/BannerAd;)V

    .line 275
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/j;->handleImpression(Lcom/intentsoftware/addapptr/b;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/j;->lastImpressionTime:J

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/j;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 278
    return-void
.end method

.method public reload(Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->isAutoreloaderActive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 161
    if-eqz p1, :cond_3

    .line 162
    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v2, v0}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->reportAdSpace()V

    .line 165
    iput-boolean v1, p0, Lcom/intentsoftware/addapptr/j;->shouldForceShowBanner:Z

    .line 166
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->reloadInternal()Z

    move-result v0

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/intentsoftware/addapptr/j;->lastAdspaceReportTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->reportAdSpace()V

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {v6}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "Ad space not counted, placement is still loading for last call of reloadPlacement. Please avoid calling reloadPlacement more often than once per 10 seconds"

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/intentsoftware/addapptr/j;->lastAdLoadFailed:Z

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/l;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 178
    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v2

    if-nez v2, :cond_5

    .line 179
    iget-object v2, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v2, v0}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 182
    :cond_5
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/j;->setTimers()V

    .line 183
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->postOneReload()V

    .line 184
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    :cond_6
    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_7
    invoke-static {v6}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "Placement is already reloading, reload request ignored."

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_8
    invoke-static {v6}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "Can\'t reload placement while autoreloading is enabled."

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method reloadInternal()Z
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/j;->lastLoadStartTime:J

    .line 214
    :cond_0
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->reloadInternal()Z

    move-result v0

    return v0
.end method

.method reportAdSpace()V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/j;->lastAdspaceReportTime:J

    .line 220
    invoke-super {p0}, Lcom/intentsoftware/addapptr/s;->reportAdSpace()V

    .line 221
    return-void
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    iget-object v1, p0, Lcom/intentsoftware/addapptr/j;->placementView:Lcom/intentsoftware/addapptr/k;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/k;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/intentsoftware/addapptr/j;->placementView:Lcom/intentsoftware/addapptr/k;

    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/k;->addView(Landroid/view/View;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setDefaultImageResource(I)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/j;->setDefaultImage(Landroid/graphics/Bitmap;)V

    .line 121
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 311
    iput p1, p0, Lcom/intentsoftware/addapptr/j;->gravity:I

    .line 312
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->placementView:Lcom/intentsoftware/addapptr/k;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->placementView:Lcom/intentsoftware/addapptr/k;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/k;->setGravity(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public setPlacementAutoreloadInterval(I)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/l;->setUserAutoreloadInterval(J)V

    .line 88
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 89
    return-void
.end method

.method public startPlacementAutoReload()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->isAutoreloadingActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 74
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/j;->setTimers()V

    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->startAutoreload()V

    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "Can\'t start autoreloading - it is already started."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPlacementAutoReload()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->isAutoreloadingActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->bannerReloader:Lcom/intentsoftware/addapptr/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/l;->stopAutoreload()V

    .line 95
    iget-object v0, p0, Lcom/intentsoftware/addapptr/j;->adspaceTimer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "Can\'t stop autoreloading - it is already stopped."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
