.class public Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "OpenXFullscreen.java"


# instance fields
.field private interstitial:Lcom/openx/view/AdInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createListener()Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 29
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 31
    new-instance v1, Lcom/openx/view/AdInterstitial;

    aget-object v2, v0, v6

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, p1, v2, v0}, Lcom/openx/view/AdInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->interstitial:Lcom/openx/view/AdInterstitial;

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->interstitial:Lcom/openx/view/AdInterstitial;

    sget-object v1, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_LEFT:Lcom/openx/view/AdInterstitial$ClosePosition;

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setClosePosition(Lcom/openx/view/AdInterstitial$ClosePosition;)V

    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->interstitial:Lcom/openx/view/AdInterstitial;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->createListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdInterstitial;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 38
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    if-eqz p4, :cond_4

    .line 40
    :cond_0
    new-instance v2, Lcom/openx/model/adParams/AdCallParameters;

    invoke-direct {v2}, Lcom/openx/model/adParams/AdCallParameters;-><init>()V

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setCoordinates(DD)V

    .line 44
    :cond_1
    if-eqz p4, :cond_3

    .line 45
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/openx/model/adParams/AdCallParameters;->setCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_2
    new-instance v1, Lcom/openx/view/AdInterstitial;

    aget-object v0, v0, v6

    invoke-direct {v1, p1, v0}, Lcom/openx/view/AdInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->interstitial:Lcom/openx/view/AdInterstitial;

    goto :goto_0

    .line 50
    :cond_3
    new-instance v0, Lcom/openx/core/network/OXAdRequest;

    invoke-direct {v0}, Lcom/openx/core/network/OXAdRequest;-><init>()V

    .line 51
    invoke-virtual {v0, v2}, Lcom/openx/core/network/OXAdRequest;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 52
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->interstitial:Lcom/openx/view/AdInterstitial;

    invoke-virtual {v1, v0}, Lcom/openx/view/AdInterstitial;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 57
    :goto_2
    return-void

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->interstitial:Lcom/openx/view/AdInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->load()V

    goto :goto_2
.end method

.method public show()Z
    .locals 3

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->interstitial:Lcom/openx/view/AdInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->show()V

    .line 88
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->notifyListenerThatAdIsShown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when trying to show OpenX fullscreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->interstitial:Lcom/openx/view/AdInterstitial;

    .line 101
    return-void
.end method
