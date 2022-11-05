.class public Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;
.super Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadPoolScheduler"
.end annotation


# static fields
.field private static final keepAliveTimeSeconds:I = 0x1e

.field private static final maxNumberThreads:I = 0x3

.field private static final numberThreads:I = 0x1


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 267
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;-><init>(Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 258
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 268
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolScheduler;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 274
    return-void
.end method
