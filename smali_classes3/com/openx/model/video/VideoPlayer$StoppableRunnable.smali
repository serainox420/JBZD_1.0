.class public abstract Lcom/openx/model/video/VideoPlayer$StoppableRunnable;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StoppableRunnable"
.end annotation


# instance fields
.field private killMe:Z

.field final synthetic this$0:Lcom/openx/model/video/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/openx/model/video/VideoPlayer;)V
    .locals 1

    .prologue
    .line 313
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->killMe:Z

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->killMe:Z

    .line 321
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->killMe:Z

    .line 326
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$202(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$400(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$500(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$600(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsError()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$700(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$800(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/view/video/PublisherVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/video/PublisherVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 346
    const-string v1, ""

    .line 347
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$900(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1, v0}, Lcom/openx/model/video/VideoPlayer;->access$1000(Lcom/openx/model/video/VideoPlayer;I)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1, v0}, Lcom/openx/model/video/VideoPlayer;->access$1200(Lcom/openx/model/video/VideoPlayer;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1500(Lcom/openx/model/video/VideoPlayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/model/video/VideoPlayer$StoppableRunnable$1;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$StoppableRunnable$1;-><init>(Lcom/openx/model/video/VideoPlayer$StoppableRunnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :try_start_1
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 383
    if-nez v0, :cond_0

    .line 385
    const-string v1, "VideoPlayer"

    const-string v2, "videoplayer  seekbar to 0"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v1, v1, Lcom/openx/model/video/VideoPlayer;->customSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    :goto_1
    iget-boolean v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->killMe:Z

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1700(Lcom/openx/model/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    :cond_1
    return-void

    .line 356
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v1}, Lcom/openx/model/video/VideoPlayer;->access$1100(Lcom/openx/model/video/VideoPlayer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$1000(Lcom/openx/model/video/VideoPlayer;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 391
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE mRunnable run 2"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 401
    :catch_1
    move-exception v0

    .line 403
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE, mRunnable run 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_3
    :try_start_3
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreparing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$1600(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$StoppableRunnable;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$600(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoAdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/video/VideoAdManager;->getIsError()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
