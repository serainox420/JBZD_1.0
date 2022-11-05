.class public Lcom/intentsoftware/addapptr/banners/FacebookBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "FacebookBanner.java"


# instance fields
.field private adView:Lcom/facebook/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/FacebookBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/FacebookBanner;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/FacebookBanner;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createListener()Lcom/facebook/ads/AdListener;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/intentsoftware/addapptr/banners/FacebookBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/FacebookBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/FacebookBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->adView:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 23
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_0

    .line 24
    new-instance v0, Lcom/facebook/ads/AdView;

    sget-object v1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->adView:Lcom/facebook/ads/AdView;

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->adView:Lcom/facebook/ads/AdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->createListener()Lcom/facebook/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->adView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 34
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_1

    .line 26
    new-instance v0, Lcom/facebook/ads/AdView;

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->adView:Lcom/facebook/ads/AdView;

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/facebook/ads/AdView;

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->adView:Lcom/facebook/ads/AdView;

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->adView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FacebookBanner;->adView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 66
    :cond_0
    return-void
.end method
