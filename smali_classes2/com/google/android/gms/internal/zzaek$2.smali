.class Lcom/google/android/gms/internal/zzaek$2;
.super Lcom/google/android/gms/internal/zzafm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaek;->queryFences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaJh:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaek;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaek$2;->zzaJh:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzafm$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaek$2;->zza(Lcom/google/android/gms/internal/zzafn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzafn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaek$2;->zzaJh:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;

    check-cast v0, Lcom/google/android/gms/internal/zzaer;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzafn;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzaer;)V

    return-void
.end method
