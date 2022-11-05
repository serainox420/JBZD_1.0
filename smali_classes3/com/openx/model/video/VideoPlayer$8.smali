.class Lcom/openx/model/video/VideoPlayer$8;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->configureBarItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$8;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$8;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2200(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$8;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VASTInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->unmute()V

    .line 702
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$8;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VASTInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->mute()V

    goto :goto_0
.end method
