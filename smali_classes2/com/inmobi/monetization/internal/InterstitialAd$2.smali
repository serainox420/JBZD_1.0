.class Lcom/inmobi/monetization/internal/InterstitialAd$2;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/inmobi/re/container/IMWebView$IMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/internal/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/InterstitialAd;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissAdScreen()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->destroy()V

    .line 394
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-interface {v0}, Lcom/inmobi/monetization/internal/IMAdListener;->onDismissAdScreen()V

    .line 397
    :cond_0
    return-void
.end method

.method public onDisplayFailed()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->f(Lcom/inmobi/monetization/internal/InterstitialAd;)V

    .line 426
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Error loading the interstitial ad "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->e(Lcom/inmobi/monetization/internal/InterstitialAd;)Lcom/inmobi/monetization/internal/InterstitialAd$a;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/InterstitialAd$a;->removeMessages(I)V

    .line 380
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/InterstitialAd;->a(Lcom/inmobi/monetization/internal/InterstitialAd;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    .line 381
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 383
    :cond_0
    return-void
.end method

.method public onExpand()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public onExpandClose()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public onIncentCompleted(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-interface {v0, p1}, Lcom/inmobi/monetization/internal/IMAdListener;->onIncentCompleted(Ljava/util/Map;)V

    .line 419
    :cond_0
    return-void
.end method

.method public onLeaveApplication()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-interface {v0}, Lcom/inmobi/monetization/internal/IMAdListener;->onLeaveApplication()V

    .line 373
    :cond_0
    return-void
.end method

.method public onResize(Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public onResizeClose()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public onShowAdScreen()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-interface {v0}, Lcom/inmobi/monetization/internal/IMAdListener;->onShowAdScreen()V

    .line 389
    :cond_0
    return-void
.end method

.method public onUserInteraction(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$2;->a:Lcom/inmobi/monetization/internal/InterstitialAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-interface {v0, p1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdInteraction(Ljava/util/Map;)V

    .line 413
    :cond_0
    return-void
.end method
