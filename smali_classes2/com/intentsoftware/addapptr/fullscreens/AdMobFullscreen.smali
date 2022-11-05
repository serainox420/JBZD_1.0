.class public Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "AdMobFullscreen.java"


# instance fields
.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;)V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 29
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->createAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 33
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 34
    const-string v0, "AddApptr"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 35
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 39
    :cond_0
    if-eqz p4, :cond_2

    .line 40
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 50
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 57
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 58
    return-void
.end method
