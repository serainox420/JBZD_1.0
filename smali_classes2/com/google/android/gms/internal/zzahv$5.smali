.class Lcom/google/android/gms/internal/zzahv$5;
.super Lcom/google/android/gms/internal/zzahw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahv;->isAutobackupEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzahw",
        "<",
        "Lcom/google/android/gms/common/api/BooleanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahv;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BooleanResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/BooleanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzahx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahv$5;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzahv$5$1;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/zzahv$5$1;-><init>(Lcom/google/android/gms/internal/zzahv$5;Lcom/google/android/gms/internal/zzahw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaix;->zze(Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahv$5;->zzM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BooleanResult;

    move-result-object v0

    return-object v0
.end method
