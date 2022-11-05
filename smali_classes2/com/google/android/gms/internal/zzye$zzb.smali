.class public abstract Lcom/google/android/gms/internal/zzye$zzb;
.super Lcom/google/android/gms/internal/zzyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzyn",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected zzapH:Lcom/google/android/gms/internal/zzzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzye;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzye;->zzb(Lcom/google/android/gms/internal/zzye;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzyn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzyq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzye$zzb;->zza(Lcom/google/android/gms/internal/zzyq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzyq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzye$zzb;->execute()V

    return-void
.end method

.method public zzuq()Lcom/google/android/gms/internal/zzzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye$zzb;->zzapH:Lcom/google/android/gms/internal/zzzc;

    return-object v0
.end method
