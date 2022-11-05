.class public Lcom/intentsoftware/addapptr/banners/AdMobBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "AdMobBanner.java"


# instance fields
.field private adView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/AdMobBanner;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/AdMobBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/AdMobBanner;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/intentsoftware/addapptr/banners/AdMobBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/AdMobBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/AdMobBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 4

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 25
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    .line 26
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->createAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 38
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 39
    const-string v0, "AddApptr"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 40
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 44
    :cond_0
    if-eqz p4, :cond_5

    .line 45
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_1

    .line 29
    :cond_2
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 31
    :cond_3
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_4

    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 52
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 54
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 70
    :cond_0
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/BannerAd;->resume(Landroid/app/Activity;)V

    .line 75
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 78
    :cond_0
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 60
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 62
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    .line 63
    return-void
.end method
