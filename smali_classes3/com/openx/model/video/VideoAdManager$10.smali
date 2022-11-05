.class Lcom/openx/model/video/VideoAdManager$10;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/openx/model/vast/VideoErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->setOnErrorListener()Lcom/openx/model/vast/VideoErrorListener;
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
    .line 2646
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$10;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 2

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$10;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$2102(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 2654
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$10;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2200(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2655
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$10;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2657
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 2659
    return-void
.end method
