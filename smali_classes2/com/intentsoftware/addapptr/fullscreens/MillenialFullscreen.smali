.class public Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "MillenialFullscreen.java"


# instance fields
.field private interstitial:Lcom/millennialmedia/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)Lcom/millennialmedia/InterstitialAd;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->interstitial:Lcom/millennialmedia/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createListener()Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 23
    :try_start_0
    invoke-static {p2}, Lcom/millennialmedia/InterstitialAd;->createInstance(Ljava/lang/String;)Lcom/millennialmedia/InterstitialAd;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->interstitial:Lcom/millennialmedia/InterstitialAd;

    .line 24
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->interstitial:Lcom/millennialmedia/InterstitialAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->createListener()Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InterstitialAd;->setListener(Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    .line 26
    if-eqz p4, :cond_0

    .line 27
    new-instance v0, Lcom/millennialmedia/UserData;

    invoke-direct {v0}, Lcom/millennialmedia/UserData;-><init>()V

    .line 28
    const-string v1, ","

    invoke-virtual {p4, v1}, Lcom/intentsoftware/addapptr/c/k;->getValuesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/UserData;->setKeywords(Ljava/lang/String;)Lcom/millennialmedia/UserData;

    .line 29
    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->setUserData(Lcom/millennialmedia/UserData;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->interstitial:Lcom/millennialmedia/InterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/InterstitialAd;->load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->interstitial:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v1}, Lcom/millennialmedia/InterstitialAd;->hasExpired()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->interstitial:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v1}, Lcom/millennialmedia/InterstitialAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->interstitial:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/InterstitialAd;->show(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v0, 0x1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->interstitial:Lcom/millennialmedia/InterstitialAd;

    .line 85
    return-void
.end method
