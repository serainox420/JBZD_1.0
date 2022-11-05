.class Lcom/inmobi/monetization/internal/InterstitialAd$a;
.super Landroid/os/Handler;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/internal/InterstitialAd;
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
            "Lcom/inmobi/monetization/internal/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/monetization/internal/InterstitialAd;)V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 323
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$a;->a:Ljava/lang/ref/WeakReference;

    .line 324
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 328
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/InterstitialAd;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 334
    :pswitch_0
    invoke-static {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->b(Lcom/inmobi/monetization/internal/InterstitialAd;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->cancelLoad()V

    .line 335
    invoke-static {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->b(Lcom/inmobi/monetization/internal/InterstitialAd;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->stopLoading()V

    .line 336
    invoke-static {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->b(Lcom/inmobi/monetization/internal/InterstitialAd;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 337
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/InterstitialAd;->a(Lcom/inmobi/monetization/internal/InterstitialAd;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->c(Lcom/inmobi/monetization/internal/InterstitialAd;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 339
    invoke-static {v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->d(Lcom/inmobi/monetization/internal/InterstitialAd;)Lcom/inmobi/commons/network/Response;

    move-result-object v1

    sget-object v4, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RENDER_TIMEOUT:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/monetization/internal/InterstitialAd;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    .line 342
    iget-object v1, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v1, :cond_0

    .line 343
    iget-object v0, v0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_RENDERING_TIMEOUT:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception handling message in Interstitial"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
    .end packed-switch
.end method
