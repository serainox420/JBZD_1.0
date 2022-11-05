.class Lcom/google/android/gms/internal/zzapo$1;
.super Lcom/google/android/gms/internal/zzaoi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapo;->listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaoi$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapo;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaoi$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->zzah(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

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

    check-cast p1, Lcom/google/android/gms/internal/zzaoi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapo$1;->zza(Lcom/google/android/gms/internal/zzaoi;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaoi;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzapo$zza;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/zzapo$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapo$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoi;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaox;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzam;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzam;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzapa;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaox;->zza(Lcom/google/android/gms/fitness/request/zzam;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapo$1;->zzZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method
