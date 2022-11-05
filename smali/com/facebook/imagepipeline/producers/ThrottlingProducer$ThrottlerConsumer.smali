.class Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "ThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ThrottlingProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThrottlerConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/ThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    .line 79
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/ThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ThrottlingProducer$1;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;-><init>(Lcom/facebook/imagepipeline/producers/ThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method private onRequestFinished()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;->access$100(Lcom/facebook/imagepipeline/producers/ThrottlingProducer;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 106
    if-nez v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;->access$210(Lcom/facebook/imagepipeline/producers/ThrottlingProducer;)I

    .line 109
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;->access$300(Lcom/facebook/imagepipeline/producers/ThrottlingProducer;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer$1;-><init>(Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    return-void

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected onCancellationImpl()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    .line 99
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->onRequestFinished()V

    .line 100
    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 93
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->onRequestFinished()V

    .line 94
    return-void
.end method

.method protected onNewResultImpl(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer$ThrottlerConsumer;->onRequestFinished()V

    .line 88
    :cond_0
    return-void
.end method
