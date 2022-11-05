.class Lcom/google/android/gms/wearable/internal/zzu$5;
.super Lcom/google/android/gms/wearable/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzu;->receiveFile(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzm",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbBv:Landroid/net/Uri;

.field final synthetic zzbTX:Lcom/google/android/gms/wearable/internal/zzu;

.field final synthetic zzbTY:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzu$5;->zzbTX:Lcom/google/android/gms/wearable/internal/zzu;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzu$5;->zzbBv:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/google/android/gms/wearable/internal/zzu$5;->zzbTY:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzu$5;->zza(Lcom/google/android/gms/wearable/internal/zzcx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzcx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzu$5;->zzbTX:Lcom/google/android/gms/wearable/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzu;->zza(Lcom/google/android/gms/wearable/internal/zzu;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzu$5;->zzbBv:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/internal/zzu$5;->zzbTY:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzcx;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzu$5;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
