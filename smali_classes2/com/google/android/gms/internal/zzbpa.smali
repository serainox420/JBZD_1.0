.class public Lcom/google/android/gms/internal/zzbpa;
.super Ljava/lang/Object;


# instance fields
.field protected cacheSize:J

.field protected zzcau:Lcom/google/firebase/a;

.field protected zzcbE:Lcom/google/android/gms/internal/zzbro;

.field protected zzcbF:Z

.field protected zzcbH:Ljava/lang/String;

.field private zzcdF:Z

.field protected zzcdS:Lcom/google/android/gms/internal/zzbpe;

.field protected zzcdT:Lcom/google/android/gms/internal/zzbow;

.field protected zzcdU:Lcom/google/android/gms/internal/zzbpm;

.field protected zzcdV:Ljava/lang/String;

.field protected zzcdW:Lcom/google/android/gms/internal/zzbro$zza;

.field private zzcdX:Z

.field private zzcdY:Lcom/google/android/gms/internal/zzbpi;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciN:Lcom/google/android/gms/internal/zzbro$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdW:Lcom/google/android/gms/internal/zzbro$zza;

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbpa;->cacheSize:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdF:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdX:Z

    return-void
.end method

.method private zzXt()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYB()Lcom/google/android/gms/internal/zzbpm;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbsy;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom run loops are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/zzbsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsy;->zzXt()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private zzYE()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbE:Lcom/google/android/gms/internal/zzbro;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYs()Lcom/google/android/gms/internal/zzbpi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdW:Lcom/google/android/gms/internal/zzbro$zza;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzbpi;->zza(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;)Lcom/google/android/gms/internal/zzbro;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbE:Lcom/google/android/gms/internal/zzbro;

    :cond_0
    return-void
.end method

.method private zzYF()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdU:Lcom/google/android/gms/internal/zzbpm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdY:Lcom/google/android/gms/internal/zzbpi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzbpi;->zzb(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdU:Lcom/google/android/gms/internal/zzbpm;

    :cond_0
    return-void
.end method

.method private zzYG()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdS:Lcom/google/android/gms/internal/zzbpe;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYs()Lcom/google/android/gms/internal/zzbpi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzbpi;->zza(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdS:Lcom/google/android/gms/internal/zzbpe;

    :cond_0
    return-void
.end method

.method private zzYH()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbH:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYs()Lcom/google/android/gms/internal/zzbpi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzbpi;->zzc(Lcom/google/android/gms/internal/zzbpa;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpa;->zziX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbH:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private zzYI()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdT:Lcom/google/android/gms/internal/zzbow;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYs()Lcom/google/android/gms/internal/zzbpi;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzXt()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbpi;->zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzbow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdT:Lcom/google/android/gms/internal/zzbow;

    :cond_0
    return-void
.end method

.method private zzYJ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdV:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "default"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdV:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private zzYs()Lcom/google/android/gms/internal/zzbpi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdY:Lcom/google/android/gms/internal/zzbpi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbst;->zzabG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYt()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdY:Lcom/google/android/gms/internal/zzbpi;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbpf;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzbpf;->zzcee:Lcom/google/android/gms/internal/zzbpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpf;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdY:Lcom/google/android/gms/internal/zzbpi;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzbpg;->zzcei:Lcom/google/android/gms/internal/zzbpg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdY:Lcom/google/android/gms/internal/zzbpi;

    goto :goto_0
.end method

.method private declared-synchronized zzYt()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzbnv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpa;->zzcau:Lcom/google/firebase/a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbnv;-><init>(Lcom/google/firebase/a;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdY:Lcom/google/android/gms/internal/zzbpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private zzYv()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYE()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYs()Lcom/google/android/gms/internal/zzbpi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYH()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYG()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYF()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYJ()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYI()V

    return-void
.end method

.method private zzYw()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdS:Lcom/google/android/gms/internal/zzbpe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbpe;->restart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdU:Lcom/google/android/gms/internal/zzbpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbpm;->restart()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbow;)Lcom/google/android/gms/internal/zzbok;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbpa$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbpa$1;-><init>(Lcom/google/android/gms/internal/zzbow;)V

    return-object v0
.end method

.method private zziX(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firebase/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdF:Z

    return v0
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdX:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdS:Lcom/google/android/gms/internal/zzbpe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbpe;->shutdown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdU:Lcom/google/android/gms/internal/zzbpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbpm;->shutdown()V

    return-void
.end method

.method public zzXr()Lcom/google/android/gms/internal/zzbro;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbE:Lcom/google/android/gms/internal/zzbro;

    return-object v0
.end method

.method public zzXu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbF:Z

    return v0
.end method

.method public zzYA()Lcom/google/android/gms/internal/zzbpe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdS:Lcom/google/android/gms/internal/zzbpe;

    return-object v0
.end method

.method public zzYB()Lcom/google/android/gms/internal/zzbpm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdU:Lcom/google/android/gms/internal/zzbpm;

    return-object v0
.end method

.method public zzYC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdV:Ljava/lang/String;

    return-object v0
.end method

.method public zzYD()Lcom/google/android/gms/internal/zzbow;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdT:Lcom/google/android/gms/internal/zzbow;

    return-object v0
.end method

.method public zzYe()Lcom/google/android/gms/internal/zzbro$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdW:Lcom/google/android/gms/internal/zzbro$zza;

    return-object v0
.end method

.method declared-synchronized zzYj()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdF:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYv()V
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

.method public zzYu()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdX:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYw()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdX:Z

    :cond_0
    return-void
.end method

.method protected zzYx()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpa;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public zzYy()Lcom/google/android/gms/internal/zzbol;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzbol;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpa;->zzXr()Lcom/google/android/gms/internal/zzbro;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYD()Lcom/google/android/gms/internal/zzbow;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpa;->zza(Lcom/google/android/gms/internal/zzbow;)Lcom/google/android/gms/internal/zzbok;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzXt()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpa;->zzXu()Z

    move-result v4

    invoke-static {}, Lcom/google/firebase/database/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpa;->zzkn()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbol;-><init>(Lcom/google/android/gms/internal/zzbro;Lcom/google/android/gms/internal/zzbok;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public zzYz()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbpa;->cacheSize:J

    return-wide v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/android/gms/internal/zzbop;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYs()Lcom/google/android/gms/internal/zzbpi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpa;->zzYy()Lcom/google/android/gms/internal/zzbol;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/zzbpi;->zza(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    return-object v0
.end method

.method public zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbrn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbE:Lcom/google/android/gms/internal/zzbro;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzbrn;-><init>(Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;)V

    return-object v0
.end method

.method zziW(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbql;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcdY:Lcom/google/android/gms/internal/zzbpi;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzbpi;->zza(Lcom/google/android/gms/internal/zzbpa;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have enabled persistence, but persistence is not supported on this platform."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqk;-><init>()V

    :cond_1
    return-object v0
.end method

.method public zzkn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpa;->zzcbH:Ljava/lang/String;

    return-object v0
.end method
