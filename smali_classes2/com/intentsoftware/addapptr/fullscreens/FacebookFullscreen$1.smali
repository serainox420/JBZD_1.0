.class Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen$1;
.super Ljava/lang/Object;
.source "FacebookFullscreen.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->createListener()Lcom/facebook/ads/InterstitialAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;)V

    .line 42
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;)V

    .line 37
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;)V

    .line 47
    return-void
.end method
