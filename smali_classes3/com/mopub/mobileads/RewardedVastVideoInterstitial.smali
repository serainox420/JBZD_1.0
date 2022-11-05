.class Lcom/mopub/mobileads/RewardedVastVideoInterstitial;
.super Lcom/mopub/mobileads/VastVideoInterstitial;
.source "RewardedVastVideoInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;
    }
.end annotation


# instance fields
.field private d:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoInterstitial;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/VastVideoInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 30
    instance-of v0, p2, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    check-cast p2, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;

    iget-wide v2, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->c:J

    invoke-direct {v0, p2, v2, v3}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;-><init>(Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;J)V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->d:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->d:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->d:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 36
    :cond_0
    return-void
.end method

.method public onInvalidate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/mopub/mobileads/VastVideoInterstitial;->onInvalidate()V

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->d:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->d:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->d:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setIsRewardedVideo(Z)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/mopub/mobileads/VastVideoInterstitial;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 44
    return-void
.end method
