.class Lcom/google/android/gms/internal/zzahz$1;
.super Lcom/google/android/gms/internal/zzahv$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahz;->open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaMJ:I

.field final synthetic zzaNk:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field final synthetic zzaNl:Lcom/google/android/gms/internal/zzahz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahz;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahz$1;->zzaNl:Lcom/google/android/gms/internal/zzahz;

    iput p3, p0, Lcom/google/android/gms/internal/zzahz$1;->zzaMJ:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahz$1;->zzaNk:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahv$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahz$1;->zza(Lcom/google/android/gms/internal/zzahx;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzakj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahz$1;->zzaNl:Lcom/google/android/gms/internal/zzahz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzahz;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzahz$1;->zzaMJ:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzakj;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/internal/zzakl;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzahz$1;->zzaNk:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/zzakl;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzakj;Lcom/google/android/gms/internal/zzaiy;)Lcom/google/android/gms/internal/zzaig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaig;->zzBc()Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzahz$1;->zza(Lcom/google/android/gms/common/internal/zzs;)V

    return-void
.end method
