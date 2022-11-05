.class public Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "AdMobInterstitialAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdMobInterstitialAdapter"


# instance fields
.field adListener:Lcom/google/android/gms/ads/AdListener;

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 75
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;

    invoke-direct {v0, p0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;-><init>(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->adListener:Lcom/google/android/gms/ads/AdListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 139
    const-string v0, "AdMobInterstitialAdapter"

    const-string v1, "cleanUp: AdMobInterstitialAdapter"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 143
    iput-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 146
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 2

    .prologue
    .line 43
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 45
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;-><init>(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;Lcom/openx/view/tp/chain/parser/ChainItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->show()V

    .line 34
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 36
    return-void
.end method
