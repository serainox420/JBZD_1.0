.class Lcom/loopme/VideoController$1;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/VideoController;->initProgressRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/VideoController;


# direct methods
.method constructor <init>(Lcom/loopme/VideoController;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/loopme/VideoController$1;->this$0:Lcom/loopme/VideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/loopme/VideoController$1;->this$0:Lcom/loopme/VideoController;

    invoke-static {v0}, Lcom/loopme/VideoController;->access$000(Lcom/loopme/VideoController;)Lcom/loopme/adview/AdView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/loopme/VideoController$1;->this$0:Lcom/loopme/VideoController;

    invoke-virtual {v0}, Lcom/loopme/VideoController;->getCurrentPosition()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/loopme/VideoController$1;->this$0:Lcom/loopme/VideoController;

    invoke-static {v1}, Lcom/loopme/VideoController;->access$000(Lcom/loopme/VideoController;)Lcom/loopme/adview/AdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/loopme/adview/AdView;->setVideoCurrentTime(I)V

    .line 109
    iget-object v1, p0, Lcom/loopme/VideoController$1;->this$0:Lcom/loopme/VideoController;

    invoke-static {v1}, Lcom/loopme/VideoController;->access$100(Lcom/loopme/VideoController;)V

    .line 111
    iget-object v1, p0, Lcom/loopme/VideoController$1;->this$0:Lcom/loopme/VideoController;

    invoke-static {v1}, Lcom/loopme/VideoController;->access$200(Lcom/loopme/VideoController;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/loopme/VideoController$1;->this$0:Lcom/loopme/VideoController;

    invoke-static {v0}, Lcom/loopme/VideoController;->access$400(Lcom/loopme/VideoController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/VideoController$1;->this$0:Lcom/loopme/VideoController;

    invoke-static {v1}, Lcom/loopme/VideoController;->access$300(Lcom/loopme/VideoController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
