.class public Lcom/mopub/mobileads/VastVideoView;
.super Landroid/widget/VideoView;
.source "VastVideoView.java"


# instance fields
.field private a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

.field private b:Landroid/media/MediaMetadataRetriever;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->b:Landroid/media/MediaMetadataRetriever;

    .line 39
    return-void
.end method


# virtual methods
.method a()Landroid/media/MediaMetadataRetriever;
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 128
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/media/MediaPlayer;IILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    if-ne p2, v0, :cond_0

    const/high16 v2, -0x80000000

    if-ne p3, v2, :cond_0

    iget v2, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    if-ge v2, v0, :cond_0

    .line 90
    const/4 v3, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 93
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 102
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 103
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 109
    iget v1, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    .line 112
    :goto_0
    return v0

    .line 105
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 108
    :goto_1
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 109
    iget v0, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    move v0, v1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 109
    iget v1, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    throw v0

    :cond_0
    move v0, v1

    .line 112
    goto :goto_0

    .line 108
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 105
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method getBlurLastVideoFrameTask()Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    return-object v0
.end method

.method getVideoRetries()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget v0, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->cancel(Z)Z

    .line 75
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoView;->c:I

    .line 122
    return-void
.end method

.method public prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->b:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->b:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;-><init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "Failed to blur last video frame"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method setBlurLastVideoFrameTask(Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->a:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    .line 154
    return-void
.end method

.method setMediaMetadataRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->b:Landroid/media/MediaMetadataRetriever;

    .line 139
    return-void
.end method
