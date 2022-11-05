.class public final Lcom/loopme/LoopMeInterstitial;
.super Lcom/loopme/BaseAd;
.source "LoopMeInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/LoopMeInterstitial$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TEST_LAND_INTERSTITIAL:Ljava/lang/String; = "test_interstitial_l"

.field public static final TEST_PORT_INTERSTITIAL:Ljava/lang/String; = "test_interstitial_p"


# instance fields
.field private mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/loopme/LoopMeInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/loopme/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start creating interstitial with app key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/loopme/AdController;

    invoke-direct {v0, p0}, Lcom/loopme/AdController;-><init>(Lcom/loopme/BaseAd;)V

    iput-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdController:Lcom/loopme/AdController;

    .line 69
    invoke-static {p1}, Lcom/loopme/common/Utils;->init(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lcom/loopme/debugging/LiveDebug;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private broadcastDestroyIntent()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    const-string v1, "com.loopme.DESTROY_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeInterstitial;
    .locals 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 83
    invoke-static {p0, p1}, Lcom/loopme/LoopMeAdHolder;->getInterstitial(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeInterstitial;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not supported Android version. Expected Android 4.0+"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loopme/common/Utils;->clearCache(Landroid/content/Context;)V

    .line 352
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/loopme/LoopMeInterstitial;->broadcastDestroyIntent()V

    .line 94
    invoke-super {p0}, Lcom/loopme/BaseAd;->destroy()V

    .line 95
    return-void
.end method

.method detectHeight()I
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/loopme/common/Utils;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method detectWidth()I
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Lcom/loopme/common/Utils;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdState:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_1

    .line 107
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dismiss ad"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/loopme/LoopMeInterstitial;->broadcastDestroyIntent()V

    .line 109
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->stopExpirationTimer()V

    .line 110
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Can\'t dismiss ad, it\'s not displaying"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getAdController()Lcom/loopme/AdController;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdController:Lcom/loopme/AdController;

    return-object v0
.end method

.method public getAdFormat()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x3e9

    return v0
.end method

.method public getListener()Lcom/loopme/LoopMeInterstitial$Listener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    return-object v0
.end method

.method onAdClicked()V
    .locals 0

    .prologue
    .line 327
    invoke-virtual {p0, p0}, Lcom/loopme/LoopMeInterstitial;->onLoopMeInterstitialClicked(Lcom/loopme/LoopMeInterstitial;)V

    .line 328
    return-void
.end method

.method onAdExpired()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0, p0}, Lcom/loopme/LoopMeInterstitial;->onLoopMeInterstitialExpired(Lcom/loopme/LoopMeInterstitial;)V

    .line 303
    return-void
.end method

.method onAdLeaveApp()V
    .locals 0

    .prologue
    .line 322
    invoke-virtual {p0, p0}, Lcom/loopme/LoopMeInterstitial;->onLoopMeInterstitialLeaveApp(Lcom/loopme/LoopMeInterstitial;)V

    .line 323
    return-void
.end method

.method onAdLoadFail(Lcom/loopme/common/LoopMeError;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/loopme/LoopMeInterstitial$1;

    invoke-direct {v1, p0, p1}, Lcom/loopme/LoopMeInterstitial$1;-><init>(Lcom/loopme/LoopMeInterstitial;Lcom/loopme/common/LoopMeError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method onAdLoadSuccess()V
    .locals 0

    .prologue
    .line 307
    invoke-virtual {p0, p0}, Lcom/loopme/LoopMeInterstitial;->onLoopMeInterstitialLoadSuccess(Lcom/loopme/LoopMeInterstitial;)V

    .line 308
    return-void
.end method

.method onAdVideoDidReachEnd()V
    .locals 0

    .prologue
    .line 332
    invoke-virtual {p0, p0}, Lcom/loopme/LoopMeInterstitial;->onLoopMeInterstitialVideoDidReachEnd(Lcom/loopme/LoopMeInterstitial;)V

    .line 333
    return-void
.end method

.method onLoopMeInterstitialClicked(Lcom/loopme/LoopMeInterstitial;)V
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad received tap event"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeInterstitial$Listener;->onLoopMeInterstitialClicked(Lcom/loopme/LoopMeInterstitial;)V

    .line 252
    :cond_0
    return-void
.end method

.method onLoopMeInterstitialExpired(Lcom/loopme/LoopMeInterstitial;)V
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ads content expired"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mExpirationTimer:Lcom/loopme/common/ExpirationTimer;

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/LoopMeInterstitial;->mIsReady:Z

    .line 280
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdState:I

    .line 281
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->releaseViewController()V

    .line 282
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeInterstitial$Listener;->onLoopMeInterstitialExpired(Lcom/loopme/LoopMeInterstitial;)V

    .line 285
    :cond_0
    return-void
.end method

.method onLoopMeInterstitialHide(Lcom/loopme/LoopMeInterstitial;)V
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad disappeared from screen"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/LoopMeInterstitial;->mIsReady:Z

    .line 234
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdState:I

    .line 235
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->releaseViewController()V

    .line 236
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeInterstitial$Listener;->onLoopMeInterstitialHide(Lcom/loopme/LoopMeInterstitial;)V

    .line 239
    :cond_0
    return-void
.end method

.method onLoopMeInterstitialLeaveApp(Lcom/loopme/LoopMeInterstitial;)V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Leaving application"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeInterstitial$Listener;->onLoopMeInterstitialLeaveApp(Lcom/loopme/LoopMeInterstitial;)V

    .line 266
    :cond_0
    return-void
.end method

.method onLoopMeInterstitialLoadFail(Lcom/loopme/LoopMeInterstitial;Lcom/loopme/common/LoopMeError;)V
    .locals 3

    .prologue
    .line 203
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad fails to load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loopme/common/LoopMeError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/LoopMeInterstitial;->mIsReady:Z

    .line 205
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdState:I

    .line 206
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->stopFetcherTimer()V

    .line 207
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0, p2}, Lcom/loopme/LoopMeInterstitial$Listener;->onLoopMeInterstitialLoadFail(Lcom/loopme/LoopMeInterstitial;Lcom/loopme/common/LoopMeError;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Warning: empty listener"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoopMeInterstitialLoadSuccess(Lcom/loopme/LoopMeInterstitial;)V
    .locals 5

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    iget-wide v2, p0, Lcom/loopme/LoopMeInterstitial;->mAdLoadingTimer:J

    sub-long/2addr v0, v2

    .line 185
    sget-object v2, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

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

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/LoopMeInterstitial;->mIsReady:Z

    .line 187
    const/16 v0, 0xc8

    iput v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdState:I

    .line 188
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->stopFetcherTimer()V

    .line 189
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeInterstitial$Listener;->onLoopMeInterstitialLoadSuccess(Lcom/loopme/LoopMeInterstitial;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Warning: empty listener"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method onLoopMeInterstitialShow(Lcom/loopme/LoopMeInterstitial;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ad appeared on screen"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeInterstitial$Listener;->onLoopMeInterstitialShow(Lcom/loopme/LoopMeInterstitial;)V

    .line 224
    :cond_0
    return-void
.end method

.method onLoopMeInterstitialVideoDidReachEnd(Lcom/loopme/LoopMeInterstitial;)V
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Video reach end"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    invoke-interface {v0, p0}, Lcom/loopme/LoopMeInterstitial$Listener;->onLoopMeInterstitialVideoDidReachEnd(Lcom/loopme/LoopMeInterstitial;)V

    .line 298
    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    .line 141
    return-void
.end method

.method public setListener(Lcom/loopme/LoopMeInterstitial$Listener;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/loopme/LoopMeInterstitial;->mAdListener:Lcom/loopme/LoopMeInterstitial$Listener;

    .line 130
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/16 v3, 0xca

    .line 150
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial will present fullscreen ad. App key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget v0, p0, Lcom/loopme/LoopMeInterstitial;->mAdState:I

    if-eq v0, v3, :cond_0

    .line 153
    iput v3, p0, Lcom/loopme/LoopMeInterstitial;->mAdState:I

    .line 154
    invoke-virtual {p0}, Lcom/loopme/LoopMeInterstitial;->stopExpirationTimer()V

    .line 155
    invoke-static {p0}, Lcom/loopme/AdUtils;->startAdActivity(Lcom/loopme/BaseAd;)V

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interstitial is already presented on the screen"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    iget v0, p0, Lcom/loopme/LoopMeInterstitial;->mShowWhenAdNotReadyCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loopme/LoopMeInterstitial;->mShowWhenAdNotReadyCounter:I

    .line 161
    sget-object v0, Lcom/loopme/LoopMeInterstitial;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial is not ready ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/loopme/LoopMeInterstitial;->mShowWhenAdNotReadyCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time(s))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "Interstitial is not ready"

    invoke-static {v0}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;)V

    goto :goto_0
.end method
