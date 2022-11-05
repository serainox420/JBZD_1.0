.class Lcom/amazon/device/ads/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/ThreadUtils$1;,
        Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;,
        Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;,
        Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;,
        Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;,
        Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;,
        Lcom/amazon/device/ads/ThreadUtils$BackgroundThreadRunner;,
        Lcom/amazon/device/ads/ThreadUtils$MainThreadRunner;,
        Lcom/amazon/device/ads/ThreadUtils$SingleThreadScheduler;,
        Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;,
        Lcom/amazon/device/ads/ThreadUtils$MainThreadScheduler;,
        Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;,
        Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    }
.end annotation


# static fields
.field private static threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    return-void
.end method

.method static synthetic access$000()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-object v0
.end method

.method public static final varargs executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static final varargs executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;",
            "Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;",
            "Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public static executeOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-static {p0, v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    .line 115
    return-void
.end method

.method public static executeOnMainThread(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 119
    return-void
.end method

.method public static executeRunnableWithThreadCheck(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-static {p0, v0}, Lcom/amazon/device/ads/ThreadUtils;->executeRunnableWithThreadCheck(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    .line 86
    return-void
.end method

.method public static executeRunnableWithThreadCheck(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 90
    return-void
.end method

.method public static getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-object v0
.end method

.method public static isOnMainThread()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->getInstance()Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->isOnMainThread()Z

    move-result v0

    return v0
.end method

.method public static scheduleOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-static {p0, v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    .line 99
    return-void
.end method

.method public static scheduleOnMainThread(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 103
    return-void
.end method

.method public static scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-static {p0, v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    .line 70
    return-void
.end method

.method public static scheduleRunnable(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 74
    return-void
.end method

.method static setThreadRunner(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/amazon/device/ads/ThreadUtils;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 35
    return-void
.end method
