.class public Lcom/google/android/gms/internal/zzfg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzAj:Lcom/google/android/gms/internal/zzjz;

.field private zzAn:Lcom/google/android/gms/ads/Correlator;

.field private zzAo:Lcom/google/android/gms/internal/zzet;

.field private zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private zzAs:Ljava/lang/String;

.field private zzAw:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field private zzAx:Z

.field private zzcJ:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

.field private final zzrw:Lcom/google/android/gms/internal/zzef;

.field private zzts:Ljava/lang/String;

.field private zzyR:Lcom/google/android/gms/internal/zzdx;

.field private zzyS:Lcom/google/android/gms/ads/AdListener;

.field private zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzef;->zzeD()Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzfg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzef;->zzeD()Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzfg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzjz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAj:Lcom/google/android/gms/internal/zzjz;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfg;->zzrw:Lcom/google/android/gms/internal/zzef;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfg;->zzAw:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    return-void
.end method

.method private zzS(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzts:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfg;->zzT(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAx:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zzeg;->zzeE()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeU()Lcom/google/android/gms/internal/zzek;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfg;->zzts:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfg;->zzAj:Lcom/google/android/gms/internal/zzjz;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzek;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zzet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzyS:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzdz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzyS:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzdz;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzep;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzyR:Lcom/google/android/gms/internal/zzdx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzdy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzyR:Lcom/google/android/gms/internal/zzdx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzdy;-><init>(Lcom/google/android/gms/internal/zzdx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzeo;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzei;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzei;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzev;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzlj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzlj;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzle;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzln;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzln;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAs:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzli;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zzgq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzgq;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzgp;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAn:Lcom/google/android/gms/ads/Correlator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAn:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/Correlator;->zzbq()Lcom/google/android/gms/internal/zzem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzex;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzcJ:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    new-instance v1, Lcom/google/android/gms/internal/zznz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzcJ:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zznz;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zznw;)V

    :cond_8
    return-void

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeg;-><init>()V

    goto/16 :goto_0
.end method

.method private zzT(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzyS:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzts:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzet;->isReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to check if ad is ready."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzet;->isLoading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to check if ad is loading."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzyS:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzdz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdz;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzep;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzts:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzts:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzzE:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzei;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzei;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzev;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzAn:Lcom/google/android/gms/ads/Correlator;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAn:Lcom/google/android/gms/ads/Correlator;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzex;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAn:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/Correlator;->zzbq()Lcom/google/android/gms/internal/zzem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzlj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzlj;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzAq:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzgq;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzgp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the OnCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAp:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In app purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzAr:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfg;->zzAs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzln;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzln;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzli;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzcJ:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zznz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zznz;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zznw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public show()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfg;->zzT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzet;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzdx;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzyR:Lcom/google/android/gms/internal/zzdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzdy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdy;-><init>(Lcom/google/android/gms/internal/zzdx;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzet;->zza(Lcom/google/android/gms/internal/zzeo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzfe;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    if-nez v0, :cond_0

    const-string v0, "loadAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfg;->zzS(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAo:Lcom/google/android/gms/internal/zzet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzrw:Lcom/google/android/gms/internal/zzef;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfe;)Lcom/google/android/gms/internal/zzec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzet;->zzb(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAj:Lcom/google/android/gms/internal/zzjz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfe;->zzfd()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjz;->zzi(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zzd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfg;->zzAx:Z

    return-void
.end method
