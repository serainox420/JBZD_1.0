.class public Lcom/google/android/gms/internal/zzlv;
.super Lcom/google/android/gms/internal/zzpj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

.field private final zzPR:Lcom/google/android/gms/internal/zzpb$zza;

.field private final zzPS:Lcom/google/android/gms/internal/zzmn;

.field private final zzQi:Lcom/google/android/gms/internal/zzlx;

.field private zzQj:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzpb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzgl;)V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzlx;

    new-instance v3, Lcom/google/android/gms/internal/zzpv;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzpv;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzlx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;)V

    invoke-direct {p0, p3, p5, v0}, Lcom/google/android/gms/internal/zzlv;-><init>(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzlx;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzlx;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlv;->zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlv;->zzQi:Lcom/google/android/gms/internal/zzlx;

    return-void
.end method

.method private zzS(I)Lcom/google/android/gms/internal/zzpb;
    .locals 39

    new-instance v2, Lcom/google/android/gms/internal/zzpb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzlv;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget v9, v6, Lcom/google/android/gms/internal/zzmn;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v10, v6, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v12, v6, Lcom/google/android/gms/internal/zzmk;->zzRB:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzWa:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSF:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlv;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzjt;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/internal/zzlq$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlv;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzQj:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzQj:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzco()V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzlv;->zzrJ:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzQi:Lcom/google/android/gms/internal/zzlx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpn;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzQj:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzQj:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpb;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    move v1, v2

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzlv$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzlv$1;-><init>(Lcom/google/android/gms/internal/zzlv;Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_0
    move-exception v0

    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlv;->zzQj:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzlv;->zzS(I)Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    goto :goto_1
.end method
