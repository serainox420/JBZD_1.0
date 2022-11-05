.class Lcom/openx/model/video/VideoPlayer$19$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/model/video/VideoPlayer$19;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer$19;)V
    .locals 0

    .prologue
    .line 1769
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$19$1;->this$1:Lcom/openx/model/video/VideoPlayer$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .prologue
    .line 1773
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1780
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19$1;->this$1:Lcom/openx/model/video/VideoPlayer$19;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$4300(Lcom/openx/model/video/VideoPlayer;)V

    .line 1781
    return-void

    .line 1775
    :cond_1
    if-nez p1, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$19$1;->this$1:Lcom/openx/model/video/VideoPlayer$19;

    iget-object v0, v0, Lcom/openx/model/video/VideoPlayer$19;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VASTInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->touch()V

    goto :goto_0
.end method
