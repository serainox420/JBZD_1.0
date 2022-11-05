.class final Lcom/google/android/gms/wearable/WearableListenerService$zzc;
.super Lcom/google/android/gms/wearable/internal/zzbv$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/WearableListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

.field private volatile zzbTm:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzbv$zza;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTm:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/WearableListenerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;)V

    return-void
.end method

.method private zzUj()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTm:I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/zzcz;->zzck(Landroid/content/Context;)Lcom/google/android/gms/wearable/internal/zzcz;

    move-result-object v2

    const-string v3, "com.google.android.wearable.app.cn"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/internal/zzcz;->zziq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    const-string v3, "com.google.android.wearable.app.cn"

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/util/zzy;->zzc(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTm:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/util/zzy;->zzf(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTm:I

    goto :goto_0

    :cond_2
    const-string v0, "WearableLS"

    const/16 v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Caller is not GooglePlayServices; caller UID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "WearableLS"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WearableLS"

    const-string v3, "%s: %s %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    iget-object v5, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v5}, Lcom/google/android/gms/wearable/WearableListenerService;->zza(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzUj()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->zzc(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v3}, Lcom/google/android/gms/wearable/WearableListenerService;->zzd(Lcom/google/android/gms/wearable/WearableListenerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->zze(Lcom/google/android/gms/wearable/WearableListenerService;)Lcom/google/android/gms/wearable/WearableListenerService$zzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzb;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onConnectedNodes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcc;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$5;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Ljava/util/List;)V

    const-string v1, "onConnectedNodes"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzbz;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$2;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzbz;)V

    const-string v1, "onMessageReceived"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzcc;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$3;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzcc;)V

    const-string v1, "onPeerConnected"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzh;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$8;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzh;)V

    const-string v1, "onEntityUpdate"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzk;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$7;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzk;)V

    const-string v1, "onNotificationReceived"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzo;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$6;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzo;)V

    const-string v1, "onConnectedCapabilityChanged"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzs;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$9;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzs;)V

    const-string v1, "onChannelEvent"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zzaq(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$1;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    const-string v1, "onDataItemChanged"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", rows="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/wearable/internal/zzcc;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc$4;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzcc;)V

    const-string v1, "onPeerDisconnected"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
