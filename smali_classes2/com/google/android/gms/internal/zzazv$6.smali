.class Lcom/google/android/gms/internal/zzazv$6;
.super Lcom/google/android/gms/internal/zzazv$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzazv;->verifyWithRecaptcha(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazv;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazv$6;->zzbDp:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzazv$zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzazw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzazv$6;->zza(Lcom/google/android/gms/internal/zzazw;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzazw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazv$6;->zzbDr:Lcom/google/android/gms/internal/zzazt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazv$6;->zzbDp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzazw;->zza(Lcom/google/android/gms/internal/zzazt;Ljava/lang/String;)V

    return-void
.end method
