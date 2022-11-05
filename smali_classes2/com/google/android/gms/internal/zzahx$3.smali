.class Lcom/google/android/gms/internal/zzahx$3;
.super Lcom/google/android/gms/internal/zzahw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzago;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaMY:Lcom/google/android/gms/internal/zzago;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzago;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahx$3;->zzaMY:Lcom/google/android/gms/internal/zzago;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahw$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzahx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahx$3;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx$3;->zzaMY:Lcom/google/android/gms/internal/zzago;

    new-instance v2, Lcom/google/android/gms/internal/zzalc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzalc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzago;Lcom/google/android/gms/internal/zzaiz;Ljava/lang/String;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
