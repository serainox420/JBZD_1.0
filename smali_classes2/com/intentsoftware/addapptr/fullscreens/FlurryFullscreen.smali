.class public Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "FlurryFullscreen.java"


# instance fields
.field private interstitial:Lcom/flurry/android/ads/FlurryAdInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/flurry/android/ads/FlurryAdInterstitialListener;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 22
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 25
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 26
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 27
    aget-object v0, v0, v2

    .line 33
    invoke-static {p1, v1}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-direct {v1, p1, v0}, Lcom/flurry/android/ads/FlurryAdInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->interstitial:Lcom/flurry/android/ads/FlurryAdInterstitial;

    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->interstitial:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->createListener()Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdInterstitial;->setListener(Lcom/flurry/android/ads/FlurryAdInterstitialListener;)V

    .line 37
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->interstitial:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdInterstitial;->fetchAd()V

    .line 38
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v0, "Not enough ad id parts for Flurry Fulscreen"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->interstitial:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->interstitial:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdInterstitial;->displayAd()V

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->interstitial:Lcom/flurry/android/ads/FlurryAdInterstitial;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;->interstitial:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdInterstitial;->destroy()V

    .line 99
    :cond_0
    return-void
.end method
