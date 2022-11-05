.class Lcom/google/android/gms/nearby/messages/internal/zzy$6;
.super Lcom/google/android/gms/nearby/messages/internal/zzy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzy;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUQ:Landroid/app/PendingIntent;

.field final synthetic zzbAW:Lcom/google/android/gms/internal/zzabh;

.field final synthetic zzbAY:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzy;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$6;->zzaUQ:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$6;->zzbAW:Lcom/google/android/gms/internal/zzabh;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$6;->zzbAY:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzy$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzy$6;->zza(Lcom/google/android/gms/nearby/messages/internal/zzx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzy$6;->zzOP()Lcom/google/android/gms/internal/zzabh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$6;->zzaUQ:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$6;->zzbAW:Lcom/google/android/gms/internal/zzabh;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$6;->zzbAY:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/nearby/messages/internal/zzx;->zza(Lcom/google/android/gms/internal/zzabh;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V

    return-void
.end method
