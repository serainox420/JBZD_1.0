.class public Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "DFPFullscreen.java"


# instance fields
.field private interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 4

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 31
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->createAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 35
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v2

    .line 36
    const-string v0, "AddApptr"

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 37
    if-eqz p4, :cond_0

    .line 38
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

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 48
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 51
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->show()V

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 58
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->interstitialAd:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 59
    return-void
.end method
