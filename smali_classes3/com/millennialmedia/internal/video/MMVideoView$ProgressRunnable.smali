.class Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;Lcom/millennialmedia/internal/video/MMVideoView$1;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->e(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 318
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable$1;-><init>(Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 341
    :goto_0
    monitor-exit p0

    .line 342
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->a(Lcom/millennialmedia/internal/video/MMVideoView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
