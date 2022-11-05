.class Lcom/loopme/AdController$7;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/loopme/common/VideoLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdController;->loadVideoFile(Ljava/lang/String;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdController;

.field final synthetic val$preload:Z


# direct methods
.method constructor <init>(Lcom/loopme/AdController;Z)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    iput-boolean p2, p0, Lcom/loopme/AdController$7;->val$preload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/loopme/common/LoopMeError;)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$2100(Lcom/loopme/AdController;Lcom/loopme/common/LoopMeError;)V

    .line 499
    return-void
.end method

.method public onFullVideoLoaded(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 509
    invoke-static {}, Lcom/loopme/AdController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullVideoLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-boolean v0, p0, Lcom/loopme/AdController$7;->val$preload:Z

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$600(Lcom/loopme/AdController;)Lcom/loopme/BaseAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$2202(Lcom/loopme/AdController;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$200(Lcom/loopme/AdController;)Lcom/loopme/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v1}, Lcom/loopme/AdController;->access$2200(Lcom/loopme/AdController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopme/VideoController;->setFileRest(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$200(Lcom/loopme/AdController;)Lcom/loopme/VideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/VideoController;->waitForVideo()V

    .line 522
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$200(Lcom/loopme/AdController;)Lcom/loopme/VideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/VideoController;->releasePlayer()V

    .line 517
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$200(Lcom/loopme/AdController;)Lcom/loopme/VideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loopme/VideoController;->initPlayerFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$200(Lcom/loopme/AdController;)Lcom/loopme/VideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loopme/VideoController;->initPlayerFromFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreviewLoaded(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 503
    invoke-static {}, Lcom/loopme/AdController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreviewLoaded"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/loopme/AdController$7;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$200(Lcom/loopme/AdController;)Lcom/loopme/VideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loopme/VideoController;->initPlayerFromFile(Ljava/lang/String;)V

    .line 505
    return-void
.end method
