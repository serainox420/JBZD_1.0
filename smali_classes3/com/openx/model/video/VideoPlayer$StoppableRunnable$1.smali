.class Lcom/openx/model/video/VideoPlayer$StoppableRunnable$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer$StoppableRunnable;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable$1;->this$1:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable$1;->this$1:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1300(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable$1;->this$1:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable$1;->this$1:Lcom/openx/model/video/VideoPlayer$StoppableRunnable;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1400(Lcom/openx/model/video/VideoPlayer;)V

    .line 376
    :cond_0
    return-void
.end method
