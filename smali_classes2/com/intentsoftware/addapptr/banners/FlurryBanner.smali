.class public Lcom/intentsoftware/addapptr/banners/FlurryBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "FlurryBanner.java"


# instance fields
.field private banner:Lcom/flurry/android/ads/FlurryAdBanner;

.field private bannerFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/FlurryBanner;)Lcom/flurry/android/ads/FlurryAdBanner;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->banner:Lcom/flurry/android/ads/FlurryAdBanner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/FlurryBanner;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/FlurryBanner;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/FlurryBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/flurry/android/ads/FlurryAdBannerListener;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/intentsoftware/addapptr/banners/FlurryBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/FlurryBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/FlurryBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->bannerFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 24
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 28
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 29
    aget-object v0, v0, v2

    .line 35
    invoke-static {p1, v1}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->bannerFrame:Landroid/widget/FrameLayout;

    .line 37
    new-instance v1, Lcom/flurry/android/ads/FlurryAdBanner;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->bannerFrame:Landroid/widget/FrameLayout;

    invoke-direct {v1, p1, v2, v0}, Lcom/flurry/android/ads/FlurryAdBanner;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->banner:Lcom/flurry/android/ads/FlurryAdBanner;

    .line 38
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->banner:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->createListener()Lcom/flurry/android/ads/FlurryAdBannerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdBanner;->setListener(Lcom/flurry/android/ads/FlurryAdBannerListener;)V

    .line 40
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->banner:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdBanner;->fetchAd()V

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "Not enough ad id parts for Flurry Banner"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->bannerFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->bannerFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 92
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->bannerFrame:Landroid/widget/FrameLayout;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->banner:Lcom/flurry/android/ads/FlurryAdBanner;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->banner:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdBanner;->destroy()V

    .line 97
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->banner:Lcom/flurry/android/ads/FlurryAdBanner;

    .line 99
    :cond_1
    return-void
.end method
