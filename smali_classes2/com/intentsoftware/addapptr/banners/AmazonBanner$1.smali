.class Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;
.super Ljava/lang/Object;
.source "AmazonBanner.java"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/AmazonBanner;->createListener()Lcom/amazon/device/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->access$200(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->access$202(Lcom/intentsoftware/addapptr/banners/AmazonBanner;Z)Z

    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->access$400(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->access$200(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->access$202(Lcom/intentsoftware/addapptr/banners/AmazonBanner;Z)Z

    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->access$300(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->access$100(Lcom/intentsoftware/addapptr/banners/AmazonBanner;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->access$000(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)V

    .line 68
    return-void
.end method
