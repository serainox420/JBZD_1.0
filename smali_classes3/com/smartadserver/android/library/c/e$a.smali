.class Lcom/smartadserver/android/library/c/e$a;
.super Ljava/lang/Object;
.source "SASFacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/e;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/e;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/e;Lcom/smartadserver/android/library/c/e$1;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/e$a;-><init>(Lcom/smartadserver/android/library/c/e;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 86
    const-string v0, "SASFacebookAdapter"

    const-string v1, "Facebook  banner onAdClicked"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 88
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 70
    const-string v0, "SASFacebookAdapter"

    const-string v1, "Facebook ad onAdLoaded"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->b(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->b(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->b(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 77
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->c(Lcom/smartadserver/android/library/c/e;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 82
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .prologue
    .line 64
    const-string v0, "SASFacebookAdapter"

    const-string v1, "Facebook banner onError"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->b(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$a;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->b(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/e$a$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/e$a$1;-><init>(Lcom/smartadserver/android/library/c/e$a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
