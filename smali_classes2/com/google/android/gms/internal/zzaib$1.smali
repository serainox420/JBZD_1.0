.class Lcom/google/android/gms/internal/zzaib$1;
.super Lcom/google/android/gms/internal/zzaib$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaib;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;ILcom/google/android/gms/drive/zzk;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzaNq:I

.field final synthetic zzaNr:I

.field final synthetic zzaNs:Lcom/google/android/gms/drive/zzk;

.field final synthetic zzaNt:Lcom/google/android/gms/internal/zzaib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaib;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNt:Lcom/google/android/gms/internal/zzaib;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNq:I

    iput p5, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNr:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNs:Lcom/google/android/gms/drive/zzk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaib$zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaib$1;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzAE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzahm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNt:Lcom/google/android/gms/internal/zzaib;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaib;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNp:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzAE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNq:I

    iget v4, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNr:I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaib$1;->zzaNs:Lcom/google/android/gms/drive/zzk;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzahm;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaib$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzaib$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzahm;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
