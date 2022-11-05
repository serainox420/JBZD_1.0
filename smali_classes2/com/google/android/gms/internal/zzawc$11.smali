.class Lcom/google/android/gms/internal/zzawc$11;
.super Lcom/google/android/gms/internal/zzawc$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawc;->zzl(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzawc$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzawc$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzawb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawc$11;->zza(Lcom/google/android/gms/internal/zzawb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzawb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzawb;->zzsL()V

    return-void
.end method
