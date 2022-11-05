.class public Lcom/google/android/gms/cast/framework/ReconnectionService;
.super Landroid/app/Service;


# static fields
.field private static final zzapV:Lcom/google/android/gms/internal/zzyz;


# instance fields
.field private zzaqC:Lcom/google/android/gms/cast/framework/zzl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "ReconnectionService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzapV:Lcom/google/android/gms/internal/zzyz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzaqC:Lcom/google/android/gms/cast/framework/zzl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/zzl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onBind"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/SessionManager;->zzsE()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->zzsD()Lcom/google/android/gms/cast/framework/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/zzd;->zzsE()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/zzwv;->zza(Landroid/app/Service;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzaqC:Lcom/google/android/gms/cast/framework/zzl;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzaqC:Lcom/google/android/gms/cast/framework/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzl;->onCreate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onCreate"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzaqC:Lcom/google/android/gms/cast/framework/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzl;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "onDestroy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzaqC:Lcom/google/android/gms/cast/framework/zzl;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/cast/framework/zzl;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/android/gms/cast/framework/ReconnectionService;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v3, "Unable to call %s on %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "onStartCommand"

    aput-object v6, v4, v5

    const-class v5, Lcom/google/android/gms/cast/framework/zzl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
