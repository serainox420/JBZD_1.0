.class public abstract Lcom/google/android/gms/internal/zzlp;
.super Lcom/google/android/gms/internal/zzpj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlp$zza;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

.field protected final zzPR:Lcom/google/android/gms/internal/zzpb$zza;

.field protected zzPS:Lcom/google/android/gms/internal/zzmn;

.field protected final zzPU:Ljava/lang/Object;

.field protected final zzrJ:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzlq$zza;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpj;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzrJ:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPU:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlp;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlp;->zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method protected abstract zzR(I)Lcom/google/android/gms/internal/zzpb;
.end method

.method public zzco()V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzrJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "AdRendererBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget v0, v0, Lcom/google/android/gms/internal/zzpb$zza;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/zzlp;->zzh(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzlp$zza; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzR(I)Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzlp$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzlp$2;-><init>(Lcom/google/android/gms/internal/zzlp;Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp$zza;->getErrorCode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPS:Lcom/google/android/gms/internal/zzmn;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPS:Lcom/google/android/gms/internal/zzmn;

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzlp$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzlp$1;-><init>(Lcom/google/android/gms/internal/zzlp;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlp;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPS:Lcom/google/android/gms/internal/zzmn;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method protected abstract zzh(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzlp$zza;
        }
    .end annotation
.end method

.method protected zzn(Lcom/google/android/gms/internal/zzpb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlq$zza;->zzb(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method
