.class public Lcom/google/android/gms/internal/zzql;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzql$zza;
    }
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzqm;Lcom/google/android/gms/internal/zzql$zza;)Lcom/google/android/gms/internal/zzqm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzqm",
            "<TA;>;",
            "Lcom/google/android/gms/internal/zzql$zza",
            "<TA;TB;>;)",
            "Lcom/google/android/gms/internal/zzqm",
            "<TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzql$1;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/zzql$1;-><init>(Lcom/google/android/gms/internal/zzqj;Lcom/google/android/gms/internal/zzql$zza;Lcom/google/android/gms/internal/zzqm;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/zzqm;->zzc(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zza(Ljava/util/concurrent/Future;Ljava/lang/Object;ILjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TT;>;TT;I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    int-to-long v0, p2

    :try_start_0
    invoke-interface {p0, v0, v1, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static zzo(Ljava/util/List;)Lcom/google/android/gms/internal/zzqm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzqm",
            "<TV;>;>;)",
            "Lcom/google/android/gms/internal/zzqm",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm;

    new-instance v5, Lcom/google/android/gms/internal/zzql$2;

    invoke-direct {v5, v3, v2, v1, p0}, Lcom/google/android/gms/internal/zzql$2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/zzqj;Ljava/util/List;)V

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/zzqm;->zzc(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static zzp(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzqm",
            "<TV;>;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqm;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic zzq(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzql;->zzp(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
