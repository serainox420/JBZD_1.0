.class Lcom/smartadserver/android/library/c/c$4;
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

.field final synthetic b:Lcom/smartadserver/android/library/c/c;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/c;Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/smartadserver/android/library/c/c$4;->b:Lcom/smartadserver/android/library/c/c;

    iput-object p2, p0, Lcom/smartadserver/android/library/c/c$4;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 323
    const-string v0, "SASAppLovinAdapter"

    const-string v1, "AppLovin adReceived for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$4;->b:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$4;->b:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$4;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$4;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 328
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$4;->b:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->h(Lcom/smartadserver/android/library/c/c;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 330
    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3

    .prologue
    .line 335
    const-string v0, "SASAppLovinAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLovin failedToReceiveAd for interstitial (error:"

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

    .line 336
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$4;->b:Lcom/smartadserver/android/library/c/c;

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

    .line 337
    return-void
.end method
