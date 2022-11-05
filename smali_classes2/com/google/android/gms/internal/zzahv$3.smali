.class Lcom/google/android/gms/internal/zzahv$3;
.super Lcom/google/android/gms/internal/zzahv$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahv;->fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaMK:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahv;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahv$3;->zzaMK:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahv$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahv$3;->zza(Lcom/google/android/gms/internal/zzahx;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzair;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahv$3;->zzaMK:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/drive/DriveId;->zzdD(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzair;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v2, Lcom/google/android/gms/internal/zzahv$zzd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzahv$zzd;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzair;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
