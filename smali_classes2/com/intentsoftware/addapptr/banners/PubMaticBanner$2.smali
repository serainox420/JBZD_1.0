.class Lcom/intentsoftware/addapptr/banners/PubMaticBanner$2;
.super Ljava/lang/Object;
.source "PubMaticBanner.java"

# interfaces
.implements Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->createRequestListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 91
    if-eqz p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$400(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$500(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$600(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V

    .line 101
    return-void
.end method

.method public onReceivedThirdPartyRequest(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/banner/PMBannerAdView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$700(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V

    .line 106
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "Obtained third party request!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
