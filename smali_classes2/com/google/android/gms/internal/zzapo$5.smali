.class Lcom/google/android/gms/internal/zzapo$5;
.super Lcom/google/android/gms/internal/zzaoi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapo;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUY:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapo;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapo$5;->zzaUY:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaoi$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzaoi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapo$5;->zza(Lcom/google/android/gms/internal/zzaoi;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaoi;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzapr;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoi;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaox;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzbq;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapo$5;->zzaUY:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/zzbq;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zzapf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaox;->zza(Lcom/google/android/gms/fitness/request/zzbq;)V

    return-void
.end method
