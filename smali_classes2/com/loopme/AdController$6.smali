.class Lcom/loopme/AdController$6;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/loopme/adview/Bridge$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdController;->initBridgeListener()Lcom/loopme/adview/Bridge$Listener;
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
    .line 419
    iput-object p1, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsClose()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$1600(Lcom/loopme/AdController;)V

    .line 449
    return-void
.end method

.method public onJsFullscreenMode(Z)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$1800(Lcom/loopme/AdController;Z)V

    .line 459
    return-void
.end method

.method public onJsLoadFail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$1700(Lcom/loopme/AdController;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public onJsLoadSuccess()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$1500(Lcom/loopme/AdController;)V

    .line 444
    return-void
.end method

.method public onJsVideoLoad(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$1400(Lcom/loopme/AdController;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public onJsVideoMute(Z)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$1300(Lcom/loopme/AdController;Z)V

    .line 434
    return-void
.end method

.method public onJsVideoPause(I)V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$1200(Lcom/loopme/AdController;I)V

    .line 429
    return-void
.end method

.method public onJsVideoPlay(I)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$1100(Lcom/loopme/AdController;I)V

    .line 424
    return-void
.end method

.method public onJsVideoStretch(Z)V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$2000(Lcom/loopme/AdController;Z)V

    .line 469
    return-void
.end method

.method public onNonLoopMe(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/loopme/AdController$6;->this$0:Lcom/loopme/AdController;

    invoke-static {v0, p1}, Lcom/loopme/AdController;->access$1900(Lcom/loopme/AdController;Ljava/lang/String;)V

    .line 464
    return-void
.end method
