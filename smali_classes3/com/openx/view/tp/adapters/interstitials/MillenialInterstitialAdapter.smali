.class public Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "MillenialInterstitialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private interstitial:Lcom/millennialmedia/android/MMInterstitial;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 22
    const-string v0, "MillenialInterstitialAdapter"

    iput-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 105
    const-string v0, "MillenialInterstitialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Overlay closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 110
    :cond_0
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 54
    const-string v0, "MillenialInterstitialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Overlay Launched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 60
    const-string v0, "MillenialInterstitialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") caching started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 127
    const-string v0, "MillenialInterstitialAdapter"

    const-string v1, "cleanUp: MillenialInterstitialAdapter "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 132
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 3

    .prologue
    .line 41
    new-instance v1, Lcom/millennialmedia/android/MMInterstitial;

    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    .line 43
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v2, "apid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 47
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 49
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 115
    const-string v0, "MillenialInterstitialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") single tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 120
    :cond_0
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 67
    const-string v0, "MillenialInterstitialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") caching completed successfully."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 71
    const-string v0, "MillennialMediaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") displaying."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 5

    .prologue
    .line 83
    const-string v0, "MillenialInterstitialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") fetch request failed with error: %d %s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/openx/errors/UnknownError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->show()V

    .line 34
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 35
    return-void
.end method
