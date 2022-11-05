.class final Lcom/google/android/gms/internal/zzawb$zza;
.super Lcom/google/android/gms/internal/zzawf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzawb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# instance fields
.field private final zzbyt:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
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
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawf$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawb$zza;->zzbyt:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzawn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zza;->zzbyt:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zza$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zza$1;-><init>(Lcom/google/android/gms/internal/zzawb$zza;Lcom/google/android/gms/internal/zzawn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaxd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zza;->zzbyt:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zza$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zza$2;-><init>(Lcom/google/android/gms/internal/zzawb$zza;Lcom/google/android/gms/internal/zzaxd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method
