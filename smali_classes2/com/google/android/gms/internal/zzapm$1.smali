.class Lcom/google/android/gms/internal/zzapm$1;
.super Lcom/google/android/gms/internal/zzaog$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapm;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUL:Lcom/google/android/gms/fitness/data/DataSet;

.field final synthetic zzaUM:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapm$1;->zzaUL:Lcom/google/android/gms/fitness/data/DataSet;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzapm$1;->zzaUM:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapm$1;->zza(Lcom/google/android/gms/internal/zzaog;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaog;)V
    .locals 5
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

    new-instance v2, Lcom/google/android/gms/fitness/request/zzg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapm$1;->zzaUL:Lcom/google/android/gms/fitness/data/DataSet;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzapm$1;->zzaUM:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/fitness/request/zzg;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzapf;Z)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaov;->zza(Lcom/google/android/gms/fitness/request/zzg;)V

    return-void
.end method
