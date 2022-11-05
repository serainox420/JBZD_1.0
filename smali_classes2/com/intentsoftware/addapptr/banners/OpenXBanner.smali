.class public Lcom/intentsoftware/addapptr/banners/OpenXBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "OpenXBanner.java"


# instance fields
.field private banner:Lcom/openx/view/AdBanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/OpenXBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/OpenXBanner;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/OpenXBanner;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createListener()Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/intentsoftware/addapptr/banners/OpenXBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/OpenXBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/OpenXBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 31
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 33
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "not enough arguments for OpenX config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :cond_0
    const-string v0, "not enough arguments in adId"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 40
    :cond_1
    aget-object v1, v0, v6

    .line 41
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 43
    new-instance v2, Lcom/openx/view/AdBanner;

    invoke-direct {v2, p1, v1, v0}, Lcom/openx/view/AdBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    .line 44
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    invoke-virtual {v1, v0}, Lcom/openx/view/AdBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0, v6}, Lcom/openx/view/AdBanner;->setAutoStartLoading(Z)V

    .line 47
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0, v6}, Lcom/openx/view/AdBanner;->setAutoRefreshInterval(I)V

    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->createListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 50
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    if-eqz p4, :cond_5

    .line 52
    :cond_2
    new-instance v2, Lcom/openx/model/adParams/AdCallParameters;

    invoke-direct {v2}, Lcom/openx/model/adParams/AdCallParameters;-><init>()V

    .line 53
    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setCoordinates(DD)V

    .line 56
    :cond_3
    if-eqz p4, :cond_4

    .line 57
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
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

    .line 62
    :cond_4
    new-instance v0, Lcom/openx/core/network/OXAdRequest;

    invoke-direct {v0}, Lcom/openx/core/network/OXAdRequest;-><init>()V

    .line 63
    invoke-virtual {v0, v2}, Lcom/openx/core/network/OXAdRequest;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 64
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    invoke-virtual {v1, v0}, Lcom/openx/view/AdBanner;->load(Lcom/openx/core/network/OXAdRequest;)V

    goto/16 :goto_0

    .line 66
    :cond_5
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0}, Lcom/openx/view/AdBanner;->load()V

    goto/16 :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->banner:Lcom/openx/view/AdBanner;

    .line 103
    return-void
.end method
