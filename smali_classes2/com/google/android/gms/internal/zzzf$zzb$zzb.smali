.class public final Lcom/google/android/gms/internal/zzzf$zzb$zzb;
.super Lcom/google/android/gms/internal/zzzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzf$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzaxk:Lcom/google/android/gms/internal/zzzf$zzb;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzzf$zzb;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf$zzb$zzb;->zzaxk:Lcom/google/android/gms/internal/zzzf$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzzf$zzb;->zzaxi:Lcom/google/android/gms/internal/zzzf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzf$zza;-><init>(Lcom/google/android/gms/internal/zzzf;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzzf;->zzuR()Lcom/google/android/gms/internal/zzyz;

    move-result-object v0

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zzb$zzb;->zzaxk:Lcom/google/android/gms/internal/zzzf$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzzf$zzb;->zzaxi:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzf;->zza(Lcom/google/android/gms/internal/zzzf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zzb$zzb;->zzaxk:Lcom/google/android/gms/internal/zzzf$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzzf$zzc;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzzf$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzzf$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public onError(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzzf;->zzuR()Lcom/google/android/gms/internal/zzyz;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zzb$zzb;->zzaxk:Lcom/google/android/gms/internal/zzzf$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzzf$zzb;->zzaxi:Lcom/google/android/gms/internal/zzzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzf;->zza(Lcom/google/android/gms/internal/zzzf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zzb$zzb;->zzaxk:Lcom/google/android/gms/internal/zzzf$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzzf$zzc;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzazz:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzzf$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzzf$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
