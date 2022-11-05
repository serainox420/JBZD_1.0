.class public Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "SmaatoFullscreen.java"


# instance fields
.field private interstitial:Lcom/smaato/soma/interstitial/Interstitial;

.field private shouldNotifyResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->shouldNotifyResume:Z

    return v0
.end method

.method static synthetic access$302(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->shouldNotifyResume:Z

    return p1
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/smaato/soma/interstitial/a;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 27
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 29
    invoke-static {v4}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "not enough arguments for Smaato config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :cond_0
    const-string v0, "adId doesn\'t have two required parts"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 37
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 38
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 47
    new-instance v4, Lcom/smaato/soma/interstitial/Interstitial;

    invoke-direct {v4, p1}, Lcom/smaato/soma/interstitial/Interstitial;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    .line 49
    iget-object v4, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v4}, Lcom/smaato/soma/interstitial/Interstitial;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/smaato/soma/d;->a(J)V

    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/smaato/soma/d;->b(J)V

    .line 52
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/smaato/soma/interstitial/Interstitial;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(D)V

    .line 55
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v1}, Lcom/smaato/soma/interstitial/Interstitial;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->b(D)V

    .line 57
    :cond_2
    if-eqz p4, :cond_3

    .line 58
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p4, v1}, Lcom/intentsoftware/addapptr/c/k;->getValuesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(Ljava/lang/String;)V

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->createListener()Lcom/smaato/soma/interstitial/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/a;)V

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->e()V

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {v4}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    const-string v0, "cannot parse integers for Smaato config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :cond_4
    const-string v0, "error parsing adId parts"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->shouldNotifyResume:Z

    .line 101
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->pause()V

    .line 102
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->shouldNotifyResume:Z

    .line 107
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->b()V

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;->interstitial:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->a()V

    .line 125
    :cond_0
    return-void
.end method
