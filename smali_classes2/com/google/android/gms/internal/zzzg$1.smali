.class Lcom/google/android/gms/internal/zzzg$1;
.super Lcom/google/android/gms/internal/zzzj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzzg;->zza(Lcom/google/android/gms/internal/zzzh;Lcom/google/android/gms/internal/zzzj;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaxn:Lcom/google/android/gms/internal/zzzj;

.field final synthetic zzaxo:Lcom/google/android/gms/internal/zzzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzg;Lcom/google/android/gms/internal/zzzj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzg$1;->zzaxo:Lcom/google/android/gms/internal/zzzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzg$1;->zzaxn:Lcom/google/android/gms/internal/zzzj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzzj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzcp(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzzg;->zzuR()Lcom/google/android/gms/internal/zzyz;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzg$1;->zzaxn:Lcom/google/android/gms/internal/zzzj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzg$1;->zzaxn:Lcom/google/android/gms/internal/zzzj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzzj;->zzcp(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzg$1;->zzaxo:Lcom/google/android/gms/internal/zzzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzg;->zzb(Lcom/google/android/gms/internal/zzzg;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzg$1;->zzaxo:Lcom/google/android/gms/internal/zzzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzg;->zzb(Lcom/google/android/gms/internal/zzzg;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
