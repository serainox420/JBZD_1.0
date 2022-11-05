.class Lcom/openx/model/video/VideoAdManager$11;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/openx/model/vast/VideoCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->setOnCompletionListener()Lcom/openx/model/vast/VideoCompletionListener;
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
    .line 2667
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$11;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$11;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1100(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/video/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->setCompleted()V

    .line 2675
    return-void
.end method
