.class Lcom/facebook/ads/internal/g/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/g/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/g/e$1;->a:Lcom/facebook/ads/internal/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/g/e$1;->a:Lcom/facebook/ads/internal/g/e;

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/g/e;->a(Lcom/facebook/ads/internal/g/e;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/g/e$1;->a:Lcom/facebook/ads/internal/g/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/g/e;->a(Lcom/facebook/ads/internal/g/e;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/g/e$1$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/g/e$1$1;-><init>(Lcom/facebook/ads/internal/g/e$1;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/g/e$1;->a:Lcom/facebook/ads/internal/g/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/g/e;->a(Lcom/facebook/ads/internal/g/e;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/g/e$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
