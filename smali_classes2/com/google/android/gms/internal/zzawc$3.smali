.class Lcom/google/android/gms/internal/zzawc$3;
.super Lcom/google/android/gms/internal/zzawc$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbyI:Ljava/lang/String;

.field final synthetic zzbyJ:Lcom/google/android/gms/nearby/connection/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzawc$3;->zzbyI:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzawc$3;->zzbyJ:Lcom/google/android/gms/nearby/connection/zzg;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawc$3;->zza(Lcom/google/android/gms/internal/zzawb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzawb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawc$3;->zzbyI:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawc$3;->zzbyJ:Lcom/google/android/gms/nearby/connection/zzg;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzawb;->zza(Lcom/google/android/gms/internal/zzaad$zzb;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;Z)V

    return-void
.end method
