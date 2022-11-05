.class Lcom/google/android/gms/internal/zzapp$1;
.super Lcom/google/android/gms/internal/zzaoj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapp;->findDataSources(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaoj$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaUZ:Lcom/google/android/gms/fitness/request/DataSourcesRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapp$1;->zzaUZ:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaoj$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzaoj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapp$1;->zza(Lcom/google/android/gms/internal/zzaoj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaoj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzaoc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaoc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoj;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoy;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapp$1;->zzaUZ:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/zzaon;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaoy;->zza(Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V

    return-void
.end method

.method protected zzaa(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;->zzae(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapp$1;->zzaa(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    return-object v0
.end method
