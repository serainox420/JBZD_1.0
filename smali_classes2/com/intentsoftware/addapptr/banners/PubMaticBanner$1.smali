.class Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;
.super Ljava/lang/Object;
.source "PubMaticBanner.java"

# interfaces
.implements Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->createActivityListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;
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
    .line 58
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonClick(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$300(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V

    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;Z)Z

    .line 82
    :cond_0
    return v1
.end method

.method public onLeavingApplication(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;Z)Z

    .line 72
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$200(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onOpenUrl(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;Z)Z

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->access$100(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
