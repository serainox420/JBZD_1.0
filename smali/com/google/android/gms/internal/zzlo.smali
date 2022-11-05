.class public abstract Lcom/google/android/gms/internal/zzlo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzpq;
.implements Lcom/google/android/gms/internal/zzqx$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzpq",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/zzqx$zza;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzIs:Lcom/google/android/gms/internal/zzqw;

.field protected final zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

.field protected final zzPR:Lcom/google/android/gms/internal/zzpb$zza;

.field protected zzPS:Lcom/google/android/gms/internal/zzmn;

.field private zzPT:Ljava/lang/Runnable;

.field protected final zzPU:Ljava/lang/Object;

.field private zzPV:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzlq$zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPU:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPV:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlo;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlo;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlo;->zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

    return-void
.end method

.method private zzR(I)Lcom/google/android/gms/internal/zzpb;
    .locals 39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlo;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    new-instance v2, Lcom/google/android/gms/internal/zzpb;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzlo;->zzIs:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget v9, v9, Lcom/google/android/gms/internal/zzmn;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v10, v10, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    iget-object v12, v6, Lcom/google/android/gms/internal/zzmk;->zzRB:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzWa:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSC:Lcom/google/android/gms/internal/zzoo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSD:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSE:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSF:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzKI:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzjt;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlo;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPV:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpp;->zzl(Lcom/google/android/gms/internal/zzqw;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlo;->zzQ(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzPT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected zzQ(I)V
    .locals 4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzmn;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPS:Lcom/google/android/gms/internal/zzmn;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlo;->zzR(I)Lcom/google/android/gms/internal/zzpb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlq$zza;->zzb(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqw;Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "WebView finished loading."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzPV:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, -0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlo;->zzQ(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzPT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final zziN()Ljava/lang/Void;
    .locals 6

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzlo$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlo$1;-><init>(Lcom/google/android/gms/internal/zzlo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzPT:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlo;->zzPT:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDM:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlo;->zziO()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract zziO()V
.end method

.method public synthetic zziP()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlo;->zziN()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
