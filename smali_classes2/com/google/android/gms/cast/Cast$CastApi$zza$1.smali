.class Lcom/google/android/gms/cast/Cast$CastApi$zza$1;
.super Lcom/google/android/gms/internal/zzyv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$zza;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzII:Ljava/lang/String;

.field final synthetic zzanb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$1;->zzanb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$1;->zzII:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzyv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzyq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$zza$1;->zza(Lcom/google/android/gms/internal/zzyq;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzyq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$1;->zzanb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/Cast$CastApi$zza$1;->zzII:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/zzyq;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaad$zzb;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$zza$1;->zzck(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
