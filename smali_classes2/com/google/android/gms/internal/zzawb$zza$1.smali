.class Lcom/google/android/gms/internal/zzawb$zza$1;
.super Lcom/google/android/gms/internal/zzawb$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawb$zza;->zza(Lcom/google/android/gms/internal/zzawn;)V
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
.field final synthetic zzbyu:Lcom/google/android/gms/internal/zzawn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawb$zza;Lcom/google/android/gms/internal/zzawn;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawb$zza$1;->zzbyu:Lcom/google/android/gms/internal/zzawn;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzawb$zze;-><init>(Lcom/google/android/gms/internal/zzawb$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zza$1;->zzbyu:Lcom/google/android/gms/internal/zzawn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzawn;->zzOf()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawb$zza$1;->zzbyu:Lcom/google/android/gms/internal/zzawn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzawn;->zzOl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawb$zza$1;->zzbyu:Lcom/google/android/gms/internal/zzawn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawn;->zzOg()[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb$zza$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V

    return-void
.end method
