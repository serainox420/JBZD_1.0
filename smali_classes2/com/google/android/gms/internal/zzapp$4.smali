.class Lcom/google/android/gms/internal/zzapp$4;
.super Lcom/google/android/gms/internal/zzaoj$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/zzs;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzapp$zza;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUQ:Landroid/app/PendingIntent;

.field final synthetic zzaVe:Lcom/google/android/gms/internal/zzapp$zza;

.field final synthetic zzaVf:Lcom/google/android/gms/fitness/data/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapp;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzapp$zza;Lcom/google/android/gms/fitness/data/zzs;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapp$4;->zzaVe:Lcom/google/android/gms/internal/zzapp$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzapp$4;->zzaVf:Lcom/google/android/gms/fitness/data/zzs;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzapp$4;->zzaUQ:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaoj$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzaoj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapp$4;->zza(Lcom/google/android/gms/internal/zzaoj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaoj;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzapp$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp$4;->zzaVe:Lcom/google/android/gms/internal/zzapp$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/zzapp$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapp$zza;Lcom/google/android/gms/internal/zzapp$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoj;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoy;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzax;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapp$4;->zzaVf:Lcom/google/android/gms/fitness/data/zzs;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapp$4;->zzaUQ:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/zzax;-><init>(Lcom/google/android/gms/fitness/data/zzs;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzapf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaoy;->zza(Lcom/google/android/gms/fitness/request/zzax;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapp$4;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
