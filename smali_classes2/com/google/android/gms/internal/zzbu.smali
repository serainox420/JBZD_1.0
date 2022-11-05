.class public Lcom/google/android/gms/internal/zzbu;
.super Lcom/google/android/gms/internal/zzca;


# instance fields
.field private final zzqZ:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzca;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbu;->zzqZ:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected zzbd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzqZ:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzre:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbu;->zzqZ:[Ljava/lang/StackTraceElement;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/zzbb;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzbb;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbu;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzbb;->zzqi:Ljava/lang/Long;

    iput-object v5, v0, Lcom/google/android/gms/internal/zzag$zza;->zzbJ:Ljava/lang/Long;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzbb;->zzqj:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbu;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzbb;->zzqk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/zzag$zza;->zzbR:Ljava/lang/Integer;

    :cond_0
    monitor-exit v4

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
