.class public Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
.super Lcom/mopub/mobileads/MoPubView;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoPubInterstitialView"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubInterstitial;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 396
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 397
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAutorefreshEnabled(Z)V

    .line 399
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 435
    const-string v0, "Tracking impression for interstitial."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->b:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->f()V

    .line 437
    :cond_0
    return-void
.end method

.method protected a(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    .line 442
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->b(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->b(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-interface {v0, v1, p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 445
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->b:Lcom/mopub/mobileads/AdViewController;

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const-string v0, "Couldn\'t invoke custom event because the server did not specify one."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->b(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->c()V

    .line 422
    :cond_2
    const-string v0, "Loading custom event interstitial adapter."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getBroadcastIdentifier()J

    move-result-wide v4

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getAdReport()Lcom/mopub/common/AdReport;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->create(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    .line 430
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a(Lcom/mopub/mobileads/CustomEventInterstitialAdapter$a;)V

    .line 431
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->a()V

    goto :goto_0
.end method

.method public getAdFormat()Lcom/mopub/common/AdFormat;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    return-object v0
.end method
