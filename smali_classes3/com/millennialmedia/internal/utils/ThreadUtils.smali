.class public Lcom/millennialmedia/internal/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/util/concurrent/ExecutorService;

.field private static d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/millennialmedia/internal/utils/ThreadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 23
    sput-object p0, Lcom/millennialmedia/internal/utils/ThreadUtils;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static initialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->a:Ljava/lang/String;

    const-string v1, "ThreadUtils already initialized"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->b:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 50
    new-instance v1, Lcom/millennialmedia/internal/utils/ThreadUtils$1;

    invoke-direct {v1, v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 63
    invoke-virtual {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$1;->start()V

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/millennialmedia/internal/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    .line 67
    const/4 v1, 0x0

    .line 69
    const-wide/16 v2, 0x1388

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :goto_0
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "Failed to initialize ThreadUtils"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sget-object v2, Lcom/millennialmedia/internal/utils/ThreadUtils;->a:Ljava/lang/String;

    const-string v3, "Failed to initialize latch"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public static isUiThread()Z
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runOffUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/millennialmedia/internal/utils/ThreadUtils$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ThreadUtils$2;-><init>(Ljava/lang/Runnable;)V

    .line 158
    sget-object v1, Lcom/millennialmedia/internal/utils/ThreadUtils;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-object v0
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public static runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/millennialmedia/internal/utils/ThreadUtils$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ThreadUtils$3;-><init>(Ljava/lang/Runnable;)V

    .line 190
    sget-object v1, Lcom/millennialmedia/internal/utils/ThreadUtils;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    return-object v0
.end method
