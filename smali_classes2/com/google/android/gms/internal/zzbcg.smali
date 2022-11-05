.class Lcom/google/android/gms/internal/zzbcg;
.super Lcom/google/android/gms/internal/zzbcf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbcg$zzb;,
        Lcom/google/android/gms/internal/zzbcg$zza;
    }
.end annotation


# static fields
.field private static final zzbIa:Ljava/lang/Object;

.field private static zzbKx:Lcom/google/android/gms/internal/zzbcg;


# instance fields
.field private connected:Z

.field private zzbIb:Landroid/content/Context;

.field private zzbIe:I

.field private zzbIf:Z

.field private zzbIg:Z

.field private zzbIh:Z

.field private zzbIl:Z

.field private zzbKr:Lcom/google/android/gms/internal/zzbbp;

.field private volatile zzbKs:Lcom/google/android/gms/internal/zzbbn;

.field private zzbKt:Z

.field private zzbKu:Lcom/google/android/gms/internal/zzbbq;

.field private zzbKv:Lcom/google/android/gms/internal/zzbcg$zza;

.field private zzbKw:Lcom/google/android/gms/internal/zzbbw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbcg;->zzbIa:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcf;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIe:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKt:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzbcg;->connected:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIh:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbcg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbcg$1;-><init>(Lcom/google/android/gms/internal/zzbcg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKu:Lcom/google/android/gms/internal/zzbbq;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIl:Z

    return-void
.end method

.method private isPowerSaveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIl:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIe:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzRA()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbcg$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbcg$zzb;-><init>(Lcom/google/android/gms/internal/zzbcg;Lcom/google/android/gms/internal/zzbcg$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKv:Lcom/google/android/gms/internal/zzbcg$zza;

    iget v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIe:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKv:Lcom/google/android/gms/internal/zzbcg$zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIe:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzbcg$zza;->zzy(J)V

    :cond_0
    return-void
.end method

.method static synthetic zzRC()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbcg;->zzbIa:Ljava/lang/Object;

    return-object v0
.end method

.method private zzRz()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbbw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbbw;-><init>(Lcom/google/android/gms/internal/zzbcf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKw:Lcom/google/android/gms/internal/zzbbw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKw:Lcom/google/android/gms/internal/zzbbw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbbw;->zzcb(Landroid/content/Context;)V

    return-void
.end method

.method public static zzSr()Lcom/google/android/gms/internal/zzbcg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbcg;->zzbKx:Lcom/google/android/gms/internal/zzbcg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbcg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbcg;->zzbKx:Lcom/google/android/gms/internal/zzbcg;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbcg;->zzbKx:Lcom/google/android/gms/internal/zzbcg;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbcg;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIb:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbcg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKt:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbcg;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbcg;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIe:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbcg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->connected:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbcg;)Lcom/google/android/gms/internal/zzbbp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKr:Lcom/google/android/gms/internal/zzbbp;

    return-object v0
.end method

.method private zzoH()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKv:Lcom/google/android/gms/internal/zzbcg$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbcg$zza;->cancel()V

    const-string v0, "PowerSaveMode initiated."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKv:Lcom/google/android/gms/internal/zzbcg$zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIe:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzbcg$zza;->zzy(J)V

    const-string v0, "PowerSaveMode terminated."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIg:Z

    if-nez v0, :cond_1

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKt:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKs:Lcom/google/android/gms/internal/zzbbn;

    new-instance v1, Lcom/google/android/gms/internal/zzbcg$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbcg$2;-><init>(Lcom/google/android/gms/internal/zzbcg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbbn;->zzp(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzSs()Lcom/google/android/gms/internal/zzbbp;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKr:Lcom/google/android/gms/internal/zzbbp;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIb:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzbbx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKu:Lcom/google/android/gms/internal/zzbbq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIb:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbbx;-><init>(Lcom/google/android/gms/internal/zzbbq;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKr:Lcom/google/android/gms/internal/zzbbp;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKv:Lcom/google/android/gms/internal/zzbcg$zza;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg;->zzRA()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIg:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIf:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbcg;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIf:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKw:Lcom/google/android/gms/internal/zzbbw;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIh:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg;->zzRz()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKr:Lcom/google/android/gms/internal/zzbbp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbbn;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIb:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIb:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKs:Lcom/google/android/gms/internal/zzbbn;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKs:Lcom/google/android/gms/internal/zzbbn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzaT(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIl:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzbcg;->zze(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zze(ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg;->isPowerSaveMode()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbcg;->zzbIl:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbcg;->connected:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg;->isPowerSaveMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg;->zzoH()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zznO()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg;->zzbKv:Lcom/google/android/gms/internal/zzbcg$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbcg$zza;->zzRD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
