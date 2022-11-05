.class Lcom/google/android/gms/cast/RemoteMediaPlayer$4;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;->queueLoad(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field final synthetic zzapg:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zzapj:[Lcom/google/android/gms/cast/MediaQueueItem;

.field final synthetic zzapk:I

.field final synthetic zzapl:I

.field final synthetic zzapm:J

.field final synthetic zzapn:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapg:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapj:[Lcom/google/android/gms/cast/MediaQueueItem;

    iput p5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapk:I

    iput p6, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapl:I

    iput-wide p7, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapm:J

    iput-object p9, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapn:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zza(Lcom/google/android/gms/internal/zzyq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzyq;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zze(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapg:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzg(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/zzza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapH:Lcom/google/android/gms/internal/zzzc;

    iget-object v3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapj:[Lcom/google/android/gms/cast/MediaQueueItem;

    iget v4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapk:I

    iget v5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapl:I

    iget-wide v6, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapm:J

    iget-object v8, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapn:Lorg/json/JSONObject;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/zzza;->zza(Lcom/google/android/gms/internal/zzzc;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :goto_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzb(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
