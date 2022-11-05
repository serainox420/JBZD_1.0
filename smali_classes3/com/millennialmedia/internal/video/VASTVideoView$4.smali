.class Lcom/millennialmedia/internal/video/VASTVideoView$4;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$4;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 801
    invoke-static {}, Lcom/millennialmedia/internal/video/VASTVideoView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error occurred downloading the video file."

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 802
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$4;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->k(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$4;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->k(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    .line 805
    :cond_0
    return-void
.end method

.method public onDownloadSucceeded(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 784
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$4$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$4$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$4;Ljava/io/File;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 795
    return-void
.end method
