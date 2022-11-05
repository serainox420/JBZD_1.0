.class Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;
.super Ljava/lang/Object;
.source "LoopMeFullscreen.java"

# interfaces
.implements Lcom/loopme/LoopMeInterstitial$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->createListener()Lcom/loopme/LoopMeInterstitial$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoopMeInterstitialClicked(Lcom/loopme/LoopMeInterstitial;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V

    .line 92
    return-void
.end method

.method public onLoopMeInterstitialExpired(Lcom/loopme/LoopMeInterstitial;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onLoopMeInterstitialHide(Lcom/loopme/LoopMeInterstitial;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)Lcom/loopme/LoopMeInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)Lcom/loopme/LoopMeInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/LoopMeInterstitial;->destroy()V

    .line 83
    :cond_0
    return-void
.end method

.method public onLoopMeInterstitialLeaveApp(Lcom/loopme/LoopMeInterstitial;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onLoopMeInterstitialLoadFail(Lcom/loopme/LoopMeInterstitial;Lcom/loopme/common/LoopMeError;)V
    .locals 2

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-virtual {p2}, Lcom/loopme/common/LoopMeError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    const-string v1, "unknown error"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoopMeInterstitialLoadSuccess(Lcom/loopme/LoopMeInterstitial;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V

    .line 63
    return-void
.end method

.method public onLoopMeInterstitialShow(Lcom/loopme/LoopMeInterstitial;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V

    .line 58
    return-void
.end method

.method public onLoopMeInterstitialVideoDidReachEnd(Lcom/loopme/LoopMeInterstitial;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V

    .line 53
    return-void
.end method
