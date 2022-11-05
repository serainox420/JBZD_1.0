.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final zzrH:Lcom/google/android/gms/internal/zzfg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzfg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfg;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfg;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfg;->getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfg;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfg;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfg;->isLoading()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzbp()Lcom/google/android/gms/internal/zzfe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfg;->zza(Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfg;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    check-cast p1, Lcom/google/android/gms/internal/zzdx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfg;->zza(Lcom/google/android/gms/internal/zzdx;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfg;->zza(Lcom/google/android/gms/internal/zzdx;)V

    goto :goto_0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfg;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfg;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    return-void
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfg;->setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V

    return-void
.end method

.method public setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfg;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfg;->show()V

    return-void
.end method

.method public zzd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzrH:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfg;->zzd(Z)V

    return-void
.end method
