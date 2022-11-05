.class Lcom/google/android/gms/internal/zzapq$6;
.super Lcom/google/android/gms/internal/zzaok$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapq;->unregisterForSessions(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaVc:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapq;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapq$6;->zzaVc:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaok$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzaok;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapq$6;->zza(Lcom/google/android/gms/internal/zzaok;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaok;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzapr;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaok;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoz;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzbh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapq$6;->zzaVc:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzbh;-><init>(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzapf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaoz;->zza(Lcom/google/android/gms/fitness/request/zzbh;)V

    return-void
.end method
