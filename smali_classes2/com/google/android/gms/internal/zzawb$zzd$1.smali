.class Lcom/google/android/gms/internal/zzawb$zzd$1;
.super Lcom/google/android/gms/internal/zzawb$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawb$zzd;->zza(Lcom/google/android/gms/internal/zzawt;)V
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
.field final synthetic zzbyC:Lcom/google/android/gms/internal/zzawt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawb$zzd;Lcom/google/android/gms/internal/zzawt;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawb$zzd$1;->zzbyC:Lcom/google/android/gms/internal/zzawt;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawb$zze;-><init>(Lcom/google/android/gms/internal/zzawb$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzd$1;->zzbyC:Lcom/google/android/gms/internal/zzawt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawt;->zzOm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawb$zzd$1;->zzbyC:Lcom/google/android/gms/internal/zzawt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzawt;->zzOn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawb$zzd$1;->zzbyC:Lcom/google/android/gms/internal/zzawt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawt;->zzOo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;->onEndpointFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb$zzd$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)V

    return-void
.end method
