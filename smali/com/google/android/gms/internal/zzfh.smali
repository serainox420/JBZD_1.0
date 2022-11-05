.class public Lcom/google/android/gms/internal/zzfh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static zzAy:Lcom/google/android/gms/internal/zzfh;

.field private static final zztX:Ljava/lang/Object;


# instance fields
.field private zzAA:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private zzAz:Lcom/google/android/gms/internal/zzey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfh;->zztX:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzfk()Lcom/google/android/gms/internal/zzfh;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzfh;->zztX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzfh;->zzAy:Lcom/google/android/gms/internal/zzfh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfh;->zzAy:Lcom/google/android/gms/internal/zzfh;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzfh;->zzAy:Lcom/google/android/gms/internal/zzfh;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/zzfh;->zztX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAA:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAA:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzjz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjz;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeU()Lcom/google/android/gms/internal/zzek;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/zzek;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zznu;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzoc;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/zzoc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zznu;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzfh;->zzAA:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAA:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzey;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to open debug menu."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAppMuted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzey;->setAppMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to set app mute state."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAppVolume(F)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzey;->setAppVolume(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to set app volume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzfi;)V
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/zzfh;->zztX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeU()Lcom/google/android/gms/internal/zzek;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzek;->zzl(Landroid/content/Context;)Lcom/google/android/gms/internal/zzey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey;->initialize()V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfh;->zzAz:Lcom/google/android/gms/internal/zzey;

    new-instance v2, Lcom/google/android/gms/internal/zzfh$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzfh$1;-><init>(Lcom/google/android/gms/internal/zzfh;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lcom/google/android/gms/internal/zzey;->zzc(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MobileAdsSettingManager initialization failed"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
