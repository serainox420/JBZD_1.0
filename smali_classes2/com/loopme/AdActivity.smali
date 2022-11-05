.class public final Lcom/loopme/AdActivity;
.super Landroid/app/Activity;
.source "AdActivity.java"

# interfaces
.implements Lcom/loopme/AdReceiver$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccel:F

.field private mAccelCurrent:F

.field private mAccelLast:F

.field private mAdController:Lcom/loopme/AdController;

.field private mBaseAd:Lcom/loopme/BaseAd;

.field private mFormat:I

.field private mIViewController:Lcom/loopme/IViewController;

.field private mInitialOrientation:I

.field private mIs360:Z

.field private mKeepAlive:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field private mReceivedDestroyBroadcast:Z

.field private mReceiver:Lcom/loopme/AdReceiver;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/loopme/AdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/AdActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdActivity;->mKeepAlive:Z

    .line 55
    new-instance v0, Lcom/loopme/AdActivity$1;

    invoke-direct {v0, p0}, Lcom/loopme/AdActivity$1;-><init>(Lcom/loopme/AdActivity;)V

    iput-object v0, p0, Lcom/loopme/AdActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/loopme/AdActivity;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/loopme/AdActivity;->mAccelLast:F

    return v0
.end method

.method static synthetic access$002(Lcom/loopme/AdActivity;F)F
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/loopme/AdActivity;->mAccelLast:F

    return p1
.end method

