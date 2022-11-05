.class Lcom/google/android/gms/internal/zzawb$zzd$3;
.super Lcom/google/android/gms/internal/zzawb$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawb$zzd;->zza(Lcom/google/android/gms/internal/zzaxf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzawb$zze",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbyE:Lcom/google/android/gms/internal/zzaxf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawb$zzd;Lcom/google/android/gms/internal/zzaxf;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawb$zzd$3;->zzbyE:Lcom/google/android/gms/internal/zzaxf;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawb$zze;-><init>(Lcom/google/android/gms/internal/zzawb$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzd$3;->zzbyE:Lcom/google/android/gms/internal/zzaxf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxf;->getReason()I

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb$zzd$3;->zza(Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)V

    return-void
.end method
