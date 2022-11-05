.class Lcom/google/android/gms/internal/zzapm$6;
.super Lcom/google/android/gms/internal/zzaog$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapm;->readData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaog$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DataReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaUR:Lcom/google/android/gms/fitness/request/DataReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapm$6;->zzaUR:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaog$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzX(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapm$6;->zzaUR:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapm$6;->zzaUR:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getDataSources()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zza(Lcom/google/android/gms/common/api/Status;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/fitness/result/DataReadResult;

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

    check-cast p1, Lcom/google/android/gms/internal/zzaog;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapm$6;->zza(Lcom/google/android/gms/internal/zzaog;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapm$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzapm$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapm$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaog;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaov;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataReadRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapm$6;->zzaUR:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/zzaom;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaov;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapm$6;->zzX(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method
