.class Lcom/google/android/gms/internal/zzapo$3;
.super Lcom/google/android/gms/internal/zzaoi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUX:Lcom/google/android/gms/fitness/data/Subscription;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapo;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapo$3;->zzaUX:Lcom/google/android/gms/fitness/data/Subscription;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapo$3;->zza(Lcom/google/android/gms/internal/zzaoi;)V

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

    new-instance v2, Lcom/google/android/gms/fitness/request/zzbm;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapo$3;->zzaUX:Lcom/google/android/gms/fitness/data/Subscription;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/zzbm;-><init>(Lcom/google/android/gms/fitness/data/Subscription;ZLcom/google/android/gms/internal/zzapf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaox;->zza(Lcom/google/android/gms/fitness/request/zzbm;)V

    return-void
.end method
