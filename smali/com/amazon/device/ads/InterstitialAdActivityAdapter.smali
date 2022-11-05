.class Lcom/amazon/device/ads/InterstitialAdActivityAdapter;
.super Ljava/lang/Object;
.source "InterstitialAdActivityAdapter.java"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adController:Lcom/amazon/device/ads/AdController;

.field private final buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 26
    new-instance v0, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    .line 163
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method getAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/amazon/device/ads/AdControllerFactory;->getCachedAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->onBackButtonPress()Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->enableHardwareAcceleration(Lcom/amazon/device/ads/AndroidBuildInfo;Landroid/view/Window;)V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    .line 62
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Failed to show interstitial ad due to an error in the Activity."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/amazon/device/ads/InterstitialAd;->resetIsAdShowing()V

    .line 66
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setAdActivity(Landroid/app/Activity;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    new-instance v1, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;-><init>(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->adShown()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->fireViewableEvent()V

    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    .line 121
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->fireViewableEvent()V

    .line 93
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->fireViewableEvent()V

    .line 107
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    .line 109
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->fireViewableEvent()V

    .line 150
    :cond_0
    return-void
.end method

.method public preOnCreate()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 45
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 50
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->hideActionAndStatusBars(Lcom/amazon/device/ads/AndroidBuildInfo;Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    .line 35
    return-void
.end method
