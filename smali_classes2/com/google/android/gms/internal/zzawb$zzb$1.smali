.class Lcom/google/android/gms/internal/zzawb$zzb$1;
.super Lcom/google/android/gms/internal/zzawb$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawb$zzb;->zza(Lcom/google/android/gms/internal/zzawx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzawb$zze",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbyx:Lcom/google/android/gms/internal/zzawx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawb$zzb;Lcom/google/android/gms/internal/zzawx;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawb$zzb$1;->zzbyx:Lcom/google/android/gms/internal/zzawx;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawb$zze;-><init>(Lcom/google/android/gms/internal/zzawb$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$zza;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzb$1;->zzbyx:Lcom/google/android/gms/internal/zzawx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawx;->zzOp()Lcom/google/android/gms/internal/zzaxi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaxk;->zza(Lcom/google/android/gms/internal/zzaxi;)Lcom/google/android/gms/nearby/connection/zzg;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NearbyConnectionsClient"

    const-string v1, "Failed to convert incoming ParcelablePayload %d to Payload."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzawb$zzb$1;->zzbyx:Lcom/google/android/gms/internal/zzawx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzawx;->zzOp()Lcom/google/android/gms/internal/zzaxi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaxi;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzawb$zzb$1;->zzbyx:Lcom/google/android/gms/internal/zzawx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzawx;->zzOf()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawb$zzb$1;->zzbyx:Lcom/google/android/gms/internal/zzawx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawx;->zzOq()Z

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/nearby/connection/Connections$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;Z)V

    goto :goto_0
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb$zzb$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$zza;)V

    return-void
.end method
