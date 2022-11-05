.class Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueInsertAndPlayItem(Lcom/google/android/gms/cast/MediaQueueItem;IJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapm:J

.field final synthetic zzapn:Lorg/json/JSONObject;

.field final synthetic zzapp:I

.field final synthetic zzapq:Lcom/google/android/gms/cast/MediaQueueItem;

.field final synthetic zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaQueueItem;IJLorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapq:Lcom/google/android/gms/cast/MediaQueueItem;

    iput p4, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapp:I

    iput-wide p5, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapm:J

    iput-object p7, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapn:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzyq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zza(Lcom/google/android/gms/internal/zzyq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzyq;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/zzza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapH:Lcom/google/android/gms/internal/zzzc;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapq:Lcom/google/android/gms/cast/MediaQueueItem;

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapp:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapm:J

    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzapn:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzza;->zza(Lcom/google/android/gms/internal/zzzc;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/zzza$zzb; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v9

    return-void

    :catch_0
    move-exception v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
