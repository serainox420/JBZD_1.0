.class public Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "SmartStreamFullscreen.java"


# instance fields
.field private reportedFailure:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->reportedFailure:Z

    return v0
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Z)Z
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->reportedFailure:Z

    return p1
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/video/adsdk/VideoAdSDKListener;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->reportedFailure:Z

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;->createListener()Lcom/video/adsdk/VideoAdSDKListener;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/video/adsdk/VideoAdSDK;->registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;)Z

    .line 26
    invoke-static {}, Lcom/video/adsdk/VideoAdSDK;->startPrefetching()V

    .line 27
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/video/adsdk/VideoAdSDK;->playAdvertising()V

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/video/adsdk/VideoAdSDK;->clearCache()V

    .line 32
    return-void
.end method
