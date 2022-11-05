.class Lcom/openx/model/video/VideoAdManager$12;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
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
    .line 2955
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$12;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2983
    return-void
.end method

.method public processError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2989
    return-void
.end method

.method public processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
    .locals 0

    .prologue
    .line 2977
    return-void
.end method

.method public thumbnailCreated(Ljava/io/File;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2961
    const-string v0, "STATE_MACHINE"

    const-string v1, " calling prepareVideo() "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$12;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$4700(Lcom/openx/model/video/VideoAdManager;)V

    .line 2965
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$12;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$500(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2967
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$12;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2969
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$12;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2300(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2971
    return-void
.end method
