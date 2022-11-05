.class Lcom/inmobi/monetization/internal/BannerAd$a;
.super Landroid/os/Handler;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/internal/BannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/monetization/internal/BannerAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/monetization/internal/BannerAd;)V
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 603
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/BannerAd$a;->a:Ljava/lang/ref/WeakReference;

    .line 604
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 608
    iget-object v0, p0, Lcom/inmobi/monetization/internal/BannerAd$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/BannerAd;

    .line 610
    if-eqz v0, :cond_0

    .line 611
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 652
    return-void

    .line 613
    :pswitch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcom/inmobi/monetization/internal/BannerAd;->c(Lcom/inmobi/monetization/internal/BannerAd;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 614
    invoke-static {v0}, Lcom/inmobi/monetization/internal/BannerAd;->d(Lcom/inmobi/monetization/internal/BannerAd;)Lcom/inmobi/commons/network/Response;

    move-result-object v1

    sget-object v4, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RENDER_TIMEOUT:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/monetization/internal/BannerAd;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    .line 616
    invoke-static {v0}, Lcom/inmobi/monetization/internal/BannerAd;->e(Lcom/inmobi/monetization/internal/BannerAd;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/BannerAd;->a(Lcom/inmobi/monetization/internal/BannerAd;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    .line 621
    :goto_1
    iget-object v1, v0, Lcom/inmobi/monetization/internal/BannerAd;->mCurrentWebView:Lcom/inmobi/re/container/IMWebView;

    if-eqz v1, :cond_1

    .line 622
    iget-object v1, v0, Lcom/inmobi/monetization/internal/BannerAd;->mCurrentWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->cancelLoad()V

    .line 623
    iget-object v1, v0, Lcom/inmobi/monetization/internal/BannerAd;->mCurrentWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->stopLoading()V

    .line 624
    iget-object v1, v0, Lcom/inmobi/monetization/internal/BannerAd;->mCurrentWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 625
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/inmobi/monetization/internal/BannerAd;->mCurrentWebView:Lcom/inmobi/re/container/IMWebView;

    .line 627
    :cond_1
    iget-object v1, v0, Lcom/inmobi/monetization/internal/BannerAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v1, :cond_0

    .line 628
    iget-object v0, v0, Lcom/inmobi/monetization/internal/BannerAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_RENDERING_TIMEOUT:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 649
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception hanlde message adview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 619
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/BannerAd;->b(Lcom/inmobi/monetization/internal/BannerAd;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    goto :goto_1

    .line 632
    :pswitch_1
    invoke-static {v0}, Lcom/inmobi/monetization/internal/BannerAd;->f(Lcom/inmobi/monetization/internal/BannerAd;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_3

    .line 633
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Activity is not in the foreground. New ad will not be loaded."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_3
    sget-object v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 637
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Ad cannot be loaded.Interstitial Ad is displayed."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_4
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/BannerAd;->a(Lcom/inmobi/monetization/internal/BannerAd;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
