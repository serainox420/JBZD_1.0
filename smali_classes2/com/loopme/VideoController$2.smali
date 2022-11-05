.class Lcom/loopme/VideoController$2;
.super Landroid/os/CountDownTimer;
.source "VideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/VideoController;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/VideoController;


# direct methods
.method constructor <init>(Lcom/loopme/VideoController;JJ)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/loopme/VideoController$2;->this$0:Lcom/loopme/VideoController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 324
    const-string v0, "Buffering 2 seconds"

    invoke-static {v0}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 320
    return-void
.end method
