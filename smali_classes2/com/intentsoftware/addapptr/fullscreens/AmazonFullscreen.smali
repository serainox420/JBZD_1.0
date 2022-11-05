.class public Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "AmazonFullscreen.java"


# instance fields
.field private interstitial:Lcom/amazon/device/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 5

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 28
    invoke-static {p2}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    .line 31
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->createListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 33
    if-eqz p4, :cond_1

    .line 34
    new-instance v2, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v2}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 35
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/device/ads/AdTargetingOptions;->setAdvancedOption(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/AdTargetingOptions;

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 42
    :goto_1
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd()Z

    goto :goto_1
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->notifyListenerThatAdIsShown()V

    .line 75
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 85
    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;->interstitial:Lcom/amazon/device/ads/InterstitialAd;

    .line 87
    :cond_0
    return-void
.end method
