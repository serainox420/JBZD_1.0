.class Lcom/google/android/gms/internal/zzapj$6;
.super Lcom/google/android/gms/internal/zzaod$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapj;->listClaimedBleDevices(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaod$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/BleDevicesResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapj;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaod$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->zzad(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaod;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapj$6;->zza(Lcom/google/android/gms/internal/zzaod;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaod;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapj$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzapj$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapj$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaod;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaos;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzak;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/zzak;-><init>(Lcom/google/android/gms/internal/zzapt;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaos;->zza(Lcom/google/android/gms/fitness/request/zzak;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapj$6;->zzU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method
