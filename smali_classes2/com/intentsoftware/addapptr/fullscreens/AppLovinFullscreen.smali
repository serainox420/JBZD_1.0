.class public Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "AppLovinFullscreen.java"


# instance fields
.field private ad:Lcom/applovin/sdk/AppLovinAd;

.field private adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

.field private adWasClicked:Z

.field private reportedResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->reportedResume:Z

    return v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adWasClicked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adWasClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->ad:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method private createAdLoadListener()Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$4;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$4;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 29
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    invoke-static {p2, v0, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 32
    :cond_0
    const-string v0, "sdk or activity is null"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 37
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    new-instance v2, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$1;

    invoke-direct {v2, p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V

    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 51
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    new-instance v2, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$2;

    invoke-direct {v2, p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V

    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    new-instance v2, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$3;

    invoke-direct {v2, p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$3;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V

    invoke-interface {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 75
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->createAdLoadListener()Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->reportedResume:Z

    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->dismiss()V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 112
    return-void
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->adDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->ad:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 82
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->notifyListenerThatAdIsShown()V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
