.class public Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "AdColonyInterstitialAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdColonyInterstitialAdapter"


# instance fields
.field private adColonyAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

.field private clientOptons:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 20
    const-string v0, "version:1.1,store:google"

    iput-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->clientOptons:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;)Lcom/jirbo/adcolony/AdColonyVideoAd;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->adColonyAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 112
    const-string v0, "AdColonyInterstitialAdapter"

    const-string v1, "cleanUp: AdColonyInterstitialAdapter "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->adColonyAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->adColonyAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 117
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 6

    .prologue
    .line 42
    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    iget-object v1, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v1, v1, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v2, "zone_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->clientOptons:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v0, v4}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V

    .line 49
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 51
    new-instance v0, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->adColonyAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 53
    const-string v0, "AdColonyInterstitialAdapter"

    const-string v1, "loadAd() ### 0"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 88
    const-string v0, "AdColonyInterstitialAdapter"

    const-string v1, "I am in onAdColonyAdAttemptFinished"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "AdColonyInterstitialAdapter"

    const-string v1, " closing the ad in adcolony adapter - so chainmanager can ask activity to disable the button"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdColony:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    const-string v0, "AdColonyInterstitialAdapter"

    const-string v1, "I am in onAdColonyAdAvailabilityChange "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter$1;

    invoke-direct {v1, p0}, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter$1;-><init>(Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "AdColonyInterstitialAdapter"

    const-string v1, "I am in onAdColonyAdStarted ### 4"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->show()V

    .line 35
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->adColonyAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    .line 37
    return-void
.end method
