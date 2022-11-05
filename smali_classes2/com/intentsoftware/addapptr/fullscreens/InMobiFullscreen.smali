.class public Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "InMobiFullscreen.java"


# instance fields
.field private interstitial:Lcom/inmobi/monetization/IMInterstitial;

.field private wasClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->wasClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->wasClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method private createIncentivisedListener()Lcom/inmobi/monetization/IMIncentivisedListener;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V

    return-object v0
.end method

.method private createListener()Lcom/inmobi/monetization/IMInterstitialListener;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 38
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 40
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "Wrong number of arguments for InMobi config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :cond_0
    const-string v0, "wrong number of arguments in adId"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 49
    invoke-static {p1, v0}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setCurrentLocation(Landroid/location/Location;)V

    .line 54
    :cond_2
    new-instance v1, Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {v1, p1, v0}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->createListener()Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->createIncentivisedListener()Lcom/inmobi/monetization/IMIncentivisedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMIncentivisedListener(Lcom/inmobi/monetization/IMIncentivisedListener;)V

    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    goto :goto_0
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 29
    const/4 v0, 0x1

    .line 31
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

    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 65
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 66
    return-void
.end method
