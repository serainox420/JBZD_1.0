.class public Lcom/intentsoftware/addapptr/banners/SmaatoBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "SmaatoBanner.java"


# instance fields
.field private banner:Lcom/smaato/soma/BannerView;

.field private shouldNotifyResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->shouldNotifyResume:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->shouldNotifyResume:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method private createAdListener()Lcom/smaato/soma/c;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$2;-><init>(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V

    return-object v0
.end method

.method private createBannerStateListener()Lcom/smaato/soma/g;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 36
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 38
    invoke-static {v4}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "not enough arguments for Smaato config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_0
    const-string v0, "adId doesn\'t have two required parts"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 47
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 56
    new-instance v4, Lcom/smaato/soma/BannerView;

    invoke-direct {v4, p1}, Lcom/smaato/soma/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    .line 58
    iget-object v4, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v4}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/smaato/soma/d;->a(J)V

    .line 59
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/smaato/soma/d;->b(J)V

    .line 60
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0, v5}, Lcom/smaato/soma/BannerView;->setScalingEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0, v5}, Lcom/smaato/soma/BannerView;->setAutoReloadEnabled(Z)V

    .line 63
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdDimension;->MEDIUMRECTANGLE:Lcom/smaato/soma/AdDimension;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/d;->a(Lcom/smaato/soma/AdDimension;)V

    .line 71
    :goto_1
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v1}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(D)V

    .line 74
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v1}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->b(D)V

    .line 76
    :cond_2
    if-eqz p4, :cond_3

    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p4, v1}, Lcom/intentsoftware/addapptr/c/k;->getValuesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(Ljava/lang/String;)V

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->createAdListener()Lcom/smaato/soma/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/BannerView;->a(Lcom/smaato/soma/c;)V

    .line 81
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->createBannerStateListener()Lcom/smaato/soma/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/BannerView;->setBannerStateListener(Lcom/smaato/soma/g;)V

    .line 83
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->e()V

    goto/16 :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v4}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    const-string v0, "cannot parse integers for Smaato config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :cond_4
    const-string v0, "error parsing adId parts"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :cond_5
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_6

    .line 66
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdDimension;->LEADERBOARD:Lcom/smaato/soma/AdDimension;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/d;->a(Lcom/smaato/soma/AdDimension;)V

    goto :goto_1

    .line 68
    :cond_6
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdDimension;->DEFAULT:Lcom/smaato/soma/AdDimension;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/d;->a(Lcom/smaato/soma/AdDimension;)V

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->shouldNotifyResume:Z

    .line 120
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;->pause()V

    .line 121
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->shouldNotifyResume:Z

    .line 126
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/BannerAd;->resume(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->banner:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->d()V

    .line 139
    :cond_0
    return-void
.end method
