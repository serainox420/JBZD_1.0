.class Lcom/google/android/gms/internal/zzzf$3;
.super Lcom/google/android/gms/internal/zzzf$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzzf;->stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzf;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzzf$zzb;-><init>(Lcom/google/android/gms/internal/zzzf;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzzg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzf$3;->zza(Lcom/google/android/gms/internal/zzzg;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzzg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzzf$zzb$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzf$zzb$zzb;-><init>(Lcom/google/android/gms/internal/zzzf$zzb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzzg;->zza(Lcom/google/android/gms/internal/zzzh;)V

    return-void
.end method
