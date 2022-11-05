.class Lcom/google/android/gms/internal/zzbsy$1;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbsy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzckB:Lcom/google/android/gms/internal/zzbsy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbsy;ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsy$1;->zzckB:Lcom/google/android/gms/internal/zzbsy;

    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsy$1;->zzckB:Lcom/google/android/gms/internal/zzbsy;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbsy;->zzj(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
