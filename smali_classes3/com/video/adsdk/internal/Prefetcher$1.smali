.class Lcom/video/adsdk/internal/Prefetcher$1;
.super Ljava/lang/Object;
.source "Prefetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/Prefetcher;->createDownloaderThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/Prefetcher;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/Prefetcher;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    move v2, v0

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-static {v0}, Lcom/video/adsdk/internal/Prefetcher;->access$000(Lcom/video/adsdk/internal/Prefetcher;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-static {v0}, Lcom/video/adsdk/internal/Prefetcher;->access$100(Lcom/video/adsdk/internal/Prefetcher;)Lcom/video/adsdk/interfaces/FileDownloader;

    move-result-object v0

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/FileDownloader;->deleteExpiredFiles()V

    .line 39
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-static {v0}, Lcom/video/adsdk/internal/Prefetcher;->access$000(Lcom/video/adsdk/internal/Prefetcher;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/internal/ADVideoFile;

    .line 40
    iget-object v1, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-static {v1}, Lcom/video/adsdk/internal/Prefetcher;->access$200(Lcom/video/adsdk/internal/Prefetcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    iget-object v1, v1, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/video/adsdk/interfaces/PrefetcherListener;

    .line 43
    invoke-interface {v1}, Lcom/video/adsdk/interfaces/PrefetcherListener;->onPrefetchingStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-static {v1}, Lcom/video/adsdk/internal/Prefetcher;->access$300(Lcom/video/adsdk/internal/Prefetcher;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v2

    :goto_2
    move v2, v0

    .line 58
    goto :goto_0

    .line 45
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-static {v1}, Lcom/video/adsdk/internal/Prefetcher;->access$100(Lcom/video/adsdk/internal/Prefetcher;)Lcom/video/adsdk/interfaces/FileDownloader;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/video/adsdk/interfaces/FileDownloader;->downloadFile(Lcom/video/adsdk/internal/ADVideoFile;)V

    .line 46
    iget-object v1, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    iget-object v1, v1, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/video/adsdk/interfaces/PrefetcherListener;

    .line 47
    invoke-interface {v1, v0}, Lcom/video/adsdk/interfaces/PrefetcherListener;->onPrefetchedFile(Lcom/video/adsdk/internal/ADVideoFile;)V

    goto :goto_3

    .line 50
    :cond_2
    invoke-virtual {v0}, Lcom/video/adsdk/internal/ADVideoFile;->shouldPlayAfterPrefetching()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 51
    const/4 v2, 0x1

    :cond_3
    move v0, v2

    .line 56
    goto :goto_2

    .line 60
    :cond_4
    if-eqz v2, :cond_5

    .line 61
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher$1;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    iget-object v0, v0, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/PrefetcherListener;

    .line 62
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/PrefetcherListener;->onPrefetchingDidComplete()V

    goto :goto_4

    .line 66
    :cond_5
    return-void
.end method
