.class Lcom/google/android/gms/internal/zzapq$4;
.super Lcom/google/android/gms/internal/zzaok$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapq;->readSession(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SessionReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaok$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/SessionReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaVk:Lcom/google/android/gms/fitness/request/SessionReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SessionReadRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapq$4;->zzaVk:Lcom/google/android/gms/fitness/request/SessionReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaok$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzaok;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapq$4;->zza(Lcom/google/android/gms/internal/zzaok;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaok;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapq$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzapq$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapq$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaok;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoz;

    new-instance v2, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapq$4;->zzaVk:Lcom/google/android/gms/fitness/request/SessionReadRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionReadRequest;Lcom/google/android/gms/internal/zzapd;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaoz;->zza(Lcom/google/android/gms/fitness/request/SessionReadRequest;)V

    return-void
.end method

.method protected zzac(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/SessionReadResult;->zzai(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapq$4;->zzac(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;

    move-result-object v0

    return-object v0
.end method
