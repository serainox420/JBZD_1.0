.class Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobInterstitialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 110
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$500(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$600(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 97
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$300(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v1}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$400(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v1

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 126
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$700(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$800(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 82
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$000(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$100(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$200(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$2;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v2}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$000(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 120
    return-void
.end method
