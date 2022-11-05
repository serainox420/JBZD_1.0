.class Lcom/google/android/gms/internal/zzahx$2;
.super Lcom/google/android/gms/internal/zzahw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaMZ:Lcom/google/android/gms/internal/zzaii;

.field final synthetic zzaNa:Lcom/google/android/gms/internal/zzaks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzaii;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahx$2;->zzaNa:Lcom/google/android/gms/internal/zzaks;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahx$2;->zzaMZ:Lcom/google/android/gms/internal/zzaii;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahx$2;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx$2;->zzaNa:Lcom/google/android/gms/internal/zzaks;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahx$2;->zzaMZ:Lcom/google/android/gms/internal/zzaii;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/internal/zzalc;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzalc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzaiz;Ljava/lang/String;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
