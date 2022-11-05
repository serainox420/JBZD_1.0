.class Lcom/smartadserver/android/library/c/b$c;
.super Ljava/lang/Object;
.source "SASAdMobAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/b;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/b;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/b;Lcom/smartadserver/android/library/c/b$1;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/b$c;-><init>(Lcom/smartadserver/android/library/c/b;)V

    return-void
.end method


# virtual methods
.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 6

    .prologue
    .line 185
    const-string v0, "SASAdMobAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob onRewarded for interstitial : label:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/model/b;

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v3

    int-to-double v4, v3

    invoke-direct {v1, v2, v4, v5}, Lcom/smartadserver/android/library/model/b;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/model/b;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "SASAdMobAdapter"

    const-string v1, "AdMob onRewardedVideoAdClosed for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/b$c$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/b$c$1;-><init>(Lcom/smartadserver/android/library/c/b$c;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 198
    const-string v0, "SASAdMobAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob rewarded video ad onRewardedVideoAdFailedToLoad (error code:"

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

    .line 199
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob rewarded video ad loading error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "SASAdMobAdapter"

    const-string v1, "AdMob onRewardedVideoAdLeftApplication for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 156
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/b;->c:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    .line 158
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "SASAdMobAdapter"

    const-string v1, "AdMob onRewardedVideoAdOpened for rewarded video"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$c;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 164
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "SASAdMobAdapter"

    const-string v1, "AdMob onRewardedVideoStarted for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
