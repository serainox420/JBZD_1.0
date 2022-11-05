.class public Lcom/intentsoftware/addapptr/banners/AppLovinBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "AppLovinBanner.java"


# instance fields
.field private adView:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method private createAdLoadListener()Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$2;-><init>(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 25
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    invoke-static {p2, v0, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_0

    .line 28
    new-instance v1, Lcom/applovin/adview/AppLovinAdView;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v1, v0, v2, p1}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->createAdLoadListener()Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 39
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$1;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAutoDestroy(Z)V

    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    .line 47
    :goto_1
    return-void

    .line 29
    :cond_0
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_1

    .line 30
    new-instance v1, Lcom/applovin/adview/AppLovinAdView;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v1, v0, v2, p1}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_2

    .line 32
    new-instance v1, Lcom/applovin/adview/AppLovinAdView;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v1, v0, v2, p1}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "unsupported size"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->pause()V

    .line 74
    :cond_0
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/BannerAd;->resume(Landroid/app/Activity;)V

    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->resume()V

    .line 82
    :cond_0
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    .line 90
    return-void
.end method
