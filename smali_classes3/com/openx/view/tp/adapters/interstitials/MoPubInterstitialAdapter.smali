.class public Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "MoPubInterstitialAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 19
    const-string v0, "MoPubInterstitialAdapter"

    iput-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 31
    const-string v0, "MoPubInterstitialAdapter"

    const-string v1, "cleanUp: MoPubInterstitialAdapter destroying MoPubInterstitialAdapter on cleanUp"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 35
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 37
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 4

    .prologue
    .line 55
    :try_start_0
    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v1, v1, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v3, "adUnit"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 57
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 58
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "MoPubInterstitialAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPub\'s internal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " so calling onAdFailed manually "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/openx/errors/UnknownError;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v2, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 82
    const-string v0, "MoPubInterstitialAdapter"

    const-string v1, " closing the ad in mopub adapter - so chainmanager can ask activity to disable the button"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->cleanUp()V

    .line 96
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "MoPubInterstitialAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading mopub ad with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "MoPubInterstitialAdapter"

    const-string v1, "loaded mopub ad successfully: "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1, p1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 124
    const-string v0, "MoPubInterstitialAdapter"

    const-string v1, "onInterstitialShown"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->show()V

    .line 44
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 46
    return-void
.end method
