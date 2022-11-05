.class Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;
.super Landroid/support/v7/media/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-direct {p0}, Landroid/support/v7/media/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteUnselected(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const-string v1, "onRouteUnselected"

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const-string v1, "onRouteUnselected, no device was selected"

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/media/g$g;->u()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-static {v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;->zzanT:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const-string v1, "onRouteUnselected, device does not match"

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopService()V

    goto :goto_0
.end method
