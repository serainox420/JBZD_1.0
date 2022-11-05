.class Lcom/google/android/gms/internal/zzawb$zzb$3;
.super Lcom/google/android/gms/internal/zzawb$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawb$zzb;->zza(Lcom/google/android/gms/internal/zzawz;)V
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
.field final synthetic zzbyz:Lcom/google/android/gms/internal/zzawz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawb$zzb;Lcom/google/android/gms/internal/zzawz;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawb$zzb$3;->zzbyz:Lcom/google/android/gms/internal/zzawz;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawb$zze;-><init>(Lcom/google/android/gms/internal/zzawb$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzb$3;->zzbyz:Lcom/google/android/gms/internal/zzawz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawz;->zzOf()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzb$3;->zzbyz:Lcom/google/android/gms/internal/zzawz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawz;->zzOr()Lcom/google/android/gms/nearby/connection/zzh;

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb$zzb$3;->zza(Lcom/google/android/gms/nearby/connection/Connections$zza;)V

    return-void
.end method
