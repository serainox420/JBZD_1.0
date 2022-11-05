.class Lcom/google/android/gms/internal/zzawb$zzb;
.super Lcom/google/android/gms/internal/zzawg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzawb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzbyw:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$zza;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawg$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawb$zzb;->zzbyw:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzawr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzb;->zzbyw:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzb$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zzb$2;-><init>(Lcom/google/android/gms/internal/zzawb$zzb;Lcom/google/android/gms/internal/zzawr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzawx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzb;->zzbyw:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzb$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zzb$1;-><init>(Lcom/google/android/gms/internal/zzawb$zzb;Lcom/google/android/gms/internal/zzawx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzawz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzb;->zzbyw:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzb$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zzb$3;-><init>(Lcom/google/android/gms/internal/zzawb$zzb;Lcom/google/android/gms/internal/zzawz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method
