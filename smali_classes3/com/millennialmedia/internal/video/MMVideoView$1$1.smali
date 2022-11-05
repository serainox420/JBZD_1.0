.class Lcom/millennialmedia/internal/video/MMVideoView$1$1;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/MMVideoView$1;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/MMVideoView$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView$1;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1$1;->a:Lcom/millennialmedia/internal/video/MMVideoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1$1;->a:Lcom/millennialmedia/internal/video/MMVideoView$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->g(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1$1;->a:Lcom/millennialmedia/internal/video/MMVideoView$1;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/MMVideoView$1;->a:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;->onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V

    .line 277
    return-void
.end method
