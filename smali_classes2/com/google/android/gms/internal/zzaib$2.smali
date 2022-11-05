.class Lcom/google/android/gms/internal/zzaib$2;
.super Lcom/google/android/gms/internal/zzaib$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaib;->createFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzaNt:Lcom/google/android/gms/internal/zzaib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaib;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaib$2;->zzaNt:Lcom/google/android/gms/internal/zzaib;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaib$2;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaib$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaib$2;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaib$2;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzAE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaho;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaib$2;->zzaNt:Lcom/google/android/gms/internal/zzaib;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaib;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaib$2;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzAE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaho;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaib$zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzaib$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzaho;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
