.class public Lcom/intentsoftware/addapptr/banners/DFPBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "DFPBanner.java"


# instance fields
.field private adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private customSize:Lcom/intentsoftware/addapptr/ad/BannerAd$a;

.field private usesMultipleSizes:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->usesMultipleSizes:Z

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/DFPBanner;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->usesMultipleSizes:Z

    return v0
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/banners/DFPBanner;Lcom/intentsoftware/addapptr/ad/BannerAd$a;)Lcom/intentsoftware/addapptr/ad/BannerAd$a;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->customSize:Lcom/intentsoftware/addapptr/ad/BannerAd$a;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/DFPBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/DFPBanner;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/DFPBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/DFPBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/DFPBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/banners/DFPBanner;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/DFPBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/intentsoftware/addapptr/banners/DFPBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/DFPBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/DFPBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object v0
.end method

.method public getCustomSize()Lcom/intentsoftware/addapptr/ad/BannerAd$a;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->customSize:Lcom/intentsoftware/addapptr/ad/BannerAd$a;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 9

    .prologue
    const/4 v5, 0x5

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 33
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 34
    aget-object v3, v2, v8

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    array-length v0, v2

    if-le v0, v1, :cond_3

    .line 37
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->MutlipleSizes:Lcom/intentsoftware/addapptr/BannerSize;

    if-eq p3, v0, :cond_1

    .line 38
    invoke-static {v5}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "Obtained config with multiple banner sizes for fixed-size banner."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_0
    const-string v0, "Obtained config with multiple banner sizes for fixed-size banner."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/DFPBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 44
    :cond_1
    iput-boolean v1, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->usesMultipleSizes:Z

    move v0, v1

    .line 46
    :goto_1
    :try_start_0
    array-length v5, v2

    if-ge v0, v5, :cond_5

    .line 47
    aget-object v5, v2, v0

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 48
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 49
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 50
    new-instance v7, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v7, v6, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when parsing banner sizes for DFP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :cond_2
    const-string v0, "Exception when parsing banner sizes"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/DFPBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->MutlipleSizes:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_5

    .line 61
    invoke-static {v5}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    const-string v0, "Obtained config without banner sizes for multi-size banner."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :cond_4
    const-string v0, "Obtained config without banner sizes for multi-size banner."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/DFPBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 70
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_6

    .line 72
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 84
    :goto_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/DFPBanner;->createAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 86
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v2

    .line 87
    const-string v0, "AddApptr"

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 88
    if-eqz p4, :cond_b

    .line 89
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    goto :goto_3

    .line 73
    :cond_6
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_7

    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_2

    .line 75
    :cond_7
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_8

    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_2

    .line 77
    :cond_8
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_9

    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_2

    .line 79
    :cond_9
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->MutlipleSizes:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_a

    .line 80
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    goto/16 :goto_2

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p3}, Lcom/intentsoftware/addapptr/BannerSize;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/intentsoftware/addapptr/BannerSize;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    goto/16 :goto_2

    .line 94
    :cond_b
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_c

    .line 96
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 99
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V

    .line 117
    :cond_0
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/BannerAd;->resume(Landroid/app/Activity;)V

    .line 122
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->resume()V

    .line 125
    :cond_0
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 107
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V

    .line 109
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/DFPBanner;->adView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 110
    return-void
.end method
