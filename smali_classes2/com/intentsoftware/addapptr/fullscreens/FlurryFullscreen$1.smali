.class Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;
.super Ljava/lang/Object;
.source "FlurryFullscreen.java"

# interfaces
.implements Lcom/flurry/android/ads/FlurryAdInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->createListener()Lcom/flurry/android/ads/FlurryAdInterstitialListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppExit(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onClicked(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V

    .line 70
    return-void
.end method

.method public onClose(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onDisplay(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V

    .line 55
    return-void
.end method

.method public onError(Lcom/flurry/android/ads/FlurryAdInterstitial;Lcom/flurry/android/ads/FlurryAdErrorType;I)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onFetched(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V

    .line 45
    return-void
.end method

.method public onRendered(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onVideoCompleted(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V

    .line 75
    return-void
.end method
