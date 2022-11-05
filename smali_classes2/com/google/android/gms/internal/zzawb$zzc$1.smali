.class Lcom/google/android/gms/internal/zzawb$zzc$1;
.super Lcom/google/android/gms/internal/zzawb$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawb$zzc;->zza(Lcom/google/android/gms/internal/zzawp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzawb$zze",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbyB:Lcom/google/android/gms/internal/zzawp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawb$zzc;Lcom/google/android/gms/internal/zzawp;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawb$zzc$1;->zzbyB:Lcom/google/android/gms/internal/zzawp;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawb$zze;-><init>(Lcom/google/android/gms/internal/zzawb$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzc$1;->zzbyB:Lcom/google/android/gms/internal/zzawp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawp;->zzOf()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawb$zzc$1;->zzbyB:Lcom/google/android/gms/internal/zzawp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawp;->getStatusCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawb$zzc$1;->zzbyB:Lcom/google/android/gms/internal/zzawp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawp;->zzOg()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb$zzc$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;)V

    return-void
.end method
