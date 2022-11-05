.class Lcom/google/android/gms/internal/zzapm$7;
.super Lcom/google/android/gms/internal/zzaog$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapm;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaog$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DailyTotalResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaUS:Lcom/google/android/gms/fitness/data/DataType;

.field final synthetic zzaUT:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapm$7;->zzaUS:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzapm$7;->zzaUT:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaog$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzY(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapm$7;->zzaUS:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapm$7;->zza(Lcom/google/android/gms/internal/zzaog;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapm$7$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapm$7$1;-><init>(Lcom/google/android/gms/internal/zzapm$7;)V

    new-instance v1, Lcom/google/android/gms/fitness/request/zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapm$7;->zzaUS:Lcom/google/android/gms/fitness/data/DataType;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzapm$7;->zzaUT:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/fitness/request/zzd;-><init>(Lcom/google/android/gms/internal/zzaol;Lcom/google/android/gms/fitness/data/DataType;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaog;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaov;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(Lcom/google/android/gms/fitness/request/zzd;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapm$7;->zzY(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

    move-result-object v0

    return-object v0
.end method
