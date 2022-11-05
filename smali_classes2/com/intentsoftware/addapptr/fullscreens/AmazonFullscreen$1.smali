.class Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen$1;
.super Ljava/lang/Object;
.source "AmazonFullscreen.java"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->createListener()Lcom/amazon/device/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;)V

    .line 50
    return-void
.end method
