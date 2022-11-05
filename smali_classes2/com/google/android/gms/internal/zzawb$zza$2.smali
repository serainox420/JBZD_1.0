.class Lcom/google/android/gms/internal/zzawb$zza$2;
.super Lcom/google/android/gms/internal/zzawb$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawb$zza;->zza(Lcom/google/android/gms/internal/zzaxd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzawb$zze",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbyv:Lcom/google/android/gms/internal/zzaxd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawb$zza;Lcom/google/android/gms/internal/zzaxd;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawb$zza$2;->zzbyv:Lcom/google/android/gms/internal/zzaxd;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawb$zze;-><init>(Lcom/google/android/gms/internal/zzawb$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zza$2;->zzbyv:Lcom/google/android/gms/internal/zzaxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxd;->getReason()I

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb$zza$2;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V

    return-void
.end method
