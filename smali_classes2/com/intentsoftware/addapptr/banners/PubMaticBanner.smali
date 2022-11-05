.class public Lcom/intentsoftware/addapptr/banners/PubMaticBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "PubMaticBanner.java"


# instance fields
.field private banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

.field private bannerFrame:Landroid/widget/FrameLayout;

.field private notifiedClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifiedClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifiedClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method private createActivityListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V

    return-object v0
.end method

.method private createRequestListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner$2;-><init>(Lcom/intentsoftware/addapptr/banners/PubMaticBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->bannerFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 29
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->bannerFrame:Landroid/widget/FrameLayout;

    .line 30
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
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

    .line 33
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {v0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    .line 34
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->bannerFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-static {p1, p2}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->createMoceanBannerAdRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;

    move-result-object v0

    .line 38
    if-eqz p4, :cond_0

    .line 39
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mocean/MoceanBannerAdRequest;->setCustomParams(Ljava/util/Map;)V

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->createRequestListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setRequestListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;)V

    .line 43
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->createActivityListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setActivityListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;)V

    .line 45
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v1, v5}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setAndroidIdEnabled(Z)V

    .line 47
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 48
    invoke-virtual {p1, v1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v1, v5}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setLocationDetectionEnabled(Z)V

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->execute(Lcom/pubmatic/sdk/common/AdRequest;)V

    .line 55
    return-void

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setLocationDetectionEnabled(Z)V

    goto :goto_0
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/BannerAd;->resume(Landroid/app/Activity;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->notifiedClick:Z

    .line 136
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->bannerFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->bannerFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->reset()V

    .line 126
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setActivityListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;)V

    .line 127
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setRequestListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;)V

    .line 128
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;->banner:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    .line 130
    :cond_1
    return-void
.end method
