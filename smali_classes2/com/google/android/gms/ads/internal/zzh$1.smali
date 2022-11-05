.class Lcom/google/android/gms/ads/internal/zzh$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/zzpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsY:Ljava/lang/Runnable;

.field final synthetic zzsZ:Lcom/google/android/gms/ads/internal/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzh;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzh$1;->zzsZ:Lcom/google/android/gms/ads/internal/zzh;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzh$1;->zzsY:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/appSettingsFetched"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzqw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzh$1;->zzsZ:Lcom/google/android/gms/ads/internal/zzh;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzh;->zza(Lcom/google/android/gms/ads/internal/zzh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v2, "true"

    const-string v0, "isSuccessful"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appSettingsJson"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzh$1;->zzsZ:Lcom/google/android/gms/ads/internal/zzh;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzh;->zzb(Lcom/google/android/gms/ads/internal/zzh;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzpe;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzh$1;->zzsY:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzh$1;->zzsY:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v2

    const-string v3, "ConfigLoader.maybeFetchNewAppSettings"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, "ConfigLoader post task failed."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
