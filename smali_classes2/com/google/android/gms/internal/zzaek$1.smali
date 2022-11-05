.class Lcom/google/android/gms/internal/zzaek$1;
.super Lcom/google/android/gms/internal/zzafm$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaek;->updateFences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaJg:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaek;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaek$1;->zzaJg:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzafm$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzafn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaek$1;->zza(Lcom/google/android/gms/internal/zzafn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzafn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaek$1;->zzaJg:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;

    check-cast v0, Lcom/google/android/gms/internal/zzaez;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzafn;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzaez;)V

    return-void
.end method
