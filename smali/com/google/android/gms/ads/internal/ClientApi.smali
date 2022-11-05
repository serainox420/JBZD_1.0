.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/zzew$zza;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzew$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdLoaderBuilder(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;I)Lcom/google/android/gms/internal/zzer;
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/zzqh;

    const v0, 0x9d2290

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzpo;->zzU(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v4, v0, p4, v2, v3}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZZ)V

    new-instance v0, Lcom/google/android/gms/ads/internal/zzl;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zze;->zzcc()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    return-object v0
.end method

.method public createAdOverlay(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzkz;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;-><init>(Landroid/app/Activity;)V

    return-object v1
.end method

.method public createBannerAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;I)Lcom/google/android/gms/internal/zzet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/zzqh;

    const v0, 0x9d2290

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzpo;->zzU(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v5, v0, p5, v2, v3}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZZ)V

    new-instance v0, Lcom/google/android/gms/ads/internal/zzg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zze;->zzcc()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    return-object v0
.end method

.method public createInAppPurchaseManager(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzlf;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zze;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/purchase/zze;-><init>(Landroid/app/Activity;)V

    return-object v1
.end method

.method public createInterstitialAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;I)Lcom/google/android/gms/internal/zzet;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgd;->initialize(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/zzqh;

    const v1, 0x9d2290

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzpo;->zzU(Landroid/content/Context;)Z

    move-result v4

    move/from16 v0, p5

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZZ)V

    const-string v1, "reward_mb"

    iget-object v3, p2, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzDc:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzDd:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzjd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zze;->zzcc()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzjd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/google/android/gms/ads/internal/zzm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zze;->zzcc()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v12

    move-object v7, v2

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/ads/internal/zzm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    move-object v1, v6

    goto :goto_1
.end method

.method public createNativeAdViewDelegate(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzhh;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/google/android/gms/internal/zzhe;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzhe;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v2
.end method

.method public createRewardedVideoAd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzka;I)Lcom/google/android/gms/internal/zznu;
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzqh;

    const v2, 0x9d2290

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzpo;->zzU(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {v1, v2, p3, v3, v4}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZZ)V

    new-instance v2, Lcom/google/android/gms/internal/zznr;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zze;->zzcc()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v3

    invoke-direct {v2, v0, v3, p2, v1}, Lcom/google/android/gms/internal/zznr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;)V

    return-object v2
.end method

.method public createSearchAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;I)Lcom/google/android/gms/internal/zzet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzqh;

    const v2, 0x9d2290

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzpo;->zzU(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {v1, v2, p4, v3, v4}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZZ)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {v2, v0, p2, p3, v1}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;)V

    return-object v2
.end method

.method public getMobileAdsSettingsManager(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/zzey;
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzqh;

    const v2, 0x9d2290

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzpo;->zzU(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZZ)V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v0

    return-object v0
.end method
