.class Lcom/smartadserver/android/library/c/c$3;
.super Ljava/lang/Object;
.source "SASAppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/c;->a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/smartadserver/android/library/c/c;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/c;Lcom/smartadserver/android/library/ui/SASAdView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    iput-object p2, p0, Lcom/smartadserver/android/library/c/c$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p3, p0, Lcom/smartadserver/android/library/c/c$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 6

    .prologue
    .line 297
    const-string v0, "SASAppLovinAdapter"

    const-string v1, "AppLovin adReceived for rewarded interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->f(Lcom/smartadserver/android/library/c/c;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$3;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 303
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->f(Lcom/smartadserver/android/library/c/c;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/c$3;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v2}, Lcom/smartadserver/android/library/c/c;->d(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/c$c;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v3}, Lcom/smartadserver/android/library/c/c;->g(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/c$b;

    move-result-object v3

    iget-object v4, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v4}, Lcom/smartadserver/android/library/c/c;->g(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/c$b;

    move-result-object v4

    iget-object v5, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v5}, Lcom/smartadserver/android/library/c/c;->g(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/c$b;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    const-string v1, "Applovin rewarded interstitial not ready to display "

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failedToReceiveAd(I)V
    .locals 3

    .prologue
    .line 314
    const-string v0, "SASAppLovinAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLovin failedToReceiveAd for rewarded interstitial (error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$3;->c:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 316
    return-void
.end method
