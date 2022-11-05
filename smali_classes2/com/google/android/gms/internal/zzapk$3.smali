.class Lcom/google/android/gms/internal/zzapk$3;
.super Lcom/google/android/gms/internal/zzaoe$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapk;->disableFit(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapk;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaoe$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaoe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapk$3;->zza(Lcom/google/android/gms/internal/zzaoe;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaoe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzapr;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoe;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaot;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/zzw;-><init>(Lcom/google/android/gms/internal/zzapf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/fitness/request/zzw;)V

    return-void
.end method
