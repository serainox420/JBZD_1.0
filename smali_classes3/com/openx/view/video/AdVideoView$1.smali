.class Lcom/openx/view/video/AdVideoView$1;
.super Ljava/lang/Object;
.source "AdVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/video/AdVideoView;->processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/video/AdVideoView;


# direct methods
.method constructor <init>(Lcom/openx/view/video/AdVideoView;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/openx/view/video/AdVideoView$1;->this$0:Lcom/openx/view/video/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/openx/view/video/AdVideoView$1;->this$0:Lcom/openx/view/video/AdVideoView;

    invoke-static {v0}, Lcom/openx/view/video/AdVideoView;->access$000(Lcom/openx/view/video/AdVideoView;)Lcom/openx/view/video/network/DownloadTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/video/network/DownloadTask;->cancel(Z)Z

    .line 355
    return-void
.end method
