.class abstract Lcom/google/android/gms/internal/zzadn$zzb;
.super Lcom/google/android/gms/internal/zzaad$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzadn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzaad$zza",
        "<TR;",
        "Lcom/google/android/gms/internal/zzadp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzadh;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzaad$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzadz;)V
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

    check-cast p1, Lcom/google/android/gms/internal/zzadp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzadn$zzb;->zza(Lcom/google/android/gms/internal/zzadp;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzadp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzadp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzadp;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzadz;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzadn$zzb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzadz;)V

    return-void
.end method
