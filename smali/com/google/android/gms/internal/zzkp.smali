.class public Lcom/google/android/gms/internal/zzkp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;

.field private zzLO:Landroid/app/Activity;

.field private zzLP:Lcom/google/android/gms/internal/zzgr;

.field private zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkp;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzkp;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLO:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzkp;)Lcom/google/android/gms/internal/zzgr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    return-object v0
.end method

.method public static zzr(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzgr;->zzo(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp;->zzLO:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgr;->zzd(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception while unbinding from CustomTabsService."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-nez v0, :cond_0

    const-string v0, "Listener not set for mediation. Returning."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzkp;->zzr(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Default browser does not support custom tabs. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    :cond_2
    const-string v0, "tab_url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzLO:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkp;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/google/android/gms/internal/zzgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    new-instance v0, Lcom/google/android/gms/internal/zzkp$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkp$1;-><init>(Lcom/google/android/gms/internal/zzkp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzgr;->zza(Lcom/google/android/gms/internal/zzgr$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp;->zzLO:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgr;->zze(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzLQ:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroid/support/customtabs/c$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp;->zzLP:Lcom/google/android/gms/internal/zzgr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgr;->zzfH()Landroid/support/customtabs/e;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/customtabs/c$a;-><init>(Landroid/support/customtabs/e;)V

    invoke-virtual {v0}, Landroid/support/customtabs/c$a;->a()Landroid/support/customtabs/c;

    move-result-object v0

    iget-object v1, v0, Landroid/support/customtabs/c;->a:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzkp;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Landroid/support/customtabs/c;->a:Landroid/content/Intent;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v3, Lcom/google/android/gms/internal/zzkp$2;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzkp$2;-><init>(Lcom/google/android/gms/internal/zzkp;)V

    new-instance v5, Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v5, v6, v6, v6}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZ)V

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqh;)V

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzkp$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzkp$3;-><init>(Lcom/google/android/gms/internal/zzkp;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzpe;->zzH(Z)V

    return-void
.end method
