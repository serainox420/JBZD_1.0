.class public Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "AppruptFullscreen.java"


# instance fields
.field private adSpaceId:I

.field private final cvInterstitialListener:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    .line 79
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$3;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$3;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->cvInterstitialListener:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createValueExchangeListener()Lcom/apprupt/sdk/CvValueExchange$Listener;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 30
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->adSpaceId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    invoke-static {p1}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/app/Activity;)V

    .line 37
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->c()V

    .line 38
    iget v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->adSpaceId:I

    new-instance v1, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$1;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V

    invoke-static {p1, v0, v1}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/content/Context;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;)V

    .line 49
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->d:Lcom/apprupt/sdk/CvValueExchange;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->createValueExchangeListener()Lcom/apprupt/sdk/CvValueExchange$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvValueExchange;->a(Lcom/apprupt/sdk/CvValueExchange$Listener;)V

    .line 50
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v0, "number format exception when parsing adId"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 70
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->a()V

    .line 71
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 76
    invoke-static {p1}, Lcom/apprupt/sdk/CvSDK;->b(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method public show()Z
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->adSpaceId:I

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->cvInterstitialListener:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    invoke-static {v0, v1, v2}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/content/Context;ILcom/apprupt/sdk/CvSDK$CvInterstitialListener;)V

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->b()V

    .line 65
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->d:Lcom/apprupt/sdk/CvValueExchange;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvValueExchange;->a(Lcom/apprupt/sdk/CvValueExchange$Listener;)V

    .line 66
    return-void
.end method
