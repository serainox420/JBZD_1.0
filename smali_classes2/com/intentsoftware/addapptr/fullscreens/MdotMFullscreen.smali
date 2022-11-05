.class public Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "MdotMFullscreen.java"


# instance fields
.field private interstitial:Lcom/mdotm/android/view/MdotMInterstitial;

.field private listener:Lcom/mdotm/android/listener/MdotMAdEventListener;

.field private request:Lcom/mdotm/android/model/MdotMAdRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)Lcom/mdotm/android/listener/MdotMAdEventListener;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->listener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)Lcom/mdotm/android/model/MdotMAdRequest;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->request:Lcom/mdotm/android/model/MdotMAdRequest;

    return-object v0
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)Lcom/mdotm/android/view/MdotMInterstitial;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->interstitial:Lcom/mdotm/android/view/MdotMInterstitial;

    return-object v0
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method private createListener()Lcom/mdotm/android/listener/MdotMAdEventListener;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 30
    new-instance v0, Lcom/mdotm/android/view/MdotMInterstitial;

    invoke-direct {v0, p1}, Lcom/mdotm/android/view/MdotMInterstitial;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->interstitial:Lcom/mdotm/android/view/MdotMInterstitial;

    .line 31
    new-instance v0, Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-direct {v0}, Lcom/mdotm/android/model/MdotMAdRequest;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->request:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->request:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v0, p2}, Lcom/mdotm/android/model/MdotMAdRequest;->setAppKey(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->request:Lcom/mdotm/android/model/MdotMAdRequest;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdRequest;->setTestMode(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->request:Lcom/mdotm/android/model/MdotMAdRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdRequest;->setEnableCaching(Z)V

    .line 37
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->createListener()Lcom/mdotm/android/listener/MdotMAdEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->listener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 38
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->request:Lcom/mdotm/android/model/MdotMAdRequest;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "request is null"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()Z
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->interstitial:Lcom/mdotm/android/view/MdotMInterstitial;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMInterstitial;->showInterstitial(Landroid/app/Activity;)V

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->interstitial:Lcom/mdotm/android/view/MdotMInterstitial;

    .line 115
    return-void
.end method
