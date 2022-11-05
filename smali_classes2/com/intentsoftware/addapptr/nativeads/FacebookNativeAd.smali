.class public Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;
.super Lcom/intentsoftware/addapptr/ad/NativeAd;
.source "FacebookNativeAd.java"


# instance fields
.field private brandingLogo:Landroid/view/View;

.field private nativeAd:Lcom/facebook/ads/NativeAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->brandingLogo:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$1400(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)Lcom/facebook/ads/NativeAd;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->setRating(Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createAdListener()Lcom/facebook/ads/AdListener;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$2;-><init>(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V

    return-object v0
.end method

.method private createImpressionListener()Lcom/facebook/ads/ImpressionListener;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd$1;-><init>(Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;)V

    return-object v0
.end method


# virtual methods
.method public attachToLayout(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public getBrandingLogo()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->brandingLogo:Landroid/view/View;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    return v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/NativeAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 26
    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    .line 27
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->createAdListener()Lcom/facebook/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->createImpressionListener()Lcom/facebook/ads/ImpressionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setImpressionListener(Lcom/facebook/ads/ImpressionListener;)V

    .line 29
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->loadAd()V

    .line 31
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->unload()V

    .line 104
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;->nativeAd:Lcom/facebook/ads/NativeAd;

    .line 106
    return-void
.end method
