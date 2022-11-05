.class Lcom/pubmatic/sdk/banner/PMBannerAdView$8;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Lcom/pubmatic/sdk/banner/ImageRequest$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;->fetchImage(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

.field final synthetic val$adDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;)V
    .locals 0

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->val$adDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageFailed(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image download failure.  Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 1569
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onFailedToReceiveAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Exception;)V

    .line 1573
    :cond_0
    return-void
.end method

.method public imageReceived(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1578
    .line 1580
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$8$1;

    invoke-direct {v1, p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$8$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$8;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1585
    return-void
.end method
