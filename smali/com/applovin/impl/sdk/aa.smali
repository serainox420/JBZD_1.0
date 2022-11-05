.class public Lcom/applovin/impl/sdk/aa;
.super Ljava/lang/Object;


# static fields
.field private static l:Ljava/lang/String;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/SoftReference;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Object;

.field private volatile h:Ljava/lang/String;

.field private i:Lcom/applovin/impl/sdk/df;

.field private volatile j:Z

.field private k:Ljava/lang/ref/SoftReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/applovin/impl/sdk/aa;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aa;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/aa;->j:Z

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object v0, p0, Lcom/applovin/impl/sdk/aa;->b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aa;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aa;Lcom/applovin/impl/sdk/AppLovinAdImpl;)Lcom/applovin/impl/sdk/AppLovinAdImpl;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/aa;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/applovin/impl/sdk/aa;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aa;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/aa;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aa;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/aa;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/aa;)Lcom/applovin/impl/sdk/df;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->i:Lcom/applovin/impl/sdk/df;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/aa;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/aa;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/aa;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    const/16 v1, -0x12c

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method

.method private f()Lcom/applovin/sdk/AppLovinAdRewardListener;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/ab;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/ab;-><init>(Lcom/applovin/impl/sdk/aa;)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 10

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v9

    new-instance v0, Lcom/applovin/impl/sdk/af;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/sdk/af;-><init>(Lcom/applovin/impl/sdk/aa;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/sdk/ab;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->d:Ljava/lang/String;

    invoke-interface {v9, v8, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/aa;->k:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, v8, v0}, Lcom/applovin/impl/sdk/aa;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to render an ad of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in an Incentivized Ad interstitial."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v2, v3, v1}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aa;->e()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 6

    if-nez p3, :cond_3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aa;->f()Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/z;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/z;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iput-object p2, p0, Lcom/applovin/impl/sdk/aa;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->U:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/impl/sdk/ar;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/sdk/ar;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/aa;)V

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ar;->a(Landroid/app/Activity;)V

    invoke-virtual {v0, p5}, Lcom/applovin/impl/sdk/ar;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-virtual {v0, p6}, Lcom/applovin/impl/sdk/ar;->a(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    invoke-virtual {v0, p4}, Lcom/applovin/impl/sdk/ar;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/ar;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ar;->a()V

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/aa;->a(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aa;->e()V

    goto :goto_1

    :cond_3
    move-object v2, p3

    goto :goto_0
.end method

.method a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/df;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/df;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aa;->i:Lcom/applovin/impl/sdk/df;

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->i:Lcom/applovin/impl/sdk/df;

    sget-object v2, Lcom/applovin/impl/sdk/cs;->b:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "User requested preload of incentivized ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aa;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden)."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    new-instance v3, Lcom/applovin/impl/sdk/ac;

    invoke-direct {v3, p0, p1}, Lcom/applovin/impl/sdk/ac;-><init>(Lcom/applovin/impl/sdk/aa;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0
.end method

.method a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinAdRewardListener;->userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->V:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/ap;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, p2, p1}, Lcom/applovin/impl/sdk/ap;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ap;->a()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/aa;->h:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->h:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->k:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->k:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->dismiss()V

    :cond_0
    return-void
.end method
