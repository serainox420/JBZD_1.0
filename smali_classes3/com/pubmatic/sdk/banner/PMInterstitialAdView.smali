.class public Lcom/pubmatic/sdk/banner/PMInterstitialAdView;
.super Lcom/pubmatic/sdk/banner/PMBannerAdView;
.source "PMInterstitialAdView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;-><init>(Landroid/content/Context;Z)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->init(Z)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-super {p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->applyAttributeSet(Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->init(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/pubmatic/sdk/banner/PMBannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-super {p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->applyAttributeSet(Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMInterstitialAdView;->init(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method protected init(Z)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->init(Z)V

    .line 37
    return-void
.end method
