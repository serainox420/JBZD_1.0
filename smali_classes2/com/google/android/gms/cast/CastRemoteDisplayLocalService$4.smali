.class final Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->startServiceWithOptions(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzanU:Lcom/google/android/gms/cast/CastDevice;

.field final synthetic zzanV:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;

.field final synthetic zzanW:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

.field final synthetic zzanX:Landroid/content/Context;

.field final synthetic zzanY:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

.field final synthetic zzanc:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanU:Lcom/google/android/gms/cast/CastDevice;

    iput-object p3, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanV:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;

    iput-object p4, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanW:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iput-object p5, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanX:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanY:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    const/4 v8, 0x0

    check-cast p2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;->zzsw()Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanU:Lcom/google/android/gms/cast/CastDevice;

    iget-object v3, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanV:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;

    iget-object v4, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanW:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iget-object v5, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanX:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanY:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzss()Lcom/google/android/gms/internal/zzyz;

    move-result-object v0

    const-string v1, "Connected but unable to get the service instance"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanY:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x898

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onRemoteDisplaySessionError(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzst()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanX:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzss()Lcom/google/android/gms/internal/zzyz;

    move-result-object v0

    const-string v1, "No need to unbind service, already unbound"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzss()Lcom/google/android/gms/internal/zzyz;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanY:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x899

    const-string v3, "Service Disconnected"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onRemoteDisplaySessionError(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzst()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;->zzanX:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzss()Lcom/google/android/gms/internal/zzyz;

    move-result-object v0

    const-string v1, "No need to unbind service, already unbound"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
