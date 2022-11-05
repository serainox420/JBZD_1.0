.class public abstract Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
.super Landroid/app/Service;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;,
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;,
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;,
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;,
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;
    }
.end annotation


# static fields
.field private static final zzanA:Lcom/google/android/gms/internal/zzyz;

.field private static final zzanB:I

.field private static final zzanC:Ljava/lang/Object;

.field private static zzanD:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNotification:Landroid/app/Notification;

.field private zzOq:Landroid/view/Display;

.field private zzamX:Ljava/lang/String;

.field private zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private zzanF:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

.field private zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

.field private zzanH:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

.field private zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

.field private zzanJ:Z

.field private zzanK:Landroid/app/PendingIntent;

.field private zzanL:Lcom/google/android/gms/cast/CastDevice;

.field private zzanM:Landroid/content/Context;

.field private zzanN:Landroid/content/ServiceConnection;

.field private zzanO:Landroid/support/v7/media/g;

.field private zzanP:Z

.field private final zzanQ:Landroid/support/v7/media/g$a;

.field private final zzanS:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "CastRemoteDisplayLocalService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzsk()I

    move-result v0

    sput v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanB:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanC:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanD:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanP:Z

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanQ:Landroid/support/v7/media/g$a;

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanS:Landroid/os/IBinder;

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
    .locals 2

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanC:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static setDebugEnabled()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzyz;->zzar(Z)V

    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/CastDevice;",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;",
            ")V"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;

    invoke-direct {v4}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->startServiceWithOptions(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V

    return-void
.end method

.method public static startServiceWithOptions(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/CastDevice;",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "Starting Service"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanC:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "An existing service had not been stopped before starting one"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzai(Z)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "activityContext is required."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "serviceClass is required."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationId is required."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device is required."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "options is required."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notificationSettings is required."

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callbacks is required."

    invoke-static {p6, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p5}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zze(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "notificationSettings: Either the notification or the notificationPendingIntent must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "Service is already being started, startService has been called twice"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p0

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;-><init>(Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V

    const/16 v1, 0x40

    invoke-virtual {p0, v7, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public static stopService()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzai(Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanM:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanN:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanL:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 4

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanF:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;)V

    if-eqz p2, :cond_0

    iget v1, p2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;->zzanx:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;->setConfigPreset(I)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;

    :cond_0
    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$10;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$10;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    new-instance v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    new-instance v3, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplay;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;->build()Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The service must not be exported, verify the manifest configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not found, did you forget to configure it in the manifest?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private zza(Landroid/view/Display;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzOq:Landroid/view/Display;

    iget-boolean v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzaj(Z)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    sget v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanB:I

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    invoke-interface {v0, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onRemoteDisplaySessionStarted(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzOq:Landroid/view/Display;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->onCreatePresentation(Landroid/view/Display;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)V
    .locals 2

    const-string v0, "updateNotificationSettingsInternal must be called on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current notification settings to update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanJ:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current mode is default notification, notification attribute must not be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zze(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zze(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzaj(Z)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    :goto_0
    sget v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanB:I

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->startForeground(ILandroid/app/Notification;)V

    return-void

    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    const-string v1, "notification is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/app/Notification;)Landroid/app/Notification;

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Landroid/view/Display;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzah(Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)Z
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)Z

    move-result v0

    return v0
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "startRemoteDisplaySession"

    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    const-string v2, "Starting the Cast Remote Display must be done on the main thread"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanC:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    if-eqz v3, :cond_0

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v3, "An existing service had not been stopped before starting one"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzyz;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    sput-object p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p7, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzamX:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanL:Lcom/google/android/gms/cast/CastDevice;

    iput-object p5, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanM:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanN:Landroid/content/ServiceConnection;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/media/g;->a(Landroid/content/Context;)Landroid/support/v7/media/g;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanO:Landroid/support/v7/media/g;

    new-instance v2, Landroid/support/v7/media/f$a;

    invoke-direct {v2}, Landroid/support/v7/media/f$a;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzamX:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/media/f$a;->a(Ljava/lang/String;)Landroid/support/v7/media/f$a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/media/f$a;->a()Landroid/support/v7/media/f;

    move-result-object v2

    const-string v3, "addMediaRouterCallback"

    invoke-direct {p0, v3}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanO:Landroid/support/v7/media/g;

    iget-object v4, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanQ:Landroid/support/v7/media/g$a;

    const/4 v5, 0x4

    invoke-virtual {v3, v2, v4, v5}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;I)V

    new-instance v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$7;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanF:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    invoke-static {p4}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    new-instance v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    invoke-direct {v2, v6}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanH:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    iget-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanH:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-direct {v2, p4, v6}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iget-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v2

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanJ:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzaj(Z)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    :goto_1
    sget v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanB:I

    iget-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->startForeground(ILandroid/app/Notification;)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    invoke-interface {v0, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onServiceCreated(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanJ:Z

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    goto :goto_1
.end method

.method private zzag(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$5;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzah(Z)V

    goto :goto_0
.end method

.method private zzah(Z)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Stopping Service"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    const-string v0, "stopServiceInstanceInternal must be called on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanO:Landroid/support/v7/media/g;

    if-eqz v0, :cond_0

    const-string v0, "Setting default route"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanO:Landroid/support/v7/media/g;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanO:Landroid/support/v7/media/g;

    invoke-virtual {v1}, Landroid/support/v7/media/g;->b()Landroid/support/v7/media/g$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/g$g;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanH:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    if-eqz v0, :cond_1

    const-string v0, "Unregistering notification receiver"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanH:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzsp()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzsq()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzsl()V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanM:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanN:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanM:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanN:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanN:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanM:Landroid/content/Context;

    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzamX:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    iput-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzOq:Landroid/view/Display;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "No need to unbind service, already unbound"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static zzai(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "Stopping Service"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanC:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Service is already being stopped"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzag(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zzaj(Z)Landroid/app/Notification;
    .locals 7

    const/4 v6, 0x1

    const-string v0, "createDefaultNotification"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    sget v1, Lcom/google/android/gms/R$string;->cast_notification_connected_message:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_on:I

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanL:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Landroid/support/v4/app/aj$d;

    invoke-direct {v3, p0}, Landroid/support/v4/app/aj$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/aj$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanI:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zze(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/aj$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/aj$d;->a(Z)Landroid/support/v4/app/aj$d;

    move-result-object v0

    const v1, 0x1080038

    sget v2, Lcom/google/android/gms/R$string;->cast_notification_disconnect:I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzsr()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/aj$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aj$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_1
    sget v1, Lcom/google/android/gms/R$string;->cast_notification_connecting_message:I

    sget v0, Lcom/google/android/gms/R$drawable;->cast_ic_notification_connecting:I

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic zzak(Z)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzai(Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/view/Display;)Landroid/view/Display;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzOq:Landroid/view/Display;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbT(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanP:Z

    return v0
.end method

.method private zzbQ(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "[Instance: %s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private zzbT(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "[Instance: %s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzso()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanM:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanN:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzsm()V

    return-void
.end method

.method private static zzsk()I
    .locals 1

    sget v0, Lcom/google/android/gms/R$id;->cast_notification_id:I

    return v0
.end method

.method private zzsl()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanO:Landroid/support/v7/media/g;

    if-eqz v0, :cond_0

    const-string v0, "CastRemoteDisplayLocalService calls must be done on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    const-string v0, "removeMediaRouterCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanO:Landroid/support/v7/media/g;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanQ:Landroid/support/v7/media/g$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/g$a;)V

    :cond_0
    return-void
.end method

.method private zzsm()V
    .locals 3

    const-string v0, "startRemoteDisplay"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "Unable to start the remote display as the API client is not ready"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->CastRemoteDisplayApi:Lcom/google/android/gms/cast/CastRemoteDisplayApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzamX:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/CastRemoteDisplayApi;->startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$8;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method

.method private zzsn()V
    .locals 3

    const-string v0, "stopRemoteDisplay"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "Unable to stop the remote display as the API client is not ready"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->CastRemoteDisplayApi:Lcom/google/android/gms/cast/CastRemoteDisplayApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanE:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayApi;->stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$9;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$9;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method

.method private zzso()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x898

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onRemoteDisplaySessionError(Lcom/google/android/gms/common/api/Status;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanG:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopService()V

    return-void
.end method

.method private zzsp()V
    .locals 1

    const-string v0, "stopRemoteDisplaySession"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzsn()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->onDismissPresentation()V

    return-void
.end method

.method private zzsq()V
    .locals 1

    const-string v0, "Stopping the remote display Service"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopSelf()V

    return-void
.end method

.method private zzsr()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanK:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanM:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanK:Landroid/app/PendingIntent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanK:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic zzss()Lcom/google/android/gms/internal/zzyz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanA:Lcom/google/android/gms/internal/zzyz;

    return-object v0
.end method

.method static synthetic zzst()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanD:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic zzsu()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanC:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzsv()Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanR:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    return-object v0
.end method


# virtual methods
.method protected getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzOq:Landroid/view/Display;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "onBind"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanS:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$3;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract onCreatePresentation(Landroid/view/Display;)V
.end method

.method public abstract onDismissPresentation()V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string v0, "onStartCommand"

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzbQ(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzanP:Z

    const/4 v0, 0x2

    return v0
.end method

.method public updateNotificationSettings(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)V
    .locals 2

    const-string v0, "notificationSettings is required."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mHandler:Landroid/os/Handler;

    const-string v1, "Service is not ready yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$6;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
