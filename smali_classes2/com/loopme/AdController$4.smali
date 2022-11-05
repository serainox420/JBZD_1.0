.class Lcom/loopme/AdController$4;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/loopme/VideoController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdController;->initVideoControllerCallback()Lcom/loopme/VideoController$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdController;


# direct methods
.method constructor <init>(Lcom/loopme/AdController;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/loopme/AdController$4;->this$0:Lcom/loopme/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/loopme/common/LoopMeError;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/loopme/AdController$4;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$600(Lcom/loopme/AdController;)Lcom/loopme/BaseAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 168
    return-void
.end method

.method public onVideoReachEnd()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/loopme/AdController$4;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$600(Lcom/loopme/AdController;)Lcom/loopme/BaseAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->onAdVideoDidReachEnd()V

    .line 163
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/loopme/AdController$4;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$000(Lcom/loopme/AdController;)Lcom/loopme/IViewController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/loopme/IViewController;->setVideoSize(II)V

    .line 173
    return-void
.end method

.method public playbackFinishedWithError()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/loopme/AdController$4;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$600(Lcom/loopme/AdController;)Lcom/loopme/BaseAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->getAdFormat()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/loopme/AdController$4;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$600(Lcom/loopme/AdController;)Lcom/loopme/BaseAd;

    move-result-object v0

    check-cast v0, Lcom/loopme/LoopMeBanner;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->playbackFinishedWithError()V

    .line 186
    :cond_0
    return-void
.end method

.method public postponePlay(I)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/loopme/AdController$4;->this$0:Lcom/loopme/AdController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loopme/AdController;->access$702(Lcom/loopme/AdController;Z)Z

    .line 178
    iget-object v0, p0, Lcom/loopme/AdController$4;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$802(Lcom/loopme/AdController;I)I

    .line 179
    return-void
.end method
