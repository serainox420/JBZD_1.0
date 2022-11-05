.class Lcom/google/android/gms/internal/zzdo$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzf$zzc;


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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo$4;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$4;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zzc(Lcom/google/android/gms/internal/zzdo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$4;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/internal/zzdv;)Lcom/google/android/gms/internal/zzdv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$4;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zzd(Lcom/google/android/gms/internal/zzdo;)Lcom/google/android/gms/internal/zzdr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$4;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/internal/zzdr;)Lcom/google/android/gms/internal/zzdr;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdc()Lcom/google/android/gms/internal/zzpw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzlc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$4;->zzyJ:Lcom/google/android/gms/internal/zzdo;

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
