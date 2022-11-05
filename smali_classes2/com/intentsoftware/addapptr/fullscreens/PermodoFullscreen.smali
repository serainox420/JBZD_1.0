.class public Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "PermodoFullscreen.java"


# instance fields
.field private interstitialAd:Lcom/madsdk/MadSdkInterstitialAd;

.field private reportedClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->reportedClick:Z

    return v0
.end method

.method static synthetic access$302(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;Z)Z
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->reportedClick:Z

    return p1
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/madsdk/InterstitialAdListener;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 8

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 21
    new-instance v0, Lcom/madsdk/MadSdkInterstitialAd;

    invoke-direct {v0}, Lcom/madsdk/MadSdkInterstitialAd;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->interstitialAd:Lcom/madsdk/MadSdkInterstitialAd;

    .line 22
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->interstitialAd:Lcom/madsdk/MadSdkInterstitialAd;

    const-string v2, "320"

    const-string v3, "480"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->createListener()Lcom/madsdk/InterstitialAdListener;

    move-result-object v7

    move-object v1, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/madsdk/MadSdkInterstitialAd;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Landroid/content/Context;Lcom/madsdk/InterstitialAdListener;)V

    .line 23
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->interstitialAd:Lcom/madsdk/MadSdkInterstitialAd;

    invoke-virtual {v0}, Lcom/madsdk/MadSdkInterstitialAd;->show()V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;->interstitialAd:Lcom/madsdk/MadSdkInterstitialAd;

    .line 67
    return-void
.end method
