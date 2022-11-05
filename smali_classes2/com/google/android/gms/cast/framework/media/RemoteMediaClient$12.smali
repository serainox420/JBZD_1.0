.class Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapm:J

.field final synthetic zzapn:Lorg/json/JSONObject;

.field final synthetic zzapu:Lcom/google/android/gms/cast/MediaInfo;

.field final synthetic zzapv:Z

.field final synthetic zzapw:[J

.field final synthetic zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapu:Lcom/google/android/gms/cast/MediaInfo;

    iput-boolean p4, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapv:Z

    iput-wide p5, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapm:J

    iput-object p7, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapw:[J

    iput-object p8, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapn:Lorg/json/JSONObject;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zza(Lcom/google/android/gms/internal/zzyq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzyq;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/zzza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapH:Lcom/google/android/gms/internal/zzzc;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapu:Lcom/google/android/gms/cast/MediaInfo;

    iget-boolean v3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapv:Z

    iget-wide v4, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapm:J

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapw:[J

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzapn:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzza;->zza(Lcom/google/android/gms/internal/zzzc;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v8

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
