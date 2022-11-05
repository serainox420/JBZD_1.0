.class Lcom/google/android/gms/internal/zzapk$2;
.super Lcom/google/android/gms/internal/zzaoe$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapk;->readDataType(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaoe$zza",
        "<",
        "Lcom/google/android/gms/fitness/result/DataTypeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaUI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapk;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapk$2;->zzaUI:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaoe$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzV(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataTypeResult;->zzaf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

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

    check-cast p1, Lcom/google/android/gms/internal/zzaoe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapk$2;->zza(Lcom/google/android/gms/internal/zzaoe;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaoe;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapk$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzapk$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapk$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoe;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaot;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapk$2;->zzaUI:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzaoo;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaot;->zza(Lcom/google/android/gms/fitness/request/zzn;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapk$2;->zzV(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method
