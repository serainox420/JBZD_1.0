.class public Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "PubMaticFullscreen.java"


# instance fields
.field private interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

.field private notifiedClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifiedClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifiedClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createActivityListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V

    return-object v0
.end method

.method private createRequestListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 25
    new-instance v0, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-direct {v0, p1}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    .line 26
    invoke-static {p1, p2}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->createMoceanBannerAdRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;

    move-result-object v0

    .line 28
    if-eqz p4, :cond_0

    .line 29
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->setCustomParams(Ljava/util/Map;)V

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->createRequestListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->setRequestListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;)V

    .line 33
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->createActivityListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->setActivityListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;)V

    .line 35
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->setAndroidIdEnabled(Z)V

    .line 37
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->execute(Lcom/pubmatic/sdk/common/AdRequest;)V

    .line 38
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->closeInterstitial()V

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifiedClick:Z

    .line 123
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->showInterstitial()V

    .line 100
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->notifyListenerThatAdIsShown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->reset()V

    .line 111
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->setActivityListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;)V

    .line 112
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->setRequestListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;)V

    .line 113
    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;->interstitial:Lcom/pubmatic/sdk/banner/PMInterstitialAdView;

    .line 115
    :cond_0
    return-void
.end method
