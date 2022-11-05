.class Lcom/google/android/gms/wearable/internal/zzu$3;
.super Lcom/google/android/gms/wearable/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzu;->getInputStream(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzm",
        "<",
        "Lcom/google/android/gms/wearable/Channel$GetInputStreamResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbTX:Lcom/google/android/gms/wearable/internal/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzu$3;->zzbTX:Lcom/google/android/gms/wearable/internal/zzu;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzu$3;->zza(Lcom/google/android/gms/wearable/internal/zzcx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzcx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu$3;->zzbTX:Lcom/google/android/gms/wearable/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzu;->zza(Lcom/google/android/gms/wearable/internal/zzu;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/zzcx;->zzy(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;)V

    return-void
.end method

.method public zzbU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/Channel$GetInputStreamResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzu$zza;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzu$3;->zzbU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/Channel$GetInputStreamResult;

    move-result-object v0

    return-object v0
.end method
