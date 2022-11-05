.class public Lcom/intentsoftware/addapptr/banners/AmazonBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "AmazonBanner.java"


# instance fields
.field private banner:Lcom/amazon/device/ads/AdLayout;

.field private notifiedClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/AmazonBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->notifiedClick:Z

    return v0
.end method

.method static synthetic access$202(Lcom/intentsoftware/addapptr/banners/AmazonBanner;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->notifiedClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method private createListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/AmazonBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 32
    invoke-static {p2}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_0

    .line 35
    new-instance v0, Lcom/amazon/device/ads/AdLayout;

    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_300x250:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    .line 42
    :goto_0
    iput-boolean v4, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->notifiedClick:Z

    .line 43
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->createListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 45
    invoke-virtual {p3}, Lcom/intentsoftware/addapptr/BannerSize;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 46
    invoke-virtual {p3}, Lcom/intentsoftware/addapptr/BannerSize;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 48
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 49
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v2, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v2}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 53
    if-eqz p4, :cond_2

    .line 54
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/device/ads/AdTargetingOptions;->setAdvancedOption(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/AdTargetingOptions;

    goto :goto_1

    .line 36
    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_1

    .line 37
    new-instance v0, Lcom/amazon/device/ads/AdLayout;

    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_728x90:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/amazon/device/ads/AdLayout;

    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    goto/16 :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 60
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AmazonBanner;->banner:Lcom/amazon/device/ads/AdLayout;

    .line 108
    :cond_0
    return-void
.end method
