.class Lcom/google/android/gms/internal/zzawb$zzb$2;
.super Lcom/google/android/gms/internal/zzawb$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawb$zzb;->zza(Lcom/google/android/gms/internal/zzawr;)V
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
.field final synthetic zzbyy:Lcom/google/android/gms/internal/zzawr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawb$zzb;Lcom/google/android/gms/internal/zzawr;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawb$zzb$2;->zzbyy:Lcom/google/android/gms/internal/zzawr;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawb$zze;-><init>(Lcom/google/android/gms/internal/zzawb$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzb$2;->zzbyy:Lcom/google/android/gms/internal/zzawr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawr;->zzOf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/connection/Connections$zza;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb$zzb$2;->zza(Lcom/google/android/gms/nearby/connection/Connections$zza;)V

    return-void
.end method
