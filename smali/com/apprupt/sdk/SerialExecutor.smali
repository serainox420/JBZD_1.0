.class Lcom/apprupt/sdk/SerialExecutor;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/SerialExecutor;->a:Ljava/util/Queue;

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/SerialExecutor;->b:Ljava/util/concurrent/Executor;

    .line 18
    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/SerialExecutor;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/apprupt/sdk/SerialExecutor;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/apprupt/sdk/SerialExecutor;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/apprupt/sdk/SerialExecutor;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/SerialExecutor;->a:Ljava/util/Queue;

    new-instance v1, Lcom/apprupt/sdk/SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/SerialExecutor$1;-><init>(Lcom/apprupt/sdk/SerialExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/apprupt/sdk/SerialExecutor;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/apprupt/sdk/SerialExecutor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
