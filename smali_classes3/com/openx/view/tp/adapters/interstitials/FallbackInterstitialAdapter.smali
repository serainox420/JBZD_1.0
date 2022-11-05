.class public Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "FallbackInterstitialAdapter.java"

# interfaces
.implements Lcom/openx/view/AdEventsListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackInterstitialAdapter"


# instance fields
.field private adInterstitial:Lcom/openx/view/AdInterstitial;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 103
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "FallbackInterstitialAdapter"

    const-string v1, "cleanUp: FallbackInterstitialAdapter"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    invoke-virtual {v0, v2}, Lcom/openx/view/AdInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 107
    iput-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    .line 109
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/openx/view/AdInterstitial;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/openx/view/AdInterstitial;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    .line 40
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    sget-object v1, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_LEFT:Lcom/openx/view/AdInterstitial$ClosePosition;

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setClosePosition(Lcom/openx/view/AdInterstitial$ClosePosition;)V

    .line 42
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    invoke-virtual {v0, p0}, Lcom/openx/view/AdInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 44
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setAutoRefreshInterval(I)V

    .line 46
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setBackgroundOpacity(F)V

    .line 48
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->loadFallback()V

    .line 50
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "FallbackInterstitialAdapter"

    const-string v1, " closing the ad in fallback adapter - so chainmanager can ask activity to disable the button"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onAdDidLoad()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->stoppedLoading()V

    .line 64
    :cond_1
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p1}, Lcom/openx/errors/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 76
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->show()V

    .line 31
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;->adInterstitial:Lcom/openx/view/AdInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->show()V

    .line 33
    return-void
.end method
