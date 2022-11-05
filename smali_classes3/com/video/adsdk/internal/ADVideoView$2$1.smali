.class Lcom/video/adsdk/internal/ADVideoView$2$1;
.super Ljava/lang/Object;
.source "ADVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADVideoView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/video/adsdk/internal/ADVideoView$2;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADVideoView$2;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/video/adsdk/internal/ADVideoView$2$1;->this$1:Lcom/video/adsdk/internal/ADVideoView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView$2$1;->this$1:Lcom/video/adsdk/internal/ADVideoView$2;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADVideoView$2;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADVideoView;->currentState:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView$2$1;->this$1:Lcom/video/adsdk/internal/ADVideoView$2;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADVideoView$2;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    invoke-static {v0}, Lcom/video/adsdk/internal/ADVideoView;->access$008(Lcom/video/adsdk/internal/ADVideoView;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView$2$1;->this$1:Lcom/video/adsdk/internal/ADVideoView$2;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADVideoView$2;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    invoke-static {v0}, Lcom/video/adsdk/internal/ADVideoView;->access$100(Lcom/video/adsdk/internal/ADVideoView;)Lcom/video/adsdk/internal/VideoViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView$2$1;->this$1:Lcom/video/adsdk/internal/ADVideoView$2;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADVideoView$2;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADVideoView$2$1;->this$1:Lcom/video/adsdk/internal/ADVideoView$2;

    iget-object v1, v1, Lcom/video/adsdk/internal/ADVideoView$2;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    invoke-virtual {v1}, Lcom/video/adsdk/internal/ADVideoView;->getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/video/adsdk/internal/ADVideoView;->access$200(Lcom/video/adsdk/internal/ADVideoView;Lcom/video/adsdk/interfaces/VideoBridge$MovieState;)V

    .line 314
    :cond_1
    return-void
.end method
