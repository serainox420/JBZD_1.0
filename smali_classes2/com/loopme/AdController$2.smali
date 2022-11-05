.class Lcom/loopme/AdController$2;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/loopme/View360Controller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdController;->initView360ControllerCallback()Lcom/loopme/View360Controller$Callback;
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
    .line 128
    iput-object p1, p0, Lcom/loopme/AdController$2;->this$0:Lcom/loopme/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/loopme/AdController$2;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$300(Lcom/loopme/AdController;)Lcom/loopme/adview/AdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/loopme/AdController$2;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$300(Lcom/loopme/AdController;)Lcom/loopme/adview/AdView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loopme/adview/AdView;->send360Event(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/loopme/AdController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceReady ####"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/loopme/AdController$2;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$200(Lcom/loopme/AdController;)Lcom/loopme/VideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loopme/VideoController;->setSurface(Landroid/view/Surface;)V

    .line 133
    return-void
.end method
