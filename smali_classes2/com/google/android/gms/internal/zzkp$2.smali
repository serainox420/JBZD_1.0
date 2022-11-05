.class Lcom/google/android/gms/internal/zzkp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkp;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzLR:Lcom/google/android/gms/internal/zzkp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkp$2;->zzLR:Lcom/google/android/gms/internal/zzkp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    return-void
.end method

.method public zzbN()V
    .locals 2

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp$2;->zzLR:Lcom/google/android/gms/internal/zzkp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkp;->zza(Lcom/google/android/gms/internal/zzkp;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp$2;->zzLR:Lcom/google/android/gms/internal/zzkp;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp$2;->zzLR:Lcom/google/android/gms/internal/zzkp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkp;->zzc(Lcom/google/android/gms/internal/zzkp;)Lcom/google/android/gms/internal/zzgr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp$2;->zzLR:Lcom/google/android/gms/internal/zzkp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkp;->zzb(Lcom/google/android/gms/internal/zzkp;)Landroid/app/Activity;

    move-result-object v1

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

.method public zzbO()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp$2;->zzLR:Lcom/google/android/gms/internal/zzkp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkp;->zza(Lcom/google/android/gms/internal/zzkp;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkp$2;->zzLR:Lcom/google/android/gms/internal/zzkp;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
