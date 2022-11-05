.class Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Lcom/pubmatic/sdk/banner/ImageRequest$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->mraidStorePicture(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

.field final synthetic val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 0

    .prologue
    .line 2938
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageFailed(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    const-string v1, "Network error connecting to url."

    const-string v2, "storepicture"

    invoke-virtual {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error obtaining photo request to save to camera roll.  Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 2947
    return-void
.end method

.method public imageReceived(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2953
    check-cast p2, Landroid/graphics/Bitmap;

    .line 2955
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;

    invoke-direct {v1, p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2988
    return-void
.end method
