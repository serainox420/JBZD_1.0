.class public Lcom/google/android/gms/internal/zzbpb;
.super Lcom/google/android/gms/internal/zzbpa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpa;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpb;->zzYx()V

    sget-object v0, Lcom/google/android/gms/internal/zzbpb$1;->zzcea:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/Logger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown log level: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciM:Lcom/google/android/gms/internal/zzbro$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzcdW:Lcom/google/android/gms/internal/zzbro$zza;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciN:Lcom/google/android/gms/internal/zzbro$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzcdW:Lcom/google/android/gms/internal/zzbro$zza;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciO:Lcom/google/android/gms/internal/zzbro$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzcdW:Lcom/google/android/gms/internal/zzbro$zza;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciP:Lcom/google/android/gms/internal/zzbro$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzcdW:Lcom/google/android/gms/internal/zzbro$zza;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/zzbro$zza;->zzciQ:Lcom/google/android/gms/internal/zzbro$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzcdW:Lcom/google/android/gms/internal/zzbro$zza;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized setPersistenceCacheSizeBytes(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpb;->zzYx()V

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "The minimum cache size must be at least 1MB"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const-wide/32 v0, 0x6400000

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :try_start_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Firebase Database currently doesn\'t support a cache size larger than 100MB"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbpb;->cacheSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPersistenceEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpb;->zzYx()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbpb;->zzcbF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzf(Lcom/google/firebase/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpb;->zzcau:Lcom/google/firebase/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zziY(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpb;->zzYx()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session identifier is not allowed to be empty or null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpb;->zzcdV:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
