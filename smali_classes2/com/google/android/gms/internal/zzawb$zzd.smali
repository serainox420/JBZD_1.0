.class final Lcom/google/android/gms/internal/zzawb$zzd;
.super Lcom/google/android/gms/internal/zzawi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzawb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzd"
.end annotation


# instance fields
.field private final zzbyt:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawi$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzd;->zzbyt:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzawt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzd;->zzbyt:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzd$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zzd$1;-><init>(Lcom/google/android/gms/internal/zzawb$zzd;Lcom/google/android/gms/internal/zzawt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzawv;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzd;->zzbyt:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzd$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zzd$2;-><init>(Lcom/google/android/gms/internal/zzawb$zzd;Lcom/google/android/gms/internal/zzawv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaxf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzd;->zzbyt:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzd$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zzd$3;-><init>(Lcom/google/android/gms/internal/zzawb$zzd;Lcom/google/android/gms/internal/zzaxf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method
