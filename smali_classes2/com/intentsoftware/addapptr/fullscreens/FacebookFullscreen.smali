.class public Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "FacebookFullscreen.java"


# instance fields
.field private interstitial:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method private createListener()Lcom/facebook/ads/InterstitialAdListener;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 21
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    .line 22
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->createListener()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 23
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 24
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    move-result v0

    return v0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;->interstitial:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 65
    :cond_0
    return-void
.end method
