.class public Lcom/intentsoftware/addapptr/banners/MillenialBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "MillenialBanner.java"


# instance fields
.field private bannerFrame:Landroid/widget/FrameLayout;

.field private inlineAd:Lcom/millennialmedia/InlineAd;

.field private final inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

.field private notifiedClick:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    .line 23
    new-instance v0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-direct {v0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/MillenialBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->notifiedClick:Z

    return v0
.end method

.method static synthetic access$202(Lcom/intentsoftware/addapptr/banners/MillenialBanner;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->notifiedClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createListener()Lcom/millennialmedia/InlineAd$InlineListener;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->bannerFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 29
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->bannerFrame:Landroid/widget/FrameLayout;

    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->bannerFrame:Landroid/widget/FrameLayout;

    invoke-static {p2, v0}, Lcom/millennialmedia/InlineAd;->createInstance(Ljava/lang/String;Landroid/view/ViewGroup;)Lcom/millennialmedia/InlineAd;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAd:Lcom/millennialmedia/InlineAd;

    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAd:Lcom/millennialmedia/InlineAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->createListener()Lcom/millennialmedia/InlineAd$InlineListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd;->setListener(Lcom/millennialmedia/InlineAd$InlineListener;)V

    .line 33
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAd:Lcom/millennialmedia/InlineAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd;->setRefreshInterval(I)V

    .line 35
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    sget-object v1, Lcom/millennialmedia/InlineAd$AdSize;->BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    .line 45
    :goto_0
    if-eqz p4, :cond_0

    .line 46
    new-instance v0, Lcom/millennialmedia/UserData;

    invoke-direct {v0}, Lcom/millennialmedia/UserData;-><init>()V

    .line 47
    const-string v1, ","

    invoke-virtual {p4, v1}, Lcom/intentsoftware/addapptr/c/k;->getValuesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/UserData;->setKeywords(Ljava/lang/String;)Lcom/millennialmedia/UserData;

    .line 48
    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->setUserData(Lcom/millennialmedia/UserData;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAd:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd;->request(Lcom/millennialmedia/InlineAd$InlineAdMetadata;)V

    .line 55
    :goto_1
    return-void

    .line 37
    :cond_1
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    sget-object v1, Lcom/millennialmedia/InlineAd$AdSize;->MEDIUM_RECTANGLE:Lcom/millennialmedia/InlineAd$AdSize;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_2
    :try_start_1
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    sget-object v1, Lcom/millennialmedia/InlineAd$AdSize;->FULL_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    goto :goto_0

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    sget-object v1, Lcom/millennialmedia/InlineAd$AdSize;->LEADERBOARD:Lcom/millennialmedia/InlineAd$AdSize;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/BannerAd;->resume(Landroid/app/Activity;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->notifiedClick:Z

    .line 111
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAd:Lcom/millennialmedia/InlineAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->bannerFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAd:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd;->setListener(Lcom/millennialmedia/InlineAd$InlineListener;)V

    .line 117
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->bannerFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 118
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->inlineAd:Lcom/millennialmedia/InlineAd;

    .line 119
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->bannerFrame:Landroid/widget/FrameLayout;

    .line 122
    :cond_0
    return-void
.end method
