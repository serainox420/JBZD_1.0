.class public Lcom/video/adsdk/internal/Prefetcher;
.super Ljava/lang/Object;
.source "Prefetcher.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/DownloadProgressListener;


# instance fields
.field private backgroundDownloadProcess:Ljava/lang/Thread;

.field private fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

.field private isWifiActive:Z

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/video/adsdk/interfaces/PrefetcherListener;",
            ">;"
        }
    .end annotation
.end field

.field private final videoUrlQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/video/adsdk/internal/ADVideoFile;",
            ">;"
        }
    .end annotation
.end field

.field private wiFiOnly:Z

.field private wifiMonitor:Lcom/video/adsdk/interfaces/WifiMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->videoUrlQueue:Ljava/util/Queue;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/Prefetcher;->isWifiActive:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->backgroundDownloadProcess:Ljava/lang/Thread;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/Prefetcher;->wiFiOnly:Z

    return-void
.end method

.method static synthetic access$000(Lcom/video/adsdk/internal/Prefetcher;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->videoUrlQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/video/adsdk/internal/Prefetcher;)Lcom/video/adsdk/interfaces/FileDownloader;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/video/adsdk/internal/Prefetcher;)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/video/adsdk/internal/Prefetcher;->canDownload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/video/adsdk/internal/Prefetcher;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/video/adsdk/internal/Prefetcher;->prefetchingFailed()V

    return-void
.end method

.method static synthetic access$402(Lcom/video/adsdk/internal/Prefetcher;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/video/adsdk/internal/Prefetcher;->isWifiActive:Z

    return p1
.end method

.method private canDownload()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/video/adsdk/internal/Prefetcher;->wiFiOnly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/video/adsdk/internal/Prefetcher;->isWifiActive:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDownloaderThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/video/adsdk/internal/Prefetcher$1;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/Prefetcher$1;-><init>(Lcom/video/adsdk/internal/Prefetcher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private prefetchingFailed()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/PrefetcherListener;

    .line 72
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/PrefetcherListener;->onPrefetchingFailed()V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public addPrefetcherListener(Lcom/video/adsdk/interfaces/PrefetcherListener;)V
    .locals 1

    .prologue
    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public deleteExpiredFiles()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/FileDownloader;->deleteExpiredFiles()V

    .line 148
    :cond_0
    return-void
.end method

.method public isPrefetchingRunning()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->backgroundDownloadProcess:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->backgroundDownloadProcess:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/PrefetcherListener;

    .line 126
    invoke-interface {v0, p1, p2}, Lcom/video/adsdk/interfaces/PrefetcherListener;->onProgress(D)V

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public prefetchFile(Lcom/video/adsdk/internal/ADVideoFile;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->videoUrlQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/internal/ADVideoFile;

    .line 113
    invoke-virtual {v0}, Lcom/video/adsdk/internal/ADVideoFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/video/adsdk/internal/ADVideoFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->videoUrlQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/video/adsdk/internal/Prefetcher;->isPrefetchingRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/video/adsdk/internal/Prefetcher;->startPrefetching()V

    goto :goto_0
.end method

.method public removeListener(Lcom/video/adsdk/interfaces/PrefetcherListener;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public setFileDownloader(Lcom/video/adsdk/interfaces/FileDownloader;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/video/adsdk/internal/Prefetcher;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    .line 108
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->fileDownloader:Lcom/video/adsdk/interfaces/FileDownloader;

    invoke-interface {v0, p0}, Lcom/video/adsdk/interfaces/FileDownloader;->setDownloadProgressListener(Lcom/video/adsdk/interfaces/DownloadProgressListener;)V

    .line 109
    return-void
.end method

.method public setWiFiOnly(Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/video/adsdk/internal/Prefetcher;->wiFiOnly:Z

    .line 160
    return-void
.end method

.method public setWifiMonitor(Lcom/video/adsdk/interfaces/WifiMonitor;)V
    .locals 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/video/adsdk/internal/Prefetcher;->wifiMonitor:Lcom/video/adsdk/interfaces/WifiMonitor;

    .line 89
    invoke-interface {p1}, Lcom/video/adsdk/interfaces/WifiMonitor;->isWifiActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/video/adsdk/internal/Prefetcher;->isWifiActive:Z

    .line 90
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->wifiMonitor:Lcom/video/adsdk/interfaces/WifiMonitor;

    new-instance v1, Lcom/video/adsdk/internal/Prefetcher$2;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/Prefetcher$2;-><init>(Lcom/video/adsdk/internal/Prefetcher;)V

    invoke-interface {v0, v1}, Lcom/video/adsdk/interfaces/WifiMonitor;->registerWifiListener(Lcom/video/adsdk/interfaces/WifiListener;)V

    .line 104
    return-void
.end method

.method public startPrefetching()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/video/adsdk/internal/Prefetcher;->isPrefetchingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/video/adsdk/internal/Prefetcher;->createDownloaderThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->backgroundDownloadProcess:Ljava/lang/Thread;

    .line 133
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->backgroundDownloadProcess:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 135
    :cond_0
    return-void
.end method

.method public stopPrefetching()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/video/adsdk/internal/Prefetcher;->isPrefetchingRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->backgroundDownloadProcess:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/Prefetcher;->backgroundDownloadProcess:Ljava/lang/Thread;

    .line 142
    :cond_0
    return-void
.end method
