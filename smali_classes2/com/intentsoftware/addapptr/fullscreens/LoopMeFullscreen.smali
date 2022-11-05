.class public Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "LoopMeFullscreen.java"


# instance fields
.field private interstitial:Lcom/loopme/LoopMeInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)Lcom/loopme/LoopMeInterstitial;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    return-object v0
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createListener()Lcom/loopme/LoopMeInterstitial$Listener;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 21
    invoke-static {p2, p1}, Lcom/loopme/LoopMeInterstitial;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    .line 22
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->createListener()Lcom/loopme/LoopMeInterstitial$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeInterstitial;->setListener(Lcom/loopme/LoopMeInterstitial$Listener;)V

    .line 23
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeInterstitial;->useMobileNetworkForCaching(Z)V

    .line 25
    if-eqz p4, :cond_0

    .line 26
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    const-string v1, ","

    invoke-virtual {p4, v1}, Lcom/intentsoftware/addapptr/c/k;->getValuesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/loopme/LoopMeInterstitial;->load()V

    .line 30
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/loopme/LoopMeInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/loopme/LoopMeInterstitial;->show()V

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;->interstitial:Lcom/loopme/LoopMeInterstitial;

    .line 45
    return-void
.end method
