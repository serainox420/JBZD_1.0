.class public Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "UnityFullscreen.java"


# static fields
.field private static final AVAILABILITY_CHECK_DELAY:I = 0x1388

.field private static initialized:Z


# instance fields
.field private currentActivity:Landroid/app/Activity;

.field private placementId:Ljava/lang/String;

.field private reportedAvailability:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Z
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->isUnityAdReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->reportedAvailability:Z

    return v0
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Z)Z
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->reportedAvailability:Z

    return p1
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/unity3d/ads/IUnityAdsListener;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V

    return-object v0
.end method

.method private isUnityAdReady()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->placementId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isReady()Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->placementId:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 23
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->currentActivity:Landroid/app/Activity;

    .line 25
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    aget-object v1, v0, v3

    .line 27
    array-length v2, v0

    if-le v2, v4, :cond_0

    .line 28
    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->placementId:Ljava/lang/String;

    .line 31
    :cond_0
    iput-boolean v3, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->reportedAvailability:Z

    .line 33
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->createListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 35
    sget-boolean v0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->initialized:Z

    if-eqz v0, :cond_1

    .line 36
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->createListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 38
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->isUnityAdReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->reportedAvailability:Z

    if-nez v0, :cond_1

    .line 40
    iput-boolean v4, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->reportedAvailability:Z

    .line 41
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->notifyListenerThatAdWasLoaded()V

    .line 63
    :cond_1
    :goto_0
    sput-boolean v4, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->initialized:Z

    .line 65
    return-void

    .line 44
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-instance v1, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->currentActivity:Landroid/app/Activity;

    .line 109
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 110
    return-void
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->isUnityAdReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->placementId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;)V

    .line 120
    :goto_0
    const/4 v0, 0x1

    .line 122
    :goto_1
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public unload()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->currentActivity:Landroid/app/Activity;

    .line 129
    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->placementId:Ljava/lang/String;

    .line 130
    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 131
    return-void
.end method
