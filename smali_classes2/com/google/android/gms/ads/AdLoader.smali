.class public Lcom/google/android/gms/ads/AdLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdLoader$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzrw:Lcom/google/android/gms/internal/zzef;

.field private final zzrx:Lcom/google/android/gms/internal/zzeq;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeq;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzef;->zzeD()Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeq;Lcom/google/android/gms/internal/zzef;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeq;Lcom/google/android/gms/internal/zzef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader;->zzrx:Lcom/google/android/gms/internal/zzeq;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdLoader;->zzrw:Lcom/google/android/gms/internal/zzef;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzfe;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzrx:Lcom/google/android/gms/internal/zzeq;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->zzrw:Lcom/google/android/gms/internal/zzef;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfe;)Lcom/google/android/gms/internal/zzec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeq;->zzf(Lcom/google/android/gms/internal/zzec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzrx:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeq;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzrx:Lcom/google/android/gms/internal/zzeq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeq;->isLoading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzbp()Lcom/google/android/gms/internal/zzfe;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzbp()Lcom/google/android/gms/internal/zzfe;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method
