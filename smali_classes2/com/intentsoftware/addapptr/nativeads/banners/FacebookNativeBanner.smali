.class public Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "FacebookNativeBanner.java"


# instance fields
.field private bannerView:Landroid/view/View;

.field private nativeAd:Lcom/facebook/ads/NativeAd;

.field private size:Lcom/intentsoftware/addapptr/BannerSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/intentsoftware/addapptr/BannerSize;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->size:Lcom/intentsoftware/addapptr/BannerSize;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->bannerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->bannerView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/facebook/ads/NativeAd;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->nativeAd:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method private createAdListener()Lcom/facebook/ads/AdListener;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;-><init>(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->bannerView:Landroid/view/View;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 28
    iput-object p3, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->size:Lcom/intentsoftware/addapptr/BannerSize;

    .line 30
    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->nativeAd:Lcom/facebook/ads/NativeAd;

    .line 31
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->createAdListener()Lcom/facebook/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->loadAd()V

    .line 34
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->nativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->bannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->bannerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 95
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->bannerView:Landroid/view/View;

    .line 96
    return-void
.end method
