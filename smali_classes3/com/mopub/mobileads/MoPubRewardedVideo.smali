.class public Lcom/mopub/mobileads/MoPubRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "MoPubRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideo$1;,
        Lcom/mopub/mobileads/MoPubRewardedVideo$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 29
    new-instance v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-direct {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->a:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedVideo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubRewardedVideo;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/mopub/mobileads/MoPubRewardedVideo;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->c:I

    return v0
.end method


# virtual methods
.method protected a()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Lcom/mopub/common/LifecycleListener;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "mopub_rewarded_video_id"

    return-object v0
.end method

.method protected c(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 71
    const-string v1, "activity cannot be null"

    invoke-static {p1, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-string v1, "localExtras cannot be null"

    invoke-static {p2, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const-string v1, "serverExtras cannot be null"

    invoke-static {p3, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const-string v1, "Rewarded-Video-Currency-Name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 78
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->b:Ljava/lang/String;

    .line 84
    :goto_0
    const-string v1, "Rewarded-Video-Currency-Value-String"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 88
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    iget v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->c:I

    if-gez v1, :cond_0

    .line 105
    const-string v1, "Negative currency amount specified for rewarded video. Using the default reward amount: 0"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 108
    iput v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->c:I

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->a:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    new-instance v2, Lcom/mopub/mobileads/MoPubRewardedVideo$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mopub/mobileads/MoPubRewardedVideo$a;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideo;Lcom/mopub/mobileads/MoPubRewardedVideo$1;)V

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 113
    return-void

    .line 80
    :cond_1
    const-string v1, "No currency name specified for rewarded video. Using the default name."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->b:Ljava/lang/String;

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert currency amount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Using the default reward amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 95
    iput v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->c:I

    goto :goto_1

    .line 98
    :cond_2
    const-string v1, "No currency amount specified for rewarded video. Using the default reward amount: 0"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 101
    iput v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->c:I

    goto :goto_1
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->a:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->onInvalidate()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->d:Z

    .line 57
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->d:Z

    return v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "Showing MoPub rewarded video."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo;->a:Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->showInterstitial()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "Unable to show MoPub rewarded video"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
