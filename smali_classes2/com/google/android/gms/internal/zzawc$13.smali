.class Lcom/google/android/gms/internal/zzawc$13;
.super Lcom/google/android/gms/internal/zzawc$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$zza;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbyI:Ljava/lang/String;

.field final synthetic zzbyR:[B

.field final synthetic zzbyT:Lcom/google/android/gms/internal/zzabh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/internal/zzabh;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzawc$13;->zzbyI:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzawc$13;->zzbyR:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzawc$13;->zzbyT:Lcom/google/android/gms/internal/zzabh;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawc$13;->zza(Lcom/google/android/gms/internal/zzawb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzawb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawc$13;->zzbyI:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawc$13;->zzbyR:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawc$13;->zzbyT:Lcom/google/android/gms/internal/zzabh;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzawb;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;[BLcom/google/android/gms/internal/zzabh;)V

    return-void
.end method
