.class Lcom/openx/model/video/VideoPlayer$4;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->configureToggleExpandButton()V
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
    .line 447
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$4;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 453
    const-string v0, "VideoPlayer"

    const-string v1, "toggleExpand.setOnClickListener() 381"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$4;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1800(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$4;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VASTInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->exitFullScreen()V

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$4;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VASTInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->fullScreen()V

    goto :goto_0
.end method
