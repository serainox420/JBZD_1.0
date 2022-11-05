.class Lcom/google/android/gms/internal/zzbkx$4;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbkx;->changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$requestCode:I

.field final synthetic zzbSo:Ljava/lang/String;

.field final synthetic zzbSp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkx$4;->zzbSo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbkx$4;->zzbSp:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzbkx$4;->val$requestCode:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbky;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbkx$4;->zza(Lcom/google/android/gms/internal/zzbky;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbky;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkx$4;->zzbSo:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkx$4;->zzbSp:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzbkx$4;->val$requestCode:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbky;->zzf(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbkx$4;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
