.class Lcom/openx/model/video/VideoAdManager$14;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/openx/model/vast/VASTInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->setVASTInterface(Lcom/openx/model/vast/VASTPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoAdManager;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 3796
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->close()V

    .line 3872
    return-void
.end method

.method public closeLinear()V
    .locals 1

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->closeLinear()V

    .line 3878
    return-void
.end method

.method public collapse()V
    .locals 0

    .prologue
    .line 3844
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager$14;->exitFullScreen()V

    .line 3845
    return-void
.end method

.method public exitFullScreen()V
    .locals 1

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setCollapsed()V

    .line 3851
    return-void
.end method

.method public expand()V
    .locals 0

    .prologue
    .line 3830
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager$14;->fullScreen()V

    .line 3831
    return-void
.end method

.method public fullScreen()V
    .locals 1

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setExpanded()V

    .line 3839
    return-void
.end method

.method public mute()V
    .locals 2

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$4802(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3857
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setMuted()V

    .line 3858
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 3924
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openx/video/statemachine/StateMachine;->onWindowFocusChanged(Z)V

    .line 3926
    return-void
.end method

.method public orientationChanged(I)V
    .locals 1

    .prologue
    .line 3916
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openx/video/statemachine/StateMachine;->orientationChanged(I)V

    .line 3918
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 3821
    const-string v0, "VAST"

    const-string v1, "vastPause()"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->playClick()V

    .line 3825
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->playClick()V

    .line 3816
    return-void
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3898
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_REWIND:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3901
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_REWIND:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1200(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3902
    return-void
.end method

.method public skip()V
    .locals 2

    .prologue
    .line 3883
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$3502(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3884
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_SKIP:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1200(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 3886
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setSkipped()V

    .line 3888
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setCompleted()V

    .line 3890
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3801
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/openx/model/video/VideoAdManager;->access$1302(Lcom/openx/model/video/VideoAdManager;D)D

    .line 3802
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1402(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3803
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1502(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3804
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1602(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3805
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1702(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3806
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$802(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3809
    return-void
.end method

.method public touch()V
    .locals 1

    .prologue
    .line 3908
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->touch()V

    .line 3910
    return-void
.end method

.method public unmute()V
    .locals 2

    .prologue
    .line 3863
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$4802(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3864
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$14;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setUnMuted()V

    .line 3866
    return-void
.end method
