.class public Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "AdColonyFullscreen.java"


# static fields
.field private static final REWARDED_VIDEO_TAG:Ljava/lang/String; = "RewardedVideo"


# instance fields
.field private isRewarded:Z

.field private loadedInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->loadedInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V

    return-object v0
.end method

.method private createRewardListener()Lcom/adcolony/sdk/AdColonyRewardListener;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 44
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    array-length v1, v0

    if-le v1, v5, :cond_1

    .line 48
    aget-object v1, v0, v3

    const-string v2, "RewardedVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->isRewarded:Z

    .line 49
    aget-object v1, v0, v4

    .line 50
    aget-object v0, v0, v5

    .line 56
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {p1, v1, v2}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 57
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->createInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v1

    .line 59
    iget-boolean v2, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->isRewarded:Z

    if-eqz v2, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->createRewardListener()Lcom/adcolony/sdk/AdColonyRewardListener;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/AdColony;->setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z

    .line 63
    :cond_0
    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "Not enough ad id parts for AdColony"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()Z
    .locals 3

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->loadedInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "AdColony interstitial ad has expired."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->loadedInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 35
    :goto_0
    return v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when trying to show AdColony ad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->removeRewardListener()Z

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->loadedInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->loadedInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->destroy()Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->loadedInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 111
    :cond_1
    return-void
.end method
