.class public Lcom/intentsoftware/addapptr/banners/InMobiBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "InMobiBanner.java"


# instance fields
.field private banner:Lcom/inmobi/monetization/IMBanner;

.field private wasClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->wasClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->wasClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/banners/InMobiBanner;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->wasClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/InMobiBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createAdListener()Lcom/inmobi/monetization/IMBannerListener;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 30
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 31
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 32
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "Wrong number of arguments for InMobi config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :cond_0
    const-string v0, "wrong number of arguments in adId"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 41
    invoke-static {p1, v0}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setCurrentLocation(Landroid/location/Location;)V

    .line 46
    :cond_2
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_3

    .line 47
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    const/16 v2, 0xa

    invoke-direct {v1, p1, v0, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->createAdListener()Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    .line 58
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->loadBanner()V

    goto :goto_0

    .line 48
    :cond_3
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_4

    .line 49
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v0, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    goto :goto_1

    .line 50
    :cond_4
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_5

    .line 51
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    const/16 v2, 0xc

    invoke-direct {v1, p1, v0, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    goto :goto_1

    .line 53
    :cond_5
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v0, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    goto :goto_1
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 66
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->banner:Lcom/inmobi/monetization/IMBanner;

    .line 67
    return-void
.end method
