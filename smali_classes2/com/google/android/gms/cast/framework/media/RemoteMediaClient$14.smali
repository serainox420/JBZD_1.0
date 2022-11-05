.class Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueRemoveItem(ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapn:Lorg/json/JSONObject;

.field final synthetic zzapx:I

.field final synthetic zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzapx:I

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzapn:Lorg/json/JSONObject;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zza(Lcom/google/android/gms/internal/zzyq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzyq;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzapx:I

    invoke-static {v0, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzb(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/zzza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzapH:Lcom/google/android/gms/internal/zzzc;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzapx:I

    aput v5, v3, v4

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzapn:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzza;->zza(Lcom/google/android/gms/internal/zzzc;[ILorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/zzza$zzb; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x834

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;->zzb(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
