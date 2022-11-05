.class public Lcom/intentsoftware/addapptr/banners/RevMobBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "RevMobBanner.java"


# instance fields
.field private banner:Lcom/revmob/ads/banner/RevMobBanner;

.field private bannerContainer:Landroid/widget/FrameLayout;

.field private revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/RevMobBanner;Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->loadBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/RevMobBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/RevMobBanner;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/RevMobBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/RevMobBanner;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createBannerListener()Lcom/revmob/RevMobAdsListener;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/RevMobBanner$2;-><init>(Lcom/intentsoftware/addapptr/banners/RevMobBanner;)V

    return-object v0
.end method

.method private loadBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 63
    if-eqz p4, :cond_2

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->getRevMob()Lcom/revmob/RevMob;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/revmob/RevMob;->setUserInterests(Ljava/util/List;)V

    .line 73
    :cond_2
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->getRevMob()Lcom/revmob/RevMob;

    move-result-object v0

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->createBannerListener()Lcom/revmob/RevMobAdsListener;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/revmob/RevMob;->preLoadBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->banner:Lcom/revmob/ads/banner/RevMobBanner;

    .line 74
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->bannerContainer:Landroid/widget/FrameLayout;

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 76
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p3}, Lcom/intentsoftware/addapptr/BannerSize;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p3}, Lcom/intentsoftware/addapptr/BannerSize;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->bannerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->banner:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->banner:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->show()V

    .line 103
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->bannerContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 6

    .prologue
    const/4 v2, 0x5

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 28
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 29
    array-length v0, v3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 30
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "not enough arguments for RevMob config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :cond_0
    const-string v0, "adId doesn\'t have enough arguments."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const-string v1, "Banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->loadBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    goto :goto_0

    .line 40
    :cond_2
    new-instance v0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/RevMobBanner;Landroid/app/Activity;[Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;

    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/g;->addListener(Lcom/intentsoftware/addapptr/c/g$a;)V

    .line 52
    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {p1, v0}, Lcom/intentsoftware/addapptr/c/g;->init(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    const-string v0, "Wrong ad format provided for RevMob banner. Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :cond_4
    const-string v0, "Wrong ad format provided for RevMob banner."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/g;->removeListener(Lcom/intentsoftware/addapptr/c/g$a;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->bannerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->bannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->bannerContainer:Landroid/widget/FrameLayout;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->banner:Lcom/revmob/ads/banner/RevMobBanner;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->banner:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->release()V

    .line 118
    :cond_2
    return-void
.end method
