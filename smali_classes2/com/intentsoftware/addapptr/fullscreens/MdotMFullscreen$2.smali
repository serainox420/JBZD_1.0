.class Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;
.super Ljava/lang/Object;
.source "MdotMFullscreen.java"

# interfaces
.implements Lcom/mdotm/android/listener/MdotMAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->createListener()Lcom/mdotm/android/listener/MdotMAdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didShowInterstitial()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onDismissScreen()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onFailedToReceiveNativeAd()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V

    .line 75
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onNativeAdClick()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onReceiveInterstitialAd()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V

    .line 61
    return-void
.end method

.method public onReceiveNativeAd(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/nativeads/MdotMNativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public onRewardedVideoComplete(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V

    .line 95
    :cond_0
    return-void
.end method

.method public willShowInterstitial()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V

    .line 56
    return-void
.end method
