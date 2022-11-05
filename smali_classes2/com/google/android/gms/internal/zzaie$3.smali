.class Lcom/google/android/gms/internal/zzaie$3;
.super Lcom/google/android/gms/internal/zzahw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaie;->setParents(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Set;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNB:Lcom/google/android/gms/internal/zzaie;

.field final synthetic zzaNC:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaie;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaie$3;->zzaNB:Lcom/google/android/gms/internal/zzaie;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaie$3;->zzaNC:Ljava/util/List;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaie$3;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzala;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaie$3;->zzaNB:Lcom/google/android/gms/internal/zzaie;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaie;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaie$3;->zzaNC:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzala;-><init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/zzalc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzalc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzala;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
