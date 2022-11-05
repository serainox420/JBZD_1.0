.class public Lcom/google/android/gms/internal/zzoc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzVq:Lcom/google/android/gms/internal/zznu;

.field private zzcJ:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zznu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoc;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoc;->destroy(Landroid/content/Context;)V

    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznu;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Could not forward destroy to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzcJ:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "RewardedVideoAd.getUserId() is deprecated. Please do not call this method."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zznu;->isLoaded()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "Could not forward isLoaded to RewardedVideoAd"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    invoke-static {}, Lcom/google/android/gms/internal/zzef;->zzeD()Lcom/google/android/gms/internal/zzef;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoc;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzbp()Lcom/google/android/gms/internal/zzfe;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/gms/internal/zzef;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfe;Ljava/lang/String;)Lcom/google/android/gms/internal/zzoa;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznu;->zza(Lcom/google/android/gms/internal/zzoa;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Could not forward loadAd to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoc;->pause(Landroid/content/Context;)V

    return-void
.end method

.method public pause(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznu;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Could not forward pause to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzoc;->resume(Landroid/content/Context;)V

    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznu;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Could not forward resume to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzoc;->zzcJ:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    new-instance v2, Lcom/google/android/gms/internal/zznz;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zznz;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznu;->zza(Lcom/google/android/gms/internal/zznw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not forward setRewardedVideoAdListener to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzbh(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoc;->zzVq:Lcom/google/android/gms/internal/zznu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznu;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Could not forward show to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
