.class Lcom/openx/model/video/VideoAdManager$13;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->adCompleteHandler()V
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
    .line 3576
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$13;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3602
    return-void
.end method

.method public processError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 3608
    return-void
.end method

.method public processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 0

    .prologue
    .line 3596
    return-void
.end method

.method public thumbnailCreated(Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3582
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$13;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$902(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 3584
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$13;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$500(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3586
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$13;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3588
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$13;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3590
    return-void
.end method
