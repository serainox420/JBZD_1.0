.class Lcom/google/android/gms/internal/zzdo$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzf$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdo;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyJ:Lcom/google/android/gms/internal/zzdo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zzc(Lcom/google/android/gms/internal/zzdo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdo;->zzd(Lcom/google/android/gms/internal/zzdo;)Lcom/google/android/gms/internal/zzdr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdr;->zzeB()Lcom/google/android/gms/internal/zzdv;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/internal/zzdv;)Lcom/google/android/gms/internal/zzdv;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zzc(Lcom/google/android/gms/internal/zzdo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zzc(Lcom/google/android/gms/internal/zzdo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/internal/zzdv;)Lcom/google/android/gms/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$3;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zzc(Lcom/google/android/gms/internal/zzdo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
