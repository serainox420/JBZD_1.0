.class Lcom/google/android/gms/internal/zzapm$2;
.super Lcom/google/android/gms/internal/zzaog$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapm;->deleteData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUN:Lcom/google/android/gms/fitness/request/DataDeleteRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapm$2;->zzaUN:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaog$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzaog;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapm$2;->zza(Lcom/google/android/gms/internal/zzaog;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzapr;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaog;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaov;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapm$2;->zzaUN:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/internal/zzapf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaov;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V

    return-void
.end method
