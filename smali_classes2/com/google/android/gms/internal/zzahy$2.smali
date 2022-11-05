.class Lcom/google/android/gms/internal/zzahy$2;
.super Lcom/google/android/gms/internal/zzahw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahy;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzl;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNh:Lcom/google/android/gms/internal/zzahy;

.field final synthetic zzaNi:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzaNj:Lcom/google/android/gms/drive/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNh:Lcom/google/android/gms/internal/zzahy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNi:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNj:Lcom/google/android/gms/drive/zzl;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahy$2;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNi:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzAE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/zzahb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNh:Lcom/google/android/gms/internal/zzahy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzahy;->zza(Lcom/google/android/gms/internal/zzahy;)Lcom/google/android/gms/drive/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNi:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzAE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNh:Lcom/google/android/gms/internal/zzahy;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzahy;->zza(Lcom/google/android/gms/internal/zzahy;)Lcom/google/android/gms/drive/zzc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNh:Lcom/google/android/gms/internal/zzahy;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzahy;->zza(Lcom/google/android/gms/internal/zzahy;)Lcom/google/android/gms/drive/zzc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/drive/zzc;->zzAo()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzahy$2;->zzaNj:Lcom/google/android/gms/drive/zzl;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzahb;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzl;)V

    new-instance v1, Lcom/google/android/gms/internal/zzalc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzalc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v6, v0, v1}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzahb;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
