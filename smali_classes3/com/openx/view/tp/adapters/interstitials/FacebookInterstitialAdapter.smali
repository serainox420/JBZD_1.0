.class public Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "FacebookInterstitialAdapter.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookInterstitialAdapter"


# instance fields
.field private interstitialAd:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 43
    const-string v0, "FacebookInterstitialAdapter"

    const-string v1, "FacebookInterstitialAdapter destroying FacebookInterstitial on cleanUp"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 51
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 4

    .prologue
    .line 58
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v3, "ex_placement_id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 61
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 64
    sget-object v0, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 68
    sget-object v1, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 75
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 132
    const-string v0, "FacebookInterstitialAdapter"

    const-string v1, "FB Adapter : onAdClicked()"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "FacebookInterstitialAdapter"

    const-string v1, "FB Adapter : onAdLoaded()"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1, p1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .prologue
    .line 80
    const-string v0, "FacebookInterstitialAdapter"

    const-string v1, "FB Adapter : onError()"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->cleanUp()V

    .line 86
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 122
    const-string v0, "FacebookInterstitialAdapter"

    const-string v1, "FB Adapter : closing the ad in FBInterstitial adapter - so chainmanager can ask activity to disable the button"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 116
    const-string v0, "FacebookInterstitialAdapter"

    const-string v1, "FB Adapter : onInterstitialDisplayed()"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->show()V

    .line 34
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 36
    return-void
.end method
