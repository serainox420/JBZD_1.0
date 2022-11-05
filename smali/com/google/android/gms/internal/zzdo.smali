.class public Lcom/google/android/gms/internal/zzdo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzrJ:Ljava/lang/Object;

.field private final zzyG:Ljava/lang/Runnable;

.field private zzyH:Lcom/google/android/gms/internal/zzdr;

.field private zzyI:Lcom/google/android/gms/internal/zzdv;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdo$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdo$1;-><init>(Lcom/google/android/gms/internal/zzdo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyG:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    return-void
.end method

.method private connect()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzdo$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdo$3;-><init>(Lcom/google/android/gms/internal/zzdo;)V

    new-instance v2, Lcom/google/android/gms/internal/zzdo$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzdo$4;-><init>(Lcom/google/android/gms/internal/zzdo;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;)Lcom/google/android/gms/internal/zzdr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdr;->zzxz()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private disconnect()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdr;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdr;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdr;->disconnect()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyI:Lcom/google/android/gms/internal/zzdv;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdc()Lcom/google/android/gms/internal/zzpw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzlc()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/internal/zzdr;)Lcom/google/android/gms/internal/zzdr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/internal/zzdv;)Lcom/google/android/gms/internal/zzdv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo;->zzyI:Lcom/google/android/gms/internal/zzdv;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdo;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdo;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdo;)Lcom/google/android/gms/internal/zzdr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdo;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFf:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdo;->connect()V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFe:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzdo$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdo$2;-><init>(Lcom/google/android/gms/internal/zzdo;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdd$zzb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzdp;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyI:Lcom/google/android/gms/internal/zzdv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdp;-><init>()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyI:Lcom/google/android/gms/internal/zzdv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzdp;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

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

    :try_start_3
    const-string v2, "Unable to call into cache service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdp;-><init>()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected zza(Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;)Lcom/google/android/gms/internal/zzdr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdc()Lcom/google/android/gms/internal/zzpw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpw;->zzlb()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/zzdr;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;)V

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzdd$zzb;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcP()Lcom/google/android/gms/internal/zzdd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdd;->zza(Lcom/google/android/gms/internal/zzdd$zzb;)V

    return-void
.end method

.method public zzev()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFg:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdo;->connect()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdo;->zzyG:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    sget-object v2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdo;->zzyG:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFh:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
