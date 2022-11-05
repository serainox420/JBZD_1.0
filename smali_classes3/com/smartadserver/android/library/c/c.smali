.class public Lcom/smartadserver/android/library/c/c;
.super Ljava/lang/Object;
.source "SASAppLovinAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/c/c$a;,
        Lcom/smartadserver/android/library/c/c$c;,
        Lcom/smartadserver/android/library/c/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/smartadserver/android/library/c/i$a;

.field private b:Lcom/smartadserver/android/library/ui/SASAdView;

.field private c:Lcom/smartadserver/android/library/c/g;

.field private d:Lcom/smartadserver/android/library/c/g$a;

.field private e:Lcom/smartadserver/android/library/c/c$b;

.field private f:Lcom/smartadserver/android/library/c/c$b;

.field private g:Lcom/smartadserver/android/library/c/c$c;

.field private h:Lcom/applovin/sdk/AppLovinSdk;

.field private i:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

.field private j:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v2, p0, Lcom/smartadserver/android/library/c/c;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 64
    new-instance v0, Lcom/smartadserver/android/library/c/c$b;

    const-string v1, "interstitial"

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/c$b;-><init>(Lcom/smartadserver/android/library/c/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c;->e:Lcom/smartadserver/android/library/c/c$b;

    .line 65
    new-instance v0, Lcom/smartadserver/android/library/c/c$b;

    const-string v1, "rewarded interstitial"

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/c$b;-><init>(Lcom/smartadserver/android/library/c/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c;->f:Lcom/smartadserver/android/library/c/c$b;

    .line 66
    new-instance v0, Lcom/smartadserver/android/library/c/c$c;

    invoke-direct {v0, p0, v2}, Lcom/smartadserver/android/library/c/c$c;-><init>(Lcom/smartadserver/android/library/c/c;Lcom/smartadserver/android/library/c/c$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c;->g:Lcom/smartadserver/android/library/c/c$c;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/c;->k:Z

    .line 366
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/c;Lcom/smartadserver/android/library/c/g$a;)Lcom/smartadserver/android/library/c/g$a;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/smartadserver/android/library/c/c;->d:Lcom/smartadserver/android/library/c/g$a;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->a:Lcom/smartadserver/android/library/c/i$a;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 512
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/c;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/c;->d()V

    return-void
.end method

.method static synthetic c(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/c$c;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->g:Lcom/smartadserver/android/library/c/c$c;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/c/c$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/c$1;-><init>(Lcom/smartadserver/android/library/c/c;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 198
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/g$a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->d:Lcom/smartadserver/android/library/c/g$a;

    return-object v0
.end method

.method private e()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method static synthetic f(Lcom/smartadserver/android/library/c/c;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->j:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    return-object v0
.end method

.method static synthetic g(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/c$b;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->f:Lcom/smartadserver/android/library/c/c$b;

    return-object v0
.end method

.method static synthetic h(Lcom/smartadserver/android/library/c/c;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->i:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->c:Lcom/smartadserver/android/library/c/g;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 206
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c;->h:Lcom/applovin/sdk/AppLovinSdk;

    .line 211
    iget-object v1, p0, Lcom/smartadserver/android/library/c/c;->h:Lcom/applovin/sdk/AppLovinSdk;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c;->i:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c;->j:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 215
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->i:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/c;->e:Lcom/smartadserver/android/library/c/c$b;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->i:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/c;->e:Lcom/smartadserver/android/library/c/c$b;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 217
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->i:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/c;->e:Lcom/smartadserver/android/library/c/c$b;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 219
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smartadserver/android/library/ui/SASAdView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smartadserver/android/library/c/i$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 225
    iput-object p4, p0, Lcom/smartadserver/android/library/c/c;->a:Lcom/smartadserver/android/library/c/i$a;

    .line 226
    iput-object p2, p0, Lcom/smartadserver/android/library/c/c;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 228
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->g:Lcom/smartadserver/android/library/c/c$c;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/c/c$c;->a()V

    .line 231
    instance-of v0, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->a:Lcom/smartadserver/android/library/c/i$a;

    const-string v1, "appLovin ad mediation does support banner placements"

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 235
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->a:Lcom/smartadserver/android/library/c/i$a;

    const-string v1, "Can not get a AppLovin ad on this SASInterstitialView because its creation Context is not an Activity"

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->a:Lcom/smartadserver/android/library/c/i$a;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c;->a:Lcom/smartadserver/android/library/c/i$a;

    .line 244
    const/4 v1, -0x1

    .line 246
    :try_start_0
    const-string v0, "adType"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 249
    :goto_1
    const-string v1, "1"

    const-string v2, "muteVideos"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 252
    iget-boolean v2, p0, Lcom/smartadserver/android/library/c/c;->k:Z

    if-nez v2, :cond_2

    .line 253
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/c/c;->a(Landroid/content/Context;)V

    .line 254
    iput-boolean v3, p0, Lcom/smartadserver/android/library/c/c;->k:Z

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/smartadserver/android/library/c/c;->h:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setMuted(Z)V

    .line 261
    const/4 v1, 0x0

    .line 262
    if-eqz p2, :cond_3

    .line 263
    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 265
    :cond_3
    if-nez v1, :cond_4

    .line 267
    invoke-static {p1}, Lcom/smartadserver/android/library/g/c;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 269
    :cond_4
    if-eqz v1, :cond_5

    .line 270
    iget-object v2, p0, Lcom/smartadserver/android/library/c/c;->h:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/applovin/sdk/AppLovinTargetingData;->setLocation(Landroid/location/Location;)V

    .line 274
    :cond_5
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/c;->e()V

    .line 277
    new-instance v1, Lcom/smartadserver/android/library/c/c$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/c$2;-><init>(Lcom/smartadserver/android/library/c/c;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/c;->c:Lcom/smartadserver/android/library/c/g;

    .line 291
    instance-of v1, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v1, :cond_7

    .line 293
    if-ne v0, v3, :cond_6

    .line 294
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->j:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    new-instance v1, Lcom/smartadserver/android/library/c/c$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/smartadserver/android/library/c/c$3;-><init>(Lcom/smartadserver/android/library/c/c;Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->h:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/smartadserver/android/library/c/c$4;

    invoke-direct {v2, p0, p2}, Lcom/smartadserver/android/library/c/c$4;-><init>(Lcom/smartadserver/android/library/c/c;Lcom/smartadserver/android/library/ui/SASAdView;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto/16 :goto_0

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c;->h:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getNativeAdService()Lcom/applovin/nativeAds/AppLovinNativeAdService;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/c$5;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/c$5;-><init>(Lcom/smartadserver/android/library/c/c;)V

    invoke-interface {v0, v3, v1}, Lcom/applovin/nativeAds/AppLovinNativeAdService;->loadNativeAds(ILcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c;->a:Lcom/smartadserver/android/library/c/i$a;

    .line 533
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/c;->e()V

    .line 534
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 538
    const/4 v0, 0x1

    .line 541
    :try_start_0
    const-string v1, "com.applovin.adview.AppLovinInterstitialAd"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return v0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    const/4 v0, 0x0

    goto :goto_0
.end method
