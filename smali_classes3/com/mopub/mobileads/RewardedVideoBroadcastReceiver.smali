.class public Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "RewardedVideoBroadcastReceiver.java"


# static fields
.field private static a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;J)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    .line 22
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->b:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;

    .line 23
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    .line 24
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->a:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->a:Landroid/content/IntentFilter;

    .line 30
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.rewardedvideo.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->b:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "com.mopub.action.rewardedvideo.complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->b:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;

    invoke-interface {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;->onVideoComplete()V

    .line 48
    invoke-virtual {p0, p0}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
