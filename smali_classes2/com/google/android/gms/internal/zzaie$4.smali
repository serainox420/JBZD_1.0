.class Lcom/google/android/gms/internal/zzaie$4;
.super Lcom/google/android/gms/internal/zzaie$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaie;->updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNB:Lcom/google/android/gms/internal/zzaie;

.field final synthetic zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaie;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaie$4;->zzaNB:Lcom/google/android/gms/internal/zzaie;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaie$4;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzaie$zzd;-><init>(Lcom/google/android/gms/internal/zzaie;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzaie$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaie$4;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaie$4;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzAE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaln;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaie$4;->zzaNB:Lcom/google/android/gms/internal/zzaie;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaie;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaie$4;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzAE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaln;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaie$zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzaie$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzaln;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
