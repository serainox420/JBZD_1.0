.class public Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;
.super Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadExecutor"
.end annotation


# instance fields
.field private final threadScheduler:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

.field private final threadVerify:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)V
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    invoke-static {p2}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->access$100(Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;)Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;-><init>(Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 339
    iput-object p1, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;->threadVerify:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    .line 340
    iput-object p2, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;->threadScheduler:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    .line 341
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$1;->$SwitchMap$com$amazon$device$ads$ThreadUtils$ExecutionThread:[I

    iget-object v2, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;->threadScheduler:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->getExecutionThread()Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;->threadScheduler:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->execute(Ljava/lang/Runnable;)V

    .line 366
    :goto_1
    return-void

    .line 350
    :pswitch_0
    iget-object v1, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;->threadVerify:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->isOnMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadExecutor;->threadVerify:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->isOnMainThread()Z

    move-result v0

    goto :goto_0

    .line 364
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
