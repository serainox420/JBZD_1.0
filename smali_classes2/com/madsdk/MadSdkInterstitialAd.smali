.class public Lcom/madsdk/MadSdkInterstitialAd;
.super Ljava/lang/Object;
.source "MadSdkInterstitialAd.java"


# instance fields
.field private adView:Lcom/madsdk/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;Lcom/madsdk/InterstitialAdListener;)V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/madsdk/AdView;

    invoke-direct {v0, p3}, Lcom/madsdk/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    .line 13
    iget-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    invoke-virtual {v0, p4}, Lcom/madsdk/AdView;->setListener(Lcom/madsdk/AdListener;)V

    .line 14
    iget-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/madsdk/AdView;->setInterstitial(Z)V

    .line 15
    iget-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    invoke-virtual {v0, p1, p2}, Lcom/madsdk/AdView;->loadData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Landroid/content/Context;Lcom/madsdk/InterstitialAdListener;)V
    .locals 6

    .prologue
    .line 19
    new-instance v0, Lcom/madsdk/AdView;

    invoke-direct {v0, p6}, Lcom/madsdk/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    .line 20
    iget-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/madsdk/AdView;->setInterstitial(Z)V

    .line 21
    iget-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    invoke-virtual {v0, p7}, Lcom/madsdk/AdView;->setListener(Lcom/madsdk/AdListener;)V

    .line 22
    iget-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/madsdk/AdView;->loadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 23
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/madsdk/MadSdkInterstitialAd;->adView:Lcom/madsdk/AdView;

    invoke-virtual {v0}, Lcom/madsdk/AdView;->showAsInterstitial()V

    .line 27
    return-void
.end method
