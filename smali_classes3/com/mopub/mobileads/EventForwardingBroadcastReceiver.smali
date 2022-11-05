.class public Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "EventForwardingBroadcastReceiver.java"


# static fields
.field private static b:Landroid/content/IntentFilter;


# instance fields
.field private final a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;J)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    .line 22
    iput-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 23
    invoke-virtual {p0}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    .line 24
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    .line 30
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.interstitial.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->b:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v1, "com.mopub.action.interstitial.show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    goto :goto_0

    .line 53
    :cond_3
    const-string v1, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 55
    invoke-virtual {p0, p0}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 56
    :cond_4
    const-string v1, "com.mopub.action.interstitial.click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    goto :goto_0
.end method
