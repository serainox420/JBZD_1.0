.class final Lcom/google/android/gms/internal/zzum$zzc;
.super Lcom/google/android/gms/internal/zzum$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzum$zzb",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaij:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzum;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzum$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzum$zzc;->zzaij:Ljava/lang/String;

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

    check-cast p1, Lcom/google/android/gms/internal/zzun;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzum$zzc;->zza(Lcom/google/android/gms/internal/zzun;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzun;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzum$zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzum$zzc$1;-><init>(Lcom/google/android/gms/internal/zzum$zzc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzum$zzc;->zzaij:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzun;->zzb(Lcom/google/android/gms/internal/zzup;Ljava/lang/String;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzum$zzc;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
