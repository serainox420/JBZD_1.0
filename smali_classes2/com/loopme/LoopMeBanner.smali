.class public Lcom/loopme/LoopMeBanner;
.super Lcom/loopme/BaseAd;
.source "LoopMeBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/LoopMeBanner$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TEST_MPU_BANNER:Ljava/lang/String; = "test_mpu"


# instance fields
.field private mAdListener:Lcom/loopme/LoopMeBanner$Listener;

.field private volatile mBannerView:Lcom/loopme/LoopMeBannerView;

.field private mIsVideoFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/loopme/LoopMeBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/loopme/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/loopme/AdController;

    invoke-direct {v0, p0}, Lcom/loopme/AdController;-><init>(Lcom/loopme/BaseAd;)V

    iput-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    .line 77
    invoke-static {p1}, Lcom/loopme/common/Utils;->init(Landroid/content/Context;)V

    .line 78
    invoke-static {p1}, Lcom/loopme/debugging/LiveDebug;->init(Landroid/content/Context;)V

    .line 80
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start creating banner with app key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopme/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/loopme/LoopMeBanner;->ensureAdIsVisible()V

    return-void
.end method

.method private ensureAdIsVisible()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    iget-object v1, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->ensureAdIsVisible(Landroid/view/View;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeBanner;
    .locals 2

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 93
    invoke-static {p0, p1}, Lcom/loopme/LoopMeAdHolder;->getBanner(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeBanner;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not supported Android version. Expected Android 4.0+"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Lcom/loopme/LoopMeBannerView;)V
    .locals 4

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-static {p1}, Lcom/loopme/common/Utils;->getViewVisibility(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    .line 140
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loopme/common/Utils;->clearCache(Landroid/content/Context;)V

    .line 537
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iput-object v2, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    .line 112
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeBannerView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->removeAllViews()V

    .line 115
    iput-object v2, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->destroyMinimizedView()V

    .line 119
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/loopme/IViewController;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/loopme/IViewController;->onDestroy()V

    .line 125
    :cond_1
    invoke-super {p0}, Lcom/loopme/BaseAd;->destroy()V

    .line 126
    return-void
.end method

.method detectHeight()I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 527
    :goto_0
    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 527
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method detectWidth()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 518
    :goto_0
    return v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 518
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 325
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Banner will be dismissed"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_2

    .line 327
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeBannerView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->removeAllViews()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->destroyMinimizedView()V

    .line 333
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 334
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/loopme/IViewController;->onPause()V

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerHide()V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_2
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Can\'t dismiss ad, it\'s not displaying"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getAdController()Lcom/loopme/AdController;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    return-object v0
.end method

.method public getAdFormat()I
    .locals 1

    .prologue
    .line 346
    const/16 v0, 0x3e8

    return v0
.end method

.method getBannerView()Lcom/loopme/LoopMeBannerView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    return-object v0
.end method

.method public getListener()Lcom/loopme/LoopMeBanner$Listener;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    return-object v0
.end method

.method public isViewBinded()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAdClicked()V
    .locals 0

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerClicked()V

    .line 505
    return-void
.end method

.method onAdExpired()V
    .locals 0

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerExpired()V

    .line 480
    return-void
.end method

.method onAdLeaveApp()V
    .locals 0

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerLeaveApp()V

    .line 500
    return-void
.end method

.method onAdLoadFail(Lcom/loopme/common/LoopMeError;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/loopme/LoopMeBanner$3;

    invoke-direct {v1, p0, p1}, Lcom/loopme/LoopMeBanner$3;-><init>(Lcom/loopme/LoopMeBanner;Lcom/loopme/common/LoopMeError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    return-void
.end method

.method onAdLoadSuccess()V
    .locals 0

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerSuccessLoad()V

    .line 485
    return-void
.end method

.method onAdVideoDidReachEnd()V
    .locals 0

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerVideoDidReachEnd()V

    .line 510
    return-void
.end method

.method onLoopMeBannerClicked()V
    .locals 2

    .prologue
    .line 416
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad received click event"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerClicked(Lcom/loopme/LoopMeBanner;)V

    .line 420
    :cond_0
    return-void
.end method

.method onLoopMeBannerExpired()V
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad content is expired"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/LoopMeBanner;->mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/LoopMeBanner;->mIsReady:Z

    .line 470
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    .line 471
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->releaseViewController()V

    .line 472
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerExpired(Lcom/loopme/LoopMeBanner;)V

    .line 475
    :cond_0
    return-void
.end method

.method onLoopMeBannerHide()V
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad disappeared from screen"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/LoopMeBanner;->mIsReady:Z

    .line 404
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    .line 405
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->releaseViewController()V

    .line 406
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerHide(Lcom/loopme/LoopMeBanner;)V

    .line 409
    :cond_0
    return-void
.end method

.method onLoopMeBannerLeaveApp()V
    .locals 2

    .prologue
    .line 428
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Leaving application"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerLeaveApp(Lcom/loopme/LoopMeBanner;)V

    .line 432
    :cond_0
    return-void
.end method

.method onLoopMeBannerLoadFail(Lcom/loopme/common/LoopMeError;)V
    .locals 3

    .prologue
    .line 355
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad fails to load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/loopme/common/LoopMeError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/LoopMeBanner;->mIsReady:Z

    .line 358
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->stopFetcherTimer()V

    .line 359
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->resetFullScreenCommandCounter()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    invoke-interface {v0, p0, p1}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerLoadFail(Lcom/loopme/LoopMeBanner;Lcom/loopme/common/LoopMeError;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_1
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Warning: empty listener"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method onLoopMeBannerShow()V
    .locals 2

    .prologue
    .line 391
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad appeared on screen"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/LoopMeBanner;->mIsVideoFinished:Z

    .line 393
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerShow(Lcom/loopme/LoopMeBanner;)V

    .line 396
    :cond_0
    return-void
.end method

.method onLoopMeBannerSuccessLoad()V
    .locals 5

    .prologue
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 374
    iget-wide v2, p0, Lcom/loopme/LoopMeBanner;->mAdLoadingTimer:J

    sub-long/2addr v0, v2

    .line 376
    sget-object v2, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad successfully loaded ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/LoopMeBanner;->mIsReady:Z

    .line 378
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    .line 379
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->stopFetcherTimer()V

    .line 380
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerLoadSuccess(Lcom/loopme/LoopMeBanner;)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Warning: empty listener"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method onLoopMeBannerVideoDidReachEnd()V
    .locals 4

    .prologue
    .line 439
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Video did reach end"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/LoopMeBanner;->mIsVideoFinished:Z

    .line 441
    new-instance v0, Lcom/loopme/LoopMeBanner$2;

    invoke-direct {v0, p0}, Lcom/loopme/LoopMeBanner$2;-><init>(Lcom/loopme/LoopMeBanner;)V

    .line 450
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 451
    iget-object v2, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v2}, Lcom/loopme/AdController;->getCurrentDisplayMode()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    .line 452
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerVideoDidReachEnd(Lcom/loopme/LoopMeBanner;)V

    .line 458
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 168
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/loopme/IViewController;->onPause()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getCurrentDisplayMode()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getCurrentVideoState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 177
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pause Ad"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0, v2}, Lcom/loopme/AdController;->setWebViewState(I)V

    goto :goto_0
.end method

.method playbackFinishedWithError()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/LoopMeBanner;->mIsVideoFinished:Z

    .line 305
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    .line 200
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/loopme/LoopMeBanner;->ensureAdIsVisible()V

    .line 280
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/loopme/IViewController;->onResume()V

    .line 284
    :cond_0
    return-void
.end method

.method public setListener(Lcom/loopme/LoopMeBanner$Listener;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/loopme/LoopMeBanner;->mAdListener:Lcom/loopme/LoopMeBanner$Listener;

    .line 189
    return-void
.end method

.method public setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 144
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Set minimized mode"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0, p1}, Lcom/loopme/AdController;->setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V

    .line 147
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/16 v2, 0xca

    .line 228
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Banner did start showing ad"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    if-ne v0, v2, :cond_0

    .line 230
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Banner already displays on screen"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    if-eqz v0, :cond_3

    .line 234
    iput v2, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    .line 235
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->stopExpirationTimer()V

    .line 237
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    iget-object v1, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->buildVideoAdView(Landroid/view/ViewGroup;)V

    .line 238
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/common/AdParams;->isVideo360()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loopme/IViewController;->initVRLibrary(Landroid/content/Context;)V

    .line 241
    invoke-interface {v0}, Lcom/loopme/IViewController;->onResume()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeBannerView;->setVisibility(I)V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/loopme/LoopMeBanner$1;

    invoke-direct {v1, p0, v0}, Lcom/loopme/LoopMeBanner$1;-><init>(Lcom/loopme/LoopMeBanner;Landroid/view/ViewTreeObserver;)V

    .line 268
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerShow()V

    goto :goto_0

    .line 272
    :cond_3
    const-string v0, "Banner is not ready"

    invoke-static {v0}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;)V

    goto :goto_0
.end method

.method showNativeVideo()V
    .locals 3

    .prologue
    const/16 v2, 0xca

    .line 203
    iget v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    if-ne v0, v2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    if-eqz v0, :cond_3

    .line 207
    sget-object v0, Lcom/loopme/LoopMeBanner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Banner did start showing ad (native)"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iput v2, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    .line 209
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->stopExpirationTimer()V

    .line 211
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    iget-object v1, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->buildVideoAdView(Landroid/view/ViewGroup;)V

    .line 212
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/common/AdParams;->isVideo360()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loopme/IViewController;->initVRLibrary(Landroid/content/Context;)V

    .line 215
    invoke-interface {v0}, Lcom/loopme/IViewController;->onResume()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mBannerView:Lcom/loopme/LoopMeBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeBannerView;->setVisibility(I)V

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerShow()V

    goto :goto_0

    .line 223
    :cond_3
    const-string v0, "Banner is not ready"

    invoke-static {v0}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;)V

    goto :goto_0
.end method

.method switchToMinimizedMode()V
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loopme/LoopMeBanner;->mIsVideoFinished:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->isBackFromExpand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->isMinimizedModeEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->switchToMinimizedMode()V

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/loopme/LoopMeBanner;->pause()V

    goto :goto_0
.end method

.method switchToNormalMode()V
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/loopme/LoopMeBanner;->mAdState:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->switchToNormalMode()V

    .line 311
    :cond_0
    return-void
.end method
