.class public Lcom/google/android/gms/internal/zzbaz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbaz$zza;
    }
.end annotation


# static fields
.field private static zzbEI:Ljava/lang/Object;

.field private static zzbJd:Lcom/google/android/gms/internal/zzbaz;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final zzXh:Ljava/lang/Thread;

.field private volatile zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private volatile zzbEC:J

.field private volatile zzbED:J

.field private volatile zzbEE:J

.field private volatile zzbEF:J

.field private final zzbEG:Ljava/lang/Object;

.field private volatile zzbJb:Z

.field private zzbJc:Lcom/google/android/gms/internal/zzbaz$zza;

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbaz;->zzbEI:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzbaz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbaz$zza;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbaz$zza;Lcom/google/android/gms/common/util/zze;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEC:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbED:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbJb:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbaz;->mClosed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEG:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbaz$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbaz$1;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbJc:Lcom/google/android/gms/internal/zzbaz$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbaz;->zzuP:Lcom/google/android/gms/common/util/zze;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->mContext:Landroid/content/Context;

    :goto_0
    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbaz;->zzbJc:Lcom/google/android/gms/internal/zzbaz$zza;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEE:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/zzbaz$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbaz$2;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzXh:Ljava/lang/Thread;

    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbaz;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private zzPW()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbaz;->zzPX()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private zzPX()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEE:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbaz;->zzbED:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEG:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEE:J

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zzPY()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEF:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_0
    return-void
.end method

.method private zzPZ()V
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaz;->mClosed:Z

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbaz;->zzbJb:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbJc:Lcom/google/android/gms/internal/zzbaz$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbaz$zza;->zzQa()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEF:J

    const-string v0, "Obtained fresh AdvertisingId info from GmsCore."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbg(Ljava/lang/String;)V

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEG:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEG:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbaz;->zzbEC:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbg(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbaz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbaz;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbaz;->zzbJb:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbaz;->zzPZ()V

    return-void
.end method

.method public static zzcd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbaz;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbaz;->zzbJd:Lcom/google/android/gms/internal/zzbaz;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzbaz;->zzbEI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbaz;->zzbJd:Lcom/google/android/gms/internal/zzbaz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbaz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbaz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbaz;->zzbJd:Lcom/google/android/gms/internal/zzbaz;

    sget-object v0, Lcom/google/android/gms/internal/zzbaz;->zzbJd:Lcom/google/android/gms/internal/zzbaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbaz;->start()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzbaz;->zzbJd:Lcom/google/android/gms/internal/zzbaz;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isLimitAdTrackingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbaz;->zzPW()V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbaz;->zzPY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbaz;->zzPX()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    goto :goto_1
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzXh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public zzPV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbaz;->zzPW()V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbaz;->zzPY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbaz;->zzPX()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaz;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
