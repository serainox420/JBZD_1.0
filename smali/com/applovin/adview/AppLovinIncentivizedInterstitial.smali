.class public Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/applovin/impl/sdk/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDK cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/aa;

    invoke-direct {v0, p1}, Lcom/applovin/impl/sdk/aa;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/aa;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    new-instance v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-direct {v0, p0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/aa;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/aa;->d()V

    return-void
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/applovin/impl/sdk/aa;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReadyToDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/aa;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/aa;->a()Z

    move-result v0

    return v0
.end method

.method public preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "AppLovinIncentivizedInterstitial"

    const-string v1, "AppLovinAdLoadListener was null when preloading incentivized interstitials; using a listener is highly recommended."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/aa;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/aa;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    iget-object v0, p0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lcom/applovin/impl/sdk/aa;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/aa;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method
