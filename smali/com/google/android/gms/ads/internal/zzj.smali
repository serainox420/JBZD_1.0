.class Lcom/google/android/gms/ads/internal/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzar;
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private zzss:Lcom/google/android/gms/ads/internal/zzx;

.field private final zzth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzti:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/zzar;",
            ">;"
        }
    .end annotation
.end field

.field zztj:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzth:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzti:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zztj:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqe;->zzlj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpn;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzqm;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzj;->run()V

    goto :goto_0
.end method

.method private zzch()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzti:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzar;

    aget-object v0, v0, v6

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzar;->zza(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzti:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzar;

    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v0, v7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzar;->zza(III)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private zzg(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzBs:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzqh;->zzYY:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzBO:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v3, v1

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCU:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzj;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/zzj;->zzg(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/ads/internal/zzj;->zzd(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzj;->zza(Lcom/google/android/gms/internal/zzar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzj;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/zzj;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_0
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzcg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzti:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzch()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzj;->zzg(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zzar;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public zza(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzcg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzti:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzch()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzj;->zzg(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzar;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public zza(III)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzti:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzch()V

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzar;->zza(III)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzth:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public zza(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzti:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzj;->zzch()V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzar;->zza(Landroid/view/MotionEvent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzth:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzar;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zzti:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzj;->zza(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzcg()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzj;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zzd(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzar;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzav;

    move-result-object v0

    return-object v0
.end method
