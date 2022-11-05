.class public Lcom/google/android/gms/internal/zzbk;
.super Lcom/google/android/gms/internal/zzca;


# static fields
.field private static final zzqS:Ljava/lang/Object;

.field private static volatile zzqT:Lcom/google/android/gms/internal/zzan;


# instance fields
.field private zzqU:Lcom/google/android/gms/internal/zzae$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbk;->zzqS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;IILcom/google/android/gms/internal/zzae$zza;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzca;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqU:Lcom/google/android/gms/internal/zzae$zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbk;->zzqU:Lcom/google/android/gms/internal/zzae$zza;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzae$zza;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbk;->zzb(Lcom/google/android/gms/internal/zzae$zza;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbf;->zzs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zza;->zzaK:Lcom/google/android/gms/internal/zzae$zzb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzae$zza;->zzaK:Lcom/google/android/gms/internal/zzae$zzb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzae$zzb;->zzaM:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzae$zza;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zza;->zzaL:Lcom/google/android/gms/internal/zzae$zzc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zza;->zzaL:Lcom/google/android/gms/internal/zzae$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzae$zzc;->zzaN:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbf;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzae$zza;->zzaL:Lcom/google/android/gms/internal/zzae$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzae$zzc;->zzaN:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzbe()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzan;->zzaN:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbf;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzan;->zzaN:Ljava/lang/String;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private zzbf()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqU:Lcom/google/android/gms/internal/zzae$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbk;->zzb(Lcom/google/android/gms/internal/zzae$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbf;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqU:Lcom/google/android/gms/internal/zzae$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbk;->zza(Lcom/google/android/gms/internal/zzae$zza;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbk;->zzbg()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private zzbg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbd;->zzaQ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDW:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDX:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDV:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzbh()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbd;->zzaS()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbd;->zzaS()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbd;->zzaR()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzag$zza;->zzaN:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzag$zza;->zzaN:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private zze(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbk;->zzre:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbk;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbd;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v0

    if-ne p1, v6, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzan;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzan;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzan;->zzaN:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbf;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzan;->zzaN:Ljava/lang/String;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzqU:Lcom/google/android/gms/internal/zzae$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzae$zza;->zzaL:Lcom/google/android/gms/internal/zzae$zzc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzae$zzc;->zzaN:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzan;->zzaN:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbk;->zzbh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbf;->zzs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzan;->zzaN:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected zzbd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbk;->zzbe()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzbk;->zzqS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbk;->zzbf()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbk;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbd;->zzaV()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbk;->zze(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzan;->zzaN:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zzaN:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzan;->zzlE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zzbA:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzan;->zzaP:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zzaP:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzan;->zzaQ:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zzaQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbk;->zzqT:Lcom/google/android/gms/internal/zzan;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzan;->zzaR:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzag$zza;->zzaR:Ljava/lang/String;

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
