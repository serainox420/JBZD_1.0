.class public Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "RevMobFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;
    }
.end annotation


# instance fields
.field private fullscreen:Lcom/revmob/ads/interstitial/RevMobFullscreen;

.field private revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->createFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;Lcom/intentsoftware/addapptr/c/k;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 4

    .prologue
    .line 89
    if-eqz p4, :cond_2

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->getRevMob()Lcom/revmob/RevMob;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/revmob/RevMob;->setUserInterests(Ljava/util/List;)V

    .line 99
    :cond_2
    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$3;->$SwitchMap$com$intentsoftware$addapptr$fullscreens$RevMobFullscreen$AdType:[I

    invoke-virtual {p3}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_1
    return-void

    .line 101
    :pswitch_0
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->getRevMob()Lcom/revmob/RevMob;

    move-result-object v0

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->createListener()Lcom/revmob/RevMobAdsListener;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/revmob/RevMob;->createFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->fullscreen:Lcom/revmob/ads/interstitial/RevMobFullscreen;

    goto :goto_1

    .line 104
    :pswitch_1
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->getRevMob()Lcom/revmob/RevMob;

    move-result-object v0

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->createListener()Lcom/revmob/RevMobAdsListener;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/revmob/RevMob;->createVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->fullscreen:Lcom/revmob/ads/interstitial/RevMobFullscreen;

    goto :goto_1

    .line 107
    :pswitch_2
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->getRevMob()Lcom/revmob/RevMob;

    move-result-object v0

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->createListener()Lcom/revmob/RevMobAdsListener;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/revmob/RevMob;->createRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->fullscreen:Lcom/revmob/ads/interstitial/RevMobFullscreen;

    goto :goto_1

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createListener()Lcom/revmob/RevMobAdsListener;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 33
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 34
    array-length v1, v3

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 35
    invoke-static {v7}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "not enough arguments for RevMob config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :cond_0
    const-string v0, "adId doesn\'t have enough arguments."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 43
    :cond_1
    aget-object v4, v3, v0

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 54
    sget-object v4, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->UNKNOWN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    .line 58
    :goto_2
    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->UNKNOWN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    if-ne v4, v0, :cond_4

    .line 59
    invoke-static {v7}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    const-string v0, "Wrong ad format provided for RevMob fullscreen. Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    :cond_3
    const-string v0, "Wrong ad format provided for RevMob fullscreen."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :sswitch_0
    const-string v5, "Fullscreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v0, "Video"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :sswitch_2
    const-string v0, "RewardedVideo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    .line 45
    :pswitch_0
    sget-object v4, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->FULLSCREEN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    goto :goto_2

    .line 48
    :pswitch_1
    sget-object v4, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->VIDEO:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    goto :goto_2

    .line 51
    :pswitch_2
    sget-object v4, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->REWARDED_VIDEO:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    goto :goto_2

    .line 64
    :cond_4
    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->FULLSCREEN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    if-eq v4, v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5

    .line 65
    const-string v0, "RevMob video ads are not supported for Android versions below ICS."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_5
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    aget-object v0, v3, v2

    invoke-direct {p0, p1, v0, v4, p4}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->createFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;Lcom/intentsoftware/addapptr/c/k;)V

    goto :goto_0

    .line 72
    :cond_6
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;Landroid/app/Activity;[Ljava/lang/String;Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;Lcom/intentsoftware/addapptr/c/k;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;

    .line 83
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/g;->addListener(Lcom/intentsoftware/addapptr/c/g$a;)V

    .line 84
    aget-object v0, v3, v6

    invoke-static {p1, v0}, Lcom/intentsoftware/addapptr/c/g;->init(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x4ed245b -> :sswitch_1
        0x5e0760ed -> :sswitch_2
        0x7d6157db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->fullscreen:Lcom/revmob/ads/interstitial/RevMobFullscreen;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->show()V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->revMobInitializationListener:Lcom/intentsoftware/addapptr/c/g$a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/g;->removeListener(Lcom/intentsoftware/addapptr/c/g$a;)V

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;->fullscreen:Lcom/revmob/ads/interstitial/RevMobFullscreen;

    .line 175
    return-void
.end method
