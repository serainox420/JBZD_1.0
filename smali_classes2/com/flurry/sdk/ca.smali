.class public Lcom/flurry/sdk/ca;
.super Lcom/flurry/sdk/bm;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private g:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/sdk/ca;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ca;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/bm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;)V

    .line 28
    const-string v0, "com.flurry.fan.MY_APP_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ca;->d:Ljava/lang/String;

    .line 29
    const-string v0, "com.flurry.fan.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ca;->e:Ljava/lang/String;

    .line 30
    const-string v0, "com.flurry.fan.test"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/ca;->f:Z

    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/flurry/sdk/ca;->c()Landroid/content/Context;

    move-result-object v0

    .line 37
    iget-boolean v1, p0, Lcom/flurry/sdk/ca;->f:Z

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/flurry/sdk/ca;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 41
    :cond_0
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    iget-object v2, p0, Lcom/flurry/sdk/ca;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/ca;->g:Lcom/facebook/ads/InterstitialAd;

    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/ca;->g:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/ca;->g:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 44
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/ca;->c:Ljava/lang/String;

    const-string v2, "FAN interstitial onAdClicked."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ca;->b(Ljava/util/Map;)V

    .line 79
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/ca;->c:Ljava/lang/String;

    const-string v2, "FAN interstitial onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/ca;->g:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ca;->g:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/ca;->g:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 73
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/ca;->c:Ljava/lang/String;

    const-string v2, "FAN interstitial onError."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ca;->d(Ljava/util/Map;)V

    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/ca;->g:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ca;->g:Lcom/facebook/ads/InterstitialAd;

    .line 65
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/ca;->c:Ljava/lang/String;

    const-string v2, "FAN interstitial onInterstitialDismissed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ca;->c(Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/ca;->c:Ljava/lang/String;

    const-string v2, "FAN interstitial onInterstitialDisplayed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ca;->a(Ljava/util/Map;)V

    .line 50
    return-void
.end method
