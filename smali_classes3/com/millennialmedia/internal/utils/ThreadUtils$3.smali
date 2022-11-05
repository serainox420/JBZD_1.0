.class final Lcom/millennialmedia/internal/utils/ThreadUtils$3;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ThreadUtils$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ThreadUtils$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method
