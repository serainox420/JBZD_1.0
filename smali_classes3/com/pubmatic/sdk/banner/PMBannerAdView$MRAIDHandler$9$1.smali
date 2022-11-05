.class Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->imageReceived(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2958
    const-string v1, "Error saving picture to device."

    .line 2961
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    .line 2962
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;->val$bitmap:Landroid/graphics/Bitmap;

    const-string v3, "AdImage"

    const-string v4, "Image created by rich media ad."

    .line 2961
    invoke-static {v0, v2, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2966
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2967
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    const-string v2, "storepicture"

    invoke-virtual {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    sget-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v1, v0}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 2986
    :goto_0
    return-void

    .line 2974
    :cond_0
    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;

    iget-object v2, v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    iget-object v2, v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2979
    :catch_0
    move-exception v0

    .line 2980
    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9$1;->this$2:Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;

    iget-object v2, v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;->val$bridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    const-string v3, "storepicture"

    invoke-virtual {v2, v1, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0
.end method
