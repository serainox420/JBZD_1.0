.class Lcom/google/android/gms/internal/zzbkx$8;
.super Lcom/google/android/gms/wallet/Wallet$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbkx;->isReadyToPay(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wallet/Wallet$zza",
        "<",
        "Lcom/google/android/gms/common/api/BooleanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbSr:Lcom/google/android/gms/wallet/IsReadyToPayRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/IsReadyToPayRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkx$8;->zzbSr:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BooleanResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/BooleanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbky;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbkx$8;->zza(Lcom/google/android/gms/internal/zzbky;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbky;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkx$8;->zzbSr:Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/zzbky;->zza(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbkx$8;->zzM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BooleanResult;

    move-result-object v0

    return-object v0
.end method
