.class Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InlineWebViewViewabilityListener"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 347
    check-cast p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .line 348
    if-eqz p2, :cond_1

    .line 349
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;->a:Z

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;->a:Z

    .line 351
    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->start()V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;->a:Z

    .line 356
    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->pause()V

    goto :goto_0
.end method
