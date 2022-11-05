.class Lcom/millennialmedia/internal/video/MMVideoView$1;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
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
    .line 253
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->c(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->h(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 294
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 257
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->a(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 259
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->c(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->c(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->d(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->e(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 264
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->f(Lcom/millennialmedia/internal/video/MMVideoView;)V

    .line 265
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->a(Lcom/millennialmedia/internal/video/MMVideoView;I)I

    .line 267
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->a(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->b(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->d(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->a(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->b(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->g(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->h(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 272
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$1$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$1$1;-><init>(Lcom/millennialmedia/internal/video/MMVideoView$1;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->h(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 282
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 285
    :cond_3
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->a(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 302
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->c(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->c(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 305
    :cond_0
    return-void
.end method
