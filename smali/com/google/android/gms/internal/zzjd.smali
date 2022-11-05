.class public Lcom/google/android/gms/internal/zzjd;
.super Lcom/google/android/gms/internal/zzet$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzJc:Lcom/google/android/gms/internal/zziw;

.field private zzJh:Lcom/google/android/gms/ads/internal/zzm;

.field private final zzJu:Lcom/google/android/gms/internal/zziy;

.field private zzJv:Lcom/google/android/gms/internal/zzli;

.field private zzJw:Ljava/lang/String;

.field private final zzts:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zziw;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/zziw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzjd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zziw;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zziw;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzet$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjd;->zzts:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjd;->zzJc:Lcom/google/android/gms/internal/zziw;

    new-instance v0, Lcom/google/android/gms/internal/zziy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zziy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdb()Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zziw;)V

    return-void
.end method

.method private zzgK()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJv:Lcom/google/android/gms/internal/zzli;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJv:Lcom/google/android/gms/internal/zzli;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjd;->zzJw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzli;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static zzp(Lcom/google/android/gms/internal/zzec;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zziz;->zzj(Lcom/google/android/gms/internal/zzec;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "gw"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static zzq(Lcom/google/android/gms/internal/zzec;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zziz;->zzj(Lcom/google/android/gms/internal/zzec;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "_ad"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method abort()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJc:Lcom/google/android/gms/internal/zziw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziw;->zzag(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziy;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjd;->zzgK()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->destroy()V

    :cond_0
    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->resume()V

    :cond_0
    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjd;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzm;->setManualImpressionsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showInterstitial()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->showInterstitial()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->stopLoading()V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzeg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzeg;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzeo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iput-object p1, v0, Lcom/google/android/gms/internal/zziy;->zzIY:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziy;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzep;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iput-object p1, v0, Lcom/google/android/gms/internal/zziy;->zztk:Lcom/google/android/gms/internal/zzep;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziy;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzev;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iput-object p1, v0, Lcom/google/android/gms/internal/zziy;->zzIV:Lcom/google/android/gms/internal/zzev;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziy;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzex;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjd;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzex;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzfc;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzft;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iput-object p1, v0, Lcom/google/android/gms/internal/zziy;->zzIX:Lcom/google/android/gms/internal/zzgp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziy;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iput-object p1, v0, Lcom/google/android/gms/internal/zziy;->zzIW:Lcom/google/android/gms/internal/zzle;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziy;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzli;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjd;->zzJv:Lcom/google/android/gms/internal/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjd;->zzJw:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjd;->zzgK()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zznw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iput-object p1, v0, Lcom/google/android/gms/internal/zziy;->zzIZ:Lcom/google/android/gms/internal/zznw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziy;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    :cond_0
    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzec;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjd;->zzp(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjd;->abort()V

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zziz;->zzl(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjd;->abort()V

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjd;->abort()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdb()Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjd;->zzq(Lcom/google/android/gms/internal/zzec;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzts:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zziz;->zzb(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzts:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)Lcom/google/android/gms/internal/zzjb$zza;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzjb$zza;->zzJl:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjb$zza;->load()Z

    invoke-static {}, Lcom/google/android/gms/internal/zzjc;->zzgC()Lcom/google/android/gms/internal/zzjc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjc;->zzgG()V

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzjb$zza;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzjb$zza;->zzJj:Lcom/google/android/gms/internal/zzix;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzix;->zza(Lcom/google/android/gms/internal/zziy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd;->zzJu:Lcom/google/android/gms/internal/zziy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zziy;->zzc(Lcom/google/android/gms/ads/internal/zzm;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjd;->zzgK()V

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzjb$zza;->zzJm:Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/zzjc;->zzgC()Lcom/google/android/gms/internal/zzjc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjc;->zzgF()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjd;->abort()V

    invoke-static {}, Lcom/google/android/gms/internal/zzjc;->zzgC()Lcom/google/android/gms/internal/zzjc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjc;->zzgG()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    goto :goto_0
.end method

.method public zzbB()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzbB()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbC()Lcom/google/android/gms/internal/zzeg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbE()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzbE()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzbF()Lcom/google/android/gms/internal/zzfa;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
