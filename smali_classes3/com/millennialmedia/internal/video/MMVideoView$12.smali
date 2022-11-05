.class Lcom/millennialmedia/internal/video/MMVideoView$12;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/MMVideoView;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$12;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$12;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->g(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$12;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$12;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;->onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V

    .line 797
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$12;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->g(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$12;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;->onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V

    .line 798
    return-void
.end method