.method static synthetic access$100(Lcom/loopme/AdActivity;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/loopme/AdActivity;->mAccelCurrent:F

    return v0
.end method

.method static synthetic access$102(Lcom/loopme/AdActivity;F)F
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/loopme/AdActivity;->mAccelCurrent:F

    return p1
.end method

.method static synthetic access$200(Lcom/loopme/AdActivity;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/loopme/AdActivity;->mAccel:F

    return v0
.end method

.method static synthetic access$202(Lcom/loopme/AdActivity;F)F
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/loopme/AdActivity;->mAccel:F

    return p1
.end method

.method static synthetic access$300(Lcom/loopme/AdActivity;)Lcom/loopme/AdController;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    return-object v0
.end method

.method private applyOrientationFromAdParams()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/common/AdParams;->getAdOrientation()Ljava/lang/String;

    move-result-object v0

    .line 186
    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 192
    :cond_2
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private buildLayout()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 146
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 148
    iget v0, p0, Lcom/loopme/AdActivity;->mFormat:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/loopme/AdActivity;->isVideoPresented()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    iget-object v1, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->buildVideoAdView(Landroid/view/ViewGroup;)V

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    return-object v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    iget-object v1, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->buildStaticAdView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Lcom/loopme/LoopMeBannerView;

    invoke-direct {v0, p0}, Lcom/loopme/LoopMeBannerView;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    iget-object v2, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v2, v0}, Lcom/loopme/AdController;->rebuildView(Landroid/view/ViewGroup;)V

    .line 162
    iget-object v2, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private initDestroyReceiver()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    const-string v1, "com.loopme.DESTROY_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "com.loopme.CLICK_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    new-instance v1, Lcom/loopme/AdReceiver;

    invoke-direct {v1, p0}, Lcom/loopme/AdReceiver;-><init>(Lcom/loopme/AdReceiver$Listener;)V

    iput-object v1, p0, Lcom/loopme/AdActivity;->mReceiver:Lcom/loopme/AdReceiver;

    .line 177
    iget-object v1, p0, Lcom/loopme/AdActivity;->mReceiver:Lcom/loopme/AdReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/loopme/AdActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method private initSensor()V
    .locals 2

    .prologue
    const v1, 0x411ce80a

    .line 139
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/loopme/AdActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopme/AdActivity;->mAccel:F

    .line 141
    iput v1, p0, Lcom/loopme/AdActivity;->mAccelCurrent:F

    .line 142
    iput v1, p0, Lcom/loopme/AdActivity;->mAccelLast:F

    .line 143
    return-void
.end method

.method private isVideoPresented()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->isVideoPresented()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/loopme/AdActivity;->mFormat:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->switchToPreviousMode()V

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 265
    :cond_0
    return-void
.end method

.method public onClickBroadcast()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdActivity;->mKeepAlive:Z

    .line 285
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x1000000

    const/16 v5, 0x400

    const/16 v4, 0x3e9

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->setVolumeControlStream(I)V

    .line 83
    invoke-static {}, Lcom/loopme/common/Utils;->getScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/loopme/AdActivity;->mInitialOrientation:I

    .line 85
    invoke-virtual {p0}, Lcom/loopme/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appkey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/loopme/AdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Empty app key"

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/loopme/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "format"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/loopme/AdActivity;->mFormat:I

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/loopme/AdActivity;->requestWindowFeature(I)Z

    .line 92
    invoke-virtual {p0}, Lcom/loopme/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 94
    invoke-virtual {p0}, Lcom/loopme/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 98
    sget-object v1, Lcom/loopme/AdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget v1, p0, Lcom/loopme/AdActivity;->mFormat:I

    if-ne v1, v4, :cond_4

    .line 101
    invoke-static {v0, v7}, Lcom/loopme/LoopMeAdHolder;->getInterstitial(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeInterstitial;

    move-result-object v1

    iput-object v1, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    .line 107
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    invoke-virtual {v1}, Lcom/loopme/BaseAd;->getAdController()Lcom/loopme/AdController;

    move-result-object v1

    if-nez v1, :cond_5

    .line 108
    :cond_2
    sget-object v1, Lcom/loopme/AdActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ads with app key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/loopme/AdActivity;->finish()V

    .line 136
    :cond_3
    :goto_1
    return-void

    .line 103
    :cond_4
    iget v1, p0, Lcom/loopme/AdActivity;->mFormat:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 104
    invoke-static {v0, v7}, Lcom/loopme/LoopMeAdHolder;->getBanner(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeBanner;

    move-result-object v1

    iput-object v1, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    goto :goto_0

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/common/AdParams;->isVideo360()Z

    move-result v0

    iput-boolean v0, p0, Lcom/loopme/AdActivity;->mIs360:Z

    .line 112
    iget-object v0, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->getAdController()Lcom/loopme/AdController;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    .line 113
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->getViewController()Lcom/loopme/IViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdActivity;->mIViewController:Lcom/loopme/IViewController;

    .line 115
    iget v0, p0, Lcom/loopme/AdActivity;->mFormat:I

    if-ne v0, v4, :cond_8

    .line 116
    iget-boolean v0, p0, Lcom/loopme/AdActivity;->mIs360:Z

    if-nez v0, :cond_6

    .line 117
    invoke-direct {p0}, Lcom/loopme/AdActivity;->applyOrientationFromAdParams()V

    .line 123
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/loopme/AdActivity;->buildLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 124
    iget-object v0, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->setContentView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0}, Lcom/loopme/AdActivity;->initSensor()V

    .line 127
    invoke-direct {p0}, Lcom/loopme/AdActivity;->initDestroyReceiver()V

    .line 129
    iget v0, p0, Lcom/loopme/AdActivity;->mFormat:I

    if-ne v0, v4, :cond_3

    .line 130
    iget-boolean v0, p0, Lcom/loopme/AdActivity;->mIs360:Z

    if-eqz v0, :cond_7

    .line 131
    iget-object v0, p0, Lcom/loopme/AdActivity;->mIViewController:Lcom/loopme/IViewController;

    invoke-interface {v0, p0}, Lcom/loopme/IViewController;->initVRLibrary(Landroid/content/Context;)V

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    check-cast v0, Lcom/loopme/LoopMeInterstitial;

    iget-object v1, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    check-cast v1, Lcom/loopme/LoopMeInterstitial;

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeInterstitial;->onLoopMeInterstitialShow(Lcom/loopme/LoopMeInterstitial;)V

    goto :goto_1

    .line 120
    :cond_8
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->setRequestedOrientation(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/loopme/AdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/loopme/AdActivity;->mReceiver:Lcom/loopme/AdReceiver;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/loopme/AdActivity;->mReceiver:Lcom/loopme/AdReceiver;

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/loopme/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/loopme/AdActivity;->mFormat:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3

    .line 207
    iget-boolean v0, p0, Lcom/loopme/AdActivity;->mIs360:Z

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/loopme/AdActivity;->mIViewController:Lcom/loopme/IViewController;

    invoke-interface {v0}, Lcom/loopme/IViewController;->onDestroy()V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    check-cast v0, Lcom/loopme/LoopMeInterstitial;

    iget-object v1, p0, Lcom/loopme/AdActivity;->mBaseAd:Lcom/loopme/BaseAd;

    check-cast v1, Lcom/loopme/LoopMeInterstitial;

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeInterstitial;->onLoopMeInterstitialHide(Lcom/loopme/LoopMeInterstitial;)V

    .line 212
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    return-void
.end method

.method public onDestroyBroadcast()V
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/loopme/AdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroyBroadcast"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdActivity;->mReceivedDestroyBroadcast:Z

    .line 271
    iget v0, p0, Lcom/loopme/AdActivity;->mFormat:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 272
    iget v0, p0, Lcom/loopme/AdActivity;->mInitialOrientation:I

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->setRequestedOrientation(I)V

    .line 273
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->switchToPreviousMode()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdActivity;->mReceiver:Lcom/loopme/AdReceiver;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/loopme/AdActivity;->mReceiver:Lcom/loopme/AdReceiver;

    invoke-virtual {p0, v0}, Lcom/loopme/AdActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/AdActivity;->mReceiver:Lcom/loopme/AdReceiver;

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/loopme/AdActivity;->finish()V

    .line 280
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 218
    sget-object v0, Lcom/loopme/AdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/loopme/AdActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/loopme/AdActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/loopme/AdActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdActivity;->mIViewController:Lcom/loopme/IViewController;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/loopme/AdActivity;->mIViewController:Lcom/loopme/IViewController;

    invoke-interface {v0}, Lcom/loopme/IViewController;->onPause()V

    .line 226
    :cond_1
    iget v0, p0, Lcom/loopme/AdActivity;->mFormat:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    .line 227
    iget-boolean v0, p0, Lcom/loopme/AdActivity;->mReceivedDestroyBroadcast:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 240
    :cond_2
    :goto_0
    return-void

    .line 231
    :cond_3
    iget-boolean v0, p0, Lcom/loopme/AdActivity;->mKeepAlive:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/loopme/AdActivity;->mFormat:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 234
    iget-boolean v0, p0, Lcom/loopme/AdActivity;->mIs360:Z

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->pauseVideo()V

    .line 238
    :cond_4
    invoke-virtual {p0}, Lcom/loopme/AdActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    sget-object v0, Lcom/loopme/AdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/AdActivity;->mKeepAlive:Z

    .line 247
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/loopme/AdActivity;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0, v3}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 249
    iget-object v0, p0, Lcom/loopme/AdActivity;->mIViewController:Lcom/loopme/IViewController;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/loopme/AdActivity;->mIViewController:Lcom/loopme/IViewController;

    invoke-interface {v0}, Lcom/loopme/IViewController;->onResume()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/loopme/AdActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/loopme/AdActivity;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/loopme/AdActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 257
    :cond_1
    return-void
.end method
