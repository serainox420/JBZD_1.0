.class Lcom/smartadserver/android/library/c/a$1;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "SASAdColonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/a;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->a(Lcom/smartadserver/android/library/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdColony onClosed for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/a$1$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/a$1$1;-><init>(Lcom/smartadserver/android/library/c/a$1;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->a(Lcom/smartadserver/android/library/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdColony onExpiring for interstitial, requesting a new ad"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/a;->d(Lcom/smartadserver/android/library/c/a;)Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    .line 62
    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->a(Lcom/smartadserver/android/library/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdColony onRequestFilled for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->c(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 44
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    .line 46
    :cond_0
    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->a(Lcom/smartadserver/android/library/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdColony onRequestNotFilled for interstitial!"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$1;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->c(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    const-string v1, "Cannot load interstitial from AdColony!"

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method
