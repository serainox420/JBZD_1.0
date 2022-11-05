.class abstract Lcom/google/android/gms/internal/zzayu$zzc;
.super Lcom/google/android/gms/internal/zzaad$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzayu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzaad$zza",
        "<TR;",
        "Lcom/google/android/gms/internal/zzayv;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/panorama/Panorama;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzaad$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzayt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzayv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayu$zzc;->zza(Lcom/google/android/gms/internal/zzayv;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzayv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzayv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzayv;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzayt;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzayu$zzc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzayt;)V

    return-void
.end method
