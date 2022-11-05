.class Lcom/google/android/gms/internal/zzawc$10;
.super Lcom/google/android/gms/internal/zzawc$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;Lcom/google/android/gms/nearby/connection/zze;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbyL:Ljava/lang/String;

.field final synthetic zzbyM:J

.field final synthetic zzbyP:Lcom/google/android/gms/nearby/connection/zze;

.field final synthetic zzbyQ:Lcom/google/android/gms/internal/zzabh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zze;Lcom/google/android/gms/internal/zzabh;)V
    .locals 2

    iput-object p3, p0, Lcom/google/android/gms/internal/zzawc$10;->zzbyL:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzawc$10;->zzbyM:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzawc$10;->zzbyP:Lcom/google/android/gms/nearby/connection/zze;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzawc$10;->zzbyQ:Lcom/google/android/gms/internal/zzabh;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawc$10;->zza(Lcom/google/android/gms/internal/zzawb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzawb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/zzawc$10;->zzbyL:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzawc$10;->zzbyM:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzawc$10;->zzbyP:Lcom/google/android/gms/nearby/connection/zze;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzawc$10;->zzbyQ:Lcom/google/android/gms/internal/zzabh;

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzawb;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zze;Lcom/google/android/gms/internal/zzabh;)V

    return-void
.end method
