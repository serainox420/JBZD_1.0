.class public Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "MoPubFullscreen.java"


# static fields
.field private static final MAX_TIME_FROM_LOAD_START:I = 0xbb8

.field private static hasRewardedVideoClass:Ljava/lang/Boolean;

.field private static rewardedVideoInUse:Z


# instance fields
.field private interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private rewardedVideoAdId:Ljava/lang/String;

.field private targetingInformation:Lcom/intentsoftware/addapptr/c/k;

.field private videoAdLoadStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->videoAdLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;J)J
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->videoAdLoadStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->loadRewardedVideo(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatUserEarnedIncentive()V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V

    return-object v0
.end method

.method private createVideoListener()Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V

    return-object v0
.end method

.method private loadRewardedVideo(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 104
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 105
    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    if-eqz v0, :cond_5

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    if-eqz v1, :cond_7

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, ","

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 118
    :goto_1
    if-eqz v3, :cond_4

    .line 119
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;-><init>(Ljava/lang/String;Landroid/location/Location;)V

    .line 124
    :goto_2
    if-nez p1, :cond_3

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->videoAdLoadStartTime:J

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    new-array v2, v8, [Lcom/mopub/common/MediationSettings;

    invoke-static {v1, v0, v2}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    .line 134
    :goto_3
    return-void

    .line 121
    :cond_4
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_5
    if-nez p1, :cond_6

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->videoAdLoadStartTime:J

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    new-array v1, v8, [Lcom/mopub/common/MediationSettings;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 7

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 43
    iput-object p4, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    .line 44
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 46
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "not enough arguments for MoPub config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string v0, "adId doesn\'t have enough arguments."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 52
    :cond_1
    aget-object v1, v0, v4

    const-string v2, "Fullscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    new-instance v1, Lcom/mopub/mobileads/MoPubInterstitial;

    aget-object v0, v0, v5

    invoke-direct {v1, p1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->createListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 57
    if-eqz p4, :cond_4

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_3
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    goto/16 :goto_0

    .line 70
    :cond_5
    aget-object v1, v0, v4

    const-string v2, "RewardedVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 71
    sget-boolean v1, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoInUse:Z

    if-eqz v1, :cond_6

    .line 72
    const-string v0, "MoPub rewarded video is already used for different placement."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :cond_6
    sget-object v1, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->hasRewardedVideoClass:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 77
    :try_start_0
    const-string v1, "com.mopub.mobileads.MoPubRewardedVideos"

    const/4 v2, 0x0

    const-class v3, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 78
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->hasRewardedVideoClass:Ljava/lang/Boolean;

    .line 79
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mopub/common/MediationSettings;

    invoke-static {p1, v1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_7
    :goto_2
    sget-object v1, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->hasRewardedVideoClass:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    .line 85
    const-string v0, "Missing class required for MoPub rewarded videos."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->hasRewardedVideoClass:Ljava/lang/Boolean;

    goto :goto_2

    .line 88
    :cond_8
    sput-boolean v5, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoInUse:Z

    .line 89
    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->updateActivity(Landroid/app/Activity;)V

    .line 92
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->createVideoListener()Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideos;->setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 94
    invoke-direct {p0, v4}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->loadRewardedVideo(Z)V

    goto/16 :goto_0

    .line 96
    :cond_9
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 97
    const-string v0, "Wrong ad format provided for MoPub fullscreen. Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    :cond_a
    const-string v0, "Wrong ad format provided for MoPub fullscreen."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 210
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->updateActivity(Landroid/app/Activity;)V

    .line 213
    :cond_0
    return-void
.end method

.method public show()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideos;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->showRewardedVideo(Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public unload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->videoAdLoadStartTime:J

    .line 231
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 233
    iput-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoAdId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->rewardedVideoInUse:Z

    .line 237
    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->hasRewardedVideoClass:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->hasRewardedVideoClass:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideos;->setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 241
    :cond_1
    return-void
.end method
