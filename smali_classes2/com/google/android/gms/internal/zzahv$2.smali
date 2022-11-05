.class Lcom/google/android/gms/internal/zzahv$2;
.super Lcom/google/android/gms/internal/zzahv$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahv;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaMJ:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahv;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/zzahv$2;->zzaMJ:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahv$2;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzahh;

    iget v2, p0, Lcom/google/android/gms/internal/zzahv$2;->zzaMJ:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzahh;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/zzahv$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzahv$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzahh;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
