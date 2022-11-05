.class Lcom/google/android/gms/internal/zzul$1;
.super Lcom/google/android/gms/internal/zzul$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/zzud;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzul$zzc",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzahX:[Lcom/google/android/gms/internal/zzud;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzul;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/zzud;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzul$1;->zzahX:[Lcom/google/android/gms/internal/zzud;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzul$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzug;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzul$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzul$zzd;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzul$1;->zzahX:[Lcom/google/android/gms/internal/zzud;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzug;->zza(Lcom/google/android/gms/internal/zzuh;Ljava/lang/String;[Lcom/google/android/gms/internal/zzud;)V

    return-void
.end method
