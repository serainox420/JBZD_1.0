.class Lcom/google/android/gms/internal/zzahx$4;
.super Lcom/google/android/gms/internal/zzahw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNb:Lcom/google/android/gms/drive/DriveId;

.field final synthetic zzaNc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahx$4;->zzaNb:Lcom/google/android/gms/drive/DriveId;

    iput p4, p0, Lcom/google/android/gms/internal/zzahx$4;->zzaNc:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahx$4;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaks;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahx$4;->zzaNb:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/internal/zzahx$4;->zzaNc:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaks;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v2, Lcom/google/android/gms/internal/zzalc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzalc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzaiz;Ljava/lang/String;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
