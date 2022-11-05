.class Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$2;
.super Ljava/lang/Object;
.source "MoPubFullscreen.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->createListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$1000(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V

    .line 203
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$900(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$800(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V

    .line 189
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V

    .line 184
    return-void
.end method
