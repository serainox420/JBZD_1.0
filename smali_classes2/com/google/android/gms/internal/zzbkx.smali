.class public Lcom/google/android/gms/internal/zzbkx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wallet/Payments;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingRemoteException"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzbkx$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx$4;-><init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public checkForPreAuthorization(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkx$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbkx$1;-><init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public isNewUser(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkx$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbkx$6;-><init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public isReadyToPay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/BooleanResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbkx$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbkx$7;-><init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public isReadyToPay(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/wallet/IsReadyToPayRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/BooleanResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbkx$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbkx$8;-><init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/IsReadyToPayRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkx$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbkx$3;-><init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkx$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbkx$2;-><init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method

.method public notifyTransactionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkx$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbkx$5;-><init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    return-void
.end method
