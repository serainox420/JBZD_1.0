.class Lcom/google/android/gms/internal/zzaid$1;
.super Lcom/google/android/gms/internal/zzaid$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaid;->getFileUploadPreferences(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNx:Lcom/google/android/gms/internal/zzaid;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaid;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaid$1;->zzaNx:Lcom/google/android/gms/internal/zzaid;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaid$zzc;-><init>(Lcom/google/android/gms/internal/zzaid;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzahx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaid$1;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaid$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaid$1;->zzaNx:Lcom/google/android/gms/internal/zzaid;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/internal/zzaid$zza;-><init>(Lcom/google/android/gms/internal/zzaid;Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzaid$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaix;->zzd(Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
