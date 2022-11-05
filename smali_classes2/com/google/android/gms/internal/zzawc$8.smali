.class Lcom/google/android/gms/internal/zzawc$8;
.super Lcom/google/android/gms/internal/zzawc$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;Lcom/google/android/gms/nearby/connection/zza;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzbyL:Ljava/lang/String;

.field final synthetic zzbyM:J

.field final synthetic zzbyN:Lcom/google/android/gms/nearby/connection/zza;

.field final synthetic zzbyO:Lcom/google/android/gms/internal/zzabh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawc;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zza;Lcom/google/android/gms/internal/zzabh;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzawc$8;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzawc$8;->zzbyL:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzawc$8;->zzbyM:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzawc$8;->zzbyN:Lcom/google/android/gms/nearby/connection/zza;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzawc$8;->zzbyO:Lcom/google/android/gms/internal/zzabh;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzawc$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzawc$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawc$8;->zza(Lcom/google/android/gms/internal/zzawb;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzawb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawc$8;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzawc$8;->zzbyL:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzawc$8;->zzbyM:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzawc$8;->zzbyN:Lcom/google/android/gms/nearby/connection/zza;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzawc$8;->zzbyO:Lcom/google/android/gms/internal/zzabh;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzawb;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zza;Lcom/google/android/gms/internal/zzabh;)V

    return-void
.end method
