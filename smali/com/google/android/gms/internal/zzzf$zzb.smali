.class abstract Lcom/google/android/gms/internal/zzzf$zzb;
.super Lcom/google/android/gms/internal/zzaad$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzf$zzb$zzb;,
        Lcom/google/android/gms/internal/zzzf$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaad$zza",
        "<",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
        "Lcom/google/android/gms/internal/zzzg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaxi:Lcom/google/android/gms/internal/zzzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzzf;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf$zzb;->zzaxi:Lcom/google/android/gms/internal/zzzf;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzf;->zzc(Lcom/google/android/gms/internal/zzzf;)Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzaad$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzzg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzf$zzb;->zza(Lcom/google/android/gms/internal/zzzg;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzzg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzf$zzb;->zzu(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzu(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzzf$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzzf$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
