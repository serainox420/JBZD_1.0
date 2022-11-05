.class public Lcom/google/android/gms/internal/zzahx;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/internal/zzaix;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaMO:Landroid/os/Bundle;

.field private final zzaMP:Z

.field private volatile zzaMQ:Lcom/google/android/gms/drive/DriveId;

.field private volatile zzaMR:Lcom/google/android/gms/drive/DriveId;

.field private volatile zzaMS:Z

.field final zzaMT:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field final zzaMU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            "Lcom/google/android/gms/internal/zzaii;",
            ">;>;"
        }
    .end annotation
.end field

.field final zzaMV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/drive/events/zzd;",
            "Lcom/google/android/gms/internal/zzaii;",
            ">;"
        }
    .end annotation
.end field

.field final zzaMW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzaii;",
            ">;>;"
        }
    .end annotation
.end field

.field final zzaMX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzaii;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaiq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v3, 0xb

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/zzahx;->zzaMS:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMV:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMW:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMX:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->zzxO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaiq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahx;->zzaMT:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzahx;->zzaMO:Landroid/os/Bundle;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.drive.events.HANDLE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AndroidManifest.xml can only define one service that handles the "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " action"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iput-boolean v7, p0, Lcom/google/android/gms/internal/zzahx;->zzaMP:Z

    :goto_0
    return-void

    :pswitch_1
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Drive event service "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must be exported in AndroidManifest.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMP:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Lcom/google/android/gms/drive/DriveId;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/google/android/gms/drive/events/zzi;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzahx$4;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/google/android/gms/internal/zzahx$4;-><init>(Lcom/google/android/gms/internal/zzahx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzago;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/internal/zzago;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzago;->getEventType()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzago;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/drive/events/zzi;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMP:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application must define an exported DriveEventService subclass in AndroidManifest.xml to add event subscriptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzahx$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzahx$3;-><init>(Lcom/google/android/gms/internal/zzahx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzago;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzago;Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/internal/zzago;",
            "Lcom/google/android/gms/internal/zzaii;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzahx$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzahx$1;-><init>(Lcom/google/android/gms/internal/zzahx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzago;Lcom/google/android/gms/internal/zzaii;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/internal/zzaks;",
            "Lcom/google/android/gms/internal/zzaii;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzahx$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzahx$2;-><init>(Lcom/google/android/gms/internal/zzahx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzaii;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method cancelPendingActions(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzahx$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzahx$5;-><init>(Lcom/google/android/gms/internal/zzahx;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public disconnect()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaix;

    new-instance v1, Lcom/google/android/gms/internal/zzaht;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaht;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzaht;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->disconnect()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx;->zzaMV:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx;->zzaMW:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx;->zzaMX:Ljava/util/Map;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method zzAW()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/zzy;->zzf(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public zzAX()Lcom/google/android/gms/internal/zzaix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaix;

    return-object v0
.end method

.method public zzAY()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMQ:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public zzAZ()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMR:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public zzBa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMS:Z

    return v0
.end method

.method public zzBb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMP:Z

    return v0
.end method

.method zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/DriveId;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzago;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzago;-><init>(ILcom/google/android/gms/drive/DriveId;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzahx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzago;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/DriveId;",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/google/android/gms/drive/events/zzi;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaii;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaii;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5, p3}, Lcom/google/android/gms/internal/zzaii;-><init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzh;)V

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaii;->zzeQ(I)V

    new-instance v1, Lcom/google/android/gms/internal/zzago;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p2}, Lcom/google/android/gms/internal/zzago;-><init>(ILcom/google/android/gms/drive/DriveId;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzahx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzago;Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaii;->zzeR(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzahv$zzj;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzahv$zzj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.google.android.gms.drive.root_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMQ:Lcom/google/android/gms/drive/DriveId;

    const-string v0, "com.google.android.gms.drive.appdata_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMR:Lcom/google/android/gms/drive/DriveId;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMS:Z

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzl;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/DriveId;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzahx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/events/ChangeListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/DriveId;",
            "Lcom/google/android/gms/drive/events/ChangeListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/google/android/gms/drive/events/zzi;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzahv$zzj;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzahv$zzj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaii;

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzahv$zzj;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzahv$zzj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahx;->zzaMU:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzaks;

    const/4 v3, 0x1

    invoke-direct {v0, p2, v3}, Lcom/google/android/gms/internal/zzaks;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzahx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzaks;Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaix;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaix$zza;->zzbL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    return-object v0
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.drive.ApiService.START"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahx;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaix;

    move-result-object v0

    return-object v0
.end method

.method protected zzqL()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->zzxW()Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzxM()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahx;->zzaiq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "proxy_package_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahx;->zzaiq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx;->zzaMO:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzrd()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahx;->zzaiq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzahx;->zzAW()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzxE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
