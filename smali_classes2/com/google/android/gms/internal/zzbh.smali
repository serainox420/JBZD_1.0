.class public Lcom/google/android/gms/internal/zzbh;
.super Lcom/google/android/gms/internal/zzca;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzca;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II)V

    return-void
.end method


# virtual methods
.method protected zzbd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbh;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zzbc:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbh;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzre:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbh;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbd;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzag$zza;->zzbc:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
