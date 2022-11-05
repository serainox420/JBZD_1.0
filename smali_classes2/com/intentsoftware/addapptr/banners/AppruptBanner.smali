.class public Lcom/intentsoftware/addapptr/banners/AppruptBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "AppruptBanner.java"


# static fields
.field private static final MAX_TIME_AFTER_CLICK:I = 0x2bc


# instance fields
.field private adView:Lcom/apprupt/sdk/AdView;

.field private bannerFrame:Landroid/widget/FrameLayout;

.field private clickTime:J

.field private clickTrackingView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/banners/AppruptBanner;J)J
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->clickTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/AppruptBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/AppruptBanner;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method private createListener()Lcom/apprupt/sdk/AdView$Listener;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/intentsoftware/addapptr/banners/AppruptBanner$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/AppruptBanner$2;-><init>(Lcom/intentsoftware/addapptr/banners/AppruptBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->bannerFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 37
    invoke-static {p1}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/app/Activity;)V

    .line 38
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->c()V

    .line 39
    new-instance v0, Lcom/apprupt/sdk/AdView;

    invoke-direct {v0, p1}, Lcom/apprupt/sdk/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/AdView;->setAdSpaceId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->bannerFrame:Landroid/widget/FrameLayout;

    .line 49
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->clickTrackingView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->clickTrackingView:Landroid/view/View;

    new-instance v1, Lcom/intentsoftware/addapptr/banners/AppruptBanner$1;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/banners/AppruptBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/AppruptBanner;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 65
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/AdView;->setVisibilityTrackingEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->createListener()Lcom/apprupt/sdk/AdView$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/AdView;->setListener(Lcom/apprupt/sdk/AdView$Listener;)V

    .line 68
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->bannerFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->bannerFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->clickTrackingView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/AdView;->a()V

    .line 72
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v0, "cannot parse AdSpaceId- number format exception"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->clickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->notifyListenerThatAdWasClicked()V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;->pause()V

    .line 112
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->a()V

    .line 113
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/BannerAd;->resume(Landroid/app/Activity;)V

    .line 118
    invoke-static {p1}, Lcom/apprupt/sdk/CvSDK;->b(Landroid/app/Activity;)V

    .line 119
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/AdView;->setListener(Lcom/apprupt/sdk/AdView$Listener;)V

    .line 98
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/AdView;->b()V

    .line 99
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->adView:Lcom/apprupt/sdk/AdView;

    .line 101
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->clickTrackingView:Landroid/view/View;

    .line 102
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->bannerFrame:Landroid/widget/FrameLayout;

    .line 103
    return-void
.end method
