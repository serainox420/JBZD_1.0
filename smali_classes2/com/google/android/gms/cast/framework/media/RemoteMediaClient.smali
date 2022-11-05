.class public Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String;

.field public static final RESUME_STATE_PAUSE:I = 0x2

.field public static final RESUME_STATE_PLAY:I = 0x1

.field public static final RESUME_STATE_UNCHANGED:I = 0x0

.field public static final STATUS_FAILED:I = 0x834

.field public static final STATUS_REPLACED:I = 0x837

.field public static final STATUS_SUCCEEDED:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaoZ:Lcom/google/android/gms/internal/zzza;

.field private final zzaql:Lcom/google/android/gms/cast/Cast$CastApi;

.field private final zzasC:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

.field private zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzasE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzasF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzasG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzza;->NAMESPACE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzza;Lcom/google/android/gms/cast/Cast$CastApi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasE:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasF:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzrJ:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasC:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaql:Lcom/google/android/gms/cast/Cast$CastApi;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzza;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$1;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzza;->zza(Lcom/google/android/gms/internal/zzza$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasC:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzza;->zza(Lcom/google/android/gms/internal/zzzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzbU(I)I

    move-result v0

    return v0
.end method

.method private zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztH()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Ljava/util/Set;)V

    return-void
.end method

.method private zza(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;->onProgressUpdated(JJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v4

    invoke-interface {v0, v6, v7, v4, v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;->onProgressUpdated(JJ)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;

    invoke-interface {v0, v6, v7, v6, v7}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;->onProgressUpdated(JJ)V

    goto :goto_2
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private zzbU(I)I
    .locals 3

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItem(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzrJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/zzza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/Cast$CastApi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaql:Lcom/google/android/gms/cast/Cast$CastApi;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private zztG()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private zztH()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->isStarted()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->start()V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->stop()V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)Z
    .locals 4

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasF:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;J)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasF:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasE:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->start()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getApproximateStreamPosition()J
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzza;->getApproximateStreamPosition()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentItem()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 2

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getIdleReason()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 2

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzza;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzza;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzza;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerState()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPreloadedItem()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 2

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPreloadedItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getStreamDuration()J
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzza;->getStreamDuration()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasMediaSession()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBuffering()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLiveStream()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingNextItem()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getIdleReason()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayingAd()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/cast/MediaInfo;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/cast/MediaInfo;ZJ)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "ZJ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "ZJ",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "ZJ[J",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$12;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzza;->zzcP(Ljava/lang/String;)V

    return-void
.end method

.method public pause()Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->pause(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public pause(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$17;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$17;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public play()Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->play(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public play(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$19;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$19;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueAppendItem(Lcom/google/android/gms/cast/MediaQueueItem;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/cast/MediaQueueItem;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueInsertItems([Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public queueInsertAndPlayItem(Lcom/google/android/gms/cast/MediaQueueItem;IJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "IJ",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$6;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaQueueItem;IJLorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueInsertAndPlayItem(Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "I",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueInsertAndPlayItem(Lcom/google/android/gms/cast/MediaQueueItem;IJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public queueInsertItems([Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "I",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$5;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$5;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;ILorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueJumpToItem(IJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$15;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$15;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;IJLorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueJumpToItem(ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueJumpToItem(IJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public queueLoad([Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "IIJ",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$4;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$4;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueLoad([Lcom/google/android/gms/cast/MediaQueueItem;IILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "II",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueLoad([Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public queueMoveItemToNewIndex(IILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;IILorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueNext(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$11;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$11;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queuePrev(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$10;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$10;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueRemoveItem(ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$14;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;ILorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueRemoveItems([ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$8;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$8;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;[ILorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueReorderItems([IILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$9;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$9;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;[IILorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueSetRepeatMode(ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$13;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$13;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;ILorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public queueUpdateItems([Lcom/google/android/gms/cast/MediaQueueItem;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$7;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$7;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V
    .locals 4

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zztK()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasF:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zztJ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->stop()V

    :cond_0
    return-void
.end method

.method public requestStatus()Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$23;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$23;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public seek(J)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public seek(JI)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public seek(JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$20;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$20;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public setActiveMediaTracks([J)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackIds cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$2;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$2;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;[J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public setParseAdsInfoCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;

    return-void
.end method

.method public setStreamMute(Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->setStreamMute(ZLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public setStreamMute(ZLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$22;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$22;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;ZLorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public setStreamVolume(D)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->setStreamVolume(DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public setStreamVolume(DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Volume cannot be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$21;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$21;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/TextTrackStyle;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackStyle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$3;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$3;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/TextTrackStyle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->stop(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public stop(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zztG()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$18;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$18;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    move-result-object v0

    return-object v0
.end method

.method public togglePlayback()V
    .locals 2

    const-string v0, "Must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->pause()Lcom/google/android/gms/common/api/PendingResult;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->play()Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public zzd(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaoZ:Lcom/google/android/gms/internal/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzza;->zzuz()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaql:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasC:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasC:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zza;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    goto :goto_0
.end method

.method public zztF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzaql:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzasD:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    :cond_0
    return-void
.end method
