.class Lcom/google/android/gms/internal/zzaib$zzb;
.super Lcom/google/android/gms/internal/zzagu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaib$zzb;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaib$zzb;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzaib$zze;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzaib$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzajn;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaib$zzb;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzaib$zze;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/internal/zzaib;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzajn;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzaib;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaib$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
