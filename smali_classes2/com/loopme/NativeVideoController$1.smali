.class Lcom/loopme/NativeVideoController$1;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/loopme/LoopMeBanner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/NativeVideoController;->initBannerListener()Lcom/loopme/LoopMeBanner$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/NativeVideoController;


# direct methods
.method constructor <init>(Lcom/loopme/NativeVideoController;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/loopme/NativeVideoController$1;->this$0:Lcom/loopme/NativeVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoopMeBannerClicked(Lcom/loopme/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onLoopMeBannerExpired(Lcom/loopme/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onLoopMeBannerHide(Lcom/loopme/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onLoopMeBannerLeaveApp(Lcom/loopme/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public onLoopMeBannerLoadFail(Lcom/loopme/LoopMeBanner;Lcom/loopme/common/LoopMeError;)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onLoopMeBannerLoadSuccess(Lcom/loopme/LoopMeBanner;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/loopme/NativeVideoController$1;->this$0:Lcom/loopme/NativeVideoController;

    invoke-static {v0}, Lcom/loopme/NativeVideoController;->access$000(Lcom/loopme/NativeVideoController;)Lcom/loopme/common/MinimizedMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loopme/LoopMeBanner;->setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V

    .line 226
    iget-object v0, p0, Lcom/loopme/NativeVideoController$1;->this$0:Lcom/loopme/NativeVideoController;

    iget-object v1, p0, Lcom/loopme/NativeVideoController$1;->this$0:Lcom/loopme/NativeVideoController;

    invoke-static {v1}, Lcom/loopme/NativeVideoController;->access$100(Lcom/loopme/NativeVideoController;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/loopme/NativeVideoController;->access$200(Lcom/loopme/NativeVideoController;Lcom/loopme/LoopMeBanner;I)V

    .line 227
    iget-object v0, p0, Lcom/loopme/NativeVideoController$1;->this$0:Lcom/loopme/NativeVideoController;

    invoke-static {v0}, Lcom/loopme/NativeVideoController;->access$300(Lcom/loopme/NativeVideoController;)Lcom/loopme/LoopMeBanner$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/loopme/NativeVideoController$1;->this$0:Lcom/loopme/NativeVideoController;

    invoke-static {v0}, Lcom/loopme/NativeVideoController;->access$300(Lcom/loopme/NativeVideoController;)Lcom/loopme/LoopMeBanner$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/loopme/LoopMeBanner$Listener;->onLoopMeBannerLoadSuccess(Lcom/loopme/LoopMeBanner;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onLoopMeBannerShow(Lcom/loopme/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onLoopMeBannerVideoDidReachEnd(Lcom/loopme/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
