.class public Lcom/google/android/gms/internal/zzaxh;
.super Ljava/lang/Object;


# instance fields
.field private final zzbzc:Ljava/util/concurrent/ExecutorService;

.field private volatile zzbzd:Ljava/io/InputStream;

.field private volatile zzbze:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzbzc:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzbzd:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzbze:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxh;->zzbzd:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaxh;Ljava/io/OutputStream;ZJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzaxh;->zza(Ljava/io/OutputStream;ZJ)V

    return-void
.end method

.method private zza(Ljava/io/OutputStream;ZJ)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "NearbyConnections"

    const-string v2, "Unable to deliver status for Payload %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaxh;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzbze:Z

    return v0
.end method


# virtual methods
.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzbze:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzbzc:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzbzd:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    return-void
.end method

.method zza(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;J)V
    .locals 8

    iget-object v7, p0, Lcom/google/android/gms/internal/zzaxh;->zzbzc:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/zzaxh$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaxh$1;-><init>(Lcom/google/android/gms/internal/zzaxh;Ljava/io/InputStream;Ljava/io/OutputStream;JLjava/io/OutputStream;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
