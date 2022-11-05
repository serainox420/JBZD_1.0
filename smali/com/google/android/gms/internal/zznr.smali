.class public Lcom/google/android/gms/internal/zznr;
.super Lcom/google/android/gms/internal/zznu$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzVj:Lcom/google/android/gms/internal/zzns;

.field private final zzrJ:Ljava/lang/Object;

.field private final zztt:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzns;

    invoke-static {}, Lcom/google/android/gms/internal/zzeg;->zzeE()Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzns;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;)V

    invoke-direct {p0, p1, p4, v0}, Lcom/google/android/gms/internal/zznr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzns;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzns;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznu$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zznr;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznr;->zztt:Lcom/google/android/gms/internal/zzqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznr;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public isLoaded()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->isLoaded()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznr;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznr;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->zzjF()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zznw;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zznw;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzoa;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zzoa;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->pause()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzns;->onContextChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->resume()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Unable to extract updated context."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->destroy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
